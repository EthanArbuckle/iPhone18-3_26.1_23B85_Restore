@interface SOUIDaemonConnection
+ (id)_queue;
- (BOOL)_connectToDaemon;
- (SOUIDaemonConnection)initWithViewController:(id)controller;
- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion;
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

- (SOUIDaemonConnection)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SOUIDaemonConnection;
  v6 = [(SOUIDaemonConnection *)&v11 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  xpcDaemonEndpoint = [controllerCopy xpcDaemonEndpoint];

  if (xpcDaemonEndpoint)
  {
    objc_storeStrong(&v6->_viewController, controller);
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
  xpcConnection = [(SOUIDaemonConnection *)self xpcConnection];

  if (xpcConnection)
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
  xpcDaemonEndpoint = [(SOUIServiceViewController *)self->_viewController xpcDaemonEndpoint];
  [v4 _setEndpoint:xpcDaemonEndpoint];

  v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:v4];
  [(SOUIDaemonConnection *)self setXpcConnection:v6];

  xpcConnection2 = [(SOUIDaemonConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    v8 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SOUIServiceProtocol];
    xpcConnection3 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection3 setExportedInterface:v8];

    viewController = self->_viewController;
    xpcConnection4 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection4 setExportedObject:viewController];

    v12 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SODaemonUIProtocol];
    xpcConnection5 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection5 setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100001644;
    v25[3] = &unk_10000C2C8;
    objc_copyWeak(&v26, &location);
    xpcConnection6 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection6 setInvalidationHandler:v25];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000016AC;
    v23[3] = &unk_10000C2C8;
    objc_copyWeak(&v24, &location);
    xpcConnection7 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection7 setInterruptionHandler:v23];

    xpcConnection8 = [(SOUIDaemonConnection *)self xpcConnection];
    v17 = +[SOUIDaemonConnection _queue];
    [xpcConnection8 _setQueue:v17];

    xpcConnection9 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection9 resume];

    v19 = sub_100001178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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

- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  if ([(SOUIDaemonConnection *)self _connectToDaemon])
  {
    xpcConnection = [(SOUIDaemonConnection *)self xpcConnection];
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_10000C308];
    [v12 authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:completionCopy];

LABEL_9:
    goto LABEL_10;
  }

  v13 = sub_100001178();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100004CB8();
  }

  if (completionCopy)
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
    xpcConnection = [v14 internalErrorWithMessage:@"Failed to connect to AppSSO daemon"];
    completionCopy[2](completionCopy, 0, xpcConnection);
    goto LABEL_9;
  }

LABEL_10:
}

@end