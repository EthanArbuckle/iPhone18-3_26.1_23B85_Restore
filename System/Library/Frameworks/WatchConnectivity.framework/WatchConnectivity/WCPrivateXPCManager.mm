@interface WCPrivateXPCManager
+ (id)sharedManager;
+ (void)initialize;
- (NSXPCConnection)connection;
- (WCPrivateXPCManager)init;
- (WCPrivateXPCManagerDelegate)delegate;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
- (void)fakeIncomingPayloadOnSubService:(id)service ofType:(id)type clientData:(id)data resource:(id)resource resourceSandboxToken:(id)token completionHandler:(id)handler;
- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler;
- (void)handlePingForExtensionBundleID:(id)d;
- (void)isExtensionPrivileged:(id)privileged completionHandler:(id)handler;
- (void)setupConnection;
- (void)shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler;
@end

@implementation WCPrivateXPCManager

+ (void)initialize
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E042D0];
  v3 = sXPCPrivateManagerDaemonInterface;
  sXPCPrivateManagerDaemonInterface = v2;

  sXPCPrivateManagerClientInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E01858];

  MEMORY[0x2821F96F8]();
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WCPrivateXPCManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

uint64_t __36__WCPrivateXPCManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_manager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WCPrivateXPCManager)init
{
  v17.receiver = self;
  v17.super_class = WCPrivateXPCManager;
  v2 = [(WCPrivateXPCManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.watchconnectivity.xpc.delegate-queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v3;

    objc_initWeak(&location, v2);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __27__WCPrivateXPCManager_init__block_invoke;
    v14 = &unk_278B7C4D0;
    objc_copyWeak(&v15, &location);
    v5 = MEMORY[0x23EE9A170](&v11);
    uTF8String = [@"com.apple.wcd.listener.resumed" UTF8String];
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    notify_register_dispatch(uTF8String, &v2->_listenerResumedToken, v7, v5);

    uTF8String2 = [@"com.apple.wcd.listener.private.should-connect" UTF8String];
    notify_register_dispatch(uTF8String2, &v2->_privateServiceShouldConnectToken, MEMORY[0x277D85CD0], v5);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__WCPrivateXPCManager_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[WCPrivateXPCManager init]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s service listener resumed, attempting to re-establish XPC connection", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connection];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_1];

  [v7 reconnect];
  v8 = *MEMORY[0x277D85DE8];
}

void __27__WCPrivateXPCManager_init__block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __27__WCPrivateXPCManager_init__block_invoke_60_cold_1(v2);
  }
}

- (void)dealloc
{
  notify_cancel(self->_listenerResumedToken);
  notify_cancel(self->_privateServiceShouldConnectToken);
  v3.receiver = self;
  v3.super_class = WCPrivateXPCManager;
  [(WCPrivateXPCManager *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    [(WCPrivateXPCManager *)self setupConnection];
    connection = self->_connection;
  }

  return connection;
}

- (void)setupConnection
{
  v13 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[WCPrivateXPCManager setupConnection]";
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s setting up private xpc connection", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.wcd.private" options:0];
  connection = self->_connection;
  self->_connection = v4;

  [(NSXPCConnection *)self->_connection setDelegate:self];
  [(NSXPCConnection *)self->_connection setExportedInterface:sXPCPrivateManagerClientInterface];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:sXPCPrivateManagerDaemonInterface];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__WCPrivateXPCManager_setupConnection__block_invoke;
  v8[3] = &unk_278B7C4F8;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WCPrivateXPCManager_setupConnection__block_invoke_68;
  v7[3] = &unk_278B7BF78;
  v7[4] = self;
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v7];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__WCPrivateXPCManager_setupConnection__block_invoke(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__WCPrivateXPCManager_setupConnection__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained connection];
  [v4 invalidate];
}

void __38__WCPrivateXPCManager_setupConnection__block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WCPrivateXPCManager_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_278B7BF78;
  v10 = invocationCopy;
  v8 = invocationCopy;
  dispatch_async(delegateQueue, block);
}

- (void)fakeIncomingPayloadOnSubService:(id)service ofType:(id)type clientData:(id)data resource:(id)resource resourceSandboxToken:(id)token completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  typeCopy = type;
  resourceCopy = resource;
  handlerCopy = handler;
  tokenCopy = token;
  dataCopy = data;
  v20 = wc_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (dataCopy)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    path = [resourceCopy path];
    v26 = 136447234;
    v27 = "[WCPrivateXPCManager fakeIncomingPayloadOnSubService:ofType:clientData:resource:resourceSandboxToken:completionHandler:]";
    v28 = 2114;
    v29 = serviceCopy;
    v30 = 2114;
    v31 = typeCopy;
    v32 = 2080;
    v33 = v21;
    v34 = 2114;
    v35 = path;
    _os_log_impl(&dword_23B2FA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@, transferType: %{public}@, clientData: %s, URL: %{public}@", &v26, 0x34u);
  }

  connection = [(WCPrivateXPCManager *)self connection];
  v24 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_72];

  [v24 fakeIncomingPayloadOnSubService:serviceCopy ofType:typeCopy clientData:dataCopy resource:resourceCopy resourceSandboxToken:tokenCopy completionHandler:handlerCopy];
  v25 = *MEMORY[0x277D85DE8];
}

void __121__WCPrivateXPCManager_fakeIncomingPayloadOnSubService_ofType_clientData_resource_resourceSandboxToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __121__WCPrivateXPCManager_fakeIncomingPayloadOnSubService_ofType_clientData_resource_resourceSandboxToken_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)handlePingForExtensionBundleID:(id)d
{
  dCopy = d;
  delegate = [(WCPrivateXPCManager *)self delegate];
  [delegate xpcManager:self handlePingForExtensionBundleID:dCopy];
}

- (void)isExtensionPrivileged:(id)privileged completionHandler:(id)handler
{
  handlerCopy = handler;
  privilegedCopy = privileged;
  delegate = [(WCPrivateXPCManager *)self delegate];
  [delegate xpcManager:self isExtensionPrivileged:privilegedCopy completionHandler:handlerCopy];
}

- (void)handlePairedSyncComplicationsStartedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(WCPrivateXPCManager *)self delegate];
  [delegate xpcManager:self handlePairedSyncComplicationsStartedWithCompletionHandler:handlerCopy];
}

- (void)shouldWakeAppWithBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  delegate = [(WCPrivateXPCManager *)self delegate];
  [delegate xpcManager:self shouldWakeAppWithBundleID:dCopy completionHandler:handlerCopy];
}

- (WCPrivateXPCManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __27__WCPrivateXPCManager_init__block_invoke_60_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v2, v3, "%{public}s failed to retrieve remote object proxy %{public}@", v4, v5, v6, v7, a1, v10, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __121__WCPrivateXPCManager_fakeIncomingPayloadOnSubService_ofType_clientData_resource_resourceSandboxToken_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v2, v3, "%{public}s failed to retrieve remote object proxy %{public}@", v4, v5, v6, v7, a1, v10, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end