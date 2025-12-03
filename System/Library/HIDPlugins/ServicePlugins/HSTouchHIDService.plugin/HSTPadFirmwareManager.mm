@interface HSTPadFirmwareManager
- (void)_handleVendorEvent:(id)event;
- (void)_restoreFirmwareState;
- (void)_setEnabledInputsReport;
- (void)_setUSBChargingState:(id)state;
- (void)handleConsume:(id)consume;
@end

@implementation HSTPadFirmwareManager

- (void)_setEnabledInputsReport
{
  p_state = &self->super.super._state;
  touchMode = self->super.super._state.touchMode;
  if ((touchMode & 0x1000) != 0)
  {
    touchMode = touchMode | [objc_opt_class() _haveToWake:touchMode];
  }

  [(HSTiOSFirmwareManager *)self setPowerState:touchMode];
  createEnabledInputsReport(touchMode, p_state->screenOrientation);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake>(self->super.super._deviceObj);
}

- (void)_setUSBChargingState:(id)state
{
  stateCopy = state;
  usbChargingState = [stateCopy usbChargingState];
  if (self->super.super._state.usbChargingState != usbChargingState)
  {
    self->super.super._state.usbChargingState = usbChargingState;
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super.super._state.usbChargingState == 1)
      {
        v7 = "Connected";
      }

      else
      {
        v7 = "NotConnected";
      }

      v10 = 136446210;
      v11 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting USB charging state: %{public}s", &v10, 0xCu);
    }

    deviceObj = self->super.super._deviceObj;
    if (self->super.super._state.usbChargingState == 1)
    {
      v9 = 6256;
    }

    else
    {
      v9 = 6512;
    }

    LOWORD(v10) = v9;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj);
  }
}

- (void)_restoreFirmwareState
{
  [(HSTPadFirmwareManager *)self _setEnabledInputsReport];
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>(self->super.super._deviceObj);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(self->super.super._deviceObj);
}

- (void)_handleVendorEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 2)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      touchMode = self->super.super._state.touchMode;
      v8[0] = 67109120;
      v8[1] = touchMode;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "iPad handle device ready in state 0x%x", v8, 8u);
    }

    if ((self->super.super._state.touchMode & 0x10) != 0)
    {
      v7 = MTLoggingPlugin();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Restoring firmware", v8, 2u);
      }

      [(HSTPadFirmwareManager *)self _restoreFirmwareState];
    }
  }
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
    [(HSTPadFirmwareManager *)self _handleVendorEvent:consumeCopy];
  }

  v6.receiver = self;
  v6.super_class = HSTPadFirmwareManager;
  [(HSTFirmwareManager *)&v6 handleConsume:consumeCopy];
}

@end