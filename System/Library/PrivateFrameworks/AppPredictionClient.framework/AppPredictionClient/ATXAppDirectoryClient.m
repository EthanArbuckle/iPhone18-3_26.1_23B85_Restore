@interface ATXAppDirectoryClient
+ (id)_allPlaceholderBundleIdsFromHomeScreenService:(id)a3;
+ (id)_sortedAllOtherBundleIDsFromAllBundleIDs:(id)a3 allPlaceholderBundleIDs:(id)a4 hardcodedAppCategoryMappings:(id)a5;
+ (id)_sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:(id)a3;
+ (id)_sortedDefaultCategories;
+ (id)hardcodedAppCategoryMappings;
+ (id)sharedInstance;
+ (void)hardcodedAppCategoryMappings;
- (id)_hiddenAppsFromCache;
- (id)_init;
- (id)_suggestionsPodDedupableBundleIds;
- (id)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:(unint64_t)a3;
- (void)_addEngagedSuggestionToERM:(id)a3;
- (void)_hiddenAppsFromCache;
- (void)_logCaptureRateCapture;
- (void)_logCaptureRateDiversionWithType:(int)a3;
- (void)_logToBiome:(unint64_t)a3 metadata:(id)a4;
- (void)_logToBiomeWithEventType:(unint64_t)a3 date:(id)a4 blendingCacheUUID:(id)a5 shownSuggestionIds:(id)a6 engagedSuggestionIds:(id)a7 categoryID:(id)a8 categoryIndex:(id)a9 bundleId:(id)a10 bundleIndex:(id)a11 searchQueryLength:(id)a12 searchTab:(id)a13 bundleIdInTopAppsVisible:(id)a14 userLaunchedAppBeforeLeaving:(id)a15;
- (void)_updateTopAppsVisibilityWithCategories:(id)a3;
- (void)appLaunchDatesWithReply:(id)a3;
- (void)categoriesWithShouldUseDefault:(BOOL)a3 reply:(id)a4;
- (void)dealloc;
- (void)logCategoryExitWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5;
- (void)logCategoryExpansionWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5;
- (void)logCloseSearchWithDate:(id)a3;
- (void)logDidEnterAppDirectoryWithDate:(id)a3;
- (void)logDidLeaveAppDirectoryWithDate:(id)a3 appDirectoryResponse:(id)a4;
- (void)logLaunchFromCategoryPreviewWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5 bundleID:(id)a6 bundleIndex:(unint64_t)a7 appDirectoryResponse:(id)a8;
- (void)logLaunchFromExpandedCategoryWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5 bundleID:(id)a6 bundleIndex:(unint64_t)a7 appDirectoryResponse:(id)a8;
- (void)logLaunchFromSearchWithDate:(id)a3 bundleID:(id)a4 bundleIndex:(unint64_t)a5 searchQueryLength:(unint64_t)a6 searchTab:(unint64_t)a7 appDirectoryResponse:(id)a8;
- (void)logOpenSearchWithDate:(id)a3;
- (void)notifyBookmarksDidChange;
- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:(unint64_t)a3 shouldUseDefaultCategories:(BOOL)a4 reply:(id)a5;
- (void)requestNotificationWhenCategoriesAreReady;
@end

@implementation ATXAppDirectoryClient

- (id)_hiddenAppsFromCache
{
  v2 = objc_alloc(MEMORY[0x1E698AFF0]);
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAppDirectoryHiddenAppsCache"];
  v4 = __atxlog_handle_app_library();
  v5 = [v2 initWithCacheFilePath:v3 loggingHandle:v4 debugName:@"hidden apps"];

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v16 = 0;
  v10 = [v5 readSecureCodedObjectWithMaxValidAge:v9 allowableClasses:&v16 error:-1.0];
  v11 = v16;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient _hiddenAppsFromCache];
    }

    v14 = objc_opt_new();
    v10 = v14;
  }

  return v10;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_2 != -1)
  {
    +[ATXAppDirectoryClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_3;

  return v3;
}

void __39__ATXAppDirectoryClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXAppDirectoryClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_3;
  sharedInstance__pasExprOnceResult_3 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ATXAppDirectoryClient;
  v2 = [(ATXAppDirectoryClient *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.appDirectory" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v9;

    v11 = ATXAppDirectoryInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_16];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_19];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __30__ATXAppDirectoryClient__init__block_invoke()
{
  v0 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ATXAppDirectoryClient__init__block_invoke_cold_1();
  }
}

void __30__ATXAppDirectoryClient__init__block_invoke_17()
{
  v0 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ATXAppDirectoryClient__init__block_invoke_17_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXAppDirectoryClient;
  [(ATXAppDirectoryClient *)&v3 dealloc];
}

- (void)categoriesWithShouldUseDefault:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v28 = v4;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Starting requesting for categorization with shouldUseDefault: %{BOOL}d", buf, 8u);
  }

  if (v4 && !+[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled])
  {
    v13 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Using default categories", buf, 2u);
    }

    xpcConnection = self->_xpcConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke;
    v24[3] = &unk_1E80C1558;
    v26 = v4;
    v25 = v6;
    v15 = v6;
    v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
    [v16 requestNotificationWhenCategoriesAreReady];

    v17 = [objc_opt_class() _sortedDefaultCategories];
    v18 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v28 = v17 != 0;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Obtained non-nil categories: %{BOOL}d", buf, 8u);
    }

    if (v17)
    {
      [(ATXAppDirectoryClient *)self _updateTopAppsVisibilityWithCategories:v17];
    }

    v9 = &v25;
    v19 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Sending reply with default categories", buf, 2u);
    }

    v15[2](v15, v17, 0);
  }

  else
  {
    v8 = self->_xpcConnection;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24;
    v22[3] = &unk_1E80C08E0;
    v9 = &v23;
    v10 = v6;
    v23 = v10;
    v11 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_25;
    v20[3] = &unk_1E80C1260;
    v20[4] = self;
    v21 = v10;
    v12 = v10;
    [v11 categoriesWithReply:v20];
  }
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_cold_1();
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Start of categories reply", buf, 2u);
  }

  if (v5)
  {
    [*(a1 + 32) _updateTopAppsVisibilityWithCategories:v5];
  }

  v8 = +[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled];
  v9 = __atxlog_handle_app_library();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using Demo app categories", v14, 2u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [ATXDemoAppLibraryProvider demoAppCategoriesForRealAppCategories:v5];
      (*(v11 + 16))(v11, v12, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Received successful categorization response from server", v13, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:(unint64_t)a3 shouldUseDefaultCategories:(BOOL)a4 reply:(id)a5
{
  v5 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = v5;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Starting loading predicted app with shouldUseDefaultCategories: %{BOOL}d", buf, 8u);
  }

  v10 = +[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled];
  v11 = __atxlog_handle_app_library();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using Demo suggestions and recents", buf, 2u);
    }

    if (v8)
    {
      v13 = +[ATXDemoAppLibraryProvider demoSuggestionsAndRecents];
      v8[2](v8, v13);

      goto LABEL_21;
    }
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using non-demo suggestions and recents", buf, 2u);
    }
  }

  if (!self->_blendingClient)
  {
    v14 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:35];
    blendingClient = self->_blendingClient;
    self->_blendingClient = v14;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke;
  v31[3] = &unk_1E80C1580;
  v31[4] = self;
  v31[5] = a3;
  v16 = MEMORY[0x1BFB5BA40](v31);
  v17 = [(ATXAppDirectoryClient *)self topAppsVisible];

  v18 = __atxlog_handle_app_library();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Top apps are visible, will send reply", buf, 2u);
    }

    v20 = dispatch_get_global_queue(21, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_30;
    v25[3] = &unk_1E80C15D0;
    v21 = &v26;
    v22 = &v27;
    v26 = v8;
    v27 = v16;
    v23 = v16;
    dispatch_async(v20, v25);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:shouldUseDefaultCategories:reply:];
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_29;
    v28[3] = &unk_1E80C15A8;
    v21 = &v29;
    v22 = &v30;
    v29 = v8;
    v30 = v16;
    v24 = v16;
    [(ATXAppDirectoryClient *)self categoriesWithShouldUseDefault:v5 reply:v28];
  }

LABEL_21:
}

id __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [v2 recentAppsVisible];
  [v3 setRecentAppsVisible:v4];

  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Finished processing recent apps", v7, 2u);
  }

  return v2;
}

void __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_29(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Received reply for categories: %{BOOL}d", v7, 8u);
  }

  v5 = *(a1 + 32);
  v6 = (*(*(a1 + 40) + 16))();
  (*(v5 + 16))(v5, v6);
}

void __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_30(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Top apps are visible, did send reply", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  (*(v3 + 16))(v3, v4);
}

- (id)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:(unint64_t)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Attempting to retrieve relevant App Directory cached entities: Predicted Apps, Recent apps and Hidden apps", buf, 2u);
  }

  v49 = self;
  v48 = [(ATXProactiveSuggestionClient *)self->_blendingClient suggestionLayoutFromCache];
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  v6 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAppDirectoryRecentsCache"];
  v7 = __atxlog_handle_app_library();
  v8 = [v5 initWithCacheFilePath:v6 loggingHandle:v7 debugName:@"ATXAppDirectoryClient.DiskRead"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v60 = 0;
  v15 = [v8 readSecureCodedObjectWithMaxValidAge:v14 allowableClasses:&v60 error:-1.0];
  v16 = v60;

  v47 = v8;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v57;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v17);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = __atxlog_handle_app_library();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [ATXAppDirectoryClient getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:];
            }

            goto LABEL_19;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v15 = v17;
  }

  else
  {
    v17 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:];
    }

LABEL_19:

    v17 = objc_opt_new();
  }

  v51 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v23 = v17;
  v24 = [v23 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v52 + 1) + 8 * j);
        if ([(__CFString *)v28 count]== 2)
        {
          v29 = [(__CFString *)v28 objectForKeyedSubscript:@"bundleId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [(__CFString *)v28 objectForKeyedSubscript:@"installDate"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v51 addObject:v28];
            }

            else
            {
              v31 = __atxlog_handle_app_library();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v62 = @"installDate";
                _os_log_error_impl(&dword_1BF549000, v31, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element doesn't have expected install date key: '%@'", buf, 0xCu);
              }
            }
          }

          else
          {
            v30 = __atxlog_handle_app_library();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v62 = @"bundleId";
              _os_log_error_impl(&dword_1BF549000, v30, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element doesn't have expected bundleId key: '%@'", buf, 0xCu);
            }
          }
        }

        else
        {
          v29 = __atxlog_handle_app_library();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v28;
            _os_log_error_impl(&dword_1BF549000, v29, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element does not have expected number of keys: %@", buf, 0xCu);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v25);
  }

  v32 = [v51 copy];
  v33 = [ATXAppDirectoryResponse alloc];
  v34 = [MEMORY[0x1E696AAE8] mainBundle];
  v35 = [v34 bundleIdentifier];
  v36 = [v35 isEqualToString:@"com.apple.Spotlight"];

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = @"com.apple.Spotlight";
  }

  v38 = MEMORY[0x1E695E000];
  v39 = v37;
  v40 = [[v38 alloc] initWithSuiteName:v39];

  v41 = [v40 stringArrayForKey:@"EnabledPreferenceRules"];
  if ([v41 containsObject:@"System.onenessApps"])
  {
    v42 = 0;
  }

  else
  {
    v42 = [v41 containsObject:@"System.iphoneApps"] ^ 1;
  }

  v43 = [(ATXAppDirectoryClient *)v49 _hiddenAppsFromCache];
  v44 = [(ATXAppDirectoryClient *)v49 topAppsVisible];
  v45 = [(ATXAppDirectoryResponse *)v33 initWithSuggestionLayout:v48 includeRemoteApps:v42 recentApps:v32 hiddenApps:v43 otherAppsOnScreen:v44 numAppsToPredict:a3 error:v16];

  return v45;
}

- (void)appLaunchDatesWithReply:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchDatesWithReply:v6];
}

void __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)notifyBookmarksDidChange
{
  v2 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_44];
  [v2 notifyBookmarksDidChange];
}

void __49__ATXAppDirectoryClient_notifyBookmarksDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }
}

- (void)requestNotificationWhenCategoriesAreReady
{
  v2 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_46_0];
  [v2 requestNotificationWhenCategoriesAreReady];
}

void __66__ATXAppDirectoryClient_requestNotificationWhenCategoriesAreReady__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }
}

- (id)_suggestionsPodDedupableBundleIds
{
  v3 = [(ATXAppDirectoryClient *)self topAppsVisible];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  v4 = [(ATXAppDirectoryClient *)self recentAppsVisible];
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)_updateTopAppsVisibilityWithCategories:(id)a3
{
  v4 = MEMORY[0x1E69C5CF8];
  v5 = a3;
  v6 = [v4 isiPad];
  v7 = objc_opt_new();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke;
  v12 = &unk_1E80C1620;
  v8 = v7;
  v13 = v8;
  v14 = v6;
  [v5 enumerateObjectsUsingBlock:&v9];

  if (v8)
  {
    [(ATXAppDirectoryClient *)self setTopAppsVisible:v8, v9, v10, v11, v12];
  }
}

void __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 appIdentities];
  if ([v8 count] > 4)
  {
    v10 = 3;
  }

  else
  {
    v9 = [v7 appIdentities];
    v10 = [v9 count];
  }

  v11 = [v7 appIdentities];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke_2;
  v12[3] = &unk_1E80C15F8;
  v13 = *(a1 + 32);
  v14 = v10;
  [v11 enumerateObjectsUsingBlock:v12];

  if (a3 >= 5 && (*(a1 + 40) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 bundleIdentifier];
  [v7 addObject:v8];

  if (*(a1 + 40) - 1 <= a3)
  {
    *a4 = 1;
  }
}

+ (id)hardcodedAppCategoryMappings
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AppDirectoryDefaultCategories" ofType:@"plist"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
  }

  else
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[ATXAppDirectoryClient hardcodedAppCategoryMappings];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke;
  v18[3] = &unk_1E80C1648;
  v6 = v5;
  v19 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        [v12 sortUsingComparator:&__block_literal_global_61];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

void __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v6];

    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

uint64_t __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lowercaseString];
  v6 = [v4 lowercaseString];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_sortedDefaultCategories
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 hardcodedAppCategoryMappings];
  v5 = [v4 mutableCopy];

  Current = CFAbsoluteTimeGetCurrent();
  v7 = objc_alloc_init(MEMORY[0x1E69D4240]);
  v8 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = CFAbsoluteTimeGetCurrent() - Current;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Time to initialize home screen service: %f seconds", buf, 0xCu);
  }

  v9 = CFAbsoluteTimeGetCurrent();
  v10 = +[ATXAppDisplayIdentifiers appIdentifiers];
  if (![v10 count])
  {
    v11 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v12 = [v7 allHomeScreenApplicationBundleIdentifiers];
    if (v12)
    {
      [MEMORY[0x1E695DFD8] setWithArray:v12];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v13 = ;

    v10 = v13;
  }

  v14 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v43 = v15 - v9;
    _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "Time to copy app identifiers: %f seconds", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v5 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        if (([v10 containsObject:v21] & 1) == 0)
        {
          [v5 removeObjectForKey:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v18);
  }

  v22 = objc_opt_new();
  v23 = [a1 _sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:v5];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke;
  v35[3] = &unk_1E80C1690;
  v24 = v22;
  v36 = v24;
  [v23 enumerateKeysAndObjectsUsingBlock:v35];

  [v24 sortUsingComparator:&__block_literal_global_68];
  v25 = CFAbsoluteTimeGetCurrent();
  v26 = [a1 _allPlaceholderBundleIdsFromHomeScreenService:v7];
  v27 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v43 = v28 - v25;
    _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "Time to retrieve app placeholders: %f seconds", buf, 0xCu);
  }

  v29 = [a1 _sortedAllOtherBundleIDsFromAllBundleIDs:v10 allPlaceholderBundleIDs:v26 hardcodedAppCategoryMappings:v5];
  v30 = [ATXAppDirectoryCategory alloc];
  v31 = [v29 appIdentitiesFromBundleIDs];
  v32 = [(ATXAppDirectoryCategory *)v30 initWithCategoryID:1008 appIdentities:v31];

  [v24 addObject:v32];
  v33 = v24;

  objc_autoreleasePoolPop(v3);

  return v33;
}

void __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [ATXAppDirectoryCategory alloc];
  v8 = [v6 unsignedIntegerValue];

  v9 = [v5 appIdentitiesFromBundleIDs];

  v10 = [(ATXAppDirectoryCategory *)v7 initWithCategoryID:v8 appIdentities:v9];
  [*(a1 + 32) addObject:v10];
}

uint64_t __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = +[ATXAppDirectoryCategory localizedStringForCategoryID:](ATXAppDirectoryCategory, "localizedStringForCategoryID:", [a2 categoryID]);
  v6 = [v4 categoryID];

  v7 = [ATXAppDirectoryCategory localizedStringForCategoryID:v6];
  v8 = [v5 compare:v7];

  return v8;
}

+ (id)_allPlaceholderBundleIdsFromHomeScreenService:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 allHomeScreenApplicationPlaceholderBundleIdentifiers];

  v7 = [v5 initWithArray:v6];

  return v7;
}

+ (id)_sortedAllOtherBundleIDsFromAllBundleIDs:(id)a3 allPlaceholderBundleIDs:(id)a4 hardcodedAppCategoryMappings:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  v10 = [v7 mutableCopy];
  [v10 unionSet:v8];
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v9 objectForKeyedSubscript:v17];

        if (!v18)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [v11 sortUsingComparator:&__block_literal_global_70];
  objc_autoreleasePoolPop(context);

  return v11;
}

uint64_t __119__ATXAppDirectoryClient__sortedAllOtherBundleIDsFromAllBundleIDs_allPlaceholderBundleIDs_hardcodedAppCategoryMappings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lowercaseString];
  v6 = [v4 lowercaseString];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_addEngagedSuggestionToERM:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  v5 = v9;
  if (v9)
  {
    engagementRecordManager = self->_engagementRecordManager;
    if (!engagementRecordManager)
    {
      v7 = +[ATXEngagementRecordManager sharedInstance];
      v8 = self->_engagementRecordManager;
      self->_engagementRecordManager = v7;

      engagementRecordManager = self->_engagementRecordManager;
    }

    v4 = [(ATXEngagementRecordManager *)engagementRecordManager addEngagedSuggestion:v9 engagementRecordType:1];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_logCaptureRateDiversionWithType:(int)a3
{
  v3 = *&a3;
  dispatch_assert_queue_V2(self->_loggingQueue);
  tracker = self->_tracker;
  if (!tracker)
  {
    v6 = objc_opt_new();
    v7 = self->_tracker;
    self->_tracker = v6;

    tracker = self->_tracker;
  }

  [ATXBlendingCaptureRateTracker logAppDirectoryDiversionWithCaptureType:v3 tracker:tracker];
}

- (void)_logCaptureRateCapture
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  tracker = self->_tracker;
  if (!tracker)
  {
    v4 = objc_opt_new();
    v5 = self->_tracker;
    self->_tracker = v4;

    tracker = self->_tracker;
  }

  [ATXBlendingCaptureRateTracker logAppDirectoryCaptureWithTracker:tracker];
}

- (void)_logToBiomeWithEventType:(unint64_t)a3 date:(id)a4 blendingCacheUUID:(id)a5 shownSuggestionIds:(id)a6 engagedSuggestionIds:(id)a7 categoryID:(id)a8 categoryIndex:(id)a9 bundleId:(id)a10 bundleIndex:(id)a11 searchQueryLength:(id)a12 searchTab:(id)a13 bundleIdInTopAppsVisible:(id)a14 userLaunchedAppBeforeLeaving:(id)a15
{
  v18 = a14;
  v19 = a15;
  v43 = self;
  queue = self->_loggingQueue;
  v38 = a13;
  v37 = a12;
  v36 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  dispatch_assert_queue_V2(queue);
  v44 = v18;
  if (v18 | v19)
  {
    v27 = [[ATXAppDirectoryEventMetadata alloc] initWithBundleIdInTopAppsVisible:v18 userLaunchedAppBeforeLeaving:v19];
  }

  else
  {
    v27 = 0;
  }

  v42 = v27;
  v40 = [[ATXAppDirectoryEvent alloc] initWithDate:v26 eventType:a3 categoryID:v22 categoryIndex:v21 bundleId:v20 bundleIndex:v36 searchQueryLength:v37 searchTab:v38 blendingCacheUUID:v25 shownSuggestionIds:v24 engagedSuggestionIds:v23 metadata:v27];

  uiStream = v43->_uiStream;
  if (!uiStream)
  {
    v29 = objc_opt_new();
    v30 = v43->_uiStream;
    v43->_uiStream = v29;

    uiStream = v43->_uiStream;
  }

  v31 = [ATXUIEvent uiEventWithAppDirectoryEvent:v40];
  [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v31];

  v32 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppDirectoryClient _logToBiomeWithEventType:v40 date:v32 blendingCacheUUID:? shownSuggestionIds:? engagedSuggestionIds:? categoryID:? categoryIndex:? bundleId:? bundleIndex:? searchQueryLength:? searchTab:? bundleIdInTopAppsVisible:? userLaunchedAppBeforeLeaving:?];
  }
}

- (void)_logToBiome:(unint64_t)a3 metadata:(id)a4
{
  loggingQueue = self->_loggingQueue;
  v7 = a4;
  dispatch_assert_queue_V2(loggingQueue);
  v13 = [ATXAppDirectoryEvent appDirectoryEventWithEventType:a3 metadata:v7];

  v8 = v13;
  if (v13)
  {
    uiStream = self->_uiStream;
    if (!uiStream)
    {
      v10 = objc_opt_new();
      v11 = self->_uiStream;
      self->_uiStream = v10;

      uiStream = self->_uiStream;
    }

    v12 = [ATXUIEvent uiEventWithAppDirectoryEvent:v13];
    [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v12];

    v8 = v13;
  }
}

- (void)logDidEnterAppDirectoryWithDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[ATXHomeScreenSuggestionClient sharedInstance];
    [v5 logSpecialPageDidAppear:1 widgetsByStackId:0 prediction:0];

    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__ATXAppDirectoryClient_logDidEnterAppDirectoryWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = v4;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logDidEnterAppDirectoryWithDate:];
    }
  }
}

uint64_t __57__ATXAppDirectoryClient_logDidEnterAppDirectoryWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logDidEnterAppDirectoryWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  [*(a1 + 32) _logToBiomeWithEventType:0 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
  return [*(a1 + 32) _resetSessionState];
}

- (void)logCategoryExpansionWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    loggingQueue = self->_loggingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__ATXAppDirectoryClient_logCategoryExpansionWithDate_categoryID_categoryIndex___block_invoke;
    v12[3] = &unk_1E80C16D8;
    v14 = a4;
    v15 = a5;
    v12[4] = self;
    v13 = v8;
    dispatch_async(loggingQueue, v12);
  }

  else
  {
    v11 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCategoryExpansionWithDate:categoryID:categoryIndex:];
    }
  }
}

void __79__ATXAppDirectoryClient_logCategoryExpansionWithDate_categoryID_categoryIndex___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[6];
    v4 = a1[7];
    *buf = 136315650;
    v10 = "[ATXAppDirectoryClient logCategoryExpansionWithDate:categoryID:categoryIndex:]_block_invoke";
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %tu, categoryIndex: %tu", buf, 0x20u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[7]];
  [v5 _logToBiomeWithEventType:1 date:v6 blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:v7 categoryIndex:v8 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logCategoryExitWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    loggingQueue = self->_loggingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__ATXAppDirectoryClient_logCategoryExitWithDate_categoryID_categoryIndex___block_invoke;
    v12[3] = &unk_1E80C16D8;
    v14 = a4;
    v15 = a5;
    v12[4] = self;
    v13 = v8;
    dispatch_async(loggingQueue, v12);
  }

  else
  {
    v11 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCategoryExitWithDate:categoryID:categoryIndex:];
    }
  }
}

void __74__ATXAppDirectoryClient_logCategoryExitWithDate_categoryID_categoryIndex___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[6];
    v4 = a1[7];
    *buf = 136315650;
    v10 = "[ATXAppDirectoryClient logCategoryExitWithDate:categoryID:categoryIndex:]_block_invoke";
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %tu, categoryIndex: %tu", buf, 0x20u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[7]];
  [v5 _logToBiomeWithEventType:2 date:v6 blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:v7 categoryIndex:v8 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logLaunchFromExpandedCategoryWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5 bundleID:(id)a6 bundleIndex:(unint64_t)a7 appDirectoryResponse:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  if (v14)
  {
    if (!v15)
    {
      v17 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
      }

      v15 = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__ATXAppDirectoryClient_logLaunchFromExpandedCategoryWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    v25 = a4;
    v26 = a5;
    v15 = v15;
    v21 = v15;
    v27 = a7;
    v22 = v16;
    v23 = self;
    v24 = v14;
    dispatch_async(loggingQueue, block);

    v19 = v21;
  }

  else
  {
    v19 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
    }
  }
}

void __130__ATXAppDirectoryClient_logLaunchFromExpandedCategoryWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v32 = "[ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:]_block_invoke";
    v33 = 2048;
    v34 = v3;
    v35 = 2048;
    v36 = v4;
    v37 = 2112;
    v38 = v6;
    v39 = 2048;
    v40 = v5;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %lu, categoryIndex: %lu, bundleId: %@, bundleIndex: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "containsObject:", *(a1 + 32))}];

  v17 = *(a1 + 48);
  v29 = *(a1 + 56);
  v18 = [*(a1 + 40) suggestionLayout];
  v19 = [v18 uuid];
  v30 = v13;
  v20 = [*(a1 + 40) uuidsForBundleIds:v13];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v23 = *(a1 + 32);
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  [v17 _logToBiomeWithEventType:3 date:v29 blendingCacheUUID:v19 shownSuggestionIds:v20 engagedSuggestionIds:0 categoryID:v21 categoryIndex:v22 bundleId:v23 bundleIndex:v24 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:v16 userLaunchedAppBeforeLeaving:0];

  if ([v16 BOOLValue])
  {
    v25 = 4006;
  }

  else
  {
    v25 = 4002;
  }

  if (*(a1 + 64) == 4)
  {
    if ([v16 BOOLValue])
    {
      v25 = 4007;
    }

    else
    {
      v25 = 4003;
    }
  }

  v26 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (!v26 || (v27 = v26, v28 = [v26 BOOLValue], v27, v28))
  {
    [*(a1 + 48) _logCaptureRateDiversionWithType:v25];
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logLaunchFromCategoryPreviewWithDate:(id)a3 categoryID:(unint64_t)a4 categoryIndex:(unint64_t)a5 bundleID:(id)a6 bundleIndex:(unint64_t)a7 appDirectoryResponse:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  if (v14)
  {
    if (!v15)
    {
      v17 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
      }

      v15 = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    v25 = a4;
    v26 = a5;
    v15 = v15;
    v21 = v15;
    v27 = a7;
    v22 = v16;
    v23 = self;
    v24 = v14;
    dispatch_async(loggingQueue, block);

    v19 = v21;
  }

  else
  {
    v19 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
    }
  }
}

void __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v43 = "[ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:]_block_invoke";
    v44 = 2048;
    v45 = v3;
    v46 = 2048;
    v47 = v4;
    v48 = 2112;
    v49 = v6;
    v50 = 2048;
    v51 = v5;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %lu, categoryIndex: %lu, bundleId: %@, bundleIndex: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v40 = [v14 numberWithBool:{objc_msgSend(v15, "containsObject:", *(a1 + 32))}];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "containsObject:", *(a1 + 32))}];
  v17 = *(a1 + 64);
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  v37 = [*(a1 + 40) suggestionLayout];
  v18 = [v37 uuid];
  v19 = [*(a1 + 40) uuidsForBundleIds:v13];
  v38 = v16;
  v39 = v13;
  v36 = v18;
  if (v17 == 3)
  {
    v20 = *(a1 + 40);
    v41 = *(a1 + 32);
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v21 = [v20 uuidsForBundleIds:?];
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v24 = *(a1 + 32);
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  v26 = v40;
  [v34 _logToBiomeWithEventType:4 date:v35 blendingCacheUUID:v36 shownSuggestionIds:v19 engagedSuggestionIds:v21 categoryID:v22 categoryIndex:v23 bundleId:v24 bundleIndex:v25 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:v40 userLaunchedAppBeforeLeaving:0];

  if (v17 == 3)
  {

    v27 = v38;
    v28 = v39;
    if (([v38 BOOLValue] & 1) == 0)
    {
      v29 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke_cold_1();
      }
    }

    [*(a1 + 48) _logCaptureRateCapture];
    v30 = *(a1 + 48);
    v31 = [*(a1 + 40) proactiveSuggestionForBundleId:*(a1 + 32)];
    [v30 _addEngagedSuggestionToERM:v31];

    v26 = v40;
  }

  else
  {

    if ([v40 BOOLValue])
    {
      v32 = 4005;
    }

    else
    {
      v32 = 4001;
    }

    v27 = v38;
    v28 = v39;
    if (v17 == 4)
    {
      if ([v40 BOOLValue])
      {
        v32 = 4007;
      }

      else
      {
        v32 = 4003;
      }
    }

    if ([v39 count])
    {
      [*(a1 + 48) _logCaptureRateDiversionWithType:v32];
    }
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logLaunchFromSearchWithDate:(id)a3 bundleID:(id)a4 bundleIndex:(unint64_t)a5 searchQueryLength:(unint64_t)a6 searchTab:(unint64_t)a7 appDirectoryResponse:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (v14)
  {
    if (!v15)
    {
      v17 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:];
      }

      v15 = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123__ATXAppDirectoryClient_logLaunchFromSearchWithDate_bundleID_bundleIndex_searchQueryLength_searchTab_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    v15 = v15;
    v21 = v15;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v22 = v16;
    v23 = self;
    v24 = v14;
    dispatch_async(loggingQueue, block);

    v19 = v21;
  }

  else
  {
    v19 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:];
    }
  }
}

void __123__ATXAppDirectoryClient_logLaunchFromSearchWithDate_bundleID_bundleIndex_searchQueryLength_searchTab_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v29 = "[ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:]_block_invoke";
    v30 = 2112;
    v31 = v6;
    v32 = 2048;
    v33 = v3;
    v34 = 2048;
    v35 = v4;
    v36 = 2048;
    v37 = v5;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, bundleId: %@, bundleIndex: %lu, searchQueryLength: %lu, searchTab: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "containsObject:", *(a1 + 32))}];

  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v17 = [*(a1 + 40) suggestionLayout];
  v18 = [v17 uuid];
  v19 = [*(a1 + 40) uuidsForBundleIds:v13];
  v20 = *(a1 + 32);
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  [v26 _logToBiomeWithEventType:6 date:v27 blendingCacheUUID:v18 shownSuggestionIds:v19 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:v20 bundleIndex:v21 searchQueryLength:v22 searchTab:v23 bundleIdInTopAppsVisible:v16 userLaunchedAppBeforeLeaving:0];

  v24 = [v16 BOOLValue];
  if ([v13 count])
  {
    if (v24)
    {
      v25 = 4004;
    }

    else
    {
      v25 = 4000;
    }

    [*(a1 + 48) _logCaptureRateDiversionWithType:v25];
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logOpenSearchWithDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__ATXAppDirectoryClient_logOpenSearchWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = v4;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logOpenSearchWithDate:];
    }
  }
}

uint64_t __47__ATXAppDirectoryClient_logOpenSearchWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logOpenSearchWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  return [*(a1 + 32) _logToBiomeWithEventType:7 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logDidLeaveAppDirectoryWithDate:(id)a3 appDirectoryResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[ATXHomeScreenSuggestionClient sharedInstance];
    [v8 logSpecialPageDidDisappear:1];

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__ATXAppDirectoryClient_logDidLeaveAppDirectoryWithDate_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1728;
    v12 = v7;
    v13 = self;
    v14 = v6;
    dispatch_async(loggingQueue, block);

    v10 = v12;
  }

  else
  {
    v10 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logDidLeaveAppDirectoryWithDate:appDirectoryResponse:];
    }
  }
}

void __78__ATXAppDirectoryClient_logDidLeaveAppDirectoryWithDate_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ATXAppDirectoryClient logDidLeaveAppDirectoryWithDate:appDirectoryResponse:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  v3 = [*(a1 + 32) predictedAppIdentities];
  v4 = [*(a1 + 32) predictedAppIdentities];
  v5 = [v4 count];

  if (v5 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 subarrayWithRange:{0, v6}];
  v8 = [v7 bundleIDsFromIdentities];

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [*(a1 + 32) suggestionLayout];
  v12 = [v11 uuid];
  v13 = [*(a1 + 32) uuidsForBundleIds:v8];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 40) + 56)];
  [v10 _logToBiomeWithEventType:8 date:v9 blendingCacheUUID:v12 shownSuggestionIds:v13 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:v14];

  [*(a1 + 40) _resetSessionState];
}

- (void)logCloseSearchWithDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__ATXAppDirectoryClient_logCloseSearchWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = v4;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCloseSearchWithDate:];
    }
  }
}

uint64_t __48__ATXAppDirectoryClient_logCloseSearchWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logCloseSearchWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  return [*(a1 + 32) _logToBiomeWithEventType:9 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

void __30__ATXAppDirectoryClient__init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __30__ATXAppDirectoryClient__init__block_invoke_17_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:shouldUseDefaultCategories:reply:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_hiddenAppsFromCache
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)hardcodedAppCategoryMappings
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_logToBiomeWithEventType:(void *)a1 date:(NSObject *)a2 blendingCacheUUID:shownSuggestionIds:engagedSuggestionIds:categoryID:categoryIndex:bundleId:bundleIndex:searchQueryLength:searchTab:bundleIdInTopAppsVisible:userLaunchedAppBeforeLeaving:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 jsonDict];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "ATXAppDirectoryClient: logging event to Biome: %@", v4, 0xCu);
}

- (void)logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_1_9();
  v3 = v0;
  _os_log_fault_impl(&dword_1BF549000, v1, OS_LOG_TYPE_FAULT, "ATXAppDirectoryClient launch from suggestions category with bundleId: %@ not in shown bundleIds: %@", v2, 0x16u);
}

- (void)logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end