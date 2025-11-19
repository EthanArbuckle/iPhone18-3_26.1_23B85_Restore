@interface IOUIAngelServer
+ (id)serviceInterface;
+ (id)sharedServer;
- (IOUIAngelServer)init;
- (void)activate;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)pingWithCompletion:(id)a3;
- (void)removeIntrusiveUIWithCompletion:(id)a3;
- (void)setIntrusiveUIWithCompletion:(id)a3;
@end

@implementation IOUIAngelServer

+ (id)sharedServer
{
  if (qword_100012990 != -1)
  {
    sub_1000053B0();
  }

  v3 = qword_100012988;

  return v3;
}

- (IOUIAngelServer)init
{
  v10.receiver = self;
  v10.super_class = IOUIAngelServer;
  v2 = [(IOUIAngelServer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000011B8;
    v8[3] = &unk_10000C390;
    v4 = v2;
    v9 = v4;
    v5 = [BSServiceConnectionListener listenerWithConfigurator:v8];
    listener = v4->_listener;
    v4->_listener = v5;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_isPresentingCriticalUI = 0;
  }

  return v3;
}

- (void)activate
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Activating BSServiceConnectionListener...", v3, 2u);
  }

  [(BSServiceConnectionListener *)self->_listener activate];
}

- (void)invalidate
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalidating BSServiceConnectionListener...", v3, 2u);
  }

  [(BSServiceConnectionListener *)self->_listener invalidate];
}

+ (id)serviceInterface
{
  if (qword_1000129A0 != -1)
  {
    sub_1000053C4();
  }

  v3 = qword_100012998;

  return v3;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = [a5 decodeStringForKey:@"IOUIAngelLDCM"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[BSServiceConnection currentContext];
    v10 = [v9 remoteProcess];
    *buf = 136315906;
    v19 = "[IOUIAngelServer listener:didReceiveConnection:withContext:]";
    v20 = 2048;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: received connection %p with identifier %@ from %@", buf, 0x2Au);
  }

  v11 = [v7 remoteProcess];
  if ([v11 hasEntitlement:@"com.apple.IOUIAngel.LDCM.allowUI"])
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000015D4;
    v15 = &unk_10000C418;
    v16 = v8;
    v17 = self;
    [v7 configureConnection:&v12];
    [v7 activate];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000053D8(v7, v11);
    }

    [v7 invalidate];
  }
}

- (void)pingWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[BSServiceConnection currentContext];
    v5 = [v4 remoteProcess];
    v6 = 136315394;
    v7 = "[IOUIAngelServer pingWithCompletion:]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: pinged from %@", &v6, 0x16u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)setIntrusiveUIWithCompletion:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[BSServiceConnection currentContext];
    v6 = [v5 remoteProcess];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setIntrusiveUIWithCompletion called from %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000018D8;
  v8[3] = &unk_10000C468;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)removeIntrusiveUIWithCompletion:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[BSServiceConnection currentContext];
    v6 = [v5 remoteProcess];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removeIntrusiveUIWithCompletion called from %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001CC8;
  v8[3] = &unk_10000C468;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);
}

@end