@interface ATXClientModelSuggestionReceiver
+ (ATXClientModelSuggestionReceiver)sharedInstance;
+ (id)layoutSelectorsForConsumerSubTypes;
+ (void)_updateCacheForClientModel:(id)a3 withSuggestions:(id)a4 cacheManager:(id)a5;
+ (void)clearPreviouslyPersistedCachesForCardSuggestionClientsIfNecessary;
- (ATXClientModelSuggestionReceiver)init;
- (ATXClientModelSuggestionReceiver)initWithBlendingLayerServer:(id)a3;
- (BOOL)rerouteSuggestions:(id)a3 clientModelId:(id)a4 completion:(id)a5;
- (void)_sendStackChangeDebugNotification:(id)a3;
- (void)blendingLayerRerankedSuggestions:(id)a3 consumerSubType:(unsigned __int8)a4;
- (void)blendingLayerUpdatedUICache:(id)a3 consumerSubType:(unsigned __int8)a4;
- (void)dealloc;
- (void)routeSuggestionsToInfoSuggestionEngine:(id)a3 clientModelId:(id)a4 completion:(id)a5;
- (void)start;
- (void)willCreateCacheUpdateWithFeedbackMetadataLength:(int64_t)a3 forClientModelId:(id)a4;
@end

@implementation ATXClientModelSuggestionReceiver

+ (ATXClientModelSuggestionReceiver)sharedInstance
{
  if (sharedInstance__pasOnceToken7_27 != -1)
  {
    +[ATXClientModelSuggestionReceiver sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_33;

  return v3;
}

void __50__ATXClientModelSuggestionReceiver_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_33;
  sharedInstance__pasExprOnceResult_33 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXClientModelSuggestionReceiver)init
{
  v3 = objc_alloc(MEMORY[0x277D42110]);
  v4 = objc_opt_new();
  v5 = [objc_opt_class() layoutSelectorsForConsumerSubTypes];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277D41B98] sharedInstance];
  v8 = [v3 initWithSuggestionPreprocessor:v4 delegate:self layoutSelectorsForConsumerSubTypes:v5 blendingSessionLogger:v6 hyperParameters:v7];

  v9 = objc_alloc(MEMORY[0x277D42118]);
  v10 = [MEMORY[0x277CEB500] sharedInstance];
  v11 = [MEMORY[0x277D41B98] sharedInstance];
  v12 = [v9 initWithBlendingLayer:v8 engagementRecordsManager:v10 hyperParameters:v11 serverDelegate:self];

  v13 = [(ATXClientModelSuggestionReceiver *)self initWithBlendingLayerServer:v12];
  return v13;
}

- (ATXClientModelSuggestionReceiver)initWithBlendingLayerServer:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = ATXClientModelSuggestionReceiver;
  v6 = [(ATXClientModelSuggestionReceiver *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_blendingLayerServer, a3);
    v8 = [v5 clientModelCacheManager];
    clientModelCacheManager = v7->_clientModelCacheManager;
    v7->_clientModelCacheManager = v8;

    v10 = objc_opt_new();
    appSwitcherSuggestionSender = v7->_appSwitcherSuggestionSender;
    v7->_appSwitcherSuggestionSender = v10;

    v12 = objc_opt_new();
    homeScreenSuggestionSender = v7->_homeScreenSuggestionSender;
    v7->_homeScreenSuggestionSender = v12;

    v14 = objc_opt_new();
    lockscreenSuggestionSender = v7->_lockscreenSuggestionSender;
    v7->_lockscreenSuggestionSender = v14;

    v16 = objc_opt_new();
    watchSmartStacksSender = v7->_watchSmartStacksSender;
    v7->_watchSmartStacksSender = v16;

    v18 = objc_opt_new();
    spotlightActionsSuggestionSender = v7->_spotlightActionsSuggestionSender;
    v7->_spotlightActionsSuggestionSender = v18;

    v20 = objc_opt_new();
    router = v7->_router;
    v7->_router = v20;
  }

  return v7;
}

- (void)start
{
  [(ATXUniversalBlendingLayerServer *)self->_blendingLayerServer start];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__sendStackChangeDebugNotification_ name:*MEMORY[0x277CEBAA8] object:0];

  v4 = objc_opt_new();
  uninstallNotificationListener = self->_uninstallNotificationListener;
  self->_uninstallNotificationListener = v4;

  v6 = self->_uninstallNotificationListener;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __41__ATXClientModelSuggestionReceiver_start__block_invoke;
  v13 = &unk_278596DA0;
  objc_copyWeak(&v14, &location);
  [(_ATXInternalUninstallNotification *)v6 registerForNotificationsWithUninstallBlock:&v10];
  if (_PASIsInternalDevice())
  {
    v7 = objc_alloc(MEMORY[0x277CE2028]);
    v8 = [v7 initWithBundleIdentifier:{@"com.apple.ATXDebugNotifications", v10, v11, v12, v13}];
    notificationCenter = self->_notificationCenter;
    self->_notificationCenter = v8;

    [(UNUserNotificationCenter *)self->_notificationCenter setDelegate:self];
    [(UNUserNotificationCenter *)self->_notificationCenter setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)self->_notificationCenter requestAuthorizationWithOptions:6 completionHandler:&__block_literal_global_44_1];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __41__ATXClientModelSuggestionReceiver_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] refreshBlendingLayer];
  }

  else
  {
    v3 = __atxlog_handle_blending();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__ATXClientModelSuggestionReceiver_start__block_invoke_cold_1(v3);
    }
  }
}

void __41__ATXClientModelSuggestionReceiver_start__block_invoke_41(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "StackChangeDebugNotification: notification authorized = %d", v8, 8u);
  }

  if (v4)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__ATXClientModelSuggestionReceiver_start__block_invoke_41_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  homeScreenStackChangeDarwinNotificationObserver = self->_homeScreenStackChangeDarwinNotificationObserver;
  if (homeScreenStackChangeDarwinNotificationObserver)
  {
    notify_cancel(homeScreenStackChangeDarwinNotificationObserver);
    self->_homeScreenStackChangeDarwinNotificationObserver = 0;
  }

  v4.receiver = self;
  v4.super_class = ATXClientModelSuggestionReceiver;
  [(ATXClientModelSuggestionReceiver *)&v4 dealloc];
}

+ (id)layoutSelectorsForConsumerSubTypes
{
  v20[14] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277D42050]);
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277D41B98] sharedInstance];
  v9 = [v6 initWithSuggestionDeduplicator:v7 hyperParameters:v8];

  v10 = [ATXSpotlightLayoutSelector alloc];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277D41B98] sharedInstance];
  v13 = [(ATXSpotlightLayoutSelector *)v10 initWithSuggestionDeduplicator:v11 hyperParameters:v12];

  v14 = objc_opt_new();
  v19[0] = &unk_283A56B88;
  v19[1] = &unk_283A56BA0;
  v20[0] = v5;
  v20[1] = v9;
  v19[2] = &unk_283A56BB8;
  v19[3] = &unk_283A56BD0;
  v20[2] = v13;
  v20[3] = v9;
  v19[4] = &unk_283A56BE8;
  v19[5] = &unk_283A56C00;
  v20[4] = v9;
  v20[5] = v9;
  v19[6] = &unk_283A56C18;
  v19[7] = &unk_283A56C30;
  v20[6] = v9;
  v20[7] = v9;
  v19[8] = &unk_283A56C48;
  v19[9] = &unk_283A56C60;
  v20[8] = v9;
  v20[9] = v9;
  v19[10] = &unk_283A56C78;
  v19[11] = &unk_283A56C90;
  v20[10] = v9;
  v20[11] = v2;
  v19[12] = &unk_283A56CA8;
  v19[13] = &unk_283A56CC0;
  v20[12] = v3;
  v20[13] = v4;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:14];
  [v14 setDictionary:v15];

  v16 = [v14 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_sendStackChangeDebugNotification:(id)a3
{
  if (self->_notificationCenter)
  {
    v4 = a3;
    v25 = objc_opt_new();
    [v25 setTitle:@"Widget Stack Change Alert"];
    v5 = [v4 userInfo];

    v6 = *MEMORY[0x277CEBAB0];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEBAB0]];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277CEBAE8]];
    v9 = [v7 isEqualToNumber:v8];

    v10 = MEMORY[0x277CCACA8];
    if (v9)
    {
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEBAB8]];
      v12 = v11;
      v13 = @"unknown";
      if (v11)
      {
        v13 = v11;
      }

      v14 = [v10 stringWithFormat:@"The suggested widget on the Today page changed to %@", v13];
      [v25 setBody:v14];
    }

    else
    {
      v15 = [v5 objectForKeyedSubscript:v6];
      v12 = v15;
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = @"unknown";
      }

      v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEBAB8]];
      v14 = v17;
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = @"unknown";
      }

      v19 = [v10 stringWithFormat:@"The suggested widget on page %@ changed to %@", v16, v18];
      [v25 setBody:v19];
    }

    v20 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
    v21 = MEMORY[0x277CE1FC0];
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];
    v24 = [v21 requestWithIdentifier:v23 content:v25 trigger:v20];

    [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v24 withCompletionHandler:&__block_literal_global_103];
  }
}

void __70__ATXClientModelSuggestionReceiver__sendStackChangeDebugNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__ATXClientModelSuggestionReceiver__sendStackChangeDebugNotification___block_invoke_cold_1();
    }
  }
}

- (void)blendingLayerRerankedSuggestions:(id)a3 consumerSubType:(unsigned __int8)a4
{
  if (a4 == 34)
  {
    v5 = a3;
    v6 = +[ATXContextualEngine sharedInstance];
    [v6 donateRerankedBlendingSuggestions:v5];
  }
}

- (void)blendingLayerUpdatedUICache:(id)a3 consumerSubType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 <= 34)
  {
    if (v4 > 30)
    {
      if (v4 == 31)
      {
        [(ATXAppSwitcherSuggestionSender *)self->_appSwitcherSuggestionSender blendingLayerDidUpdateAppSwitcherUICache];
      }

      else if (v4 == 34 && v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [ATXClientModelSuggestionReceiver blendingLayerUpdatedUICache:consumerSubType:];
        }

        homeScreenSuggestionSender = self->_homeScreenSuggestionSender;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __80__ATXClientModelSuggestionReceiver_blendingLayerUpdatedUICache_consumerSubType___block_invoke;
        v18[3] = &unk_27859EE08;
        v18[4] = self;
        [(ATXHomeScreenSuggestionSender *)homeScreenSuggestionSender blendingLayerDidUpdateHomeScreenCachedSuggestions:v7 completion:v18];
      }
    }

    else if (v4 == 21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
      }

      else
      {
        v12 = 0;
      }

      [(ATXSpotlightActionsSuggestionSender *)self->_spotlightActionsSuggestionSender blendingLayerDidUpdateSpotlightUICache:v12];
    }

    else if (v4 == 22)
    {
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [ATXClientModelSuggestionReceiver blendingLayerUpdatedUICache:consumerSubType:];
        }

        v8 = v7;
      }

      [(ATXLockscreenSuggestionSender *)self->_lockscreenSuggestionSender blendingLayerDidUpdateLockscreenUICache:v7];
LABEL_37:

      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (v4 <= 46)
  {
    if (v4 == 35)
    {
      if (v6)
      {
        appDirectoryOrderingProvider = self->_appDirectoryOrderingProvider;
        if (!appDirectoryOrderingProvider)
        {
          v14 = +[ATXAppDirectoryOrderingProvider sharedInstance];
          v15 = self->_appDirectoryOrderingProvider;
          self->_appDirectoryOrderingProvider = v14;

          appDirectoryOrderingProvider = self->_appDirectoryOrderingProvider;
        }

        [(ATXAppDirectoryOrderingProvider *)appDirectoryOrderingProvider postPredictedAppsAndRecentsUpdateNotificationWithReason:@"Suggestions Cache Updated"];
      }

      goto LABEL_40;
    }

    if (v4 != 46)
    {
      goto LABEL_40;
    }

LABEL_22:
    v10 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Posting distributed notification about settings action suggestions refresh", v17, 2u);
    }

    v11 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v11 postNotificationName:*MEMORY[0x277CEB270] object:0];

    goto LABEL_40;
  }

  if (v4 == 47)
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [ATXClientModelSuggestionReceiver blendingLayerUpdatedUICache:consumerSubType:];
      }

      v16 = v7;
    }

    [(ATXWatchSmartStacksSender *)self->_watchSmartStacksSender blendingLayerDidUpdateUICache:v7];
    goto LABEL_37;
  }

  if (v4 == 49)
  {
    goto LABEL_22;
  }

LABEL_40:
}

void __80__ATXClientModelSuggestionReceiver_blendingLayerUpdatedUICache_consumerSubType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = objc_opt_self();
  if (v3)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__ATXClientModelSuggestionReceiver_blendingLayerUpdatedUICache_consumerSubType___block_invoke_cold_1();
    }
  }
}

- (void)willCreateCacheUpdateWithFeedbackMetadataLength:(int64_t)a3 forClientModelId:(id)a4
{
  v6 = a4;
  if (_PASIsInternalDevice())
  {
    if (self->_notificationCenter)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ATXBlendingMemoryWarningAlert", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat);
      if (a3 >= 256000)
      {
        if (AppBooleanValue)
        {
          v8 = objc_opt_new();
          [v8 setTitle:@"File a Blending Memory Radar"];
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"🚨 Feedback metadata for a blending update exceeded %d KB in size. (%@)", 250, v6];
          [v8 setBody:v9];

          v10 = MEMORY[0x277CE1FC0];
          v11 = [MEMORY[0x277CCAD78] UUID];
          v12 = [v11 UUIDString];
          v13 = [v10 requestWithIdentifier:v12 content:v8 trigger:0];

          [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v13 withCompletionHandler:&__block_literal_global_136];
        }
      }
    }
  }
}

void __101__ATXClientModelSuggestionReceiver_willCreateCacheUpdateWithFeedbackMetadataLength_forClientModelId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __101__ATXClientModelSuggestionReceiver_willCreateCacheUpdateWithFeedbackMetadataLength_forClientModelId___block_invoke_cold_1();
    }
  }
}

- (BOOL)rerouteSuggestions:(id)a3 clientModelId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277CEBC58] widgetSuggestionsEnabled] && -[ATXClientModelSuggestionRouter shouldRouteClientToInfoSuggestionEngine:](self->_router, "shouldRouteClientToInfoSuggestionEngine:", v9))
  {
    [(ATXClientModelSuggestionReceiver *)self routeSuggestionsToInfoSuggestionEngine:v8 clientModelId:v9 completion:v10];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)routeSuggestionsToInfoSuggestionEngine:(id)a3 clientModelId:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Blending: route suggestions to the info engine", buf, 2u);
  }

  v12 = +[ATXInfoSuggestionServer sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__ATXClientModelSuggestionReceiver_routeSuggestionsToInfoSuggestionEngine_clientModelId_completion___block_invoke;
  v16[3] = &unk_27859EE30;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  [v12 overwriteSuggestionsWithProactiveSuggestions:v14 forClientModelIdentifier:v15 completionHandler:v16];
}

void __100__ATXClientModelSuggestionReceiver_routeSuggestionsToInfoSuggestionEngine_clientModelId_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v5 && [*(a1[4] + 8) shouldPersistCacheForClientModel:a1[5]])
  {
    v6 = a1[4];
    v7 = objc_opt_class();
    if (v10)
    {
      v8 = *(a1[4] + 72);
      v9 = v10;
    }

    else
    {
      v9 = a1[6];
      v8 = *(a1[4] + 72);
    }

    [v7 _updateCacheForClientModel:a1[5] withSuggestions:v9 cacheManager:v8];
  }

  (*(a1[7] + 16))();
}

+ (void)_updateCacheForClientModel:(id)a3 withSuggestions:(id)a4 cacheManager:(id)a5
{
  v7 = MEMORY[0x277D42020];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithClientModelId:v10 suggestions:v9 feedbackMetadata:0 responseForRealTimeRequest:0];

  [v8 updateCachedSuggestions:v11];
}

+ (void)clearPreviouslyPersistedCachesForCardSuggestionClientsIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.photos", @"com.apple.news", 0}];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v4 shouldRouteClientToInfoSuggestionEngine:v11])
        {
          v12 = [v3 lastCacheUpdateDateForClientModel:v11];

          if (v12)
          {
            [objc_opt_class() _updateCacheForClientModel:v11 withSuggestions:v9 cacheManager:v3];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __41__ATXClientModelSuggestionReceiver_start__block_invoke_41_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "StackChangeDebugNotification: error while requesting notification auth - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__ATXClientModelSuggestionReceiver__sendStackChangeDebugNotification___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "StackChangeDebugNotification: error while adding notification request - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)blendingLayerUpdatedUICache:consumerSubType:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_1_12(v3 v4];
}

- (void)blendingLayerUpdatedUICache:consumerSubType:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_1_12(v3 v4];
}

- (void)blendingLayerUpdatedUICache:consumerSubType:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_1_12(v3 v4];
}

void __80__ATXClientModelSuggestionReceiver_blendingLayerUpdatedUICache_consumerSubType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Blending: failed to push update to home screen - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __101__ATXClientModelSuggestionReceiver_willCreateCacheUpdateWithFeedbackMetadataLength_forClientModelId___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error while adding blending memory warning notification request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end