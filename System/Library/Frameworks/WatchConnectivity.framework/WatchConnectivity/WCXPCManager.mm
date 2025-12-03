@interface WCXPCManager
+ (id)sharedManager;
+ (void)initialize;
- (NSXPCConnection)connection;
- (WCXPCManager)init;
- (WCXPCManagerDelegate)delegate;
- (void)acknowledgeFileIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeFileResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeUserInfoIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d;
- (void)cancelAllOutstandingMessages;
- (void)cancelSendWithIdentifier:(id)identifier;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)handleActiveDeviceSwitchStarted;
- (void)handleApplicationContextWithPairingID:(id)d;
- (void)handleFileResultWithPairingID:(id)d;
- (void)handleIncomingFileWithPairingID:(id)d;
- (void)handleIncomingUserInfoWithPairingID:(id)d;
- (void)handleInterruptedConnection;
- (void)handleMessageSendingAllowed;
- (void)handleRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error;
- (void)handleSessionStateChanged:(id)changed;
- (void)handleUserInfoResultWithPairingID:(id)d;
- (void)interruptionHandler;
- (void)invalidateConnection;
- (void)onqueue_reconnect;
- (void)onqueue_retryConnectIfNecessary;
- (void)sendMessage:(id)message clientPairingID:(id)d acceptanceHandler:(id)handler errorHandler:(id)errorHandler;
- (void)setupConnection;
- (void)transferFile:(id)file sandboxToken:(id)token clientPairingID:(id)d errorHandler:(id)handler;
- (void)transferUserInfo:(id)info withURL:(id)l clientPairingID:(id)d errorHandler:(id)handler;
- (void)updateApplicationContext:(id)context clientPairingID:(id)d errorHandler:(id)handler;
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
  block[4] = self;
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
    uTF8String = [@"com.apple.wcd.listener.resumed" UTF8String];
    v7 = v3->_workQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__WCXPCManager_init__block_invoke;
    handler[3] = &unk_278B7C608;
    v10 = v3;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(uTF8String, &v3->_listenerResumedToken, v7, handler);
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
        reconnectRetryCount = [(WCXPCManager *)self reconnectRetryCount];
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
        reconnectRetryCount = [(WCXPCManager *)self reconnectRetryCount];
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
  delegate = [(WCXPCManager *)self delegate];
  currentPairingID = [delegate currentPairingID];
  delegate2 = [(WCXPCManager *)self delegate];
  supportsActiveDeviceSwitch = [delegate2 supportsActiveDeviceSwitch];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WCXPCManager_onqueue_reconnect__block_invoke;
  v9[3] = &unk_278B7C630;
  objc_copyWeak(&v10, buf);
  v9[4] = self;
  [(WCXPCManager *)self sessionReadyForInitialStateForClientPairingID:currentPairingID supportsActiveDeviceSwitch:supportsActiveDeviceSwitch withErrorHandler:v9];

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
    connection = [(WCXPCManager *)self connection];
    [connection invalidate];
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
  delegate = [(WCXPCManager *)self delegate];
  [delegate xpcConnectionInterrupted];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WCXPCManager_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_278B7BF78;
  v10 = invocationCopy;
  v8 = invocationCopy;
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

- (void)sendMessage:(id)message clientPairingID:(id)d acceptanceHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  dCopy = d;
  messageCopy = message;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v15 = [connection remoteObjectProxyWithErrorHandler:errorHandlerCopy];

  [v15 sendMessage:messageCopy clientPairingID:dCopy acceptanceHandler:handlerCopy];
}

- (void)updateApplicationContext:(id)context clientPairingID:(id)d errorHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  contextCopy = context;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v12 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  [v12 updateApplicationContext:contextCopy clientPairingID:dCopy errorHandler:handlerCopy];
}

- (void)transferFile:(id)file sandboxToken:(id)token clientPairingID:(id)d errorHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  tokenCopy = token;
  fileCopy = file;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v15 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  [v15 transferFile:fileCopy sandboxToken:tokenCopy clientPairingID:dCopy errorHandler:handlerCopy];
}

- (void)transferUserInfo:(id)info withURL:(id)l clientPairingID:(id)d errorHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  lCopy = l;
  infoCopy = info;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v15 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  [v15 transferUserInfo:infoCopy withURL:lCopy clientPairingID:dCopy errorHandler:handlerCopy];
}

- (void)cancelSendWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_4];

  [v6 cancelSendWithIdentifier:identifierCopy];
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
  connection = [(WCXPCManager *)self connection];
  v4 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_106];

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

- (void)acknowledgeFileIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_108];

  [v9 acknowledgeFileIndexWithIdentifier:identifierCopy clientPairingID:dCopy];
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

- (void)acknowledgeFileResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_110];

  [v9 acknowledgeFileResultIndexWithIdentifier:identifierCopy clientPairingID:dCopy];
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

- (void)acknowledgeUserInfoIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_112];

  [v9 acknowledgeUserInfoIndexWithIdentifier:identifierCopy clientPairingID:dCopy];
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

- (void)acknowledgeUserInfoResultIndexWithIdentifier:(id)identifier clientPairingID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  [(WCXPCManager *)self onqueue_retryConnectIfNecessary];
  connection = [(WCXPCManager *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_114];

  [v9 acknowledgeUserInfoResultIndexWithIdentifier:identifierCopy clientPairingID:dCopy];
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
    connection = [(WCXPCManager *)self connection];
    [connection invalidate];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageSendingAllowed
{
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleMessageSendingAllowed];
}

- (void)handleSentMessageWithIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleSentMessageWithIdentifier:identifierCopy error:errorCopy];
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleRequest:requestCopy];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleResponse:responseCopy];
}

- (void)handleApplicationContextWithPairingID:(id)d
{
  dCopy = d;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleApplicationContextWithPairingID:dCopy];
}

- (void)handleIncomingFileWithPairingID:(id)d
{
  dCopy = d;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleIncomingFileWithPairingID:dCopy];
}

- (void)handleIncomingUserInfoWithPairingID:(id)d
{
  dCopy = d;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleIncomingUserInfoWithPairingID:dCopy];
}

- (void)handleFileResultWithPairingID:(id)d
{
  dCopy = d;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleFileResultWithPairingID:dCopy];
}

- (void)handleUserInfoResultWithPairingID:(id)d
{
  dCopy = d;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleUserInfoResultWithPairingID:dCopy];
}

- (void)handleSessionStateChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleSessionStateChanged:changedCopy];
}

- (void)handleActiveDeviceSwitchStarted
{
  delegate = [(WCXPCManager *)self delegate];
  [delegate handleActiveDeviceSwitchStarted];
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