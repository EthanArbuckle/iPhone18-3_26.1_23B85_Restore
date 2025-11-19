@interface ComponentBatterySmartBatteryCase
- (BOOL)isPresent;
- (ComponentBatterySmartBatteryCase)init;
- (id)batterySerialNumber;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentBatterySmartBatteryCase

- (ComponentBatterySmartBatteryCase)init
{
  v6.receiver = self;
  v6.super_class = ComponentBatterySmartBatteryCase;
  v2 = [(ComponentBatterySmartBatteryCase *)&v6 init];
  if (v2)
  {
    v3 = [DSIOPSDevice deviceMatchingAccessories:&off_1000C8750];
    psDevice = v2->_psDevice;
    v2->_psDevice = v3;

    v2->_isMagSafe = [(DSIOPSDevice *)v2->_psDevice deviceModel]== 2;
  }

  return v2;
}

- (BOOL)isPresent
{
  v2 = [(ComponentBatterySmartBatteryCase *)self psDevice];
  v3 = v2 != 0;

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v9 = a3;
  v4 = [(ComponentBatterySmartBatteryCase *)self psDevice];
  v5 = [v4 information];
  [v9 addEntriesFromDictionary:v5];

  v6 = [DSIOHIDDevice deviceMatchingAccessories:&off_1000C8768];
  [(ComponentBatterySmartBatteryCase *)self setHidDevice:v6];

  v7 = [(ComponentBatterySmartBatteryCase *)self hidDevice];

  if (v7)
  {
    v8 = [(ComponentBatterySmartBatteryCase *)self batterySerialNumber];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:@"batterySerialNumber"];
    }
  }
}

- (id)batterySerialNumber
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002E634;
  v20 = sub_10002E644;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E64C;
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