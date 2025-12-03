@interface CBLocalServiceClient
- (CBLocalServiceClient)initWithMainNavController:(id)controller;
- (UINavigationController)mainNavController;
- (void)_ping;
- (void)invalidate;
- (void)moveToDiagnosticsAppWithcompletion:(id)withcompletion;
- (void)relaunchToDiagnosticsApp;
- (void)resume;
- (void)setProxyServer:(id)server completion:(id)completion;
@end

@implementation CBLocalServiceClient

- (CBLocalServiceClient)initWithMainNavController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = CBLocalServiceClient;
  v5 = [(CBLocalServiceClient *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mainNavController, controllerCopy);
    v6->_didMoveToEndgame = 0;
    v7 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.checkerboardd" options:4096];
    connection = v6->_connection;
    v6->_connection = v7;

    v9 = +[CBLocalServiceInterface serverInterface];
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v9];

    v10 = +[CBLocalServiceInterface clientInterface];
    [(NSXPCConnection *)v6->_connection setExportedInterface:v10];

    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    [(NSXPCConnection *)v6->_connection setInterruptionHandler:&stru_10007E0A0];
    [(NSXPCConnection *)v6->_connection setInvalidationHandler:&stru_10007E0C0];
  }

  return v6;
}

- (void)resume
{
  connection = [(CBLocalServiceClient *)self connection];
  [connection resume];

  [(CBLocalServiceClient *)self _ping];
}

- (void)invalidate
{
  connection = [(CBLocalServiceClient *)self connection];

  if (connection)
  {
    connection2 = [(CBLocalServiceClient *)self connection];
    [connection2 invalidate];
  }
}

- (void)_ping
{
  connection = [(CBLocalServiceClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&stru_10007E0E0];

  [v3 ping:&stru_10007E100];
}

- (void)relaunchToDiagnosticsApp
{
  [(CBLocalServiceClient *)self setDidMoveToEndgame:0];

  [(CBLocalServiceClient *)self moveToDiagnosticsAppWithcompletion:&stru_10007E120];
}

- (void)moveToDiagnosticsAppWithcompletion:(id)withcompletion
{
  withcompletionCopy = withcompletion;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Local XPC - moveToDiagnosticsApp", buf, 2u);
  }

  if ([(CBLocalServiceClient *)self didMoveToEndgame])
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local XPC - already moved to Diagnostics app", buf, 2u);
    }

    withcompletionCopy[2](withcompletionCopy, 0);
  }

  else
  {
    mainNavController = [(CBLocalServiceClient *)self mainNavController];

    if (mainNavController)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100024758;
      v10[3] = &unk_10007E148;
      v10[4] = self;
      v11 = withcompletionCopy;
      dispatch_async(&_dispatch_main_q, v10);
    }

    else
    {
      v8 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Local XPC - moveToDiagnosticsApp: mainNavController is nil", buf, 2u);
      }

      v9 = [NSError errorWithDomain:@"com.apple.CheckerBoard.daemonXPCErrorDomain" code:2 userInfo:0];
      (withcompletionCopy)[2](withcompletionCopy, v9);
    }
  }
}

- (void)setProxyServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = serverCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local XPC - Receive proxy server info. proxyServer = %@;", &v13, 0xCu);
  }

  v8 = +[CBUserSettings sharedInstance];
  [v8 assignProxyServer:serverCopy];

  v9 = +[CBUserSettings sharedInstance];
  proxyServer = [v9 proxyServer];

  if ([proxyServer isEqual:serverCopy])
  {
    v11 = 0;
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = proxyServer;
      v15 = 2112;
      v16 = serverCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Local XPC - Failed to set assignedProxyServer = %@; proxyServer = %@;", &v13, 0x16u);
    }

    v11 = [NSError errorWithDomain:@"com.apple.CheckerBoard.daemonXPCErrorDomain" code:1 userInfo:0];
  }

  completionCopy[2](completionCopy, v11);
}

- (UINavigationController)mainNavController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainNavController);

  return WeakRetained;
}

@end