@interface EmbeddedTrackpadFirmwareManager
- (void)_handleGetPropertyEvent:(id)event;
- (void)_handleHostStateEvent:(id)event;
- (void)handleConsume:(id)consume;
- (void)handleSetPropertyEvent:(id)event;
@end

@implementation EmbeddedTrackpadFirmwareManager

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
    [(EmbeddedTrackpadFirmwareManager *)self _handleHostStateEvent:consumeCopy];
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

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = [NSString stringWithUTF8String:?];
  if ([(__CFString *)v5 isEqualToString:@"DeviceOpenedByEventSystem"])
  {
    v6 = eventCopy[5];
    [(TrackpadFirmwareManager *)self mtDeviceRef];
    Service = MTDeviceGetService();
    IORegistryEntrySetCFProperty(Service, v5, v6);
  }

  v8.receiver = self;
  v8.super_class = EmbeddedTrackpadFirmwareManager;
  [(TrackpadFirmwareManager *)&v8 handleSetPropertyEvent:eventCopy];
}

- (void)_handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == 32)
  {
    v6 = eventCopy[2];
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    if (v7 == 0x746E696F50444948 && v8 == 0x656C656363417265 && v10 == 0x754D6E6F69746172 && v9 == 0x7265696C7069746CLL)
    {
      extendedFeatures = [(TrackpadFirmwareManager *)self extendedFeatures];
      unsignedIntValue = [extendedFeatures unsignedIntValue];

      productId = [(TrackpadFirmwareManager *)self productId];
      intValue = [productId intValue];

      if (intValue == 613 && (unsignedIntValue & 1) == 0)
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

- (void)_handleHostStateEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
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
      mtDeviceId = [(TrackpadFirmwareManager *)self mtDeviceId];
      v30 = 1024;
      coverClosed = [eventCopy coverClosed];
      v32 = 1024;
      displayOff = [eventCopy displayOff];
      v34 = 1024;
      screenOrientation = [eventCopy screenOrientation];
      v36 = 1024;
      deviceOrientation = [eventCopy deviceOrientation];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [0x%llX] Notifying device of host state change coverClosed(%d) displayOff(%d) screenOrientation(%d) deviceOrientation(%d)", buf, 0x42u);
    }

    v15 = -99;
    screenOrientation2 = [eventCopy screenOrientation];
    coverClosed2 = [eventCopy coverClosed];
    if ([eventCopy displayOff])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v17 = v7 | coverClosed2;
    deviceOrientation2 = [eventCopy deviceOrientation];
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
        mtDeviceId2 = [(TrackpadFirmwareManager *)self mtDeviceId];
        *buf = 136316162;
        v23 = "[Error] ";
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "[EmbeddedTrackpadFirmwareManager _handleHostStateEvent:]";
        v28 = 2048;
        mtDeviceId = mtDeviceId2;
        v30 = 1024;
        coverClosed = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Failed to send host state notification to the device with error: 0x%08x", buf, 0x30u);
      }
    }

    v14.receiver = self;
    v14.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v14 handleConsume:eventCopy];
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
      mtDeviceId = [(TrackpadFirmwareManager *)self mtDeviceId];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [0x%llX] Received invalid host state event", buf, 0x2Au);
    }

    v21.receiver = self;
    v21.super_class = EmbeddedTrackpadFirmwareManager;
    [(TrackpadFirmwareManager *)&v21 handleConsume:0];
  }
}

@end