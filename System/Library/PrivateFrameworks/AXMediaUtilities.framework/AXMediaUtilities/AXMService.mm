@interface AXMService
- (AXMService)init;
- (AXMServiceDelegate)delegate;
- (NSXPCConnection)xpcConnection;
- (id)_serviceProxy;
- (void)_destroyXPCConnection;
- (void)dealloc;
- (void)prewarmVisionEngineService;
- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result;
@end

@implementation AXMService

- (AXMService)init
{
  v6.receiver = self;
  v6.super_class = AXMService;
  v2 = [(AXMService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXMServiceConnection", 0);
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v3;
  }

  return v2;
}

- (void)_destroyXPCConnection
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AXMediaLogService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_DEFAULT, "AXMService being deallocated: %@", buf, 0xCu);
  }

  [(AXMService *)self _destroyXPCConnection];
  v4.receiver = self;
  v4.super_class = AXMService;
  [(AXMService *)&v4 dealloc];
}

- (NSXPCConnection)xpcConnection
{
  objc_initWeak(&location, self);
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AXMService_xpcConnection__block_invoke;
  block[3] = &unk_1E7A1CA98;
  block[4] = self;
  objc_copyWeak(&v7, &location);
  dispatch_sync(xpcConnectionQueue, block);
  v4 = self->_xpcConnection;
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __27__AXMService_xpcConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v2 = objc_alloc(MEMORY[0x1E696B0B8]);
    v3 = [v2 initWithServiceName:AXMServiceIdentifier];
    v4 = AXMServiceInterface();
    [v3 setRemoteObjectInterface:v4];

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F240EE48];
    [v3 setExportedInterface:v5];

    [v3 setExportedObject:*(a1 + 32)];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __27__AXMService_xpcConnection__block_invoke_2;
    v13[3] = &unk_1E7A1CA70;
    objc_copyWeak(&v14, (a1 + 40));
    [v3 setInterruptionHandler:v13];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __27__AXMService_xpcConnection__block_invoke_71;
    v11 = &unk_1E7A1CA70;
    objc_copyWeak(&v12, (a1 + 40));
    [v3 setInvalidationHandler:&v8];
    [v3 resume];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v3;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
  }
}

void __27__AXMService_xpcConnection__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_DEFAULT, "Connection to service interrupted. client: %@", &v4, 0xCu);
  }

  v3 = [WeakRetained delegate];
  [v3 axMediaUtilitiesService:WeakRetained eventOccurred:1];

  [WeakRetained _destroyXPCConnection];
}

void __27__AXMService_xpcConnection__block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __27__AXMService_xpcConnection__block_invoke_71_cold_1(WeakRetained, v2);
  }

  v3 = [WeakRetained delegate];
  [v3 axMediaUtilitiesService:WeakRetained eventOccurred:2];

  [WeakRetained _destroyXPCConnection];
}

- (id)_serviceProxy
{
  objc_initWeak(&location, self);
  xpcConnection = [(AXMService *)self xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AXMService__serviceProxy__block_invoke;
  v6[3] = &unk_1E7A1CAC0;
  objc_copyWeak(&v7, &location);
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void __27__AXMService__serviceProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = AXMediaLogService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __27__AXMService__serviceProxy__block_invoke_cold_1(v3, v5);
  }

  v6 = [WeakRetained delegate];
  [v6 axMediaUtilitiesService:WeakRetained eventOccurred:3];
}

- (void)prewarmVisionEngineService
{
  _serviceProxy = [(AXMService *)self _serviceProxy];
  [_serviceProxy prewarmVisionEngineService];
}

- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result
{
  resultCopy = result;
  contextCopy = context;
  sourceCopy = source;
  engineCopy = engine;
  _serviceProxy = [(AXMService *)self _serviceProxy];
  [_serviceProxy visionEngine:engineCopy evaluateSource:sourceCopy context:contextCopy options:options result:resultCopy];
}

- (AXMServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __27__AXMService_xpcConnection__block_invoke_71_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Connection to service invalidated. client: %@", &v2, 0xCu);
}

void __27__AXMService__serviceProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Failed to get service proxy: %@", &v2, 0xCu);
}

@end