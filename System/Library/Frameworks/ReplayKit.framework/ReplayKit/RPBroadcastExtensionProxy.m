@interface RPBroadcastExtensionProxy
- (RPBroadcastExtensionProxy)initWithBroadcastUploadExtension:(id)a3;
- (RPBroadcastExtensionProxy)initWithBroadcastUploadListenerEndpoint:(id)a3;
- (void)dealloc;
- (void)establishConnectionWithHandler:(id)a3;
- (void)finishBroadcastWithError:(id)a3;
- (void)invalidateConnection;
- (void)ping;
- (void)processPayload:(id)a3 completion:(id)a4;
- (void)setupNewConnection:(id)a3;
- (void)updateBroadcastURL:(id)a3;
- (void)updateServiceInfo:(id)a3;
@end

@implementation RPBroadcastExtensionProxy

- (RPBroadcastExtensionProxy)initWithBroadcastUploadExtension:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPBroadcastExtensionProxy;
  v5 = [(RPBroadcastExtensionProxy *)&v10 init];
  if (v5)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v12 = "[RPBroadcastExtensionProxy initWithBroadcastUploadExtension:]";
      v13 = 1024;
      v14 = 41;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v6 = [MEMORY[0x277CCAE98] anonymousListener];
    [(RPBroadcastExtensionProxy *)v5 setListener:v6];

    [(NSXPCListener *)v5->_listener resume];
    [(NSXPCListener *)v5->_listener setDelegate:v5];
    v7 = [(NSXPCListener *)v5->_listener endpoint];
    [(RPBroadcastExtensionProxy *)v5 setListenerEndpoint:v7];

    [(RPBroadcastExtensionProxy *)v5 setBroadcastUploadExtension:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (RPBroadcastExtensionProxy)initWithBroadcastUploadListenerEndpoint:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RPBroadcastExtensionProxy;
  v5 = [(RPBroadcastExtensionProxy *)&v9 init];
  if (v5)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPBroadcastExtensionProxy initWithBroadcastUploadListenerEndpoint:]";
      v12 = 1024;
      v13 = 53;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    if (!v5->_connection)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v4];
      [(RPBroadcastExtensionProxy *)v5 setupNewConnection:v6];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v6 = "[RPBroadcastExtensionProxy dealloc]";
    v7 = 1024;
    v8 = 63;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = RPBroadcastExtensionProxy;
  [(RPBroadcastExtensionProxy *)&v4 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)establishConnectionWithHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]";
    v15 = 1024;
    v16 = 67;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d establishing connection to extension", buf, 0x12u);
  }

  [(RPBroadcastExtensionProxy *)self setConnectionReadyHandler:v4];
  v5 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  broadcastUploadExtension = self->_broadcastUploadExtension;
  v12 = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke;
  v10[3] = &unk_278B623D0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(NSExtension *)broadcastUploadExtension beginExtensionRequestWithInputItems:v7 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_cold_1(v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]_block_invoke";
      v18 = 1024;
      v19 = 78;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d beginExtensionRequestWithInputItems returned", buf, 0x12u);
    }

    v7 = dispatch_semaphore_create(0);
    v8 = [*(*(a1 + 32) + 48) _extensionContextForUUID:v5];
    v9 = [v8 _auxiliaryConnection];
    v10 = [v9 remoteObjectProxy];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 72);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_6;
      v14[3] = &unk_278B61B70;
      v12 = v7;
      v15 = v12;
      [v10 setEndpoint:v11 completionHandler:v14];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

intptr_t __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBroadcastExtensionProxy establishConnectionWithHandler:]_block_invoke";
    v6 = 1024;
    v7 = 87;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Remote endpoint set.", &v4, 0x12u);
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidateConnection
{
  v17 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v9 = 136446978;
    v10 = "[RPBroadcastExtensionProxy invalidateConnection]";
    v11 = 1024;
    v12 = 100;
    v13 = 2048;
    v14 = self;
    v15 = 2048;
    v16 = connection;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p invalidating connection=%p with extension", &v9, 0x26u);
  }

  [(RPBroadcastExtensionProxy *)self setConnectionReadyHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCListener *)self->_listener invalidate];
  [(RPBroadcastExtensionProxy *)self setConnection:0];
  [(RPBroadcastExtensionProxy *)self setListener:0];
  serviceInfoHandler = self->_serviceInfoHandler;
  self->_serviceInfoHandler = 0;

  broadcastURLHandler = self->_broadcastURLHandler;
  self->_broadcastURLHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  v7 = [(RPBroadcastExtensionProxy *)self broadcastUploadExtension];
  [v7 _kill:9];

  [(RPBroadcastExtensionProxy *)self setBroadcastUploadExtension:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupNewConnection:(id)a3
{
  v4 = a3;
  [(RPBroadcastExtensionProxy *)self setConnection:v4];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D94558];
  [(NSXPCConnection *)self->_connection setExportedInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D944E8];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke;
  v10 = &unk_278B623F8;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:&v7];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_8, v7, v8, v9, v10];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke(uint64_t a1)
{
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained errorHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 errorHandler];
    v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5808 userInfo:MEMORY[0x277CBEC10]];
    (v5)[2](v5, v6);
  }
}

void __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke_64()
{
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke_64_cold_1();
  }
}

- (void)updateServiceInfo:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPBroadcastExtensionProxy updateServiceInfo:]";
    v9 = 1024;
    v10 = 145;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received serviceInfo", &v7, 0x12u);
  }

  serviceInfoHandler = self->_serviceInfoHandler;
  if (serviceInfoHandler)
  {
    serviceInfoHandler[2](serviceInfoHandler, v4);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBroadcastURL:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPBroadcastExtensionProxy updateBroadcastURL:]";
    v9 = 1024;
    v10 = 152;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received broadcastURL", &v7, 0x12u);
  }

  broadcastURLHandler = self->_broadcastURLHandler;
  if (broadcastURLHandler)
  {
    broadcastURLHandler[2](broadcastURLHandler, v4);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)ping
{
  v22 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPBroadcastExtensionProxy ping]";
    v14 = 1024;
    v15 = 159;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received ping from extension, notifying handler that connection is ready", &v12, 0x12u);
  }

  connectionReadyHandler = self->_connectionReadyHandler;
  if (connectionReadyHandler)
  {
    connectionReadyHandler[2](connectionReadyHandler, 0);
  }

  v4 = [MEMORY[0x277CCAE80] currentConnection];
  v5 = +[RPFeatureFlagUtility sharedInstance];
  v6 = [v5 screenRecordingPassthroughCamera];

  if (v6)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446978;
      v13 = "[RPBroadcastExtensionProxy ping]";
      v14 = 1024;
      v15 = 172;
      v16 = 2048;
      v17 = self;
      v18 = 2048;
      v19 = v4;
      v7 = MEMORY[0x277D86220];
      v8 = " [INFO] %{public}s:%d %p connection=%p";
      v9 = 38;
LABEL_13:
      _os_log_impl(&dword_23A863000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, v9);
    }
  }

  else
  {
    self->_enableMixedRealityCamera = 0;
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      enableMixedRealityCamera = self->_enableMixedRealityCamera;
      v12 = 136447234;
      v13 = "[RPBroadcastExtensionProxy ping]";
      v14 = 1024;
      v15 = 170;
      v16 = 2048;
      v17 = self;
      v18 = 2048;
      v19 = v4;
      v20 = 1024;
      v21 = enableMixedRealityCamera;
      v7 = MEMORY[0x277D86220];
      v8 = " [INFO] %{public}s:%d %p connection=%p enableMixedRealityCamera=%d";
      v9 = 44;
      goto LABEL_13;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)finishBroadcastWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPBroadcastExtensionProxy finishBroadcastWithError:]";
    v9 = 1024;
    v10 = 177;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d received finish request from service due to error %@", &v7, 0x1Cu);
  }

  errorHandler = self->_errorHandler;
  if (errorHandler)
  {
    errorHandler[2](errorHandler, v4);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__RPBroadcastExtensionProxy_processPayload_completion___block_invoke;
  v14 = &unk_278B62420;
  objc_copyWeak(&v15, &location);
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 processPayload:v6 completion:{v7, v11, v12, v13, v14}];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __55__RPBroadcastExtensionProxy_processPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__RPBroadcastExtensionProxy_processPayload_completion___block_invoke_cold_1(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained errorHandler];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 errorHandler];
    v8 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5808 userInfo:MEMORY[0x277CBEC10]];
    (v7)[2](v7, v8);
  }
}

void __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPBroadcastExtensionProxy_establishConnectionWithHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__RPBroadcastExtensionProxy_setupNewConnection___block_invoke_64_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__RPBroadcastExtensionProxy_processPayload_completion___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

@end