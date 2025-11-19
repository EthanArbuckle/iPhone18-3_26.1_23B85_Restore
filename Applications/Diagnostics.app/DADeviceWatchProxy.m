@interface DADeviceWatchProxy
- (BOOL)isEqual:(id)a3;
- (DADeviceDelegate)delegate;
- (DADeviceWatchProxy)initWithNanoDevice:(id)a3;
- (NSString)description;
- (id)_IMEI;
- (id)_caseSize;
- (id)_deviceAttributes;
- (id)_deviceColor;
- (id)_deviceEnclosureColor;
- (id)_deviceType;
- (id)_enclosure;
- (id)_productClass;
- (id)_serialNumber;
- (unint64_t)hash;
- (void)connect;
- (void)end;
- (void)idle;
- (void)requestSuiteFinishWithCompletionHandler:(id)a3;
- (void)start;
- (void)startInOperationMode:(int64_t)a3;
@end

@implementation DADeviceWatchProxy

- (DADeviceWatchProxy)initWithNanoDevice:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DADeviceWatchProxy;
  v6 = [(DADeviceWatchProxy *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nrDevice, a3);
    v8 = [(DADeviceWatchProxy *)v7 _deviceAttributes];
    v9 = [DADeviceState alloc];
    v10 = [(DADeviceWatchProxy *)v7 _serialNumber];
    v11 = [(DADeviceState *)v9 initWithSerialNumber:v10 attributes:v8];
    state = v7->_state;
    v7->_state = v11;

    v13 = [[DADeviceConnectionWatchProxy alloc] initWithState:v7->_state nanoDevice:v7->_nrDevice];
    connection = v7->_connection;
    v7->_connection = v13;

    [(DADeviceConnectionIDSProxy *)v7->_connection setDelegate:v7];
  }

  return v7;
}

- (void)connect
{
  v2 = [(DADeviceWatchProxy *)self connection];
  [v2 connect];
}

- (void)start
{
  v2 = [(DADeviceWatchProxy *)self connection];
  [v2 start];
}

- (void)idle
{
  v2 = [(DADeviceWatchProxy *)self connection];
  [v2 idle];
}

- (void)end
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E558;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startInOperationMode:(int64_t)a3
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[DADeviceWatchProxy startInOperationMode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceWatchProxy] %s", buf, 0xCu);
  }

  if (a3 == 1)
  {
    v6 = [(DADeviceWatchProxy *)self connection];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E6F4;
    v8[3] = &unk_1001BC580;
    v8[4] = self;
    [v6 startWithCompletion:v8];
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001584C0();
    }
  }
}

- (void)requestSuiteFinishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[DADeviceWatchProxy requestSuiteFinishWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceWatchProxy] %s", &v7, 0xCu);
  }

  v6 = [(DADeviceWatchProxy *)self connection];
  [v6 requestSuiteFinishWithCompletionHandler:v4];
}

- (unint64_t)hash
{
  v2 = [(DADeviceWatchProxy *)self state];
  v3 = [v2 serialNumber];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    v5 = [(DADeviceWatchProxy *)self state];
    v6 = [v5 serialNumber];
    v7 = [v4 state];
    v8 = [v7 serialNumber];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DADeviceWatchProxy *)self state];
  v6 = [v5 serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, v6];;

  return v7;
}

- (id)_deviceAttributes
{
  v26[0] = @"productClass";
  v3 = [(DADeviceWatchProxy *)self _productClass];
  v4 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  v22 = v3;
  v27[0] = v3;
  v26[1] = @"IMEI";
  v5 = [(DADeviceWatchProxy *)self _IMEI];
  v6 = v5;
  if (!v5)
  {
    v5 = +[NSNull null];
  }

  v21 = v5;
  v27[1] = v5;
  v26[2] = @"marketingName";
  v24 = [(DADeviceWatchProxy *)self _marketingName];
  v27[2] = v24;
  v26[3] = @"enclosure";
  v7 = [(DADeviceWatchProxy *)self _enclosure];
  v8 = v7;
  if (!v7)
  {
    v7 = +[NSNull null];
  }

  v20 = v7;
  v27[3] = v7;
  v26[4] = @"size";
  v9 = [(DADeviceWatchProxy *)self _caseSize];
  v10 = v9;
  if (!v9)
  {
    v9 = +[NSNull null];
  }

  v19 = v9;
  v27[4] = v9;
  v26[5] = @"deviceType";
  v11 = [(DADeviceWatchProxy *)self _deviceType];
  v12 = v11;
  if (!v11)
  {
    v12 = +[NSNull null];
  }

  v25 = v4;
  v27[5] = v12;
  v26[6] = @"deviceClass";
  v13 = [(DADeviceWatchProxy *)self _deviceClass];
  v27[6] = v13;
  v26[7] = @"deviceEnclosureColor";
  v14 = [(DADeviceWatchProxy *)self _deviceEnclosureColor];
  v15 = v14;
  if (!v14)
  {
    v15 = +[NSNull null];
  }

  v27[7] = v15;
  v26[8] = @"deviceColor";
  v16 = [(DADeviceWatchProxy *)self _deviceColor];
  v17 = v16;
  if (!v16)
  {
    v17 = +[NSNull null];
  }

  v27[8] = v17;
  v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:9];
  if (!v16)
  {
  }

  if (!v14)
  {
  }

  if (!v11)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v25)
  {
  }

  return v23;
}

- (id)_enclosure
{
  v3 = [(DADeviceWatchProxy *)self nrDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyDeviceHousingColor];

  v5 = [(DADeviceWatchProxy *)self nrDevice];
  v6 = [v5 valueForProperty:NRDevicePropertyDmin];

  if (v4)
  {
    v7 = [v4 unsignedIntegerValue] - 1;
    if (v7 < 0x27 && ((0x6A8E623CFFuLL >> v7) & 1) != 0)
    {
      v8 = *(&off_1001BCAE0 + v7);
      goto LABEL_16;
    }

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001584F4(v4, v9);
    }
  }

  else
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100158580();
    }
  }

  if (!v6)
  {
    v8 = 0;
LABEL_16:
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001585E8();
    }

    goto LABEL_31;
  }

  v10 = [v6 objectForKeyedSubscript:&off_1001CC248];
  v11 = v10;
  if (!v10)
  {
    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001585B4();
    }

LABEL_21:
    v8 = 0;
    goto LABEL_31;
  }

  v12 = [v10 unsignedIntegerValue];
  if (v12 <= 4)
  {
    if ((v12 - 1) >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = @"ALUMINUM";
    }

    goto LABEL_31;
  }

  if (v12 <= 7)
  {
    if (v12 == 5 || v12 == 7)
    {
      v8 = @"STAINLESS_STEEL";
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  v14 = @"ROSE_GOLD";
  if (v12 != 9)
  {
    v14 = 0;
  }

  if (v12 == 8)
  {
    v8 = @"YELLOW_GOLD";
  }

  else
  {
    v8 = v14;
  }

LABEL_31:

  return v8;
}

- (id)_caseSize
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyProductType];

  if (v3)
  {
    v4 = NRDeviceSizeForProductType();
    v5 = v4;
    if (v4 >= 0xA)
    {
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10015861C(v5, v8);
      }

      v6 = @"42_CASE";
    }

    else
    {
      v6 = *(&off_1001BCC18 + v4);
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100158694();
    }

    v6 = 0;
  }

  return v6;
}

- (id)_serialNumber
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (id)_productClass
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyLocalizedModel];

  return v3;
}

- (id)_IMEI
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyIMEI];

  if ([v3 isEqual:@"Unknown"])
  {

    v3 = 0;
  }

  return v3;
}

- (id)_deviceType
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (id)_deviceColor
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyColor];

  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1001C9EA8];
  }

  return v4;
}

- (id)_deviceEnclosureColor
{
  v2 = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [v2 valueForProperty:NRDevicePropertyEnclosureColor];

  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1001C9EA8];
  }

  return v4;
}

- (DADeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end