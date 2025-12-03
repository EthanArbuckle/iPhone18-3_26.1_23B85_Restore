@interface DADeviceWatchProxy
- (BOOL)isEqual:(id)equal;
- (DADeviceDelegate)delegate;
- (DADeviceWatchProxy)initWithNanoDevice:(id)device;
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
- (void)requestSuiteFinishWithCompletionHandler:(id)handler;
- (void)start;
- (void)startInOperationMode:(int64_t)mode;
@end

@implementation DADeviceWatchProxy

- (DADeviceWatchProxy)initWithNanoDevice:(id)device
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = DADeviceWatchProxy;
  v6 = [(DADeviceWatchProxy *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nrDevice, device);
    _deviceAttributes = [(DADeviceWatchProxy *)v7 _deviceAttributes];
    v9 = [DADeviceState alloc];
    _serialNumber = [(DADeviceWatchProxy *)v7 _serialNumber];
    v11 = [(DADeviceState *)v9 initWithSerialNumber:_serialNumber attributes:_deviceAttributes];
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
  connection = [(DADeviceWatchProxy *)self connection];
  [connection connect];
}

- (void)start
{
  connection = [(DADeviceWatchProxy *)self connection];
  [connection start];
}

- (void)idle
{
  connection = [(DADeviceWatchProxy *)self connection];
  [connection idle];
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

- (void)startInOperationMode:(int64_t)mode
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[DADeviceWatchProxy startInOperationMode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceWatchProxy] %s", buf, 0xCu);
  }

  if (mode == 1)
  {
    connection = [(DADeviceWatchProxy *)self connection];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E6F4;
    v8[3] = &unk_1001BC580;
    v8[4] = self;
    [connection startWithCompletion:v8];
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

- (void)requestSuiteFinishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[DADeviceWatchProxy requestSuiteFinishWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DADeviceWatchProxy] %s", &v7, 0xCu);
  }

  connection = [(DADeviceWatchProxy *)self connection];
  [connection requestSuiteFinishWithCompletionHandler:handlerCopy];
}

- (unint64_t)hash
{
  state = [(DADeviceWatchProxy *)self state];
  serialNumber = [state serialNumber];
  v4 = [serialNumber hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&OBJC_PROTOCOL___DADevice])
  {
    state = [(DADeviceWatchProxy *)self state];
    serialNumber = [state serialNumber];
    state2 = [equalCopy state];
    serialNumber2 = [state2 serialNumber];
    v9 = [serialNumber isEqualToString:serialNumber2];
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
  state = [(DADeviceWatchProxy *)self state];
  serialNumber = [state serialNumber];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, serialNumber];;

  return v7;
}

- (id)_deviceAttributes
{
  v26[0] = @"productClass";
  _productClass = [(DADeviceWatchProxy *)self _productClass];
  v4 = _productClass;
  if (!_productClass)
  {
    _productClass = +[NSNull null];
  }

  v22 = _productClass;
  v27[0] = _productClass;
  v26[1] = @"IMEI";
  _IMEI = [(DADeviceWatchProxy *)self _IMEI];
  v6 = _IMEI;
  if (!_IMEI)
  {
    _IMEI = +[NSNull null];
  }

  v21 = _IMEI;
  v27[1] = _IMEI;
  v26[2] = @"marketingName";
  _marketingName = [(DADeviceWatchProxy *)self _marketingName];
  v27[2] = _marketingName;
  v26[3] = @"enclosure";
  _enclosure = [(DADeviceWatchProxy *)self _enclosure];
  v8 = _enclosure;
  if (!_enclosure)
  {
    _enclosure = +[NSNull null];
  }

  v20 = _enclosure;
  v27[3] = _enclosure;
  v26[4] = @"size";
  _caseSize = [(DADeviceWatchProxy *)self _caseSize];
  v10 = _caseSize;
  if (!_caseSize)
  {
    _caseSize = +[NSNull null];
  }

  v19 = _caseSize;
  v27[4] = _caseSize;
  v26[5] = @"deviceType";
  _deviceType = [(DADeviceWatchProxy *)self _deviceType];
  v12 = _deviceType;
  if (!_deviceType)
  {
    v12 = +[NSNull null];
  }

  v25 = v4;
  v27[5] = v12;
  v26[6] = @"deviceClass";
  _deviceClass = [(DADeviceWatchProxy *)self _deviceClass];
  v27[6] = _deviceClass;
  v26[7] = @"deviceEnclosureColor";
  _deviceEnclosureColor = [(DADeviceWatchProxy *)self _deviceEnclosureColor];
  v15 = _deviceEnclosureColor;
  if (!_deviceEnclosureColor)
  {
    v15 = +[NSNull null];
  }

  v27[7] = v15;
  v26[8] = @"deviceColor";
  _deviceColor = [(DADeviceWatchProxy *)self _deviceColor];
  v17 = _deviceColor;
  if (!_deviceColor)
  {
    v17 = +[NSNull null];
  }

  v27[8] = v17;
  v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:9];
  if (!_deviceColor)
  {
  }

  if (!_deviceEnclosureColor)
  {
  }

  if (!_deviceType)
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
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v4 = [nrDevice valueForProperty:NRDevicePropertyDeviceHousingColor];

  nrDevice2 = [(DADeviceWatchProxy *)self nrDevice];
  v6 = [nrDevice2 valueForProperty:NRDevicePropertyDmin];

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

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (unsignedIntegerValue <= 4)
  {
    if ((unsignedIntegerValue - 1) >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = @"ALUMINUM";
    }

    goto LABEL_31;
  }

  if (unsignedIntegerValue <= 7)
  {
    if (unsignedIntegerValue == 5 || unsignedIntegerValue == 7)
    {
      v8 = @"STAINLESS_STEEL";
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  v14 = @"ROSE_GOLD";
  if (unsignedIntegerValue != 9)
  {
    v14 = 0;
  }

  if (unsignedIntegerValue == 8)
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
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyProductType];

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
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (id)_productClass
{
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyLocalizedModel];

  return v3;
}

- (id)_IMEI
{
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyIMEI];

  if ([v3 isEqual:@"Unknown"])
  {

    v3 = 0;
  }

  return v3;
}

- (id)_deviceType
{
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (id)_deviceColor
{
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyColor];

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
  nrDevice = [(DADeviceWatchProxy *)self nrDevice];
  v3 = [nrDevice valueForProperty:NRDevicePropertyEnclosureColor];

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