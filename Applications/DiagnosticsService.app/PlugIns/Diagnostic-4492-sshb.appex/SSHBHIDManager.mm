@interface SSHBHIDManager
- (BOOL)setReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 buffer:(id)a6 error:(id *)a7 domain:(id)a8 code:(int)a9;
- (SSHBHIDManager)init;
- (id)getReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 error:(id *)a6 domain:(id)a7 code:(int)a8;
- (void)cacheDevices;
- (void)dealloc;
- (void)deviceConnected:(__IOHIDDevice *)a3;
- (void)deviceDisconnected:(__IOHIDDevice *)a3;
- (void)hidReportCallback:(__IOHIDDevice *)a3 result:(int)a4 type:(int)a5 reportID:(unsigned int)a6 report:(char *)a7 reportLength:(int64_t)a8;
- (void)registerDevice:(id)a3 forNotificationsFromDeviceWithUsage:(id)a4;
- (void)unregisterDevice:(id)a3 forNotificationsFromDeviceWithUsage:(id)a4;
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

- (void)deviceConnected:(__IOHIDDevice *)a3
{
  v5 = [IOHIDDeviceGetProperty(a3 @"PrimaryUsage")];
  v6 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v5, [IOHIDDeviceGetProperty(a3 @"PrimaryUsagePage")]);
  v7 = [(SSHBHIDManager *)self deviceManager];
  [v7 addDevice:a3 forUsage:v6];

  v8 = [(SSHBHIDManager *)self deviceManager];
  v9 = [v8 subscribersFromUsage:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000011E0;
  v10[3] = &unk_10000C278;
  v10[4] = a3;
  [v9 enumerateObjectsUsingBlock:v10];
  IOHIDDeviceRegisterInputReportCallback(a3, [(SSHBHIDManager *)self buffer], 512, sub_100001240, self);
}

- (void)deviceDisconnected:(__IOHIDDevice *)a3
{
  v5 = [IOHIDDeviceGetProperty(a3 @"PrimaryUsage")];
  v6 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v5, [IOHIDDeviceGetProperty(a3 @"PrimaryUsagePage")]);
  v7 = [(SSHBHIDManager *)self deviceManager];
  [v7 removeDevice:a3];

  v8 = [(SSHBHIDManager *)self deviceManager];
  v9 = [v8 subscribersFromUsage:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000139C;
  v10[3] = &unk_10000C278;
  v10[4] = a3;
  [v9 enumerateObjectsUsingBlock:v10];
  IOHIDDeviceRegisterInputReportCallback(a3, [(SSHBHIDManager *)self buffer], 512, 0, self);
}

- (void)registerDevice:(id)a3 forNotificationsFromDeviceWithUsage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSHBHIDManager *)self deviceManager];
  [v8 addSubscriber:v7 forUsage:v6];
}

- (void)unregisterDevice:(id)a3 forNotificationsFromDeviceWithUsage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSHBHIDManager *)self deviceManager];
  [v8 removeSubscriber:v7 forUsage:v6];
}

- (void)dealloc
{
  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  v4 = [(SSHBHIDManager *)self hidManager];
  Current = CFRunLoopGetCurrent();
  IOHIDManagerUnscheduleFromRunLoop(v4, Current, kCFRunLoopDefaultMode);
  IOHIDManagerClose([(SSHBHIDManager *)self hidManager], 0);
  v6.receiver = self;
  v6.super_class = SSHBHIDManager;
  [(SSHBHIDManager *)&v6 dealloc];
}

- (id)getReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 error:(id *)a6 domain:(id)a7 code:(int)a8
{
  v13 = a7;
  if (!a3)
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100005C1C(v19);
    }

    goto LABEL_8;
  }

  pReportLength = 512;
  v14 = IOHIDDeviceGetReport(a3, a4, a5, report, &pReportLength);
  if (a6 && v14)
  {
    v15 = [NSString stringWithFormat:@"HID Report Get failed with return value 0x%x", v14];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:v15 value:&stru_10000C338 table:0];

    v23 = NSLocalizedDescriptionKey;
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a6 = [NSError errorWithDomain:v13 code:a8 userInfo:v18];

LABEL_8:
    v20 = 0;
    goto LABEL_10;
  }

  v20 = [NSData dataWithBytes:report length:pReportLength];
LABEL_10:

  return v20;
}

- (BOOL)setReportForDevice:(__IOHIDDevice *)a3 reportType:(int)a4 reportID:(int64_t)a5 buffer:(id)a6 error:(id *)a7 domain:(id)a8 code:(int)a9
{
  v14 = a6;
  v15 = a8;
  if (!a3)
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100005C60(v18);
    }

    goto LABEL_7;
  }

  v16 = IOHIDDeviceSetReport(a3, a4, a5, [v14 bytes], objc_msgSend(v14, "length"));
  v17 = v16 == 0;
  if (a7 && v16)
  {
    v18 = [NSString stringWithFormat:@"HID Report Set failed with reportID 0x%lx packet %@ with return value 0x%x.", a5, v14, v16];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:&stru_10000C338 table:0];

    v23 = NSLocalizedDescriptionKey;
    v24 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a7 = [NSError errorWithDomain:v15 code:a9 userInfo:v21];

LABEL_7:
    v17 = 0;
  }

  return v17;
}

- (void)hidReportCallback:(__IOHIDDevice *)a3 result:(int)a4 type:(int)a5 reportID:(unsigned int)a6 report:(char *)a7 reportLength:(int64_t)a8
{
  v15 = [IOHIDDeviceGetProperty(a3 @"PrimaryUsage")];
  v16 = -[SSHBHIDUsage initWithPrimaryUsage:primaryUsagePage:]([SSHBHIDUsage alloc], "initWithPrimaryUsage:primaryUsagePage:", v15, [IOHIDDeviceGetProperty(a3 @"PrimaryUsagePage")]);
  v17 = [(SSHBHIDManager *)self deviceManager];
  v18 = [v17 subscribersFromUsage:v16];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001A98;
  v19[3] = &unk_10000C298;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v19[4] = a3;
  v19[5] = a7;
  v19[6] = a8;
  [v18 enumerateObjectsUsingBlock:v19];
}

@end