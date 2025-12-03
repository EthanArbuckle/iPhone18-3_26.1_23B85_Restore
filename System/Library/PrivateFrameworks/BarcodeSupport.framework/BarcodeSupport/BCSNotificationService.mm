@interface BCSNotificationService
- (BCSNotificationService)initWithConnection:(id)connection;
- (void)_cancelNotificationsForCodeType:(int64_t)type;
- (void)_didReceiveNotificationResponse:(id)response;
- (void)cancelNotificationsForCodeType:(int64_t)type;
- (void)didReceiveNotificationResponse:(id)response;
- (void)notifyParsedCodeWithData:(id)data codePayload:(id)payload shouldReplacePreviousNotifications:(BOOL)notifications reply:(id)reply;
- (void)startNFCReaderWithDelegate:(id)delegate;
@end

@implementation BCSNotificationService

- (BCSNotificationService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = BCSNotificationService;
  v6 = [(BCSNotificationService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = v7;
  }

  return v7;
}

- (void)notifyParsedCodeWithData:(id)data codePayload:(id)payload shouldReplacePreviousNotifications:(BOOL)notifications reply:(id)reply
{
  dataCopy = data;
  payloadCopy = payload;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BCSNotificationService notifyParsedCodeWithData:codePayload:shouldReplacePreviousNotifications:reply:];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke;
  v15[3] = &unk_278CFF118;
  v16 = payloadCopy;
  v17 = replyCopy;
  v15[4] = self;
  notificationsCopy = notifications;
  v13 = payloadCopy;
  v14 = replyCopy;
  [BCSAction getActionWithData:dataCopy codePayload:v13 completionHandler:v15];
}

void __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke_2;
  block[3] = &unk_278CFF0F0;
  v9 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v4;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke_2_cold_1(v2);
    }

    v3 = MEMORY[0x277CC1E88];
    v4 = *(*(a1 + 40) + 16);
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = 0;
    v7 = [v3 bundleProxyWithAuditToken:v15 error:&v14];
    v6 = v14;
    v8 = +[BCSAnalyticsLogger sharedLogger];
    v9 = *(a1 + 32);
    v10 = [v7 bundleIdentifier];
    [v8 logBarcodeDetectedEventForAction:v9 fromBundleID:v10];

    v11 = [*(a1 + 48) codeType];
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 40) _cancelNotificationsForCodeType:v11];
    }

    v12 = [BCSNotification notificationForAction:*(a1 + 32)];
    [v12 setRequestingProcessID:{objc_msgSend(*(*(a1 + 40) + 16), "processIdentifier")}];
    v13 = +[BCSNotificationManager sharedManager];
    [v13 scheduleNotification:v12 codeType:v11];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke_2_cold_2();
    }

    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (void)cancelNotificationsForCodeType:(int64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__BCSNotificationService_cancelNotificationsForCodeType___block_invoke;
  v3[3] = &unk_278CFF140;
  v3[4] = self;
  v3[5] = type;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_cancelNotificationsForCodeType:(int64_t)type
{
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  v5 = +[BCSNotificationManager sharedManager];
  [v5 withdrawNotificationsWithProcessID:processIdentifier codeType:type];
}

- (void)didReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__BCSNotificationService_didReceiveNotificationResponse___block_invoke;
  v6[3] = &unk_278CFEE40;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_didReceiveNotificationResponse:(id)response
{
  responseCopy = response;
  v4 = +[BCSNotificationManager sharedManager];
  [v4 didReceiveNotificationResponse:responseCopy];
}

- (void)startNFCReaderWithDelegate:(id)delegate
{
  nfcReader = self->_nfcReader;
  if (!nfcReader)
  {
    delegateCopy = delegate;
    v6 = [[BCSNFCReader alloc] initWithDelegate:delegateCopy];

    v7 = self->_nfcReader;
    self->_nfcReader = v6;

    [(BCSNFCReader *)self->_nfcReader setNotificationService:self];
    nfcReader = self->_nfcReader;
  }

  [(BCSNFCReader *)nfcReader startReading];
}

void __104__BCSNotificationService_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply___block_invoke_2_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSNotificationService: Detected QR code has resolved to action of class %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end