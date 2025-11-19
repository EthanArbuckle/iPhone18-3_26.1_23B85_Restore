@interface DALauncherServiceManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DALauncherServiceManager)init;
- (void)informExitingForReason:(int64_t)a3;
- (void)initListener;
- (void)ping:(id)a3;
@end

@implementation DALauncherServiceManager

+ (id)sharedInstance
{
  if (qword_100202DF8 != -1)
  {
    sub_10015945C();
  }

  v3 = qword_100202DF0;

  return v3;
}

- (DALauncherServiceManager)init
{
  v7.receiver = self;
  v7.super_class = DALauncherServiceManager;
  v2 = [(DALauncherServiceManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    remoteClients = v2->_remoteClients;
    v2->_remoteClients = v3;

    listener = v2->_listener;
    v2->_listener = 0;

    [(DALauncherServiceManager *)v2 initListener];
  }

  return v2;
}

- (void)informExitingForReason:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(DALauncherServiceManager *)self remoteClients];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) diagnosticsExitingForReason:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(DALauncherServiceManager *)self remoteClients];
  [v10 removeAllObjects];
}

- (void)initListener
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.diagnostics.launcher-service"];
  [(DALauncherServiceManager *)self setListener:v3];

  v4 = [(DALauncherServiceManager *)self listener];
  [v4 setDelegate:self];

  v5 = [(DALauncherServiceManager *)self listener];
  [v5 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection %@ requested for remote runner service", &buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.diagnostics.launcher-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsLauncherServerProtocol];
    [v7 setExportedObject:self];
    [v7 setExportedInterface:v10];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsLauncherClientProtocol];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100023B60;
    v26 = sub_100023B70;
    v27 = 0;
    objc_initWeak(&location, v7);
    [v7 setRemoteObjectInterface:v11];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100023B78;
    v18[3] = &unk_1001BD048;
    v18[4] = &buf;
    objc_copyWeak(&v19, &location);
    v12 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v18];
    if (v12 && !*(*(&buf + 1) + 40))
    {
      v15 = [(DALauncherServiceManager *)self remoteClients];
      [v15 addObject:v12];

      [v7 resume];
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 138412290;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Connection %@ established with launcher service", v21, 0xCu);
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100159470(v7, v14);
    }

    [v7 invalidate];
    v13 = 0;
  }

  return v13;
}

- (void)ping:(id)a3
{
  v3 = a3;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Launcher service from iOSDiagnostics is pinging to see if we are alive", v5, 2u);
  }

  v3[2](v3);
}

@end