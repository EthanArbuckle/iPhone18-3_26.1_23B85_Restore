@interface DADopplerProximityManager
+ (id)sharedInstance;
- (BOOL)activateProximitySensor;
- (BOOL)backupDopplerState;
- (BOOL)deviceSetDetectionModeActive:(BOOL)a3;
- (BOOL)deviceSetStreamEnabled:(BOOL)a3;
- (BOOL)retrieveHIDDevice;
- (BOOL)setHIDReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 buffer:(id)a6;
- (BOOL)startProximitySensorUpdatesWithHandler:(id)a3;
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

- (BOOL)startProximitySensorUpdatesWithHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = ![(DADopplerProximityManager *)self isUpdating];
  if (*(v12 + 24) == 1)
  {
    [(DADopplerProximityManager *)self setHandler:v4];
    v5 = [(DADopplerProximityManager *)self proxQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001AD8;
    block[3] = &unk_10000C448;
    block[4] = self;
    block[5] = &v11;
    dispatch_sync(v5, block);

    if (*(v12 + 24) == 1)
    {
      [(DADopplerProximityManager *)self setUpdating:1];
      v6 = [(DADopplerProximityManager *)self proxQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100001B0C;
      v9[3] = &unk_10000C470;
      v9[4] = self;
      dispatch_async(v6, v9);
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
  v3 = [(DADopplerProximityManager *)self retrieveHIDDevice];
  if (v3)
  {
    v3 = [(DADopplerProximityManager *)self backupDopplerState];
    if (v3)
    {
      v3 = [(DADopplerProximityManager *)self deviceSetDetectionModeActive:1];
      if (v3)
      {
        v3 = [(DADopplerProximityManager *)self deviceSetStreamEnabled:1];
        if (v3)
        {
          [(DADopplerProximityManager *)self registerForCallback];
          LOBYTE(v3) = 1;
        }
      }
    }
  }

  return v3;
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

- (BOOL)deviceSetStreamEnabled:(BOOL)a3
{
  if (a3)
  {
    value = self->_initialDopplerDataStreamEnables.value | 2;
  }

  else
  {
    value = self->_initialDopplerDataStreamEnables.value;
  }

  v9[0] = 81;
  v9[1] = value;
  v5 = [(DADopplerProximityManager *)self proxDeviceRef];
  v6 = [NSData dataWithBytes:v9 length:2];
  v7 = [(DADopplerProximityManager *)self setHIDReportForDevice:v5 reportType:2 reportID:81 buffer:v6];

  return v7;
}

- (BOOL)deviceSetDetectionModeActive:(BOOL)a3
{
  if (a3)
  {
    value = 15;
  }

  else
  {
    value = self->_initialDopplerDetectionMode.value;
  }

  v9[0] = 80;
  v9[1] = value;
  v5 = [(DADopplerProximityManager *)self proxDeviceRef];
  v6 = [NSData dataWithBytes:v9 length:2];
  v7 = [(DADopplerProximityManager *)self setHIDReportForDevice:v5 reportType:2 reportID:80 buffer:v6];

  return v7;
}

- (BOOL)setHIDReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 buffer:(id)a6
{
  v9 = a6;
  v10 = [v9 bytes];
  v11 = [v9 length];

  return IOHIDDeviceSetReport(a3, a4, a5, v10, v11) == 0;
}

- (void)registerForCallback
{
  v3 = [(DADopplerProximityManager *)self proxDeviceRef];
  v4 = [(DADopplerProximityManager *)self buffer];

  IOHIDDeviceRegisterInputReportCallback(v3, v4, 512, sub_100001FFC, self);
}

- (void)deregisterForCallback
{
  v3 = [(DADopplerProximityManager *)self proxDeviceRef];
  v4 = [(DADopplerProximityManager *)self buffer];

  IOHIDDeviceRegisterInputReportCallback(v3, v4, 512, 0, self);
}

- (void)scheduleProximityUpdates
{
  v3 = [(DADopplerProximityManager *)self proxDeviceRef];
  v4 = [(DADopplerProximityManager *)self proxRunLoop];

  IOHIDDeviceScheduleWithRunLoop(v3, v4, kCFRunLoopCommonModes);
}

- (void)unscheduleProximityUpdates
{
  IOHIDDeviceUnscheduleFromRunLoop([(DADopplerProximityManager *)self proxDeviceRef], [(DADopplerProximityManager *)self proxRunLoop], kCFRunLoopCommonModes);
  v3 = [(DADopplerProximityManager *)self proxRunLoop];

  CFRunLoopStop(v3);
}

@end