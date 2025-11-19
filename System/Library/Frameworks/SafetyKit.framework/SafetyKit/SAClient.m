@interface SAClient
+ (id)sharedInstance;
- (NSXPCConnection)connection;
- (SAClient)init;
- (SACrashDetectionClientProtocol)crashDetectionClientDelegate;
- (SAEmergencyResponseClientProtocol)emergencyResponseClientDelegate;
- (id)serverProxy;
- (void)callAuthenticationRequestHandlerWithError;
- (void)callAuthenticationRequestHandlerWithStatus:(int64_t)a3 error:(id)a4;
- (void)connection;
- (void)dialVoiceCallToPhoneNumber:(id)a3 completionHandler:(id)a4;
- (void)init;
- (void)requestCrashDetectionAuthorization:(id)a3;
- (void)requestMostRecentCrashDetectionEvent;
- (void)setConnection:(id)a3;
- (void)updateMostRecentCrashDetectionEvent:(id)a3;
- (void)updateVoiceCallStatus:(int64_t)a3;
@end

@implementation SAClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SAClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sSAClient;

  return v2;
}

uint64_t __26__SAClient_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sSAClient = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SAClient)init
{
  v7.receiver = self;
  v7.super_class = SAClient;
  v2 = [(SAClient *)&v7 init];
  if (v2)
  {
    v3 = sa_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SAClient init];
    }

    v4 = dispatch_queue_create("com.apple.SafetyKit.SAClient", 0);
    messageQueue = v2->_messageQueue;
    v2->_messageQueue = v4;
  }

  return v2;
}

- (void)requestMostRecentCrashDetectionEvent
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__SAClient_requestMostRecentCrashDetectionEvent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) serverProxy];
  [v1 requestMostRecentCrashDetectionEvent];
}

- (void)requestCrashDetectionAuthorization:(id)a3
{
  v4 = a3;
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SAClient requestCrashDetectionAuthorization:];
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6->_authenticationRequestHandler)
  {
    v7 = sa_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SAClient requestCrashDetectionAuthorization:v7];
    }

    v8 = [SAError errorWithCode:4];
    v4[2](v4, 0, v8);
  }

  else
  {
    v9 = MEMORY[0x23EE91E30](v4);
    authenticationRequestHandler = v6->_authenticationRequestHandler;
    v6->_authenticationRequestHandler = v9;

    objc_initWeak(&location, v6);
    messageQueue = v6->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SAClient_requestCrashDetectionAuthorization___block_invoke;
    block[3] = &unk_278B67CD8;
    block[4] = v6;
    objc_copyWeak(&v13, &location);
    dispatch_async(messageQueue, block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v6);
}

void __47__SAClient_requestCrashDetectionAuthorization___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SAClient_requestCrashDetectionAuthorization___block_invoke_2;
  v3[3] = &unk_278B67CB0;
  objc_copyWeak(&v4, (a1 + 40));
  [v2 requestCrashDetectionAuthorization:v3];

  objc_destroyWeak(&v4);
}

void __47__SAClient_requestCrashDetectionAuthorization___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callAuthenticationRequestHandlerWithStatus:a2 error:v5];
}

- (void)callAuthenticationRequestHandlerWithError
{
  v3 = [SAError errorWithCode:4];
  [(SAClient *)self callAuthenticationRequestHandlerWithStatus:0 error:v3];
}

- (void)callAuthenticationRequestHandlerWithStatus:(int64_t)a3 error:(id)a4
{
  v9 = a4;
  v6 = self;
  objc_sync_enter(v6);
  authenticationRequestHandler = v6->_authenticationRequestHandler;
  if (authenticationRequestHandler)
  {
    authenticationRequestHandler[2](authenticationRequestHandler, a3, v9);
    v8 = v6->_authenticationRequestHandler;
    v6->_authenticationRequestHandler = 0;
  }

  objc_sync_exit(v6);
}

- (void)updateMostRecentCrashDetectionEvent:(id)a3
{
  v4 = a3;
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SAClient updateMostRecentCrashDetectionEvent:];
  }

  if (v4)
  {
    v6 = [(SAClient *)self crashDetectionClientDelegate];
    [v6 updateMostRecentCrashDetectionEvent:v4];
  }

  else
  {
    v6 = sa_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SAClient updateMostRecentCrashDetectionEvent:v6];
    }
  }
}

- (void)dialVoiceCallToPhoneNumber:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sa_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SAClient dialVoiceCallToPhoneNumber:completionHandler:];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SAClient_dialVoiceCallToPhoneNumber_completionHandler___block_invoke;
  block[3] = &unk_278B67D00;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(messageQueue, block);
}

void __57__SAClient_dialVoiceCallToPhoneNumber_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverProxy];
  [v2 dialVoiceCallToPhoneNumber:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)updateVoiceCallStatus:(int64_t)a3
{
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SAClient updateVoiceCallStatus:];
  }

  v6 = [(SAClient *)self emergencyResponseClientDelegate];
  [v6 updateVoiceCallStatus:a3];
}

- (id)serverProxy
{
  dispatch_assert_queue_V2(self->_messageQueue);
  v3 = [(SAClient *)self connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_0];

  return v4;
}

void __23__SAClient_serverProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sa_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __23__SAClient_serverProxy__block_invoke_cold_1();
  }
}

- (void)setConnection:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_messageQueue);
  connection = self->_connection;
  p_connection = &self->_connection;
  v5 = connection;
  if (connection != v8)
  {
    if (v5)
    {
      [(NSXPCConnection *)v5 invalidate];
      [(NSXPCConnection *)*p_connection setInvalidationHandler:0];
      [(NSXPCConnection *)*p_connection setInterruptionHandler:0];
    }

    objc_storeStrong(p_connection, a3);
  }
}

- (NSXPCConnection)connection
{
  dispatch_assert_queue_V2(self->_messageQueue);
  connection = self->_connection;
  if (!connection)
  {
    v4 = sa_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SAClient connection];
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.SafetyKit" options:4096];
    v6 = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    v8 = SAServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    v9 = self->_connection;
    v10 = SAClientInterface();
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__SAClient_connection__block_invoke;
    v14[3] = &unk_278B67BC0;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __22__SAClient_connection__block_invoke_5;
    v12[3] = &unk_278B67BC0;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __22__SAClient_connection__block_invoke(uint64_t a1)
{
  v2 = sa_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AA4D000, v2, OS_LOG_TYPE_DEFAULT, "SA server connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callAuthenticationRequestHandlerWithError];
  [WeakRetained requestMostRecentCrashDetectionEvent];
}

void __22__SAClient_connection__block_invoke_5(uint64_t a1)
{
  v2 = sa_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AA4D000, v2, OS_LOG_TYPE_DEFAULT, "SA server connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__SAClient_connection__block_invoke_6;
  block[3] = &unk_278B67C88;
  block[4] = WeakRetained;
  dispatch_async(v4, block);
}

uint64_t __22__SAClient_connection__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setConnection:0];
  v2 = *(a1 + 32);

  return [v2 callAuthenticationRequestHandlerWithError];
}

- (SACrashDetectionClientProtocol)crashDetectionClientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_crashDetectionClientDelegate);

  return WeakRetained;
}

- (SAEmergencyResponseClientProtocol)emergencyResponseClientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_emergencyResponseClientDelegate);

  return WeakRetained;
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestCrashDetectionAuthorization:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestCrashDetectionAuthorization:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SAClient requestCrashDetectionAuthorization:]";
  _os_log_error_impl(&dword_23AA4D000, log, OS_LOG_TYPE_ERROR, "%s - Unable to request authorization because there is already an active request.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateMostRecentCrashDetectionEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dialVoiceCallToPhoneNumber:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceCallStatus:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __23__SAClient_serverProxy__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - unable to get serverProxy, error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)connection
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end