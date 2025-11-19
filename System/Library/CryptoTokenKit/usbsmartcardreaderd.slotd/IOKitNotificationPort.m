@interface IOKitNotificationPort
- (IOKitNotificationPort)init;
- (void)addMatching:(id)a3 type:(const char *)a4 block:(id)a5;
- (void)dealloc;
@end

@implementation IOKitNotificationPort

- (IOKitNotificationPort)init
{
  v8.receiver = self;
  v8.super_class = IOKitNotificationPort;
  v2 = [(IOKitNotificationPort *)&v8 init];
  if (v2)
  {
    v2->port = IONotificationPortCreate(kIOMainPortDefault);
    v3 = objc_opt_new();
    iterator = v2->iterator;
    v2->iterator = v3;

    RunLoopSource = IONotificationPortGetRunLoopSource(v2->port);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  }

  return v2;
}

- (void)dealloc
{
  IONotificationPortDestroy(self->port);
  v3.receiver = self;
  v3.super_class = IOKitNotificationPort;
  [(IOKitNotificationPort *)&v3 dealloc];
}

- (void)addMatching:(id)a3 type:(const char *)a4 block:(id)a5
{
  refCon = self;
  v8 = a3;
  v9 = objc_retainBlock(a5);
  block = self->block;
  self->block = v9;

  port = self->port;
  v12 = v8;
  v13 = IOServiceAddMatchingNotification(port, a4, v12, sub_1000013B0, &refCon, [(IOKitObjectHolder *)self->iterator holderPtr]);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100001170();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001428C(v12, v14, v15);
    }
  }

  else
  {
    [IOKitNotificationPort callbackWithContext:refCon iterator:[(IOKitObjectHolder *)refCon->iterator holder]];
  }
}

@end