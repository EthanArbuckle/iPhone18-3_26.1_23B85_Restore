@interface DALauncherServiceManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DALauncherServiceManager)init;
- (void)informExitingForReason:(int64_t)reason;
- (void)initListener;
- (void)ping:(id)ping;
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

- (void)informExitingForReason:(int64_t)reason
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  remoteClients = [(DALauncherServiceManager *)self remoteClients];
  v6 = [remoteClients countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(remoteClients);
        }

        [*(*(&v11 + 1) + 8 * v9) diagnosticsExitingForReason:reason];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [remoteClients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  remoteClients2 = [(DALauncherServiceManager *)self remoteClients];
  [remoteClients2 removeAllObjects];
}

- (void)initListener
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.diagnostics.launcher-service"];
  [(DALauncherServiceManager *)self setListener:v3];

  listener = [(DALauncherServiceManager *)self listener];
  [listener setDelegate:self];

  listener2 = [(DALauncherServiceManager *)self listener];
  [listener2 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection %@ requested for remote runner service", &buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.diagnostics.launcher-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsLauncherServerProtocol];
    [connectionCopy setExportedObject:self];
    [connectionCopy setExportedInterface:v10];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsLauncherClientProtocol];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100023B60;
    v26 = sub_100023B70;
    v27 = 0;
    objc_initWeak(&location, connectionCopy);
    [connectionCopy setRemoteObjectInterface:v11];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100023B78;
    v18[3] = &unk_1001BD048;
    v18[4] = &buf;
    objc_copyWeak(&v19, &location);
    v12 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v18];
    if (v12 && !*(*(&buf + 1) + 40))
    {
      remoteClients = [(DALauncherServiceManager *)self remoteClients];
      [remoteClients addObject:v12];

      [connectionCopy resume];
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 138412290;
        v22 = connectionCopy;
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
      sub_100159470(connectionCopy, v14);
    }

    [connectionCopy invalidate];
    v13 = 0;
  }

  return v13;
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Launcher service from iOSDiagnostics is pinging to see if we are alive", v5, 2u);
  }

  pingCopy[2](pingCopy);
}

@end