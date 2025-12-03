@interface IUIDummyITTAppKeyboardServer
+ (id)sharedServer;
- (IUIDummyITTAppKeyboardServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation IUIDummyITTAppKeyboardServer

+ (id)sharedServer
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (IUIDummyITTAppKeyboardServer)init
{
  v12.receiver = self;
  v12.super_class = IUIDummyITTAppKeyboardServer;
  v2 = [(IUIDummyITTAppKeyboardServer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002798;
    v10[3] = &unk_1000204D8;
    v4 = v2;
    v11 = v4;
    v5 = [BSServiceConnectionListener listenerWithConfigurator:v10];
    v6 = v4[1];
    v4[1] = v5;

    v7 = sub_100001928();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initialize dummy input teletype appKeyboard server.", v9, 2u);
    }

    [v4[1] activate];
  }

  return v3;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v6 = sub_100001928();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rejecting connection: %@", &v7, 0xCu);
  }

  [connectionCopy invalidate];
}

@end