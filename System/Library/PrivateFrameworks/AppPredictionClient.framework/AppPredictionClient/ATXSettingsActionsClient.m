@interface ATXSettingsActionsClient
- (ATXSettingsActionsClient)init;
- (void)recentActionsWithRequest:(id)a3 completionHandler:(id)a4;
- (void)suggestedActionsWithRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation ATXSettingsActionsClient

- (ATXSettingsActionsClient)init
{
  v7.receiver = self;
  v7.super_class = ATXSettingsActionsClient;
  v2 = [(ATXSettingsActionsClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.duetexpertd.SettingsActions" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXSettingsActionsInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v2];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_40];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_13];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __32__ATXSettingsActionsClient_init__block_invoke()
{
  v0 = __atxlog_handle_settings_actions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __32__ATXSettingsActionsClient_init__block_invoke_cold_1(v0);
  }
}

void __32__ATXSettingsActionsClient_init__block_invoke_11()
{
  v0 = __atxlog_handle_settings_actions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __32__ATXSettingsActionsClient_init__block_invoke_11_cold_1(v0);
  }
}

- (void)suggestedActionsWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__ATXSettingsActionsClient_suggestedActionsWithRequest_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 suggestedActionsWithRequest:v9 completionHandler:v8];
}

- (void)recentActionsWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ATXSettingsActionsClient_recentActionsWithRequest_completionHandler___block_invoke;
  v11[3] = &unk_1E80C08E0;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v11];
  [v10 recentActionsWithRequest:v9 completionHandler:v8];
}

void __32__ATXSettingsActionsClient_init__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXSettingsActionsClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Interruption handler called", &v1, 0xCu);
}

void __32__ATXSettingsActionsClient_init__block_invoke_11_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXSettingsActionsClient init]_block_invoke";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: Invalidation handler called", &v1, 0xCu);
}

@end