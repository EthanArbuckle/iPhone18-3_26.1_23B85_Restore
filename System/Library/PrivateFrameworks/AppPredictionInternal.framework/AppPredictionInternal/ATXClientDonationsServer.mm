@interface ATXClientDonationsServer
+ (id)sharedInstance;
- (ATXClientDonationsServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)donateDocumentInteraction:(id)a3 completion:(id)a4;
- (void)donateMenuItem:(id)a3 completion:(id)a4;
@end

@implementation ATXClientDonationsServer

- (ATXClientDonationsServer)init
{
  v6.receiver = self;
  v6.super_class = ATXClientDonationsServer;
  v2 = [(ATXClientDonationsServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.app-client.donation"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[ATXClientDonationsServer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __42__ATXClientDonationsServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXClientDonationsServer);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = ATXClientDonationsInterface();
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 setInterruptionHandler:&__block_literal_global_22];
  [v5 setInvalidationHandler:&__block_literal_global_25_5];
  [v5 resume];

  return 1;
}

void __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_23()
{
  v0 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1();
  }
}

- (void)donateMenuItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXClientDonationsServer donateMenuItem:v5 completion:v7];
  }

  v8 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ATXClientDonationsServer donateMenuItem:completion:];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:4 userInfo:0];
  v6[2](v6, v9);
}

- (void)donateDocumentInteraction:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ATXClientDonationsServer donateDocumentInteraction:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:4 userInfo:0];
  v4[2](v4, v6);
}

- (void)donateMenuItem:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Got menu item donation %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)donateMenuItem:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)donateDocumentInteraction:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end