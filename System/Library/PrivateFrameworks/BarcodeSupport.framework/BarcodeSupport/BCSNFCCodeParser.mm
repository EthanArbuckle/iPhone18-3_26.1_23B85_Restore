@interface BCSNFCCodeParser
- (void)postNotificationForURL:(id)a3 payload:(id)a4 completionHandler:(id)a5;
@end

@implementation BCSNFCCodeParser

- (void)postNotificationForURL:(id)a3 payload:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [BCSURLDataParser parseURL:a3];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = [v10 type];
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNFCCodeParser: Detected NFC URL has type %ld", buf, 0xCu);
    }

    if (!self->_notificationServiceConnection)
    {
      v11 = objc_alloc_init(BCSNotificationServiceConnection);
      notificationServiceConnection = self->_notificationServiceConnection;
      self->_notificationServiceConnection = v11;
    }

    v13 = [[BCSNFCCodePayload alloc] initWithNFCPayload:v8];
    v14 = self->_notificationServiceConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke;
    v16[3] = &unk_278CFF398;
    v17 = v9;
    [(BCSNotificationServiceConnection *)v14 notifyParsedCodeWithData:v10 codePayload:v13 shouldReplacePreviousNotifications:0 withReply:v16];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSNFCCodeParser postNotificationForURL:payload:completionHandler:];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:3 userInfo:0];
    (*(v9 + 2))(v9, 0, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke_cold_1(v5);
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSErrorDomain" code:4 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNFCCodeParser: Finished posting notification", v9, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __69__BCSNFCCodeParser_postNotificationForURL_payload_completionHandler___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSNFCCodeParser: Error posting notification: %@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end