@interface HSTPhoneFirmwareManager
- (BOOL)_readAODLogging;
- (HSTPhoneFirmwareManager)initWithDevice:(__MTDevice *)a3;
- (void)_handleGetPropertyEvent:(id)a3;
- (void)_handleSetPropertyEvent:(id)a3;
- (void)_restoreFirmwareState;
- (void)_setAODLogging;
- (void)_setEnabledInputsReport;
- (void)_writeAODLogging:(id)a3;
@end

@implementation HSTPhoneFirmwareManager

- (void)_setEnabledInputsReport
{
  p_state = &self->super.super._state;
  touchMode = self->super.super._state.touchMode;
  if ((touchMode & 0x1000) != 0)
  {
    touchMode = touchMode | [objc_opt_class() _haveToWake:touchMode];
  }

  if ((touchMode & 5) == 4)
  {
    if (*(&self->super.super._state + 14) == 1)
    {
      deviceObj = self->super.super._deviceObj;
      if ((touchMode & 5) == 4)
      {
        v6 = 687;
      }

      else
      {
        v6 = (((touchMode >> 2) & 1) << 8) | 0xAF;
      }

      v9 = v6;
      setReport<HSTPipeline::FirmwareInterface::FeatureReport::FaceDetectionMode>(deviceObj);
    }
  }

  else if ((touchMode & 1) != 0 || (p_state->prevTouchMode & 5) != 4)
  {
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::FaceDetectionMode>(self->super.super._deviceObj);
    [(HSTiOSFirmwareManager *)self setPowerState:touchMode];
    createEnabledInputsReport(touchMode, p_state->screenOrientation);
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake>(self->super.super._deviceObj);
  }

  else
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Filtering screen off glitch after call", buf, 2u);
    }
  }
}

- (HSTPhoneFirmwareManager)initWithDevice:(__MTDevice *)a3
{
  if (!a3)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HSTFirmwareManager.mm" lineNumber:737 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v10.receiver = self;
  v10.super_class = HSTPhoneFirmwareManager;
  v5 = [(HSTFirmwareManager *)&v10 initWithDevice:a3];
  if (v5)
  {
    *(&v5->super.super._state + 14) = getIntProperty(a3, @"InCallPowerOff") != 0;
    v6 = v5;
  }

  return v5;
}

- (void)_restoreFirmwareState
{
  v3.receiver = self;
  v3.super_class = HSTPhoneFirmwareManager;
  [(HSTFirmwareManager *)&v3 _restoreFirmwareState];
  [(HSTPhoneFirmwareManager *)self _setAODLogging];
}

- (void)_handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HSTPhoneFirmwareManager;
  [(HSTFirmwareManager *)&v12 _handleSetPropertyEvent:v4];
  v5 = v4 + 16;
  v6 = v4[39];
  if (v6 < 0)
  {
    if (*(v4 + 3) != 10)
    {
      goto LABEL_15;
    }

    v5 = *v5;
  }

  else if (v6 != 10)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  v8 = *(v5 + 4);
  if (v7 == 0x6967676F4C444F41 && v8 == 26478)
  {
    v10 = *(v4 + 5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(HSTPhoneFirmwareManager *)self _writeAODLogging:v11];
    [(HSTPhoneFirmwareManager *)self _setAODLogging];
  }

LABEL_15:
}

- (void)_writeAODLogging:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v8 = @"AODLogging";
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 setObject:v5 forKey:v7];
}

- (BOOL)_readAODLogging
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 dictionaryForKey:v4];

  v6 = [v5 objectForKeyedSubscript:@"AODLogging"];
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
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HSTPhoneFirmwareManager;
  [(HSTFirmwareManager *)&v12 _handleGetPropertyEvent:v4];
  v5 = v4 + 16;
  v6 = v4[39];
  if (v6 < 0)
  {
    if (*(v4 + 3) != 10)
    {
      goto LABEL_12;
    }

    v5 = *v5;
  }

  else if (v6 != 10)
  {
    goto LABEL_12;
  }

  v7 = *v5;
  v8 = *(v5 + 4);
  if (v7 == 0x6967676F4C444F41 && v8 == 26478)
  {
    v10 = [NSNumber numberWithBool:[(HSTPhoneFirmwareManager *)self _readAODLogging]];
    v11 = *(v4 + 5);
    *(v4 + 5) = v10;
  }

LABEL_12:
}

- (void)_setAODLogging
{
  if (MGGetBoolAnswer())
  {
    IntProperty = getIntProperty(self->super.super._deviceObj, @"AODLoggingReportID");
    if (IntProperty)
    {
      v4 = IntProperty;
      v5 = [(HSTPhoneFirmwareManager *)self _readAODLogging];
      v6 = MTLoggingPlugin();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v14 = v4;
        v15 = 1024;
        v16 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting AOD logging report 0x%x: %u", buf, 0xEu);
      }

      if (!self->super.super._deviceObj)
      {
        v9 = +[NSAssertionHandler currentHandler];
        v10 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::OneByteReport]"];
        [v9 handleFailureInFunction:v10 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

        v11 = +[NSAssertionHandler currentHandler];
        v12 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::OneByteReport]"];
        [v11 handleFailureInFunction:v12 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
      }

      v7 = MTDeviceSetReport();
      if (v7)
      {
        v8 = MTLoggingPlugin();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          mach_error_string(v7);
          setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
        }
      }
    }
  }
}

@end