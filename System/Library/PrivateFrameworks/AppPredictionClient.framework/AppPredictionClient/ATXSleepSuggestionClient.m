@interface ATXSleepSuggestionClient
- (ATXSleepSuggestionClient)init;
- (void)predictedSleepSuggestionWithCompletionHandler:(id)a3;
@end

@implementation ATXSleepSuggestionClient

- (ATXSleepSuggestionClient)init
{
  v8.receiver = self;
  v8.super_class = ATXSleepSuggestionClient;
  v2 = [(ATXSleepSuggestionClient *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.sleepSchedule" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = v2->_xpcConnection;
    v6 = ATXSleepSuggestionInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_15];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_7];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __32__ATXSleepSuggestionClient_init__block_invoke()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __32__ATXSleepSuggestionClient_init__block_invoke_cold_1(v0);
  }
}

void __32__ATXSleepSuggestionClient_init__block_invoke_5()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_INFO, "ATXSleepSuggestionClient: invalidation handler called", v1, 2u);
  }
}

- (void)predictedSleepSuggestionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ATXSleepSuggestionClient *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__ATXSleepSuggestionClient_predictedSleepSuggestionWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 predictedSleepSuggestionWithCompletionHandler:v6];
}

void __74__ATXSleepSuggestionClient_predictedSleepSuggestionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_sleep_schedule();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__ATXSleepSuggestionClient_predictedSleepSuggestionWithCompletionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__ATXSleepSuggestionClient_predictedSleepSuggestionWithCompletionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXSleepSuggestionClient: XPC failed: %@", &v4, 0xCu);
}

@end