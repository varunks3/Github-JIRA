terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "4d31c987-1d7c-4cd8-91ad-de0a1b0fca65"
  client_secret   = "loD8Q~-5qAUvIgY7_weVnCCcM7OKJjch2W5OOarR"
  tenant_id       = "9eda9bbc-aee0-46cb-840d-03ca38dd86fb"
  subscription_id = "700f82c1-6382-4ce0-8a43-057c81624dd9"
}

resource "azurerm_resource_group" "terraform-example" { 
  name     = "myresourcegroup"
  location = "West Europe"
}

resource "azurerm_virtual_network" "terraform-example" {
  name                = "myv-network"
  resource_group_name = azurerm_resource_group.terraform-example.name
  location            = azurerm_resource_group.terraform-example.location
  address_space       = ["10.0.0.0/16"]
}