@interface WCXPCManager
+ (id)sharedManager;
+ (void)initialize;
- (NSXPCConnection)connection;
- (WCXPCManager)init;
- (WCXPCManagerDelegate)delegate;
- (void)acknowledgeFileIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeFileResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeUserInfoIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4;
- (void)cancelAllOutstandingMessages;
- (void)cancelSendWithIdentifier:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)handleActiveDeviceSwitchStarted;
- (void)handleApplicationContextWithPairingID:(id)a3;
- (void)handleFileResultWithPairingID:(id)a3;
- (void)handleIncomingFileWithPairingID:(id)a3;
- (void)handleIncomingUserInfoWithPairingID:(id)a3;
- (void)handleInterruptedConnection;
- (void)handleMessageSendingAllowed;
- (void)handleRequest:(id)a3;
- (void)handleResponse:(id)a3;
- (void)handleSentMessageWithIdentifier:(id)a3 error:(id)a4;
- (void)handleSessionStateChanged:(id)a3;
- (void)handleUserInfoResultWithPairingID:(id)a3;
- (void)interruptionHandler;
- (void)invalidateConnection;
- (void)onqueue_reconnect;
- (void)onqueue_retryConnectIfNecessary;
- (void)sendMessage:(id)a3 clientPairingID:(id)a4 acceptanceHandler:(id)a5 errorHandler:(id)a6;
- (void)setupConnection;
- (void)transferFile:(id)a3 sandboxToken:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6;
- (void)transferUserInfo:(id)a3 withURL:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6;
- (void)updateApplicationContext:(id)a3 clientPairingID:(id)a4 errorHandler:(id)a5;
@end

@implementation WCXPCManager

+ (void)initialize
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E02B90];
  v3 = sXPCManagerDaemonInterface;
  sXPCManagerDaemonInterface = v2;

  v4 = sXPCManagerDaemonInterface;
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_sendMessage_clientPairingID_acceptanceHandler_ argumentIndex:0 ofReply:0];

  v6 = sXPCManagerDaemonInterface;
  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v6 setClasses:v7 forSelector:sel_transferFile_sandboxToken_clientPairingID_errorHandler_ argumentIndex:0 ofReply:0];

  v8 = sXPCManagerDaemonInterface;
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v8 setClasses:v9 forSelector:sel_transferUserInfo_withURL_clientPairingID_errorHandler_ argumentIndex:0 ofReply:0];

  v10 = sXPCManagerDaemonInterface;
  v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v10 setClasses:v11 forSelector:sel_transferUserInfo_withURL_clientPairingID_errorHandler_ argumentIndex:1 ofReply:0];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284E02870];
  v13 = sXPCManagerClientInterface;
  sXPCManagerClientInterface = v12;

  v14 = sXPCManagerClientInterface;
  v15 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v14 setClasses:v15 forSelector:sel_handleSessionStateChanged_ argumentIndex:0 ofReply:0];

  v16 = sXPCManagerClientInterface;
  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v16 setClasses:v17 forSelector:sel_handleRequest_ argumentIndex:0 ofReply:0];

  v18 = sXPCManagerClientInterface;
  v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v18 setClasses:v19 forSelector:sel_handleResponse_ argumentIndex:0 ofReply:0];
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WCXPCManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_0 != -1)
  {
    dispatch_once(&sharedManager_onceToken_0, block);
  }

  v2 = sharedManager_manager_0;

  return v2;
}

uint64_t __29__WCXPCManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_manager_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WCXPCManager)init
{
  v13.receiver = self;
  v13.super_class = WCXPCManager;
  v2 = [(WCXPCManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_reconnectRetryCount = 0;
    *&v2->_connectionInvalidated = 0;
    v4 = dispatch_queue_create("com.apple.private.watchconnectivity.work-queue", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    objc_initWeak(&location, v3);
    v6 = [@"com.apple.wcd.listener.resumed" UTF8String];
    v7 = v3->_workQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__WCXPCManager_init__block_invoke;
    handler[3] = &unk_278B7C608;
    v10 = v3;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(v6, &v3->_listenerResumedToken, v7, handler);
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __20__WCXPCManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReconnectRetryCount:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onqueue_retryConnectIfNecessary];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    [(WCXPCManager *)self setupConnection];
    connection = self->_connection;
  }

  return connection;
}

- (void)setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.wcd" options:0];
  connection = self->_connection;
  self->_connection = v3;

  [(NSXPCConnection *)self->_connection setDelegate:self];
  [(NSXPCConnection *)self->_connection setExportedInterface:sXPCManagerClientInterface];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:sXPCManagerDaemonInterface];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__WCXPCManager_setupConnection__block_invoke;
  v6[3] = &unk_278B7C4F8;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WCXPCManager_setupConnection__block_invoke_3;
  v5[3] = &unk_278B7BF78;
  v5[4] = self;
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v5];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __31__WCXPCManager_setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WCXPCManager_setupConnection__block_invoke_2;
  block[3] = &unk_278B7C4F8;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __31__WCXPCManager_setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __31__WCXPCManager_setupConnection__block_invoke_3(uint64_t a1)
{
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "xpc connection invalidated", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
}

- (void)onqueue_retryConnectIfNecessary
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(WCXPCManager *)self reconnectFailed])
  {
    if ([(WCXPCManager *)self reconnectRetryCount]> 4)
    {
      v4 = wc_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446466;
        v7 = "[WCXPCManager onqueue_retryConnectIfNecessary]";
        v8 = 1024;
        v9 = [(WCXPCManager *)self reconnectRetryCount];
        _os_log_impl(&dword_23B2FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s failed to reconnect to daemon (%d attempts)", &v6, 0x12u);
      }
    }

    else
    {
      [(WCXPCManager *)self setReconnectRetryCount:[(WCXPCManager *)self reconnectRetryCount]+ 1];
      v3 = wc_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446466;
        v7 = "[WCXPCManager onqueue_retryConnectIfNecessary]";
        v8 = 1024;
        v9 = [(WCXPCManager *)self reconnectRetryCount];
        _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s retrying previously failed reconnect (%d attempt)", &v6, 0x12u);
      }

      [(WCXPCManager *)self setReconnectFailed:0];
      [(WCXPCManager *)self onqueue_reconnect];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)onqueue_reconnect
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[WCXPCManager onqueue_reconnect]";
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [(WCXPCManager *)self delegate];
  v5 = [v4 currentPairingID];
  v6 = [(WCXPCManager *)self delegate];
  v7 = [v6 supportsActiveDeviceSwitch];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WCXPCManager_onqueue_reconnect__block_invoke;
  v9[3] = &unk_278B7C630;
  objc_copyWeak(&v10, buf);
  v9[4] = self;
  [(WCXPCManager *)self sessionReadyForInitialStateForClientPairingID:v5 supportsActiveDeviceSwitch:v7 withErrorHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __33__WCXPCManager_onqueue_reconnect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__WCXPCManager_onqueue_reconnect__block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    v7 = 1;
  }

  else
  {
    [*(a1 + 32) setReconnectRetryCount:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    v7 = 0;
  }

  [WeakRetained setReconnectFailed:v7];
}

- (void)interruptionHandler
{
  if ([(WCXPCManager *)self connectionInvalidated])
  {
    v3 = [(WCXPCManager *)self connection];
    [v3 invalidate];
  }

  else
  {
    [(WCXPCManager *)self handleInterruptedConnection];
    if ([(WCXPCManager *)self reconnectFailed])
    {

      [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
    }

    else
    {

      [(WCXPCManager *)self onqueue_reconnect];
    }
  }
}

- (void)handleInterruptedConnection
{
  v2 = [(WCXPCManager *)self delegate];
  [v2 xpcConnectionInterrupted];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v6 = a4;
  [v6 retainArguments];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WCXPCManager_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_278B7BF78;
  v10 = v6;
  v8 = v6;
  dispatch_async(workQueue, block);
}

void __106__WCXPCManager_sessionReadyForInitialStateForClientPairingID_supportsActiveDeviceSwitch_withErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2 != 0;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setReconnectFailed:v3];

  (*(*(a1 + 32) + 16))();
}

void __106__WCXPCManager_sessionReadyForInitialStateForClientPairingID_supportsActiveDeviceSwitch_withErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2 != 0;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setReconnectFailed:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)sendMessage:(id)a3 clientPairingID:(id)a4 acceptanceHandler:(id)a5 errorHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v14 = [(WCXPCManager *)self connection];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v10];

  [v15 sendMessage:v13 clientPairingID:v12 acceptanceHandler:v11];
}

- (void)updateApplicationContext:(id)a3 clientPairingID:(id)a4 errorHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v11 = [(WCXPCManager *)self connection];
  v12 = [v11 remoteObjectProxyWithErrorHandler:v8];

  [v12 updateApplicationContext:v10 clientPairingID:v9 errorHandler:v8];
}

- (void)transferFile:(id)a3 sandboxToken:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v14 = [(WCXPCManager *)self connection];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v10];

  [v15 transferFile:v13 sandboxToken:v12 clientPairingID:v11 errorHandler:v10];
}

- (void)transferUserInfo:(id)a3 withURL:(id)a4 clientPairingID:(id)a5 errorHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v14 = [(WCXPCManager *)self connection];
  v15 = [v14 remoteObjectProxyWithErrorHandler:v10];

  [v15 transferUserInfo:v13 withURL:v12 clientPairingID:v11 errorHandler:v10];
}

- (void)cancelSendWithIdentifier:(id)a3
{
  v4 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v5 = [(WCXPCManager *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_4];

  [v6 cancelSendWithIdentifier:v4];
}

void __41__WCXPCManager_cancelSendWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__WCXPCManager_cancelSendWithIdentifier___block_invoke_cold_1();
  }
}

- (void)cancelAllOutstandingMessages
{
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v3 = [(WCXPCManager *)self connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_106];

  [v4 cancelAllOutstandingMessages];
}

void __44__WCXPCManager_cancelAllOutstandingMessages__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__WCXPCManager_cancelAllOutstandingMessages__block_invoke_cold_1();
  }
}

- (void)acknowledgeFileIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v8 = [(WCXPCManager *)self connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_108];

  [v9 acknowledgeFileIndexWithIdentifier:v7 clientPairingID:v6];
}

void __67__WCXPCManager_acknowledgeFileIndexWithIdentifier_clientPairingID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__WCXPCManager_acknowledgeFileIndexWithIdentifier_clientPairingID___block_invoke_cold_1();
  }
}

- (void)acknowledgeFileResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v8 = [(WCXPCManager *)self connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_110];

  [v9 acknowledgeFileResultIndexWithIdentifier:v7 clientPairingID:v6];
}

void __73__WCXPCManager_acknowledgeFileResultIndexWithIdentifier_clientPairingID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__WCXPCManager_acknowledgeFileResultIndexWithIdentifier_clientPairingID___block_invoke_cold_1();
  }
}

- (void)acknowledgeUserInfoIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v8 = [(WCXPCManager *)self connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_112];

  [v9 acknowledgeUserInfoIndexWithIdentifier:v7 clientPairingID:v6];
}

void __71__WCXPCManager_acknowledgeUserInfoIndexWithIdentifier_clientPairingID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__WCXPCManager_acknowledgeUserInfoIndexWithIdentifier_clientPairingID___block_invoke_cold_1();
  }
}

- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)a3 clientPairingID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  v8 = [(WCXPCManager *)self connection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_114];

  [v9 acknowledgeUserInfoResultIndexWithIdentifier:v7 clientPairingID:v6];
}

void __77__WCXPCManager_acknowledgeUserInfoResultIndexWithIdentifier_clientPairingID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__WCXPCManager_acknowledgeUserInfoResultIndexWithIdentifier_clientPairingID___block_invoke_cold_1();
  }
}

- (void)invalidateConnection
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[WCXPCManager invalidateConnection]";
    _os_log_impl(&dword_23B2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s ", &v6, 0xCu);
  }

  if (![(WCXPCManager *)self connectionInvalidated])
  {
    [(WCXPCManager *)self setConnectionInvalidated:1];
    v4 = [(WCXPCManager *)self connection];
    [v4 invalidate];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageSendingAllowed
{
  v2 = [(WCXPCManager *)self delegate];
  [v2 handleMessageSendingAllowed];
}

- (void)handleSentMessageWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WCXPCManager *)self delegate];
  [v8 handleSentMessageWithIdentifier:v7 error:v6];
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleRequest:v4];
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleResponse:v4];
}

- (void)handleApplicationContextWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleApplicationContextWithPairingID:v4];
}

- (void)handleIncomingFileWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleIncomingFileWithPairingID:v4];
}

- (void)handleIncomingUserInfoWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleIncomingUserInfoWithPairingID:v4];
}

- (void)handleFileResultWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleFileResultWithPairingID:v4];
}

- (void)handleUserInfoResultWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleUserInfoResultWithPairingID:v4];
}

- (void)handleSessionStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(WCXPCManager *)self delegate];
  [v5 handleSessionStateChanged:v4];
}

- (void)handleActiveDeviceSwitchStarted
{
  v2 = [(WCXPCManager *)self delegate];
  [v2 handleActiveDeviceSwitchStarted];
}

- (WCXPCManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __33__WCXPCManager_onqueue_reconnect__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s error reconnecting to daemon due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __41__WCXPCManager_cancelSendWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __44__WCXPCManager_cancelAllOutstandingMessages__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__WCXPCManager_acknowledgeFileIndexWithIdentifier_clientPairingID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __73__WCXPCManager_acknowledgeFileResultIndexWithIdentifier_clientPairingID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __71__WCXPCManager_acknowledgeUserInfoIndexWithIdentifier_clientPairingID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __77__WCXPCManager_acknowledgeUserInfoResultIndexWithIdentifier_clientPairingID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_23B2FA000, v1, v2, "%{public}s remote object error due to %{public}@", v3, v4, v5, v6, v8, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end