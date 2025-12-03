@interface BCSNotificationServiceConnection
- (NSXPCConnection)serviceConnection;
- (void)cancelNotificationsForCodeType:(int64_t)type;
- (void)dealloc;
- (void)didReceiveNotificationResponse:(id)response;
- (void)setInterruptionHandler:(id)handler;
- (void)startNFCReaderWithDelegate:(id)delegate errorHandler:(id)handler;
- (void)stopNFCReaderWithErrorHandler:(id)handler;
@end

@implementation BCSNotificationServiceConnection

void __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(a2);
  }
}

- (void)cancelNotificationsForCodeType:(int64_t)type
{
  serviceConnection = [(BCSNotificationServiceConnection *)self serviceConnection];
  v4 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v4 cancelNotificationsForCodeType:type];
}

void __67__BCSNotificationServiceConnection_cancelNotificationsForCodeType___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(a2);
  }
}

- (void)didReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  serviceConnection = [(BCSNotificationServiceConnection *)self serviceConnection];
  v5 = [serviceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v5 didReceiveNotificationResponse:responseCopy];
}

void __67__BCSNotificationServiceConnection_didReceiveNotificationResponse___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(a2);
  }
}

- (void)startNFCReaderWithDelegate:(id)delegate errorHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  serviceConnection = [(BCSNotificationServiceConnection *)self serviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__BCSNotificationServiceConnection_startNFCReaderWithDelegate_errorHandler___block_invoke;
  v11[3] = &unk_278CFED28;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [serviceConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 startNFCReaderWithDelegate:delegateCopy];
}

void __76__BCSNotificationServiceConnection_startNFCReaderWithDelegate_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)stopNFCReaderWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serviceConnection = [(BCSNotificationServiceConnection *)self serviceConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__BCSNotificationServiceConnection_stopNFCReaderWithErrorHandler___block_invoke;
  v8[3] = &unk_278CFED28;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serviceConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 stopNFCReader];
}

void __66__BCSNotificationServiceConnection_stopNFCReaderWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = BCSNotificationServiceConnection;
  [(BCSNotificationServiceConnection *)&v3 dealloc];
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x245CF4600]();
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v4;

  [(NSXPCConnection *)self->_serviceConnection setInterruptionHandler:handlerCopy];
}

- (NSXPCConnection)serviceConnection
{
  serviceConnection = self->_serviceConnection;
  if (serviceConnection)
  {
    v3 = serviceConnection;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.BarcodeSupport.BarcodeNotificationService" options:4096];
    v6 = self->_serviceConnection;
    self->_serviceConnection = v5;

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A2048];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A8BA8];
    [v7 setInterface:v8 forSelector:sel_startNFCReaderWithDelegate_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:v7];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __53__BCSNotificationServiceConnection_serviceConnection__block_invoke;
    v13 = &unk_278CFEA78;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_serviceConnection setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_serviceConnection setInterruptionHandler:self->_interruptionHandler, v10, v11, v12, v13];
    [(NSXPCConnection *)self->_serviceConnection resume];
    v3 = self->_serviceConnection;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __53__BCSNotificationServiceConnection_serviceConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

void __118__BCSNotificationServiceConnection_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_withReply___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241993000, MEMORY[0x277D86220], v2, "Cannot connect to remote service with error: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end