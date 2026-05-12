resource "azurerm_resource_group" "rg" {
 name = "var.resource_group_name"
 location = "var.location"
 }



resource "azurerm_redis_cache" "redis" {
 name = "var.redis_name"
 location = azurerm_resource_group.rg.location
 resource_group_name = azurerm_resource_group.rg.name
 capacity = "var.redis_capacity"
 family = "var.redis_family"
 sku_name = "var.redis_sku_name"


 redis_configuration {}

 }