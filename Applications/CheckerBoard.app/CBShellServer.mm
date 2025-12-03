@interface CBShellServer
+ (id)sharedInstance;
- (BOOL)_auditToken:(id *)token hasEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CBRemoteAlertServerDelegate)remoteAlertsDelegate;
- (CBShellServer)init;
- (CBSystemServicesServerDelegate)systemServicesDelegate;
- (unint64_t)_getEntitlementLevelForConnection:(id)connection;
- (void)_setClassesForProxyServerOnInterface:(id)interface;
- (void)_setClassesForRemoteAlertsOnInterface:(id)interface;
- (void)addShutdownTask:(id)task forReason:(id)reason;
- (void)connectToSSID:(id)d completion:(id)completion;
- (void)connectToSSID:(id)d password:(id)password completion:(id)completion;
- (void)connectedNetwork:(id)network;
- (void)createAlert:(id)alert timeout:(unint64_t)timeout completion:(id)completion;
- (void)currentLocaleIdentifier:(id)identifier;
- (void)diagnosticsRunning:(id)running;
- (void)dimDisplay;
- (void)disableNetworkReconnect;
- (void)disableTouchButtonEvents;
- (void)displayDimmed:(id)dimmed;
- (void)enableNetworkReconnect;
- (void)enableTouchButtonEvents;
- (void)exitCheckerBoard;
- (void)hideSceneStatusBar;
- (void)launchDiagnostics;
- (void)networkReconnectEnabled:(id)enabled;
- (void)networkScanWithCompletion:(id)completion;
- (void)proxyServerWithCompletion:(id)completion;
- (void)receiveResponseFromAlertWithIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion;
- (void)removeShutdownTask:(id)task;
- (void)setLocaleIdentifier:(id)identifier completion:(id)completion;
- (void)showSceneStatusBar;
- (void)start;
- (void)statusBarStyle:(int64_t)style;
- (void)undimDisplay;
@end

@implementation CBShellServer

+ (id)sharedInstance
{
  if (qword_100092428 != -1)
  {
    sub_1000479A4();
  }

  v3 = qword_100092420;

  return v3;
}

- (CBShellServer)init
{
  v7.receiver = self;
  v7.super_class = CBShellServer;
  v2 = [(CBShellServer *)&v7 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:kCheckerBoardRemoteServerMachName];
    listener = v2->_listener;
    v2->_listener = v4;
  }

  return v2;
}

- (void)start
{
  listener = [(CBShellServer *)self listener];
  [listener setDelegate:self];

  listener2 = [(CBShellServer *)self listener];
  [listener2 resume];
}

- (void)createAlert:(id)alert timeout:(unint64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  alertCopy = alert;
  remoteAlertsDelegate = [(CBShellServer *)self remoteAlertsDelegate];
  [remoteAlertsDelegate server:self createAlert:alertCopy timeout:completionCopy completion:timeout];
}

- (void)receiveResponseFromAlertWithIdentifier:(id)identifier timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  remoteAlertsDelegate = [(CBShellServer *)self remoteAlertsDelegate];
  [remoteAlertsDelegate server:self receiveResponseFromAlertWithIdentifier:identifierCopy timeout:completionCopy completion:timeout];
}

- (void)exitCheckerBoard
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B7E0;
  block[3] = &unk_10007D540;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)proxyServerWithCompletion:(id)completion
{
  completionCopy = completion;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  proxyServer = [systemServicesDelegate proxyServer];

  completionCopy[2](completionCopy, proxyServer);
}

- (void)showSceneStatusBar
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate showSceneStatusBar];
}

- (void)hideSceneStatusBar
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate hideSceneStatusBar];
}

- (void)statusBarStyle:(int64_t)style
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate statusBarStyle:style];
}

- (void)dimDisplay
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate dimDisplay];
}

- (void)undimDisplay
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate undimDisplay];
}

- (void)enableTouchButtonEvents
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate enableTouchButtonEvents];
}

- (void)disableTouchButtonEvents
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate disableTouchButtonEvents];
}

- (void)disableNetworkReconnect
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate disableNetworkReconnect];
}

- (void)enableNetworkReconnect
{
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate enableNetworkReconnect];
}

- (void)addShutdownTask:(id)task forReason:(id)reason
{
  reasonCopy = reason;
  taskCopy = task;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate addShutdownTask:taskCopy forReason:reasonCopy];
}

- (void)removeShutdownTask:(id)task
{
  taskCopy = task;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate removeShutdownTask:taskCopy];
}

- (void)launchDiagnostics
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002BC7C;
  v2[3] = &unk_10007D668;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)diagnosticsRunning:(id)running
{
  runningCopy = running;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate diagnosticsRunning:runningCopy];
}

- (void)connectToSSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (+[CBUtilities isInternalInstall])
  {
    systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
    [systemServicesDelegate connectToSSID:dCopy completion:completionCopy];
  }

  else
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "This function is not available on customer install", v10, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)connectToSSID:(id)d password:(id)password completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  completionCopy = completion;
  if (+[CBUtilities isInternalInstall])
  {
    systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
    [systemServicesDelegate connectToSSID:dCopy password:passwordCopy completion:completionCopy];
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "This function is not available on customer install", v13, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)networkScanWithCompletion:(id)completion
{
  completionCopy = completion;
  if (+[CBUtilities isInternalInstall])
  {
    systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
    [systemServicesDelegate networkScanWithCompletion:completionCopy];
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "This function is not available on customer install", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)connectedNetwork:(id)network
{
  networkCopy = network;
  if (+[CBUtilities isInternalInstall])
  {
    systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
    [systemServicesDelegate connectedNetwork:networkCopy];
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "This function is not available on customer install", buf, 2u);
    }

    (*(networkCopy + 2))(networkCopy, 0);
  }
}

- (void)networkReconnectEnabled:(id)enabled
{
  enabledCopy = enabled;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate networkReconnectEnabled:enabledCopy];
}

- (void)displayDimmed:(id)dimmed
{
  dimmedCopy = dimmed;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate displayDimmed:dimmedCopy];
}

- (void)currentLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate currentLocaleIdentifier:identifierCopy];
}

- (void)setLocaleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  systemServicesDelegate = [(CBShellServer *)self systemServicesDelegate];
  [systemServicesDelegate setLocaleIdentifier:identifierCopy completion:completionCopy];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(CBShellServer *)self _getEntitlementLevelForConnection:connectionCopy];
  if (v6 == 3)
  {
    exportedInterface2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBSSystemServicesProtocol];
    [connectionCopy setExportedInterface:exportedInterface2];
LABEL_7:

    exportedInterface = [connectionCopy exportedInterface];
    [(CBShellServer *)self _setClassesForProxyServerOnInterface:exportedInterface];
    goto LABEL_8;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBSServerProtocol];
    [connectionCopy setExportedInterface:v7];

    exportedInterface2 = [connectionCopy exportedInterface];
    [(CBShellServer *)self _setClassesForRemoteAlertsOnInterface:exportedInterface2];
    goto LABEL_7;
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBSRemoteAlertServerProtocol];
  [connectionCopy setExportedInterface:v9];

  exportedInterface = [connectionCopy exportedInterface];
  [(CBShellServer *)self _setClassesForRemoteAlertsOnInterface:exportedInterface];
LABEL_8:

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v11 = 1;
LABEL_10:

  return v11;
}

- (void)_setClassesForRemoteAlertsOnInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v4 forSelector:"createAlert:timeout:completion:" argumentIndex:0 ofReply:0];
}

- (void)_setClassesForProxyServerOnInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v4 forSelector:"proxyServerWithCompletion:" argumentIndex:0 ofReply:1];
}

- (unint64_t)_getEntitlementLevelForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v8 = 0u;
  v9 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  if ([(CBShellServer *)self _auditToken:&v8 hasEntitlement:kCheckerBoardServicesEntitlement])
  {
    v6 = 1;
  }

  else if ([(CBShellServer *)self _auditToken:&v8 hasEntitlement:kCheckerBoardSystemServicesEntitlement])
  {
    v6 = 3;
  }

  else if ([(CBShellServer *)self _auditToken:&v8 hasEntitlement:kCheckerBoardRemoteAlertsEntitlement])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_auditToken:(id *)token hasEntitlement:(id)entitlement
{
  [entitlement UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  v5 = v4;
  if (v4)
  {
    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    value = 0;
  }

  return value;
}

- (CBRemoteAlertServerDelegate)remoteAlertsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAlertsDelegate);

  return WeakRetained;
}

- (CBSystemServicesServerDelegate)systemServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemServicesDelegate);

  return WeakRetained;
}

@end