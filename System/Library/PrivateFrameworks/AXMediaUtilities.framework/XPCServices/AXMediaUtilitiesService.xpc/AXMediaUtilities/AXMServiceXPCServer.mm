@interface AXMServiceXPCServer
- (AXMServiceXPCServer)init;
- (AXMServiceXPCServerDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_destroyXPCConnection:(id)connection;
- (void)prewarmVisionEngineService;
- (void)run;
- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result;
@end

@implementation AXMServiceXPCServer

- (AXMServiceXPCServer)init
{
  v6.receiver = self;
  v6.super_class = AXMServiceXPCServer;
  v2 = [(AXMServiceXPCServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableArray array];
    [(AXMServiceXPCServer *)v3 setConnections:v4];
  }

  return v3;
}

- (void)run
{
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:self];
  [v3 resume];
}

- (void)_destroyXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = AXMediaLogService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will destroy connection to client: %@", buf, 0xCu);
  }

  v7 = connectionCopy;
  v6 = connectionCopy;
  AX_PERFORM_WITH_LOCK();
  [v6 invalidate];
}

void __45__AXMServiceXPCServer__destroyXPCConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 removeObject:*(a1 + 40)];
}

- (void)prewarmVisionEngineService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__AXMServiceXPCServer_prewarmVisionEngineService__block_invoke;
  block[3] = &unk_100008268;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __49__AXMServiceXPCServer_prewarmVisionEngineService__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 prewarmVisionEngineService];
}

- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result
{
  engineCopy = engine;
  sourceCopy = source;
  contextCopy = context;
  resultCopy = result;
  v16 = AXMediaLogService();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = +[NSXPCConnection currentConnection];
    *buf = 134217984;
    processIdentifier = [v17 processIdentifier];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Received evaluate source request from: %ld", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __74__AXMServiceXPCServer_visionEngine_evaluateSource_context_options_result___block_invoke;
  v22[3] = &unk_100008308;
  v22[4] = self;
  v23 = engineCopy;
  v24 = sourceCopy;
  v25 = contextCopy;
  v26 = resultCopy;
  optionsCopy = options;
  v18 = resultCopy;
  v19 = contextCopy;
  v20 = sourceCopy;
  v21 = engineCopy;
  dispatch_async(&_dispatch_main_q, v22);
}

void __74__AXMServiceXPCServer_visionEngine_evaluateSource_context_options_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 visionEngine:*(a1 + 40) evaluateSource:*(a1 + 48) context:*(a1 + 56) options:*(a1 + 72) result:*(a1 + 64)];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  v21 = 0u;
  v22 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  HasEntitlement = AXMAuditTokenTaskHasEntitlement();
  if (HasEntitlement)
  {
    v10 = AXMServiceInterface();
    [v8 setExportedInterface:v10];

    [v8 setExportedObject:self];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AXMServiceClientInterface];
    [v8 setRemoteObjectInterface:v11];

    objc_initWeak(&location, v8);
    [v8 setInterruptionHandler:&__block_literal_global];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __58__AXMServiceXPCServer_listener_shouldAcceptNewConnection___block_invoke_71;
    v18[3] = &unk_100008370;
    v18[4] = self;
    objc_copyWeak(&v19, &location);
    [v8 setInvalidationHandler:v18];
    [v8 resume];
    v12 = v8;
    AX_PERFORM_WITH_LOCK();
    v13 = AXMediaLogService();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 auditSessionIdentifier]);
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 processIdentifier]);
      *buf = 138412802;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Accepting connection from client. AuditID:%@. PID:%@. connection: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = AXMediaLogService();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [AXMServiceXPCServer listener:v8 shouldAcceptNewConnection:v16];
    }
  }

  return HasEntitlement;
}

void __58__AXMServiceXPCServer_listener_shouldAcceptNewConnection___block_invoke(id a1)
{
  v1 = AXMediaLogService();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection from client interrupted", v2, 2u);
  }
}

void __58__AXMServiceXPCServer_listener_shouldAcceptNewConnection___block_invoke_71(uint64_t a1)
{
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__AXMServiceXPCServer_listener_shouldAcceptNewConnection___block_invoke_71_cold_1(v2);
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 _destroyXPCConnection:WeakRetained];
}

void __58__AXMServiceXPCServer_listener_shouldAcceptNewConnection___block_invoke_72(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 addObject:*(a1 + 40)];
}

- (AXMServiceXPCServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 processIdentifier]);
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Invalid client tried to connect to AXMediaUtilitiesService. Does not have entitlement: AXMServiceAccessEntitlement. PID:%@. connection: %@", &v5, 0x16u);
}

@end