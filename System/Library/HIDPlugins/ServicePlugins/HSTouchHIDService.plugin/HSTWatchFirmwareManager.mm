@interface HSTWatchFirmwareManager
- (BOOL)decodeFromMap:(void *)map;
- (void)_handleGetWaterStateEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleWristStateEvent:(id)event;
- (void)_restoreFirmwareState;
- (void)encodeToMap:(void *)map;
- (void)handleConsume:(id)consume;
@end

@implementation HSTWatchFirmwareManager

- (void)_handleWristStateEvent:(id)event
{
  eventCopy = event;
  wristState = [eventCopy wristState];
  v6 = wristState;
  if (*(&self->super._state + 14) != wristState)
  {
    *(&self->super._state + 14) = wristState;
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "Unknown";
      if (v6 == 1)
      {
        v8 = "Off";
      }

      if (v6 == 2)
      {
        v8 = "On";
      }

      *buf = 136446210;
      v15 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting wrist state: %{public}s", buf, 0xCu);
    }

    deviceObj = self->super._deviceObj;
    v10 = *(&self->super._state + 14);
    if (v10 == 1)
    {
      v11 = 11;
    }

    else
    {
      v11 = 10;
    }

    if (v10 == 2)
    {
      v12 = 12;
    }

    else
    {
      v12 = v11;
    }

    *buf = (v12 << 8) | 0x70;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }

  v13.receiver = self;
  v13.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v13 handleConsume:eventCopy];
}

- (void)_handleGetWaterStateEvent:(id)event
{
  eventCopy = event;
  if (!self->super._deviceObj)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"IOReturn getReport(MTDeviceRef, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::WaterState]"];
    [v7 handleFailureInFunction:v8 file:@"HSTFirmwareManager.mm" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::GetReport(MTDeviceRef _Nonnull, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::WaterState]"];
    [v9 handleFailureInFunction:v10 file:@"FirmwareUtil.h" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  Report = MTDeviceGetReport();
  if (!Report)
  {
    Report = -536870169;
  }

  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(Report);
    [HSTFirmwareManager _handleGetDebugEvent:];
  }
}

- (void)_restoreFirmwareState
{
  v3.receiver = self;
  v3.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v3 _restoreFirmwareState];
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->super._deviceObj);
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == &dword_1C)
  {
    v6 = eventCopy[2];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(v6 + 6);
    v11 = v7 == 0x69746E6F43444948 && v8 == 0x63655273756F756ELL;
    v12 = v11 && v9 == 0x6E45676E6964726FLL;
    if (v12 && v10 == 1701601889)
    {
      v14 = eventCopy[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v14)
        {
          goto LABEL_14;
        }

        deviceObj = self->super._deviceObj;
        bOOLValue = [v14 BOOLValue];
        v17 = 0x170001025362;
        if (bOOLValue)
        {
          v17 = 0x100170001025362;
        }

        v25 = v17;
        if (!deviceObj)
        {
          v20 = +[NSAssertionHandler currentHandler];
          v21 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::ContinuousRecordingEnableWatch]"];
          [v20 handleFailureInFunction:v21 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

          v22 = +[NSAssertionHandler currentHandler];
          v23 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::ContinuousRecordingEnableWatch]"];
          [v22 handleFailureInFunction:v23 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
        }

        v18 = MTDeviceSetReport();
        if (v18)
        {
          v19 = MTLoggingPlugin();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            mach_error_string(v18);
            setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
          }
        }
      }

      goto LABEL_14;
    }
  }

  v24.receiver = self;
  v24.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v24 _handleSetPropertyEvent:eventCopy];
LABEL_14:
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTWatchFirmwareManager *)self _handleWristStateEvent:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
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
      [(HSTWatchFirmwareManager *)self _handleGetWaterStateEvent:v6];
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
        [(HSTWatchFirmwareManager *)self _handleSetPropertyEvent:v8];
      }

      else
      {
        v10.receiver = self;
        v10.super_class = HSTWatchFirmwareManager;
        [(HSTFirmwareManager *)&v10 handleConsume:v8];
      }
    }
  }
}

- (void)encodeToMap:(void *)map
{
  v5.receiver = self;
  v5.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v5 encodeToMap:?];
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, *(&self->super._state + 14));
}

- (BOOL)decodeFromMap:(void *)map
{
  v6.receiver = self;
  v6.super_class = HSTWatchFirmwareManager;
  if (![(HSTFirmwareManager *)&v6 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTWatchFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  *(&self->super._state + 14) = HSUtil::Decoder::decodeUInt(map, HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTWatchFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  return 1;
}

- (void)decodeFromMap:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end