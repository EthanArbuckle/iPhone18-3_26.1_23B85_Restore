@interface ATXHomeScreenSuggestionSender
- (ATXHomeScreenSuggestionSender)init;
- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)a3 completion:(id)a4;
- (void)forceDebugRotationForStack:(id)a3 extensionBundleId:(id)a4 kind:(id)a5 completion:(id)a6;
- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)a3;
- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)a3;
@end

@implementation ATXHomeScreenSuggestionSender

- (ATXHomeScreenSuggestionSender)init
{
  v11.receiver = self;
  v11.super_class = ATXHomeScreenSuggestionSender;
  v2 = [(ATXHomeScreenSuggestionSender *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D42650]);
    v4 = *MEMORY[0x277CEBAE0];
    v5 = ATXHomeScreenSuggestionServerXPCInterface();
    v6 = ATXHomeScreenSuggestionClientXPCInterface();
    v7 = objc_opt_new();
    v8 = [v3 initWithServiceName:v4 allowlistedServerInterface:v5 allowlistedClientInterface:v6 serverInitiatedRequestHandler:v7 interruptionHandler:&__block_literal_global_74 invalidationHandler:&__block_literal_global_14_0 logHandle:0];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v8;
  }

  return v2;
}

void __37__ATXHomeScreenSuggestionSender_init__block_invoke()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionSender: XPC connection interrupted.", v1, 2u);
  }
}

void __37__ATXHomeScreenSuggestionSender_init__block_invoke_12()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionSender: XPC connection invalidated.", v1, 2u);
  }
}

- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)a3 completion:(id)a4
{
  v6 = a4;
  xpcClientHelper = self->_xpcClientHelper;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__ATXHomeScreenSuggestionSender_blendingLayerDidUpdateHomeScreenCachedSuggestions_completion___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v11];
  [v10 blendingLayerDidUpdateHomeScreenCachedSuggestions:v9 completion:v8];
}

- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)a3
{
  v4 = a3;
  xpcClientHelper = self->_xpcClientHelper;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__ATXHomeScreenSuggestionSender_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v8];
  [v7 getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:v6];
}

- (void)forceDebugRotationForStack:(id)a3 extensionBundleId:(id)a4 kind:(id)a5 completion:(id)a6
{
  v10 = a6;
  xpcClientHelper = self->_xpcClientHelper;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__ATXHomeScreenSuggestionSender_forceDebugRotationForStack_extensionBundleId_kind_completion___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = v10;
  v12 = v10;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v17];
  [v16 forceDebugRotationForStack:v15 extensionBundleId:v14 kind:v13 completion:v12];
}

- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)a3
{
  v4 = a3;
  xpcClientHelper = self->_xpcClientHelper;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__ATXHomeScreenSuggestionSender_synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = v4;
  v6 = v4;
  v7 = [(_PASXPCClientHelper *)xpcClientHelper synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:v6];
}

@end