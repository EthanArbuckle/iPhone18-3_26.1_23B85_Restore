@interface ATXSuggestedPagesServer
+ (id)sharedInstance;
- (ATXSuggestedPagesServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (int64_t)_fetchPageTypeForModeUUID:(id)a3;
- (void)prewarmCachedSuggestedPagesWithActivity:(id)a3;
- (void)suggestedPagesWithFilter:(id)a3 layoutOptions:(id)a4 completionHandler:(id)a5;
- (void)updateSuggestedPagesWithCompletionHandler:(id)a3;
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

- (void)suggestedPagesWithFilter:(id)a3 layoutOptions:(id)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  if ([v8 pageType] == 2 || !objc_msgSend(v8, "pageType"))
  {
    v13 = [v8 modeUUID];

    if (!v13)
    {
LABEL_10:
      (*(v10 + 2))(v10, MEMORY[0x277CBEBF8], 0);
      goto LABEL_11;
    }

    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: looking up mode type via DND", &v26, 2u);
    }

    v15 = [v8 modeUUID];
    v12 = [(ATXSuggestedPagesServer *)self _fetchPageTypeForModeUUID:v15];
  }

  else
  {
    v12 = [v8 pageType];
  }

  if (v12 < 4 || v12 == 12)
  {
    goto LABEL_10;
  }

  v17 = objc_opt_new();
  v18 = [v17 cachedSuggestedPagesForPageType:v12];
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

    (*(v10 + 2))(v10, v18, 0);
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
    v25 = [v24 generateSuggestedPagesForPageType:v12 layoutOptions:v9];
    [v17 cacheSuggestedPages:v25 forPageType:v12];
    (*(v10 + 2))(v10, v25, 0);
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateSuggestedPagesWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(ATXSuggestedPagesServer *)self prewarmCachedSuggestedPagesWithActivity:0];
  v4[2](v4, 0);
}

- (void)prewarmCachedSuggestedPagesWithActivity:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = 4;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    if ([v3 didDefer])
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

- (int64_t)_fetchPageTypeForModeUUID:(id)a3
{
  v3 = MEMORY[0x277CEB440];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];

  v7 = [v5 dndModeForDNDModeWithUUID:v6];

  if (!v7)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  v8 = [v7 semanticType];
  if ((v8 + 1) >= 0xB)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXSuggestedPagesServer *)v7 _fetchPageTypeForModeUUID:v10];
    }

    goto LABEL_7;
  }

  v9 = v8 + 3;
LABEL_8:

  return v9;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: connection attempted", v12, 2u);
  }

  v7 = [v5 valueForEntitlement:@"com.apple.proactive.SuggestedPages"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXSuggestedPagesInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&__block_literal_global_46_0];
    [v5 setInvalidationHandler:&__block_literal_global_49_1];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXSuggestedPagesServer listener:v5 shouldAcceptNewConnection:v10];
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