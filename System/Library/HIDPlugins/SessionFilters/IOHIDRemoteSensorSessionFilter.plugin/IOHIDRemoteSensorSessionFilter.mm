@interface IOHIDRemoteSensorSessionFilter
- (IOHIDRemoteSensorSessionFilter)initWithSession:(id)session;
- (id)propertyForKey:(id)key;
- (void)activate;
- (void)cancel;
- (void)dealloc;
@end

@implementation IOHIDRemoteSensorSessionFilter

- (IOHIDRemoteSensorSessionFilter)initWithSession:(id)session
{
  v10.receiver = self;
  v10.super_class = IOHIDRemoteSensorSessionFilter;
  v3 = [(IOHIDRemoteSensorSessionFilter *)&v10 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.hidrc", 0);
    [(IOHIDRemoteSensorSessionFilter *)v3 setQueue:v4];

    v5 = [HIDRemoteDeviceAACPServer alloc];
    queue = [(IOHIDRemoteSensorSessionFilter *)v3 queue];
    v7 = [v5 initWithQueue:queue];
    [(IOHIDRemoteSensorSessionFilter *)v3 setServer:v7];

    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IOHIDRemoteSensorSessionFilter;
  [(IOHIDRemoteSensorSessionFilter *)&v2 dealloc];
}

- (id)propertyForKey:(id)key
{
  if ([key isEqualToString:@"SessionFilterDebug"])
  {
    v3 = objc_opt_new();
    [v3 setObject:@"IOHIDRemoteSensorSessionFilter" forKeyedSubscript:@"Class"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)activate
{
  server = [(IOHIDRemoteSensorSessionFilter *)self server];
  [server activate];
}

- (void)cancel
{
  server = [(IOHIDRemoteSensorSessionFilter *)self server];
  [server cancel];
}

@end