@interface AXSystemCameraTorchManager
- (BOOL)openTorchDevice;
- (void)closeTorchDevice;
- (void)turnTorchOff;
- (void)turnTorchOn;
@end

@implementation AXSystemCameraTorchManager

- (BOOL)openTorchDevice
{
  v3 = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  captureDevice = self->_captureDevice;
  self->_captureDevice = v3;

  v5 = self->_captureDevice;

  return [(AVCaptureDevice *)v5 lockForConfiguration:0];
}

- (void)closeTorchDevice
{
  [(AVCaptureDevice *)self->_captureDevice unlockForConfiguration];
  captureDevice = self->_captureDevice;
  self->_captureDevice = 0;
}

- (void)turnTorchOn
{
  if (![(AVCaptureDevice *)self->_captureDevice isTorchModeSupported:1])
  {
    captureDevice = self->_captureDevice;
    _AXAssert();
  }

  if ([(AVCaptureDevice *)self->_captureDevice isTorchModeSupported:1, captureDevice])
  {
    [(AVCaptureDevice *)self->_captureDevice setTorchMode:1];
  }

  else
  {
    v3 = +[AXSubsystemVisualAlerts sharedInstance];
    v4 = [v3 ignoreLogging];

    if ((v4 & 1) == 0)
    {
      v5 = +[AXSubsystemVisualAlerts identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v18 = self->_captureDevice;
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v20 = v9;
          _os_log_impl(&dword_0, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v10 = +[AXSubsystemVisualAlerts sharedInstance];
  v11 = [v10 ignoreLogging];

  if ((v11 & 1) == 0)
  {
    v12 = +[AXSubsystemVisualAlerts identifier];
    v13 = AXLoggerForFacility();

    v14 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = AXColorizeFormatLog();
      v16 = _AXStringForArgs();
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138543362;
        v20 = v16;
        _os_log_impl(&dword_0, v13, v14, "%{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)turnTorchOff
{
  if (![(AVCaptureDevice *)self->_captureDevice isTorchModeSupported:0])
  {
    captureDevice = self->_captureDevice;
    _AXAssert();
  }

  if ([(AVCaptureDevice *)self->_captureDevice isTorchModeSupported:0, captureDevice])
  {
    [(AVCaptureDevice *)self->_captureDevice setTorchMode:0];
  }

  else
  {
    v3 = +[AXSubsystemVisualAlerts sharedInstance];
    v4 = [v3 ignoreLogging];

    if ((v4 & 1) == 0)
    {
      v5 = +[AXSubsystemVisualAlerts identifier];
      v6 = AXLoggerForFacility();

      v7 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = AXColorizeFormatLog();
        v18 = self->_captureDevice;
        v9 = _AXStringForArgs();
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 138543362;
          v20 = v9;
          _os_log_impl(&dword_0, v6, v7, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v10 = +[AXSubsystemVisualAlerts sharedInstance];
  v11 = [v10 ignoreLogging];

  if ((v11 & 1) == 0)
  {
    v12 = +[AXSubsystemVisualAlerts identifier];
    v13 = AXLoggerForFacility();

    v14 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = AXColorizeFormatLog();
      v16 = _AXStringForArgs();
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138543362;
        v20 = v16;
        _os_log_impl(&dword_0, v13, v14, "%{public}@", buf, 0xCu);
      }
    }
  }
}

@end