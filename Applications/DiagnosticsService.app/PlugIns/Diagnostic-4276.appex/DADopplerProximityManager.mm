@interface DADopplerProximityManager
+ (id)sharedInstance;
- (BOOL)activateProximitySensor;
- (BOOL)backupDopplerState;
- (BOOL)deviceSetDetectionModeActive:(BOOL)active;
- (BOOL)deviceSetStreamEnabled:(BOOL)enabled;
- (BOOL)retrieveHIDDevice;
- (BOOL)setHIDReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d buffer:(id)buffer;
- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler;
- (BOOL)stopProximitySensorUpdates;
- (DADopplerProximityManager)init;
- (void)deactivateProximitySensor;
- (void)dealloc;
- (void)deregisterForCallback;
- (void)registerForCallback;
- (void)scheduleProximityUpdates;
- (void)startRunLoop;
- (void)teardownProxManager;
- (void)unscheduleProximityUpdates;
@end

@implementation DADopplerProximityManager

+ (id)sharedInstance
{
  if (qword_100011A88 != -1)
  {
    sub_100006184();
  }

  v3 = qword_100011A80;

  return v3;
}

- (DADopplerProximityManager)init
{
  v8.receiver = self;
  v8.super_class = DADopplerProximityManager;
  v2 = [(DADopplerProximityManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4276.dopplerProximitySensorUpdatesQueue", 0);
    proxQueue = v2->_proxQueue;
    v2->_proxQueue = v3;

    v5 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4276.dopplerProximitySensorUpdatesHandlerQueue", 0);
    handlerQueue = v2->_handlerQueue;
    v2->_handlerQueue = v5;

    v2->_buffer = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  }

  return v2;
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  v4.receiver = self;
  v4.super_class = DADopplerProximityManager;
  [(DADopplerProximityManager *)&v4 dealloc];
}

- (void)teardownProxManager
{
  manager = self->_manager;
  if (manager)
  {
    IOHIDManagerClose(manager, 0);
    CFRelease(self->_manager);
    self->_manager = 0;
  }
}

- (BOOL)startProximitySensorUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = ![(DADopplerProximityManager *)self isUpdating];
  if (*(v12 + 24) == 1)
  {
    [(DADopplerProximityManager *)self setHandler:handlerCopy];
    proxQueue = [(DADopplerProximityManager *)self proxQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001AD8;
    block[3] = &unk_10000C448;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(proxQueue, block);

    if (*(v12 + 24) == 1)
    {
      [(DADopplerProximityManager *)self setUpdating:1];
      proxQueue2 = [(DADopplerProximityManager *)self proxQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100001B0C;
      v9[3] = &unk_10000C470;
      v9[4] = self;
      dispatch_async(proxQueue2, v9);
    }

    v7 = *(v12 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7 & 1;
}

- (BOOL)stopProximitySensorUpdates
{
  if ([(DADopplerProximityManager *)self isUpdating])
  {
    [(DADopplerProximityManager *)self deactivateProximitySensor];
    [(DADopplerProximityManager *)self setUpdating:0];
  }

  return 1;
}

- (BOOL)activateProximitySensor
{
  retrieveHIDDevice = [(DADopplerProximityManager *)self retrieveHIDDevice];
  if (retrieveHIDDevice)
  {
    retrieveHIDDevice = [(DADopplerProximityManager *)self backupDopplerState];
    if (retrieveHIDDevice)
    {
      retrieveHIDDevice = [(DADopplerProximityManager *)self deviceSetDetectionModeActive:1];
      if (retrieveHIDDevice)
      {
        retrieveHIDDevice = [(DADopplerProximityManager *)self deviceSetStreamEnabled:1];
        if (retrieveHIDDevice)
        {
          [(DADopplerProximityManager *)self registerForCallback];
          LOBYTE(retrieveHIDDevice) = 1;
        }
      }
    }
  }

  return retrieveHIDDevice;
}

- (void)deactivateProximitySensor
{
  [(DADopplerProximityManager *)self deviceSetStreamEnabled:0];
  [(DADopplerProximityManager *)self deviceSetDetectionModeActive:0];
  [(DADopplerProximityManager *)self deregisterForCallback];

  [(DADopplerProximityManager *)self unscheduleProximityUpdates];
}

- (void)startRunLoop
{
  [(DADopplerProximityManager *)self setProxRunLoop:CFRunLoopGetCurrent()];
  [(DADopplerProximityManager *)self scheduleProximityUpdates];
  CFRunLoopRun();

  [(DADopplerProximityManager *)self teardownProxManager];
}

- (BOOL)retrieveHIDDevice
{
  v3 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
  self->_manager = v3;
  if (!v3)
  {
    return 0;
  }

  IOHIDManagerSetDeviceMatching(v3, &off_10000CC68);
  IOHIDManagerOpen(self->_manager, 0);
  v4 = IOHIDManagerCopyDevices(self->_manager);
  v5 = v4;
  if (v4 && [(__CFSet *)v4 count])
  {
    [(DADopplerProximityManager *)self setProxDeviceRef:[(__CFSet *)v5 anyObject]];
    if ([(__CFSet *)v5 count]>= 2)
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100006198(v5, v6);
      }
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)backupDopplerState
{
  v3 = [(DADopplerProximityManager *)self getHIDReportForDevice:[(DADopplerProximityManager *)self proxDeviceRef] reportType:2 reportID:81 buffer:&self->_initialDopplerDataStreamEnables bufferSize:2];
  self->_initialDopplerDataStreamEnables.type = 81;
  if (v3)
  {
    LOBYTE(v3) = [(DADopplerProximityManager *)self getHIDReportForDevice:[(DADopplerProximityManager *)self proxDeviceRef] reportType:2 reportID:80 buffer:&self->_initialDopplerDetectionMode bufferSize:2];
    self->_initialDopplerDetectionMode.type = 80;
  }

  return v3;
}

- (BOOL)deviceSetStreamEnabled:(BOOL)enabled
{
  if (enabled)
  {
    value = self->_initialDopplerDataStreamEnables.value | 2;
  }

  else
  {
    value = self->_initialDopplerDataStreamEnables.value;
  }

  v9[0] = 81;
  v9[1] = value;
  proxDeviceRef = [(DADopplerProximityManager *)self proxDeviceRef];
  v6 = [NSData dataWithBytes:v9 length:2];
  v7 = [(DADopplerProximityManager *)self setHIDReportForDevice:proxDeviceRef reportType:2 reportID:81 buffer:v6];

  return v7;
}

- (BOOL)deviceSetDetectionModeActive:(BOOL)active
{
  if (active)
  {
    value = 15;
  }

  else
  {
    value = self->_initialDopplerDetectionMode.value;
  }

  v9[0] = 80;
  v9[1] = value;
  proxDeviceRef = [(DADopplerProximityManager *)self proxDeviceRef];
  v6 = [NSData dataWithBytes:v9 length:2];
  v7 = [(DADopplerProximityManager *)self setHIDReportForDevice:proxDeviceRef reportType:2 reportID:80 buffer:v6];

  return v7;
}

- (BOOL)setHIDReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d buffer:(id)buffer
{
  bufferCopy = buffer;
  bytes = [bufferCopy bytes];
  v11 = [bufferCopy length];

  return IOHIDDeviceSetReport(device, type, d, bytes, v11) == 0;
}

- (void)registerForCallback
{
  proxDeviceRef = [(DADopplerProximityManager *)self proxDeviceRef];
  buffer = [(DADopplerProximityManager *)self buffer];

  IOHIDDeviceRegisterInputReportCallback(proxDeviceRef, buffer, 512, sub_100001FFC, self);
}

- (void)deregisterForCallback
{
  proxDeviceRef = [(DADopplerProximityManager *)self proxDeviceRef];
  buffer = [(DADopplerProximityManager *)self buffer];

  IOHIDDeviceRegisterInputReportCallback(proxDeviceRef, buffer, 512, 0, self);
}

- (void)scheduleProximityUpdates
{
  proxDeviceRef = [(DADopplerProximityManager *)self proxDeviceRef];
  proxRunLoop = [(DADopplerProximityManager *)self proxRunLoop];

  IOHIDDeviceScheduleWithRunLoop(proxDeviceRef, proxRunLoop, kCFRunLoopCommonModes);
}

- (void)unscheduleProximityUpdates
{
  IOHIDDeviceUnscheduleFromRunLoop([(DADopplerProximityManager *)self proxDeviceRef], [(DADopplerProximityManager *)self proxRunLoop], kCFRunLoopCommonModes);
  proxRunLoop = [(DADopplerProximityManager *)self proxRunLoop];

  CFRunLoopStop(proxRunLoop);
}

@end