@interface EAWiFiUnconfiguredAccessory
- (BOOL)isEqual:(id)equal;
- (EAWiFiUnconfiguredAccessory)initWithAirPortAssistantWACDevice:(id)device;
@end

@implementation EAWiFiUnconfiguredAccessory

- (EAWiFiUnconfiguredAccessory)initWithAirPortAssistantWACDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = EAWiFiUnconfiguredAccessory;
  v5 = [(EAWiFiUnconfiguredAccessory *)&v21 init];
  if (v5)
  {
    v6 = [deviceCopy objectForKey:@"wacFriendlyName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [deviceCopy objectForKey:@"wacSSID"];
    ssid = v5->_ssid;
    v5->_ssid = v8;

    v10 = [deviceCopy objectForKey:@"wacManufacturerName"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v10;

    v12 = [deviceCopy objectForKey:@"wacModelName"];
    model = v5->_model;
    v5->_model = v12;

    v14 = [deviceCopy objectForKey:@"wacMACAddress"];
    macAddress = v5->_macAddress;
    v5->_macAddress = v14;

    if (!v5->_name)
    {
      v5->_name = &stru_284B0F7E0;
    }

    if (!v5->_ssid)
    {
      v5->_ssid = &stru_284B0F7E0;
    }

    if (!v5->_manufacturer)
    {
      v5->_manufacturer = &stru_284B0F7E0;
    }

    if (!v5->_model)
    {
      v5->_model = &stru_284B0F7E0;
    }

    if (!v5->_macAddress)
    {
      v5->_macAddress = &stru_284B0F7E0;
    }

    v5->_properties = 0;
    v16 = [deviceCopy objectForKey:@"wacSupportsAirPlay"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      v5->_properties |= 1uLL;
    }

    v18 = [deviceCopy objectForKey:@"wacSupportsSpruce"];
    bOOLValue2 = [v18 BOOLValue];

    if (bOOLValue2)
    {
      v5->_properties |= 4uLL;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    name = [v5 name];
    if ([(NSString *)name isEqual:name])
    {
      ssid = self->_ssid;
      ssid = [v5 ssid];
      if ([(NSString *)ssid isEqual:ssid])
      {
        manufacturer = self->_manufacturer;
        manufacturer = [v5 manufacturer];
        if ([(NSString *)manufacturer isEqual:manufacturer])
        {
          model = self->_model;
          model = [v5 model];
          if ([(NSString *)model isEqual:model])
          {
            macAddress = self->_macAddress;
            macAddress = [v5 macAddress];
            if ([(NSString *)macAddress isEqual:macAddress])
            {
              properties = self->_properties;
              v17 = properties == [v5 properties];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end