@interface HSTFirmwareManager
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (HSTFirmwareManager)initWithDevice:(__MTDevice *)a3;
- (id).cxx_construct;
- (id)preferenceValueForKey:(id)a3;
- (id)preferences;
- (void)_handleDriverEvent:(id)a3;
- (void)_handleExternalMessageEvent:(id)a3;
- (void)_handleGetDebugEvent:(id)a3;
- (void)_handleHSTFrame:(id)a3;
- (void)_handleProxClearedAfterOccludedWakeEvent:(id)a3;
- (void)_handleResetEvent:(id)a3;
- (void)_handleScreenOrientationEvent:(id)a3;
- (void)_handleSetReportEvent:(id)a3;
- (void)_handleStockholmStateEvent:(id)a3;
- (void)_handleStuckTouchDetectorStateEvent:(id)a3;
- (void)_handleTouchModeEvent:(id)a3;
- (void)_handleUSBChargingStateEvent:(id)a3;
- (void)_handleWirelessChargingStateEvent:(id)a3;
- (void)_restoreFirmwareState;
- (void)_setEnabledInputsReport;
- (void)encodeToMap:(void *)a3;
- (void)handleConsume:(id)a3;
- (void)setPreferenceValue:(id)a3 forKey:(id)a4;
@end

@implementation HSTFirmwareManager

- (HSTFirmwareManager)initWithDevice:(__MTDevice *)a3
{
  if (!a3)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HSTFirmwareManager.mm" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v15.receiver = self;
  v15.super_class = HSTFirmwareManager;
  v5 = [(HSStage *)&v15 init];
  if (v5)
  {
    v6 = CFRetain(a3);
    deviceObj = v5->_deviceObj;
    v5->_deviceObj = v6;

    v14[0] = 0xAAAAAAAAAAAAAAAALL;
    v14[1] = 0xAAAAAAAAAAAAAAAALL;
    HSUtil::ObjectLock::ObjectLock(v14, v5);
    Service = MTDeviceGetService();
    CFProperty = IORegistryEntryCreateCFProperty(Service, @"MaintainPowerInUILock", 0, 0);
    v5->_state.poweredWhenScreenOff = CFProperty != 0;

    v10 = v5;
    HSUtil::ObjectLock::~ObjectLock(v14);
  }

  return v5;
}

- (void)_handleTouchModeEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 touchMode];
  touchMode = self->_state.touchMode;
  if (touchMode != v5)
  {
    self->_state.prevTouchMode = touchMode;
    self->_state.touchMode = v5;
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_state.touchMode;
      *buf = 67109120;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting touch mode: 0x%x", buf, 8u);
    }

    [(HSTFirmwareManager *)self _setEnabledInputsReport];
  }

  v9.receiver = self;
  v9.super_class = HSTFirmwareManager;
  [(HSStage *)&v9 handleConsume:v4];
}

- (void)_handleScreenOrientationEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 screenOrientation];
  if (self->_state.screenOrientation != v5)
  {
    self->_state.screenOrientation = v5;
    deviceObj = self->_deviceObj;
    v8 = -99;
    v9 = v5;
    memset(v10, 0, sizeof(v10));
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>(deviceObj);
    [(HSTFirmwareManager *)self _setEnabledInputsReport];
  }

  v7.receiver = self;
  v7.super_class = HSTFirmwareManager;
  [(HSStage *)&v7 handleConsume:v4];
}

- (void)_handleStockholmStateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 stockholmState];
  if (self->_state.stockholmState != v5)
  {
    self->_state.stockholmState = v5;
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Inactive";
      if (self->_state.stockholmState == 1)
      {
        v7 = "Active";
      }

      if (self->_state.stockholmState)
      {
        v8 = v7;
      }

      else
      {
        v8 = "Unknown";
      }

      *buf = 136446210;
      v15 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting stockholm state: %{public}s", buf, 0xCu);
    }

    deviceObj = self->_deviceObj;
    stockholmState = self->_state.stockholmState;
    if (stockholmState == 1)
    {
      v11 = 5;
    }

    else
    {
      v11 = 7;
    }

    if (stockholmState == 2)
    {
      v12 = 6;
    }

    else
    {
      v12 = v11;
    }

    *buf = (v12 << 8) | 0x70;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }

  v13.receiver = self;
  v13.super_class = HSTFirmwareManager;
  [(HSStage *)&v13 handleConsume:v4];
}

- (void)_handleWirelessChargingStateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 wirelessChargingState];
  if (self->_state.wirelessChargingState != v5)
  {
    self->_state.wirelessChargingState = v5;
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_state.wirelessChargingState == 1)
      {
        v7 = "Detected";
      }

      else
      {
        v7 = "NotDetected";
      }

      *buf = 136446210;
      v12 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting wireless charging state: %{public}s", buf, 0xCu);
    }

    deviceObj = self->_deviceObj;
    if (self->_state.wirelessChargingState == 1)
    {
      v9 = 5232;
    }

    else
    {
      v9 = 5488;
    }

    *buf = v9;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }

  v10.receiver = self;
  v10.super_class = HSTFirmwareManager;
  [(HSStage *)&v10 handleConsume:v4];
}

- (void)_handleProxClearedAfterOccludedWakeEvent:(id)a3
{
  v4 = a3;
  if ([(HSTFirmwareManager *)self _isSleeping])
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Ignoring prox clear while sleeping", buf, 2u);
    }
  }

  else
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Prox cleared after occluded wake", buf, 2u);
    }

    deviceObj = self->_deviceObj;
    *buf = 6768;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }

  v8.receiver = self;
  v8.super_class = HSTFirmwareManager;
  [(HSStage *)&v8 handleConsume:v4];
}

- (void)_handleUSBChargingStateEvent:(id)a3
{
  v4 = a3;
  [(HSTFirmwareManager *)self _setUSBChargingState:v4];
  v5.receiver = self;
  v5.super_class = HSTFirmwareManager;
  [(HSStage *)&v5 handleConsume:v4];
}

- (void)_handleStuckTouchDetectorStateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 stuckTouchDetectorState];
  if (self->_state.stuckTouchDetectorState != v5)
  {
    self->_state.stuckTouchDetectorState = v5;
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_state.stuckTouchDetectorState == 1)
      {
        v7 = "Disabled";
      }

      else
      {
        v7 = "Enabled";
      }

      *buf = 136446210;
      v12 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting stuck touch detector state: %{public}s", buf, 0xCu);
    }

    deviceObj = self->_deviceObj;
    if (self->_state.stuckTouchDetectorState)
    {
      v9 = -24208;
    }

    else
    {
      v9 = -24464;
    }

    *buf = v9;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }

  v10.receiver = self;
  v10.super_class = HSTFirmwareManager;
  [(HSStage *)&v10 handleConsume:v4];
}

- (void)_setEnabledInputsReport
{
  p_state = &self->_state;
  EnabledInputsReport = createEnabledInputsReport(self->_state.touchMode, self->_state.screenOrientation);
  v5 = HIDWORD(EnabledInputsReport);
  LOBYTE(v18) = HIBYTE(EnabledInputsReport);
  HIBYTE(v18) = v6;
  LOBYTE(v17) = BYTE3(EnabledInputsReport);
  HIBYTE(v17) = BYTE4(EnabledInputsReport);
  v7 = [NSString stringWithFormat:@"Setting enabled input report: Awake 0x%04X 0x%04X", (EnabledInputsReport >> 8), v17];
  v8 = v7;
  if (p_state->poweredWhenScreenOff)
  {
    v9 = [v7 stringByAppendingFormat:@", Alseep 0x%04X 0x%04X", (v5 >> 8), v18];

    if (!self->_deviceObj)
    {
      v13 = +[NSAssertionHandler currentHandler];
      v14 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::AwakeAsleep]"];
      [v13 handleFailureInFunction:v14 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

      v15 = +[NSAssertionHandler currentHandler];
      v16 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::AwakeAsleep]"];
      [v15 handleFailureInFunction:v16 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
    }

    v10 = MTDeviceSetReport();
    if (v10)
    {
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        mach_error_string(v10);
        setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
      }
    }

    v8 = v9;
  }

  else
  {
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake>(self->_deviceObj);
  }

  v12 = MTLoggingPlugin();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)_restoreFirmwareState
{
  [(HSTFirmwareManager *)self _setEnabledInputsReport];
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>(self->_deviceObj);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->_deviceObj);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->_deviceObj);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->_deviceObj);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->_deviceObj);
  if (self->_state.imagesEnabled)
  {
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::DataMode>(self->_deviceObj);
  }

  if (self->_state.reportAlwaysEnabled)
  {
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostInterruptMode>(self->_deviceObj);
  }
}

- (void)_handleResetEvent:(id)a3
{
  v4 = a3;
  [(HSTFirmwareManager *)self _restoreFirmwareState];
  v5.receiver = self;
  v5.super_class = HSTFirmwareManager;
  [(HSStage *)&v5 handleConsume:v4];
}

- (void)_handleGetDebugEvent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setObject:v7 forKeyedSubscript:@"Stage"];

  v16 = -1431655766;
  v15 = 127;
  if (!self->_deviceObj)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"IOReturn getReport(MTDeviceRef, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::CriticalError]"];
    [v10 handleFailureInFunction:v11 file:@"HSTFirmwareManager.mm" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v12 = +[NSAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::GetReport(MTDeviceRef _Nonnull, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::CriticalError]"];
    [v12 handleFailureInFunction:v13 file:@"FirmwareUtil.h" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  v17 = 0;
  Report = MTDeviceGetReport();
  if (!Report)
  {
    Report = -536870169;
  }

  v9 = MTLoggingPlugin();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(Report);
    [HSTFirmwareManager _handleGetDebugEvent:];
  }

  *(v4 + 16) = 1;
  [*(v4 + 3) addObject:v5];
  v14.receiver = self;
  v14.super_class = HSTFirmwareManager;
  [(HSStage *)&v14 handleConsume:v4];
}

- (void)_handleSetReportEvent:(id)a3
{
  deviceObj = self->_deviceObj;
  v5 = [a3 report];
  HSTPipeline::FirmwareUtil::SetReportWithData(deviceObj, v5, v4);
}

- (void)_handleDriverEvent:(id)a3
{
  v4 = a3;
  if ([v4 notification] == 5)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Client connected, re-injecting output frames", buf, 2u);
    }

    v6 = 1;
LABEL_9:

    self->_state.filteredClients = v6;
    goto LABEL_10;
  }

  if ([v4 notification] == 6)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Client disconnected, stop re-injection", v7, 2u);
    }

    v6 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_handleHSTFrame:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      -[HSTFirmwareManager _handleHSTFrame:].cold.1([v3[1] bytes], v5, v4);
    }

    [v3[1] bytes];
    [v3[1] length];
    MTDeviceInjectFrame();
  }
}

- (void)_handleExternalMessageEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 message];
  [v4 bytes];

  v5 = [v3 message];
  v6 = [v5 length];

  if (v6 <= 1)
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HSTFirmwareManager *)v6 _handleExternalMessageEvent:v7];
    }

LABEL_7:

    goto LABEL_8;
  }

  v8 = MTDeviceSendExternalMessage();
  if (v8)
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HSTFirmwareManager *)v8 _handleExternalMessageEvent:v7];
    }

    goto LABEL_7;
  }

LABEL_8:
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
    [(HSTFirmwareManager *)self _handleTouchModeEvent:v4];
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
      [(HSTFirmwareManager *)self _handleScreenOrientationEvent:v6];
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
        [(HSTFirmwareManager *)self _handleStockholmStateEvent:v8];
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
          [(HSTFirmwareManager *)self _handleWirelessChargingStateEvent:v10];
        }

        else
        {
          v12 = HSUtil::DynamicCast<HSTProxClearedAfterOccludedWakeEvent>(v10);

          if (v12)
          {
            [(HSTFirmwareManager *)self _handleProxClearedAfterOccludedWakeEvent:v10];
          }

          else
          {
            v13 = HSUtil::DynamicCast<HSTUSBChargingStateEvent>(v10);

            if (v13)
            {
              [(HSTFirmwareManager *)self _handleUSBChargingStateEvent:v10];
            }

            else
            {
              v14 = HSUtil::DynamicCast<HSTStuckTouchDetectorStateEvent>(v10);

              if (v14)
              {
                [(HSTFirmwareManager *)self _handleStuckTouchDetectorStateEvent:v10];
              }

              else
              {
                v15 = HSUtil::DynamicCast<HSTResetEvent>(v10);

                if (v15)
                {
                  [(HSTFirmwareManager *)self _handleResetEvent:v10];
                }

                else
                {
                  v16 = HSUtil::DynamicCast<HSTNotificationEvent>(v10);

                  if (v16)
                  {
                    [(HSTFirmwareManager *)self _handleDriverEvent:v10];
                  }

                  else
                  {
                    v17 = HSUtil::DynamicCast<HSTSetReportEvent>(v10);

                    if (v17)
                    {
                      [(HSTFirmwareManager *)self _handleSetReportEvent:v10];
                    }

                    else
                    {
                      v18 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v10);

                      if (v18)
                      {
                        [(HSTFirmwareManager *)self _handleGetDebugEvent:v10];
                      }

                      else
                      {
                        v19 = HSUtil::DynamicCast<HSTSetPropertyEvent>(v10);

                        if (v19)
                        {
                          [(HSTFirmwareManager *)self _handleSetPropertyEvent:v10];
                        }

                        else
                        {
                          v20 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v10);

                          if (v20)
                          {
                            [(HSTFirmwareManager *)self _handleGetPropertyEvent:v10];
                          }

                          else
                          {
                            v21 = HSUtil::DynamicCast<HSTExternalMessageEvent>(v10);

                            if (v21)
                            {
                              [(HSTFirmwareManager *)self _handleExternalMessageEvent:v10];
                            }

                            else
                            {
                              v24.receiver = self;
                              v24.super_class = HSTFirmwareManager;
                              [(HSStage *)&v24 handleConsume:v10];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (self->_state.filteredClients)
  {
    v22 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    [(HSTFirmwareManager *)self _handleHSTFrame:v23];
  }
}

- (void)encodeToMap:(void *)a3
{
  p_state = &self->_state;
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)119,(char)101,(char)114,(char)101,(char)100,(char)87,(char)104,(char)101,(char)110,(char)83,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)102,(char)102>::Key, self->_state.poweredWhenScreenOff);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key, p_state->touchMode);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)84,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key, p_state->prevTouchMode);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key, p_state->screenOrientation);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->stockholmState);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->wirelessChargingState);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)117,(char)115,(char)98,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->usbChargingState);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, p_state->stuckTouchDetectorState);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key, p_state->imagesEnabled);
  v5 = HSUtil::CoderKey::Literal<(char)114,(char)101,(char)112,(char)111,(char)114,(char)116,(char)65,(char)108,(char)119,(char)97,(char)121,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key;
  reportAlwaysEnabled = p_state->reportAlwaysEnabled;

  HSUtil::Encoder::encodeBool(a3, v5, reportAlwaysEnabled);
}

- (BOOL)decodeFromMap:(void *)a3
{
  p_state = &self->_state;
  self->_state.poweredWhenScreenOff = HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)119,(char)101,(char)114,(char)101,(char)100,(char)87,(char)104,(char)101,(char)110,(char)83,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)102,(char)102>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->touchMode = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)116,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->prevTouchMode = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)101,(char)118,(char)84,(char)111,(char)117,(char)99,(char)104,(char)77,(char)111,(char)100,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->screenOrientation = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)79,(char)114,(char)105,(char)101,(char)110,(char)116,(char)97,(char)116,(char)105,(char)111,(char)110>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->stockholmState = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)111,(char)99,(char)107,(char)104,(char)111,(char)108,(char)109,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->wirelessChargingState = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)119,(char)105,(char)114,(char)101,(char)108,(char)101,(char)115,(char)115,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->usbChargingState = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)117,(char)115,(char)98,(char)67,(char)104,(char)97,(char)114,(char)103,(char)105,(char)110,(char)103,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->stuckTouchDetectorState = HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)116,(char)117,(char)99,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)101,(char)116,(char)101,(char)99,(char)116,(char)111,(char)114,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->imagesEnabled = HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)105,(char)109,(char)97,(char)103,(char)101,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  p_state->reportAlwaysEnabled = HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)114,(char)101,(char)112,(char)111,(char)114,(char)116,(char)65,(char)108,(char)119,(char)97,(char)121,(char)115,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  return 1;
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  [(HSTFirmwareManager *)self encodeToMap:a3];
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  v10 = v5;
  v11 = v5;
  v9 = v5;
  HSUtil::Decoder::decodeMap(a3, &v9);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFirmwareManager handleHSDecode:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [(HSTFirmwareManager *)self decodeFromMap:&v9];
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v7 = v10;
  *&v10 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (id)preferences
{
  {
    v4 = [[HSPreference alloc] initWithKey:@"imagesEnabled" name:@"Images" description:@"Include images with paths (0xAC=3)"];
    v6[0] = v4;
    v5 = [[HSPreference alloc] initWithKey:@"reportAlwaysEnabled" name:@"Report Always" description:@"Stream data constantly"];
    v6[1] = v5;
    [HSTFirmwareManager preferences]::prefs = [NSArray arrayWithObjects:v6 count:2];
  }

  v2 = [HSTFirmwareManager preferences]::prefs;

  return v2;
}

- (id)preferenceValueForKey:(id)a3
{
  v4 = a3;
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(v8, self);
  if ([v4 isEqualToString:@"imagesEnabled"])
  {
    v5 = 11;
LABEL_5:
    v6 = [NSNumber numberWithBool:*(&self->_state.poweredWhenScreenOff + v5)];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"reportAlwaysEnabled"])
  {
    v5 = 12;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  HSUtil::ObjectLock::~ObjectLock(v8);

  return v6;
}

- (void)setPreferenceValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(&v10, self);
  if (![v7 isEqualToString:@"imagesEnabled"])
  {
    if (![v7 isEqualToString:@"reportAlwaysEnabled"])
    {
      goto LABEL_10;
    }

    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v8)
      {
        self->_state.reportAlwaysEnabled = [v8 BOOLValue];
        setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostInterruptMode>(self->_deviceObj);
        goto LABEL_9;
      }

LABEL_10:
      v9 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  self->_state.imagesEnabled = [v8 BOOLValue];
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::DataMode>(self->_deviceObj);
LABEL_9:
  v9 = 1;
LABEL_12:

LABEL_13:
  [v11 unlock];
  LOBYTE(v10) = 0;
  if (v9)
  {
    [(HSStage *)self postNotification:HSPreferenceChangedNotification];
  }

  HSUtil::ObjectLock::~ObjectLock(&v10);
}

- (id).cxx_construct
{
  *(self + 128) = 0;
  *(self + 130) = 65537;
  *(self + 138) = 1;
  return self;
}

- (void)_handleGetDebugEvent:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_1(v0, v1, v2, 1.5047e-36);
  OUTLINED_FUNCTION_3_0(&dword_0, "FirmwareUtil::GetReport (0x%02X) failed: %{public}s", v3, v4);
}

- (void)_handleHSTFrame:(os_log_t)log .cold.1(unsigned __int8 *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "frame re-injected 0x%x", buf, 8u);
}

- (void)_handleExternalMessageEvent:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error 0x%08X sending external message", v2, 8u);
}

- (void)_handleExternalMessageEvent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Message length (%ld) is smaller than message type size (%lu)", &v2, 0x16u);
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

- (void)decodeFromMap:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end