@interface ATXModeAnchorModelSuggestionClient
+ (ATXModeAnchorModelSuggestionClient)sharedInstance;
- (id)_init;
- (void)_pingServer;
- (void)anchorModelDidProvideModeSuggestions:(id)a3;
@end

@implementation ATXModeAnchorModelSuggestionClient

+ (ATXModeAnchorModelSuggestionClient)sharedInstance
{
  if (sharedInstance__pasOnceToken7_19 != -1)
  {
    +[ATXModeAnchorModelSuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_24;

  return v3;
}

void __52__ATXModeAnchorModelSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXModeAnchorModelSuggestionClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_24;
  sharedInstance__pasExprOnceResult_24 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ATXModeAnchorModelSuggestionClient;
  v2 = [(ATXModeAnchorModelSuggestionClient *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc(MEMORY[0x277D42650]);
    v4 = ATXModeAnchorModelSuggestionServerXPCInterface();
    v5 = ATXModeAnchorModelSuggestionClientXPCInterface();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__ATXModeAnchorModelSuggestionClient__init__block_invoke;
    v10[3] = &unk_2785977B0;
    objc_copyWeak(&v11, &location);
    v6 = __atxlog_handle_modes();
    v7 = [v3 initWithServiceName:*MEMORY[0x277D41CC0] allowlistedServerInterface:v4 allowlistedClientInterface:v5 serverInitiatedRequestHandler:v2 interruptionHandler:v10 invalidationHandler:&__block_literal_global_14_1 logHandle:v6];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v7;

    [(ATXModeAnchorModelSuggestionClient *)v2 _pingServer];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__ATXModeAnchorModelSuggestionClient__init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_modes();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: xpc connection interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pingServer];
}

void __43__ATXModeAnchorModelSuggestionClient__init__block_invoke_12()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: xpc connection invalidated.", v1, 2u);
  }
}

- (void)_pingServer
{
  v2 = [(_PASXPCClientHelper *)self->_xpcClientHelper remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
  [v2 pingWithCompletion:&__block_literal_global_21_1];
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_cold_1(v2, v3);
  }
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_18()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: successfully pinged server", v1, 2u);
  }
}

- (void)anchorModelDidProvideModeSuggestions:(id)a3
{
  xpcClientHelper = self->_xpcClientHelper;
  v4 = a3;
  v5 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:&__block_literal_global_23_4];
  [v5 anchorModelDidProvideModeSuggestions:v4];
}

void __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke_cold_1(v2, v3);
  }
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAnchorModelSuggestionClient: Error pinging remote object proxy - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAnchorModelSuggestionClient: Error getting remote object proxy to provide new suggestion - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end