@interface EmbeddedTrackpadFirmwareManager
- (void)_handleGetPropertyEvent:(id)a3;
- (void)_handleHostStateEvent:(id)a3;
- (void)handleConsume:(id)a3;
- (void)handleSetPropertyEvent:(id)a3;
@end

@implementation EmbeddedTrackpadFirmwareManager

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
    [(EmbeddedTrackpadFirmwareManager *)self _handleHostStateEvent:v4];
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
      [(EmbeddedTrackpadFirmwareManager *)self _handleGetPropertyEvent:v6];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = EmbeddedTrackpadFirmwareManager;
      [(TrackpadFirmwareManager *)&v8 handleConsume:v6];
    }
  }
}

- (void)handleSetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:?];
  if ([(__CFString *)v5 isEqualToString:@"DeviceOpenedByEventSystem"])
  {
    v6 = v4[5];
    [(TrackpadFirmwareManager *)self mtDeviceRef];
    Service = MTDeviceGetService();
    IORegistryEntrySetCFProperty(Service, v5, v6);
  }

  v8.receiver = self;
  v8.super_class = EmbeddedTrackpadFirmwareManager;
  [(TrackpadFirmwareManager *)&v8 handleSetPropertyEvent:v4];
}

- (void)_handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 39) < 0 && v4[3] == 32)
  {
    v6 = v4[2];
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    if (v7 == 0x746E696F50444948 && v8 == 0x656C656363417265 && v10 == 0x754D6E6F69746172 && v9 == 0x7265696C7069746CLL)
    {
      v14 = [(TrackpadFirmwareManager *)self extendedFeatures];
      v15 = [v14 unsignedIntValue];

      v16 = [(TrackpadFirmwareManager *)self productId];
      v17 = [v16 intValue];

      if (v17 == 613 && (v15 & 1) == 0)
      {
        v18 = v5[5];
        v5[5] = &off_112458;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = EmbeddedTrackpadFirmwareManager;
  [(TrackpadFirmwareManager *)&v19 handleConsume:v5];
}

- (void)_handleHostStateEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316930;
      v23 = "[Debug] ";
      v24 = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
      v28 = 2048;
      v29 = [(TrackpadFirmwareManager *)self mtDeviceId];
      v30 = 1024;
      v31 = [v4 coverClosed];
      v32 = 1024;
      v33 = [v4 displayOff];
      v34 = 1024;
      v35 = [v4 screenOrientation];
      v36 = 1024;
      v37 = [v4 deviceOrientation];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [0x%llX] Notifying device of host state change coverClosed(%d) displayOff(%d) screenOrientation(%d) deviceOrientation(%d)", buf, 0x42u);
    }

    v15 = -99;
    v16 = [v4 screenOrientation];
    v6 = [v4 coverClosed];
    if ([v4 displayOff])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v17 = v7 | v6;
    v18 = [v4 deviceOrientation];
    v19 = 0;
    v20 = 0;
    if (![(TrackpadFirmwareManager *)self mtDeviceRef])
    {
      v12 = +[NSAssertionHandler currentHandler];
      v13 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl]"];
      [v12 handleFailureInFunction:v13 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
    }

    v8 = MTDeviceSetReport();
    if (v8)
    {
      v9 = MTLoggingPlugin();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(TrackpadFirmwareManager *)self mtDeviceId];
        *buf = 136316162;
        v23 = "[Error] ";
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
        v28 = 2048;
        v29 = v10;
        v30 = 1024;
        v31 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Failed to send host state notification to the device with error: 0x%08x", buf, 0x30u);
      }
    }

    v14.receiver = self;
    v14.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v14 handleConsume:v4];
  }

  else
  {
    v11 = MTLoggingPlugin();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "[Error] ";
      v24 = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
      v28 = 2048;
      v29 = [(TrackpadFirmwareManager *)self mtDeviceId];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Received invalid host state event", buf, 0x2Au);
    }

    v21.receiver = self;
    v21.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v21 handleConsume:0];
  }
}

@end