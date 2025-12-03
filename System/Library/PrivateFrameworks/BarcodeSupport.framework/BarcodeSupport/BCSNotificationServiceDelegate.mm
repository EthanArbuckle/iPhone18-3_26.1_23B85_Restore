@interface BCSNotificationServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation BCSNotificationServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31[8] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.barcodesupport.allowNotifications"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A2048];
    v7 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v31[4] = objc_opt_class();
    v31[5] = objc_opt_class();
    v31[6] = objc_opt_class();
    v31[7] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:8];
    v9 = [v7 setWithArray:v8];
    [v6 setClasses:v9 forSelector:sel_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply_ argumentIndex:0 ofReply:0];

    v10 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v12 setByAddingObject:objc_opt_class()];

    v14 = [v13 setByAddingObject:objc_opt_class()];

    v15 = 1;
    [v6 setClasses:v14 forSelector:sel_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply_ argumentIndex:1 ofReply:0];
    v16 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v18 = [v16 setWithArray:v17];
    [v6 setClasses:v18 forSelector:sel_notifyParsedCodeWithData_codePayload_shouldReplacePreviousNotifications_reply_ argumentIndex:1 ofReply:1];

    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853A8BA8];
    [v6 setInterface:v19 forSelector:sel_startNFCReaderWithDelegate_ argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v6];
    v20 = [[BCSNotificationService alloc] initWithConnection:connectionCopy];
    [connectionCopy setExportedObject:v20];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __69__BCSNotificationServiceDelegate_listener_shouldAcceptNewConnection___block_invoke;
    v27 = &unk_278CFE7E8;
    v28 = v20;
    v21 = v20;
    [connectionCopy setInvalidationHandler:&v24];
    [connectionCopy resume];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSNotificationServiceDelegate listener:connectionCopy shouldAcceptNewConnection:?];
    }

    v15 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = [a1 processIdentifier];
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSNotificationServiceDelegate: Connection rejected for lacking entitlement for pid %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end