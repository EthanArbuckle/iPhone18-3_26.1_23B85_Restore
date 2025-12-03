@interface IOUIAngelServer
+ (id)serviceInterface;
+ (id)sharedServer;
- (IOUIAngelServer)init;
- (void)activate;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)pingWithCompletion:(id)completion;
- (void)removeIntrusiveUIWithCompletion:(id)completion;
- (void)setIntrusiveUIWithCompletion:(id)completion;
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v8 = [context decodeStringForKey:@"IOUIAngelLDCM"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[BSServiceConnection currentContext];
    remoteProcess = [v9 remoteProcess];
    *buf = 136315906;
    v19 = "[IOUIAngelServer listener:didReceiveConnection:withContext:]";
    v20 = 2048;
    v21 = connectionCopy;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = remoteProcess;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: received connection %p with identifier %@ from %@", buf, 0x2Au);
  }

  remoteProcess2 = [connectionCopy remoteProcess];
  if ([remoteProcess2 hasEntitlement:@"com.apple.IOUIAngel.LDCM.allowUI"])
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000015D4;
    v15 = &unk_10000C418;
    v16 = v8;
    selfCopy = self;
    [connectionCopy configureConnection:&v12];
    [connectionCopy activate];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000053D8(connectionCopy, remoteProcess2);
    }

    [connectionCopy invalidate];
  }
}

- (void)pingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[BSServiceConnection currentContext];
    remoteProcess = [v4 remoteProcess];
    v6 = 136315394;
    v7 = "[IOUIAngelServer pingWithCompletion:]";
    v8 = 2112;
    v9 = remoteProcess;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: pinged from %@", &v6, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)setIntrusiveUIWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[BSServiceConnection currentContext];
    remoteProcess = [v5 remoteProcess];
    *buf = 138412290;
    v11 = remoteProcess;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "setIntrusiveUIWithCompletion called from %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000018D8;
  v8[3] = &unk_10000C468;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)removeIntrusiveUIWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[BSServiceConnection currentContext];
    remoteProcess = [v5 remoteProcess];
    *buf = 138412290;
    v11 = remoteProcess;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "removeIntrusiveUIWithCompletion called from %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001CC8;
  v8[3] = &unk_10000C468;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

@end