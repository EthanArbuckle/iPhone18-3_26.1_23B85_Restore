@interface TrackpadFirmwareManager
- (BOOL)builtIn;
- (BOOL)supports15ms;
- (NSDictionary)debug;
- (NSNumber)criticalErrors;
- (NSNumber)extendedFeatures;
- (NSNumber)productId;
- (NSString)transport;
- (TrackpadFirmwareManager)initWithDevice:(__MTDevice *)a3;
- (id)mtUberDebug;
- (id)mtfwScanRate;
- (int)_setReportIntervalUs:(unsigned __int16)a3;
- (int)setMouseButtonMode:(unsigned __int8)a3 buttonDivision:(unsigned __int8)a4;
- (unint64_t)mtDeviceId;
- (void)_dispatchHIDEvent:(id)a3;
- (void)_dispatchReportIntervalChangedEvent:(unsigned __int16)a3;
- (void)_handleGetDebugEvent:(id)a3;
- (void)_handleHSTNotificationEvent:(id)a3;
- (void)_handleResetEvent:(id)a3;
- (void)_sendRegistryPropertiesContinuousRecording;
- (void)_updateDeviceScanRate;
- (void)handleActivateEvent:(id)a3;
- (void)handleConsume:(id)a3;
- (void)handlePointerSettings:(id)a3;
- (void)handleSetPropertyEvent:(id)a3;
- (void)registryPropertyForKey:(id)a3;
- (void)setActiveSettings:(id)a3;
@end

@implementation TrackpadFirmwareManager

- (TrackpadFirmwareManager)initWithDevice:(__MTDevice *)a3
{
  v10.receiver = self;
  v10.super_class = TrackpadFirmwareManager;
  v4 = [(HSStage *)&v10 init];
  v4->_activated = 0;
  productId = v4->_productId;
  v4->_productId = 0;

  v4->_mtDeviceId = 0;
  v4->_mtDeviceRef = a3;
  transport = v4->_transport;
  v4->_transport = 0;

  v4->_builtIn = 0;
  extendedFeatures = v4->_extendedFeatures;
  v4->_extendedFeatures = 0;

  v4->_configuredMouse = 0;
  activeSettings = v4->_activeSettings;
  v4->_activeSettings = 0;

  return v4;
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(TrackpadFirmwareManager *)self handleSetPropertyEvent:v4];
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(TrackpadFirmwareManager *)self handleActivateEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(TrackpadFirmwareManager *)self _handleResetEvent:v8];
      }

      else
      {
        v10 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          [(TrackpadFirmwareManager *)self _handleHSTNotificationEvent:v10];
        }

        else
        {
          v12 = HSUtil::DynamicCast<HSPointerSettingsEvent>(v10);

          if (v12)
          {
            [(TrackpadFirmwareManager *)self handlePointerSettings:v10];
          }

          else
          {
            v13 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v10);

            if (v13)
            {
              [(TrackpadFirmwareManager *)self _handleGetDebugEvent:v10];
            }

            else
            {
              v14.receiver = self;
              v14.super_class = TrackpadFirmwareManager;
              [(HSStage *)&v14 handleConsume:v10];
            }
          }
        }
      }
    }
  }
}

- (void)handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:?];
  v6 = v4[5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([v5 isEqualToString:@"HCRNewFilePath"])
  {
    [(TrackpadFirmwareManager *)self _sendRegistryPropertiesContinuousRecording];
  }

  v8.receiver = self;
  v8.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v8 handleConsume:v4];
}

- (void)handleActivateEvent:(id)a3
{
  v4 = a3;
  [(TrackpadFirmwareManager *)self setActivated:1];
  v5 = [(TrackpadFirmwareManager *)self activeSettings];
  [(TrackpadFirmwareManager *)self setActiveSettings:v5];

  v6.receiver = self;
  v6.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v6 handleConsume:v4];
}

- (void)_handleResetEvent:(id)a3
{
  v4 = a3;
  [(TrackpadFirmwareManager *)self setActivated:0];
  [(TrackpadFirmwareManager *)self setConfiguredMouse:0];
  [(TrackpadFirmwareManager *)self _updateDeviceScanRate];
  v5.receiver = self;
  v5.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v5 handleConsume:v4];
}

- (void)_handleHSTNotificationEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 notification];
  if (v5 <= 0xB && ((1 << v5) & 0x902) != 0)
  {
    [(TrackpadFirmwareManager *)self _updateDeviceScanRate];
  }

  v7.receiver = self;
  v7.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v7 handleConsume:v4];
}

- (void)handlePointerSettings:(id)a3
{
  v4 = a3;
  [(TrackpadFirmwareManager *)self setActiveSettings:v4[1]];
  v5.receiver = self;
  v5.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v5 handleConsume:v4];
}

- (void)_handleGetDebugEvent:(id)a3
{
  v4 = a3;
  v4[16] = 1;
  v5 = *(v4 + 3);
  v6 = [(TrackpadFirmwareManager *)self debug];
  [v5 addObject:v6];

  v7.receiver = self;
  v7.super_class = TrackpadFirmwareManager;
  [(HSStage *)&v7 handleConsume:v4];
}

- (void)_sendRegistryPropertiesContinuousRecording
{
  properties = 0;
  Service = MTDeviceGetService();
  v4 = IORegistryEntryCreateCFProperties(Service, &properties, kCFAllocatorDefault, 0);
  v5 = properties;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = properties == 0;
  }

  if (!v6)
  {
    v7 = IOCFSerialize(properties, 1uLL);
    if (v7)
    {
      buf[0] = -1;
      v8 = objc_opt_new();
      [v8 appendBytes:buf length:1];
      [v8 appendData:v7];
      v9 = mach_absolute_time();
      v10 = v8;
      LODWORD(v13) = 0;
      v11 = +[HIDEvent vendorDefinedEvent:usagePage:usage:version:data:length:options:](HIDEvent, "vendorDefinedEvent:usagePage:usage:version:data:length:options:", v9, 65308, 256, 1, [v8 bytes], objc_msgSend(v8, "length"), v13);
      [(TrackpadFirmwareManager *)self _dispatchHIDEvent:v11];
    }

    else
    {
      v12 = MTLoggingPlugin();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "[Error] ";
        v17 = 2080;
        v18 = "";
        v19 = 2080;
        v20 = "[TrackpadFirmwareManager _sendRegistryPropertiesContinuousRecording]";
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Error serializing registry properties dictionary", buf, 0x20u);
      }
    }
  }
}

- (void)_updateDeviceScanRate
{
  v4 = [(TrackpadFirmwareManager *)self transport];
  if ([v4 isEqualToString:@"USB"] && -[TrackpadFirmwareManager supports15ms](self, "supports15ms"))
  {
    v3 = [(TrackpadFirmwareManager *)self builtIn];

    if ((v3 & 1) == 0)
    {

      [(TrackpadFirmwareManager *)self _setReportIntervalUs:15000];
    }
  }

  else
  {
  }
}

- (int)_setReportIntervalUs:(unsigned __int16)a3
{
  v3 = a3;
  if (![(TrackpadFirmwareManager *)self mtDeviceRef])
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::MTScanRate]"];
    [v8 handleFailureInFunction:v9 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v5 = MTDeviceSetReport();
  if (!v5)
  {
    [(TrackpadFirmwareManager *)self mtDeviceRef];
    MTDeviceGetDeviceID();
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v11 = v3;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Successfully changed the device report rate to %u (deviceID 0x%llX)", buf, 0x12u);
    }

    [(TrackpadFirmwareManager *)self _dispatchReportIntervalChangedEvent:v3];
  }

  return v5;
}

- (void)_dispatchReportIntervalChangedEvent:(unsigned __int16)a3
{
  v22 = @"ReportInterval";
  v4 = [NSNumber numberWithUnsignedShort:a3];
  v23 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v6 = _mthid_serializePropertiesEvent();
  if (v6)
  {
    v7 = mach_absolute_time();
    v8 = v6;
    LODWORD(v11) = 0;
    v9 = +[HIDEvent vendorDefinedEvent:usagePage:usage:version:data:length:options:](HIDEvent, "vendorDefinedEvent:usagePage:usage:version:data:length:options:", v7, 65280, 91, 1, [v6 bytes], objc_msgSend(v6, "length"), v11);
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v13 = "[Debug] ";
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = "[TrackpadFirmwareManager _dispatchReportIntervalChangedEvent:]";
      v18 = 2048;
      v19 = [(TrackpadFirmwareManager *)self mtDeviceId];
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [0x%llX] Dispatching properties event %@", buf, 0x34u);
    }

    [(TrackpadFirmwareManager *)self _dispatchHIDEvent:v9];
  }

  else
  {
    v9 = MTLoggingPlugin();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[Error] ";
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = "[TrackpadFirmwareManager _dispatchReportIntervalChangedEvent:]";
      v18 = 2048;
      v19 = [(TrackpadFirmwareManager *)self mtDeviceId];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Failed to serialize report rate update properties dictionary", buf, 0x2Au);
    }
  }
}

- (void)setActiveSettings:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TrackpadFirmwareManager *)self activeSettings];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(TrackpadFirmwareManager *)self activeSettings];
      v9 = [v8 buttonMode];
      if (v9 == [(PointerSettings *)v5 buttonMode])
      {
        v10 = [v8 buttonDivision];
        v11 = v10 != [(PointerSettings *)v5 buttonDivision];
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }

    if ([(TrackpadFirmwareManager *)self activated]&& v11 | ![(TrackpadFirmwareManager *)self configuredMouse])
    {
      [(TrackpadFirmwareManager *)self setConfiguredMouse:1];
      [(TrackpadFirmwareManager *)self setMouseButtonMode:[(PointerSettings *)v5 buttonMode] buttonDivision:[(PointerSettings *)v5 buttonDivision]];
    }
  }

  activeSettings = self->_activeSettings;
  self->_activeSettings = v4;
}

- (int)setMouseButtonMode:(unsigned __int8)a3 buttonDivision:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  if (![(TrackpadFirmwareManager *)self mtDeviceRef])
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::MouseButtonConfig]"];
    [v10 handleFailureInFunction:v11 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v7 = MTDeviceSetReport();
  if (!v7)
  {
    [(TrackpadFirmwareManager *)self mtDeviceRef];
    MTDeviceGetDeviceID();
    v8 = MTLoggingPlugin();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v13 = v5;
      v14 = 1024;
      v15 = v4;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated mouse button config: mode=%u division=%u (deviceID 0x%llX)", buf, 0x18u);
    }
  }

  return v7;
}

- (void)_dispatchHIDEvent:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = objc_opt_new();
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v4 + 1, &v7);
    v6.receiver = self;
    v6.super_class = TrackpadFirmwareManager;
    [(HSStage *)&v6 handleConsume:v4];

    v5 = v7;
  }

  else
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "[Error] ";
      v10 = 2080;
      v11 = "";
      v12 = 2080;
      v13 = "[TrackpadFirmwareManager _dispatchHIDEvent:]";
      v14 = 2048;
      v15 = [(TrackpadFirmwareManager *)self mtDeviceId];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Unable to dispatch nil HID event", buf, 0x2Au);
    }
  }
}

- (void)registryPropertyForKey:(id)a3
{
  v4 = a3;
  [(TrackpadFirmwareManager *)self mtDeviceRef];
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, v4, kCFAllocatorDefault, 0);

  return CFProperty;
}

- (NSNumber)productId
{
  productId = self->_productId;
  if (!productId)
  {
    v4 = [(TrackpadFirmwareManager *)self registryPropertyForKey:@"ProductID"];
    v5 = self->_productId;
    self->_productId = v4;

    productId = self->_productId;
  }

  return productId;
}

- (unint64_t)mtDeviceId
{
  result = self->_mtDeviceId;
  if (!result)
  {
    v4 = [(TrackpadFirmwareManager *)self registryPropertyForKey:@"Multitouch ID"];
    self->_mtDeviceId = [v4 unsignedIntValue];

    return self->_mtDeviceId;
  }

  return result;
}

- (NSNumber)criticalErrors
{
  [(TrackpadFirmwareManager *)self mtDeviceRef];
  CriticalErrors = MTDeviceGetCriticalErrors();
  if (CriticalErrors)
  {
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v8 = "[Error] ";
      v9 = 2080;
      v10 = "";
      v11 = 2080;
      v12 = "[TrackpadFirmwareManager criticalErrors]";
      v13 = 2048;
      v14 = [(TrackpadFirmwareManager *)self mtDeviceId];
      v15 = 1024;
      v16 = CriticalErrors;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Failed to fetch critical errors with error: 0x%08x", buf, 0x30u);
    }
  }

  v5 = [[NSNumber alloc] initWithInt:0];

  return v5;
}

- (NSString)transport
{
  if (!self->_transport)
  {
    v3 = [(TrackpadFirmwareManager *)self registryPropertyForKey:@"Transport"];
    transport = self->_transport;
    self->_transport = v3;

    if ([(NSString *)self->_transport isEqualToString:@"BluetoothLowEnergy"])
    {
      v5 = self->_transport;
      self->_transport = @"Bluetooth";
    }
  }

  v6 = self->_transport;

  return v6;
}

- (BOOL)builtIn
{
  if (self->_builtIn)
  {
    return 1;
  }

  else
  {
    v4 = [(TrackpadFirmwareManager *)self registryPropertyForKey:@"Built-In"];
    self->_builtIn = [v4 BOOLValue];

    return self->_builtIn;
  }
}

- (NSNumber)extendedFeatures
{
  extendedFeatures = self->_extendedFeatures;
  if (!extendedFeatures)
  {
    v4 = [(TrackpadFirmwareManager *)self registryPropertyForKey:@"ExtendedFeatures"];
    v5 = self->_extendedFeatures;
    self->_extendedFeatures = v4;

    extendedFeatures = self->_extendedFeatures;
  }

  return extendedFeatures;
}

- (BOOL)supports15ms
{
  v2 = [(TrackpadFirmwareManager *)self extendedFeatures];
  v3 = [v2 unsignedIntValue];

  return v3 & 1;
}

- (id)mtfwScanRate
{
  if (![(TrackpadFirmwareManager *)self mtDeviceRef])
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::GetReport(MTDeviceRef _Nonnull, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::MTScanRate]"];
    [v3 handleFailureInFunction:v4 file:@"FirmwareUtil.h" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  MTDeviceGetReport();

  return 0;
}

- (id)mtUberDebug
{
  v8 = 0;
  v2 = [(TrackpadFirmwareManager *)self mtDeviceRef];
  v4 = HSTPipeline::FirmwareUtil::GetReportData(v2, &stru_B8.reserved1, &v8, v3);
  v5 = v4;
  if (v8)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 copy];
  }

  return v6;
}

- (NSDictionary)debug
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:11];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKeyedSubscript:@"Stage"];

  v6 = [NSNumber numberWithBool:[(TrackpadFirmwareManager *)self activated]];
  [v3 setObject:v6 forKeyedSubscript:@"Activated"];

  v7 = [(TrackpadFirmwareManager *)self productId];
  [v3 setObject:v7 forKeyedSubscript:@"Product"];

  v8 = [(TrackpadFirmwareManager *)self criticalErrors];
  [v3 setObject:v8 forKeyedSubscript:@"CriticalErrors"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(TrackpadFirmwareManager *)self mtDeviceId]];
  [v3 setObject:v9 forKeyedSubscript:@"MTDeviceID"];

  v10 = [(TrackpadFirmwareManager *)self transport];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"Unknown";
  }

  [v3 setObject:v12 forKeyedSubscript:@"Transport"];

  v13 = [NSNumber numberWithBool:[(TrackpadFirmwareManager *)self builtIn]];
  [v3 setObject:v13 forKeyedSubscript:@"BuiltIn"];

  v14 = [(TrackpadFirmwareManager *)self extendedFeatures];
  [v3 setObject:v14 forKeyedSubscript:@"ExtendedFeatures"];

  v15 = [NSNumber numberWithBool:[(TrackpadFirmwareManager *)self configuredMouse]];
  [v3 setObject:v15 forKeyedSubscript:@"ConfiguredMouse"];

  v16 = [(TrackpadFirmwareManager *)self activeSettings];
  v17 = [v16 debug];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"None";
  }

  [v3 setObject:v19 forKeyedSubscript:@"ActiveSettings"];

  v20 = [(TrackpadFirmwareManager *)self mtUberDebug];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"Unknown";
  }

  [v3 setObject:v22 forKeyedSubscript:@"MTUberDebug"];

  if ([(TrackpadFirmwareManager *)self supports15ms])
  {
    v23 = [(TrackpadFirmwareManager *)self mtfwScanRate];
    [v3 setObject:v23 forKeyedSubscript:@"FWScanRate"];
  }

  v24 = [v3 copy];

  return v24;
}

@end