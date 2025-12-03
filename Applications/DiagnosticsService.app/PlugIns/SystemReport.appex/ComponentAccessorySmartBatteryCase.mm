@interface ComponentAccessorySmartBatteryCase
- (BOOL)isPresent;
- (ComponentAccessorySmartBatteryCase)init;
- (id)batterySerialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentAccessorySmartBatteryCase

- (ComponentAccessorySmartBatteryCase)init
{
  v6.receiver = self;
  v6.super_class = ComponentAccessorySmartBatteryCase;
  v2 = [(ComponentAccessorySmartBatteryCase *)&v6 init];
  if (v2)
  {
    v3 = [DSIOHIDDevice deviceMatchingAccessories:&off_1000C8708];
    device = v2->_device;
    v2->_device = v3;

    v2->_isMagSafe = [(DSIOHIDDevice *)v2->_device deviceModel]== 2;
  }

  return v2;
}

- (BOOL)isPresent
{
  device = [(ComponentAccessorySmartBatteryCase *)self device];
  v3 = device != 0;

  return v3;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  device = [(ComponentAccessorySmartBatteryCase *)self device];
  serialNumber = [device serialNumber];
  if (serialNumber)
  {
    [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v6 = +[NSNull null];
    [attributesCopy setObject:v6 forKeyedSubscript:@"serialNumber"];
  }

  batterySerialNumber = [(ComponentAccessorySmartBatteryCase *)self batterySerialNumber];
  if (batterySerialNumber)
  {
    [attributesCopy setObject:batterySerialNumber forKeyedSubscript:@"batterySerialNumber"];
  }

  device2 = [(ComponentAccessorySmartBatteryCase *)self device];
  serialNumber2 = [device2 serialNumber];
  v10 = [DSEADevice deviceWithSerialNumber:serialNumber2];

  if (v10)
  {
    information = [v10 information];
    [attributesCopy addEntriesFromDictionary:information];
  }
}

- (id)batterySerialNumber
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002CCE4;
  v20 = sub_10002CCF4;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CCFC;
  block[3] = &unk_100090BA8;
  v13 = &v16;
  objc_copyWeak(&v14, &location);
  v5 = v3;
  v12 = v5;
  dispatch_async(v4, block);

  v6 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Timeout waiting for internal battery serial number", v10, 2u);
    }
  }

  v8 = v17[5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v16, 8);

  return v8;
}

@end