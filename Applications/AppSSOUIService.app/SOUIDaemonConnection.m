@interface SOUIDaemonConnection
+ (id)_queue;
- (BOOL)_connectToDaemon;
- (SOUIDaemonConnection)initWithViewController:(id)a3;
- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5;
@end

@implementation SOUIDaemonConnection

+ (id)_queue
{
  if (qword_1000117A8 != -1)
  {
    sub_100004AA8();
  }

  v3 = qword_1000117A0;

  return v3;
}

- (SOUIDaemonConnection)initWithViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SOUIDaemonConnection;
  v6 = [(SOUIDaemonConnection *)&v11 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [v5 xpcDaemonEndpoint];

  if (v7)
  {
    objc_storeStrong(&v6->_viewController, a3);
    [(SOUIDaemonConnection *)v6 _connectToDaemon];
LABEL_4:
    v8 = v6;
    goto LABEL_8;
  }

  v9 = sub_100001178();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100004ABC();
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)_connectToDaemon
{
  v3 = [(SOUIDaemonConnection *)self xpcConnection];

  if (v3)
  {
    v4 = sub_100001178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100004B10();
    }

LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v4 = objc_opt_new();
  v5 = [(SOUIServiceViewController *)self->_viewController xpcDaemonEndpoint];
  [v4 _setEndpoint:v5];

  v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:v4];
  [(SOUIDaemonConnection *)self setXpcConnection:v6];

  v7 = [(SOUIDaemonConnection *)self xpcConnection];

  if (v7)
  {
    v8 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SOUIServiceProtocol];
    v9 = [(SOUIDaemonConnection *)self xpcConnection];
    [v9 setExportedInterface:v8];

    viewController = self->_viewController;
    v11 = [(SOUIDaemonConnection *)self xpcConnection];
    [v11 setExportedObject:viewController];

    v12 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SODaemonUIProtocol];
    v13 = [(SOUIDaemonConnection *)self xpcConnection];
    [v13 setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100001644;
    v25[3] = &unk_10000C2C8;
    objc_copyWeak(&v26, &location);
    v14 = [(SOUIDaemonConnection *)self xpcConnection];
    [v14 setInvalidationHandler:v25];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000016AC;
    v23[3] = &unk_10000C2C8;
    objc_copyWeak(&v24, &location);
    v15 = [(SOUIDaemonConnection *)self xpcConnection];
    [v15 setInterruptionHandler:v23];

    v16 = [(SOUIDaemonConnection *)self xpcConnection];
    v17 = +[SOUIDaemonConnection _queue];
    [v16 _setQueue:v17];

    v18 = [(SOUIDaemonConnection *)self xpcConnection];
    [v18 resume];

    v19 = sub_100001178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: new XPC connection", buf, 0xCu);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    goto LABEL_8;
  }

  v22 = sub_100001178();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100004B78();
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SOUIDaemonConnection *)self _connectToDaemon])
  {
    v11 = [(SOUIDaemonConnection *)self xpcConnection];
    v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&stru_10000C308];
    [v12 authorizationDidCompleteWithCredential:v8 error:v9 completion:v10];

LABEL_9:
    goto LABEL_10;
  }

  v13 = sub_100001178();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100004CB8();
  }

  if (v10)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v14 = qword_1000117D0;
    v20 = qword_1000117D0;
    if (!qword_1000117D0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100001B74;
      v16[3] = &unk_10000C350;
      v16[4] = &v17;
      sub_100001B74(v16);
      v14 = v18[3];
    }

    v15 = v14;
    _Block_object_dispose(&v17, 8);
    v11 = [v14 internalErrorWithMessage:@"Failed to connect to AppSSO daemon"];
    v10[2](v10, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

@end