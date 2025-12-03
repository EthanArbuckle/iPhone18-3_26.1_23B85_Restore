@interface SSHBHIDManager
- (BOOL)setReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d buffer:(id)buffer error:(id *)error domain:(id)domain code:(int)code;
- (SSHBHIDManager)init;
- (id)getReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d error:(id *)error domain:(id)domain code:(int)code;
- (void)cacheDevices;
- (void)dealloc;
- (void)deviceConnected:(__IOHIDDevice *)connected;
- (void)deviceDisconnected:(__IOHIDDevice *)disconnected;
- (void)hidReportCallback:(__IOHIDDevice *)callback result:(int)result type:(int)type reportID:(unsigned int)d report:(char *)report reportLength:(int64_t)length;
- (void)registerDevice:(id)device forNotificationsFromDeviceWithUsage:(id)usage;
- (void)unregisterDevice:(id)device forNotificationsFromDeviceWithUsage:(id)usage;
@end

@implementation SSHBHIDManager

- (SSHBHIDManager)init
{
  v8.receiver = self;
  v8.super_class = SSHBHIDManager;
  v2 = [(SSHBHIDManager *)&v8 init];
  if (v2)
  {
    v2->_hidManager = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    v3 = objc_alloc_init(SSHBHIDDeviceManager);
    deviceManager = v2->_deviceManager;
    v2->_deviceManager = v3;

    v2->_buffer = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
    IOHIDManagerOpen(v2->_hidManager, 0);
    IOHIDManagerSetDeviceMatching(v2->_hidManager, 0);
    IOHIDManagerRegisterDeviceMatchingCallback(v2->_hidManager, deviceConnectedCallback, v2);
    IOHIDManagerRegisterDeviceRemovalCallback(v2->_hidManager, deviceRemovedCallback, v2);
    hidManager = v2->_hidManager;
    Current = CFRunLoopGetCurrent();
    IOHIDManagerScheduleWithRunLoop(hidManager, Current, kCFRunLoopDefaultMode);
    [(SSHBHIDManager *)v2 cacheDevices];
  }

  return v2;
}

- (void)cacheDevices
{
  v3 = IOHIDManagerCopyDevices(self->_hidManager);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [(__CFSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SSHBHIDManager *)self deviceConnected:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(__CFSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)deviceConnected:(__IOHIDDevice *)connected
{
  v5 = [IOHIDDeviceGetProperty(connected @"PrimaryUsage")];
  v6 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v5, [IOHIDDeviceGetProperty(connected @"PrimaryUsagePage")]);
  deviceManager = [(SSHBHIDManager *)self deviceManager];
  [deviceManager addDevice:connected forUsage:v6];

  deviceManager2 = [(SSHBHIDManager *)self deviceManager];
  v9 = [deviceManager2 subscribersFromUsage:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000011E0;
  v10[3] = &unk_10000C278;
  v10[4] = connected;
  [v9 enumerateObjectsUsingBlock:v10];
  IOHIDDeviceRegisterInputReportCallback(connected, [(SSHBHIDManager *)self buffer], 512, sub_100001240, self);
}

- (void)deviceDisconnected:(__IOHIDDevice *)disconnected
{
  v5 = [IOHIDDeviceGetProperty(disconnected @"PrimaryUsage")];
  v6 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v5, [IOHIDDeviceGetProperty(disconnected @"PrimaryUsagePage")]);
  deviceManager = [(SSHBHIDManager *)self deviceManager];
  [deviceManager removeDevice:disconnected];

  deviceManager2 = [(SSHBHIDManager *)self deviceManager];
  v9 = [deviceManager2 subscribersFromUsage:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000139C;
  v10[3] = &unk_10000C278;
  v10[4] = disconnected;
  [v9 enumerateObjectsUsingBlock:v10];
  IOHIDDeviceRegisterInputReportCallback(disconnected, [(SSHBHIDManager *)self buffer], 512, 0, self);
}

- (void)registerDevice:(id)device forNotificationsFromDeviceWithUsage:(id)usage
{
  usageCopy = usage;
  deviceCopy = device;
  deviceManager = [(SSHBHIDManager *)self deviceManager];
  [deviceManager addSubscriber:deviceCopy forUsage:usageCopy];
}

- (void)unregisterDevice:(id)device forNotificationsFromDeviceWithUsage:(id)usage
{
  usageCopy = usage;
  deviceCopy = device;
  deviceManager = [(SSHBHIDManager *)self deviceManager];
  [deviceManager removeSubscriber:deviceCopy forUsage:usageCopy];
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  hidManager = [(SSHBHIDManager *)self hidManager];
  Current = CFRunLoopGetCurrent();
  IOHIDManagerUnscheduleFromRunLoop(hidManager, Current, kCFRunLoopDefaultMode);
  IOHIDManagerClose([(SSHBHIDManager *)self hidManager], 0);
  v6.receiver = self;
  v6.super_class = SSHBHIDManager;
  [(SSHBHIDManager *)&v6 dealloc];
}

- (id)getReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d error:(id *)error domain:(id)domain code:(int)code
{
  domainCopy = domain;
  if (!device)
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100005C1C(v19);
    }

    goto LABEL_8;
  }

  pReportLength = 512;
  v14 = IOHIDDeviceGetReport(device, type, d, report, &pReportLength);
  if (error && v14)
  {
    v15 = [NSString stringWithFormat:@"HID Report Get failed with return value 0x%x", v14];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:v15 value:&stru_10000C338 table:0];

    v23 = NSLocalizedDescriptionKey;
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:domainCopy code:code userInfo:v18];

LABEL_8:
    v20 = 0;
    goto LABEL_10;
  }

  v20 = [NSData dataWithBytes:report length:pReportLength];
LABEL_10:

  return v20;
}

- (BOOL)setReportForDevice:(__IOHIDDevice *)device reportType:(int)type reportID:(int64_t)d buffer:(id)buffer error:(id *)error domain:(id)domain code:(int)code
{
  bufferCopy = buffer;
  domainCopy = domain;
  if (!device)
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100005C60(v18);
    }

    goto LABEL_7;
  }

  v16 = IOHIDDeviceSetReport(device, type, d, [bufferCopy bytes], objc_msgSend(bufferCopy, "length"));
  v17 = v16 == 0;
  if (error && v16)
  {
    v18 = [NSString stringWithFormat:@"HID Report Set failed with reportID 0x%lx packet %@ with return value 0x%x.", d, bufferCopy, v16];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:&stru_10000C338 table:0];

    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:domainCopy code:code userInfo:v21];

LABEL_7:
    v17 = 0;
  }

  return v17;
}

- (void)hidReportCallback:(__IOHIDDevice *)callback result:(int)result type:(int)type reportID:(unsigned int)d report:(char *)report reportLength:(int64_t)length
{
  v15 = [IOHIDDeviceGetProperty(callback @"PrimaryUsage")];
  v16 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v15, [IOHIDDeviceGetProperty(callback @"PrimaryUsagePage")]);
  deviceManager = [(SSHBHIDManager *)self deviceManager];
  v18 = [deviceManager subscribersFromUsage:v16];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001A98;
  v19[3] = &unk_10000C298;
  resultCopy = result;
  typeCopy = type;
  dCopy = d;
  v19[4] = callback;
  v19[5] = report;
  v19[6] = length;
  [v18 enumerateObjectsUsingBlock:v19];
}

@end