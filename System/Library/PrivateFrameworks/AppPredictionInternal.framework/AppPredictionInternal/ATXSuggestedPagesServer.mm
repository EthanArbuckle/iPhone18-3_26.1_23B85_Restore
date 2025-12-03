@interface ATXSuggestedPagesServer
+ (id)sharedInstance;
- (ATXSuggestedPagesServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (int64_t)_fetchPageTypeForModeUUID:(id)d;
- (void)prewarmCachedSuggestedPagesWithActivity:(id)activity;
- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler;
- (void)updateSuggestedPagesWithCompletionHandler:(id)handler;
@end

@implementation ATXSuggestedPagesServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_11 != -1)
  {
    +[ATXSuggestedPagesServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_14;

  return v3;
}

void __41__ATXSuggestedPagesServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_14;
  sharedInstance__pasExprOnceResult_14 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSuggestedPagesServer)init
{
  v14.receiver = self;
  v14.super_class = ATXSuggestedPagesServer;
  v2 = [(ATXSuggestedPagesServer *)&v14 init];
  if (v2)
  {
    v3 = __atxlog_handle_modes();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: launched", v13, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.SuggestedPages"];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = objc_opt_new();
    uninstallNotification = v2->_uninstallNotification;
    v2->_uninstallNotification = v6;

    [(_ATXInternalUninstallNotification *)v2->_uninstallNotification registerForNotificationsWithUninstallBlock:&__block_literal_global_27];
    v8 = objc_opt_new();
    lockedOrHiddenAppNotification = v2->_lockedOrHiddenAppNotification;
    v2->_lockedOrHiddenAppNotification = v8;

    [(ATXInternalLockedOrHiddenAppNotification *)v2->_lockedOrHiddenAppNotification registerForNotificationsWithLockedOrHiddenAppBlock:&__block_literal_global_32_0];
    v10 = objc_opt_new();
    unlockedOrUnhiddenAppNotification = v2->_unlockedOrUnhiddenAppNotification;
    v2->_unlockedOrUnhiddenAppNotification = v10;

    [(ATXInternalUnLockedOrUnHiddenAppNotification *)v2->_unlockedOrUnhiddenAppNotification registerForNotificationsWithUnLockedOrUnHiddenAppBlock:&__block_literal_global_36_0];
  }

  return v2;
}

void __31__ATXSuggestedPagesServer_init__block_invoke()
{
  v0 = objc_opt_new();
  [v0 evictCachedSuggestedPages];
}

void __31__ATXSuggestedPagesServer_init__block_invoke_2()
{
  v0 = objc_opt_new();
  [v0 evictCachedSuggestedPages];
}

void __31__ATXSuggestedPagesServer_init__block_invoke_3()
{
  v0 = objc_opt_new();
  [v0 evictCachedSuggestedPages];
}

- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = os_transaction_create();
  if ([filterCopy pageType] == 2 || !objc_msgSend(filterCopy, "pageType"))
  {
    modeUUID = [filterCopy modeUUID];

    if (!modeUUID)
    {
LABEL_10:
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
      goto LABEL_11;
    }

    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: looking up mode type via DND", &v26, 2u);
    }

    modeUUID2 = [filterCopy modeUUID];
    pageType = [(ATXSuggestedPagesServer *)self _fetchPageTypeForModeUUID:modeUUID2];
  }

  else
  {
    pageType = [filterCopy pageType];
  }

  if (pageType < 4 || pageType == 12)
  {
    goto LABEL_10;
  }

  v17 = objc_opt_new();
  v18 = [v17 cachedSuggestedPagesForPageType:pageType];
  v19 = [v18 count];
  v20 = __atxlog_handle_modes();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = NSStringFromATXSuggestedPageType();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: using cached pages for page type: %{public}@", &v26, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, v18, 0);
  }

  else
  {
    if (v21)
    {
      v23 = NSStringFromATXSuggestedPageType();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: generating pages for page type: %{public}@", &v26, 0xCu);
    }

    v24 = objc_opt_new();
    v25 = [v24 generateSuggestedPagesForPageType:pageType layoutOptions:optionsCopy];
    [v17 cacheSuggestedPages:v25 forPageType:pageType];
    (*(handlerCopy + 2))(handlerCopy, v25, 0);
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateSuggestedPagesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ATXSuggestedPagesServer *)self prewarmCachedSuggestedPagesWithActivity:0];
  handlerCopy[2](handlerCopy, 0);
}

- (void)prewarmCachedSuggestedPagesWithActivity:(id)activity
{
  v15 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = 4;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    if ([activityCopy didDefer])
    {
      break;
    }

    v10 = [v5 generateSuggestedPagesForPageType:v8 layoutOptions:v6];
    [v7 cacheSuggestedPages:v10 forPageType:v8];

    objc_autoreleasePoolPop(v9);
    if (++v8 == 13)
    {
      goto LABEL_8;
    }
  }

  v11 = __atxlog_handle_modes();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v8;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Deferred caching suggested pages before processing: %ld", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)_fetchPageTypeForModeUUID:(id)d
{
  v3 = MEMORY[0x277CEB440];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v7 = [sharedInstance dndModeForDNDModeWithUUID:v6];

  if (!v7)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  semanticType = [v7 semanticType];
  if ((semanticType + 1) >= 0xB)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXSuggestedPagesServer *)v7 _fetchPageTypeForModeUUID:v10];
    }

    goto LABEL_7;
  }

  v9 = semanticType + 3;
LABEL_8:

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: connection attempted", v12, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.proactive.SuggestedPages"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXSuggestedPagesInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_46_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_49_1];
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXSuggestedPagesServer listener:connectionCopy shouldAcceptNewConnection:v10];
    }

    v9 = 0;
  }

  return v9;
}

void __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_47()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_47_cold_1(v0);
  }
}

- (void)_fetchPageTypeForModeUUID:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 semanticType];
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "fetchPageTypeForModeUUID: unhandled type: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = @"com.apple.proactive.SuggestedPages";
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesServer: rejecting connection %@ without entitlement %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end