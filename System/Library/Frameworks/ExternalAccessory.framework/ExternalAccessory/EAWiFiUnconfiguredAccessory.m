@interface EAWiFiUnconfiguredAccessory
- (BOOL)isEqual:(id)a3;
- (EAWiFiUnconfiguredAccessory)initWithAirPortAssistantWACDevice:(id)a3;
@end

@implementation EAWiFiUnconfiguredAccessory

- (EAWiFiUnconfiguredAccessory)initWithAirPortAssistantWACDevice:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EAWiFiUnconfiguredAccessory;
  v5 = [(EAWiFiUnconfiguredAccessory *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"wacFriendlyName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKey:@"wacSSID"];
    ssid = v5->_ssid;
    v5->_ssid = v8;

    v10 = [v4 objectForKey:@"wacManufacturerName"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v10;

    v12 = [v4 objectForKey:@"wacModelName"];
    model = v5->_model;
    v5->_model = v12;

    v14 = [v4 objectForKey:@"wacMACAddress"];
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
    v16 = [v4 objectForKey:@"wacSupportsAirPlay"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v5->_properties |= 1uLL;
    }

    v18 = [v4 objectForKey:@"wacSupportsSpruce"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v5->_properties |= 4uLL;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    name = self->_name;
    v7 = [v5 name];
    if ([(NSString *)name isEqual:v7])
    {
      ssid = self->_ssid;
      v9 = [v5 ssid];
      if ([(NSString *)ssid isEqual:v9])
      {
        manufacturer = self->_manufacturer;
        v11 = [v5 manufacturer];
        if ([(NSString *)manufacturer isEqual:v11])
        {
          model = self->_model;
          v13 = [v5 model];
          if ([(NSString *)model isEqual:v13])
          {
            macAddress = self->_macAddress;
            v15 = [v5 macAddress];
            if ([(NSString *)macAddress isEqual:v15])
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