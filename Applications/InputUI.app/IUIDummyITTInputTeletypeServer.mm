@interface IUIDummyITTInputTeletypeServer
+ (id)sharedServer;
- (IUIDummyITTInputTeletypeServer)init;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation IUIDummyITTInputTeletypeServer

+ (id)sharedServer
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (IUIDummyITTInputTeletypeServer)init
{
  v12.receiver = self;
  v12.super_class = IUIDummyITTInputTeletypeServer;
  v2 = [(IUIDummyITTInputTeletypeServer *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002528;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initialize dummy input teletype server.", v9, 2u);
    }

    [v4[1] activate];
  }

  return v3;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v5 = a4;
  v6 = sub_100001928();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Rejecting connection: %@", &v7, 0xCu);
  }

  [v5 invalidate];
}

@end