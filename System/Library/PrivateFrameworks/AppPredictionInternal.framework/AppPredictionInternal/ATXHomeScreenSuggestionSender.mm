@interface ATXHomeScreenSuggestionSender
- (ATXHomeScreenSuggestionSender)init;
- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)suggestions completion:(id)completion;
- (void)forceDebugRotationForStack:(id)stack extensionBundleId:(id)id kind:(id)kind completion:(id)completion;
- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)handler;
- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)handler;
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

- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)suggestions completion:(id)completion
{
  completionCopy = completion;
  xpcClientHelper = self->_xpcClientHelper;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__ATXHomeScreenSuggestionSender_blendingLayerDidUpdateHomeScreenCachedSuggestions_completion___block_invoke;
  v11[3] = &unk_278598B30;
  v12 = completionCopy;
  v8 = completionCopy;
  suggestionsCopy = suggestions;
  v10 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v11];
  [v10 blendingLayerDidUpdateHomeScreenCachedSuggestions:suggestionsCopy completion:v8];
}

- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcClientHelper = self->_xpcClientHelper;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__ATXHomeScreenSuggestionSender_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v8];
  [v7 getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:v6];
}

- (void)forceDebugRotationForStack:(id)stack extensionBundleId:(id)id kind:(id)kind completion:(id)completion
{
  completionCopy = completion;
  xpcClientHelper = self->_xpcClientHelper;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__ATXHomeScreenSuggestionSender_forceDebugRotationForStack_extensionBundleId_kind_completion___block_invoke;
  v17[3] = &unk_278598B30;
  v18 = completionCopy;
  v12 = completionCopy;
  kindCopy = kind;
  idCopy = id;
  stackCopy = stack;
  v16 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v17];
  [v16 forceDebugRotationForStack:stackCopy extensionBundleId:idCopy kind:kindCopy completion:v12];
}

- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcClientHelper = self->_xpcClientHelper;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__ATXHomeScreenSuggestionSender_synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler___block_invoke;
  v8[3] = &unk_278598B30;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(_PASXPCClientHelper *)xpcClientHelper synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:v6];
}

@end