@interface CBLocalServiceClient
- (CBLocalServiceClient)initWithMainNavController:(id)a3;
- (UINavigationController)mainNavController;
- (void)_ping;
- (void)invalidate;
- (void)moveToDiagnosticsAppWithcompletion:(id)a3;
- (void)relaunchToDiagnosticsApp;
- (void)resume;
- (void)setProxyServer:(id)a3 completion:(id)a4;
@end

@implementation CBLocalServiceClient

- (CBLocalServiceClient)initWithMainNavController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CBLocalServiceClient;
  v5 = [(CBLocalServiceClient *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mainNavController, v4);
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
  v3 = [(CBLocalServiceClient *)self connection];
  [v3 resume];

  [(CBLocalServiceClient *)self _ping];
}

- (void)invalidate
{
  v3 = [(CBLocalServiceClient *)self connection];

  if (v3)
  {
    v4 = [(CBLocalServiceClient *)self connection];
    [v4 invalidate];
  }
}

- (void)_ping
{
  v2 = [(CBLocalServiceClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_10007E0E0];

  [v3 ping:&stru_10007E100];
}

- (void)relaunchToDiagnosticsApp
{
  [(CBLocalServiceClient *)self setDidMoveToEndgame:0];

  [(CBLocalServiceClient *)self moveToDiagnosticsAppWithcompletion:&stru_10007E120];
}

- (void)moveToDiagnosticsAppWithcompletion:(id)a3
{
  v4 = a3;
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

    v4[2](v4, 0);
  }

  else
  {
    v7 = [(CBLocalServiceClient *)self mainNavController];

    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100024758;
      v10[3] = &unk_10007E148;
      v10[4] = self;
      v11 = v4;
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
      (v4)[2](v4, v9);
    }
  }
}

- (void)setProxyServer:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local XPC - Receive proxy server info. proxyServer = %@;", &v13, 0xCu);
  }

  v8 = +[CBUserSettings sharedInstance];
  [v8 assignProxyServer:v5];

  v9 = +[CBUserSettings sharedInstance];
  v10 = [v9 proxyServer];

  if ([v10 isEqual:v5])
  {
    v11 = 0;
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Local XPC - Failed to set assignedProxyServer = %@; proxyServer = %@;", &v13, 0x16u);
    }

    v11 = [NSError errorWithDomain:@"com.apple.CheckerBoard.daemonXPCErrorDomain" code:1 userInfo:0];
  }

  v6[2](v6, v11);
}

- (UINavigationController)mainNavController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainNavController);

  return WeakRetained;
}

@end