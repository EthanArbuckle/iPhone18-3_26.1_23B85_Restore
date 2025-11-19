@interface ComponentSystem
- (BOOL)isPresent;
- (ComponentSystem)init;
- (id)batterySerialNumber;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentSystem

- (ComponentSystem)init
{
  v6.receiver = self;
  v6.super_class = ComponentSystem;
  v2 = [(ComponentSystem *)&v6 init];
  if (v2)
  {
    v3 = [DSIOHIDDevice deviceMatchingAccessories:&off_10000D0D0];
    device = v2->_device;
    v2->_device = v3;

    v2->_isMagSafe = [(DSIOHIDDevice *)v2->_device deviceModel]== 2;
  }

  return v2;
}

- (BOOL)isPresent
{
  v2 = [(ComponentSystem *)self device];
  v3 = v2 != 0;

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v12 = a3;
  v4 = [(ComponentSystem *)self device];
  v5 = [v4 serialNumber];
  if (v5)
  {
    [v12 setObject:v5 forKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v6 = +[NSNull null];
    [v12 setObject:v6 forKeyedSubscript:@"serialNumber"];
  }

  v7 = [(ComponentSystem *)self batterySerialNumber];
  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:@"batterySerialNumber"];
  }

  v8 = [(ComponentSystem *)self device];
  v9 = [v8 serialNumber];
  v10 = [DSEADevice deviceWithSerialNumber:v9];

  if (v10)
  {
    v11 = [v10 information];
    [v12 addEntriesFromDictionary:v11];
  }
}

- (id)batterySerialNumber
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000018A4;
  v20 = sub_1000018B4;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018BC;
  block[3] = &unk_10000C348;
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