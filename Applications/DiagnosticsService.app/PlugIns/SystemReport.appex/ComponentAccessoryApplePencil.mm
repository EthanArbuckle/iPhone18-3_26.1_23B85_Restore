@interface ComponentAccessoryApplePencil
- (BOOL)isPresent;
- (ComponentAccessoryApplePencil)init;
- (id)getBatteryInfo;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentAccessoryApplePencil

- (ComponentAccessoryApplePencil)init
{
  v6.receiver = self;
  v6.super_class = ComponentAccessoryApplePencil;
  v2 = [(ComponentAccessoryApplePencil *)&v6 init];
  if (v2)
  {
    v3 = [DSIOHIDDevice deviceMatchingAccessories:&off_1000C8738];
    device = v2->_device;
    v2->_device = v3;
  }

  return v2;
}

- (BOOL)isPresent
{
  device = [(ComponentAccessoryApplePencil *)self device];
  v3 = device != 0;

  return v3;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  device = [(ComponentAccessoryApplePencil *)self device];
  serialNumber = [device serialNumber];

  if (serialNumber)
  {
    [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
    v6 = [DSEADevice deviceWithSerialNumber:serialNumber];
    v7 = v6;
    if (v6)
    {
      information = [v6 information];
      [attributesCopy addEntriesFromDictionary:information];
    }
  }

  else
  {
    v7 = +[NSNull null];
    [attributesCopy setObject:v7 forKeyedSubscript:@"serialNumber"];
  }

  getBatteryInfo = [(ComponentAccessoryApplePencil *)self getBatteryInfo];
  [attributesCopy setObject:getBatteryInfo forKeyedSubscript:@"batteryInfo"];
}

- (id)getBatteryInfo
{
  selfCopy = self;
  if (qword_1000D2008 != -1)
  {
    dispatch_once(&qword_1000D2008, &stru_100090BC8);
  }

  v2 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  connectedDevices = [qword_1000D2000 connectedDevices];
  v4 = [connectedDevices countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if ([v8 accessoryCategory] == 7)
        {
          v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 percentCharge]);
          [v2 setObject:v9 forKeyedSubscript:@"percentCharge"];

          v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 approximatesPercentCharge]);
          [v2 setObject:v10 forKeyedSubscript:@"approximatesPercentCharge"];

          v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isLowBattery]);
          [v2 setObject:v11 forKeyedSubscript:@"lowBattery"];

          v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isCharging]);
          [v2 setObject:v12 forKeyedSubscript:@"isCharging"];
        }
      }

      v5 = [connectedDevices countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  memset(v27, 0, 37);
  v26 = 37;
  device = [(ComponentAccessoryApplePencil *)selfCopy device];
  v14 = [device reportWithID:34 reportType:2 object:v27 length:&v26];

  if (v14)
  {
    v15 = [NSNumber numberWithUnsignedInt:*(v27 + 1)];
    [v2 setObject:v15 forKeyedSubscript:@"eepromWriteCount"];

    v16 = [NSNumber numberWithUnsignedInt:*(v27 + 5)];
    [v2 setObject:v16 forKeyedSubscript:@"chargeCycleCount"];

    v17 = [NSNumber numberWithUnsignedInt:*(v27 + 9)];
    [v2 setObject:v17 forKeyedSubscript:@"timeOnCharger"];

    v18 = [NSNumber numberWithUnsignedInt:*(v27 + 13)];
    [v2 setObject:v18 forKeyedSubscript:@"timeOffCharger"];

    v19 = [NSNumber numberWithUnsignedInt:*(&v27[1] + 1)];
    [v2 setObject:v19 forKeyedSubscript:@"timeInTopOff"];

    v20 = [NSNumber numberWithInt:*(&v27[1] + 5)];
    [v2 setObject:v20 forKeyedSubscript:@"maxTemp"];

    v21 = [NSNumber numberWithInt:*(&v27[1] + 9)];
    [v2 setObject:v21 forKeyedSubscript:@"minTemp"];

    v22 = [NSNumber numberWithInt:*(&v27[1] + 13)];
    [v2 setObject:v22 forKeyedSubscript:@"averageChargingTemp"];

    v23 = [NSNumber numberWithInt:*(&v27[2] + 1)];
    [v2 setObject:v23 forKeyedSubscript:@"averageDischargingTemp"];
  }

  return v2;
}

@end