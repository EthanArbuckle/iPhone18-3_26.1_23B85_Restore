@interface ATXFaceSuggestionServer
+ (id)sharedInstance;
- (ATXFaceSuggestionServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)checkGalleryForPhotosAppProtection:(id)a3;
- (void)descriptorCacheDidUpdateWithDescriptors:(id)a3;
- (void)fetchComplicationSetsForFaceGalleryItem:(id)a3 completion:(id)a4;
- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)a3;
- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)a3 completion:(id)a4;
- (void)fetchFaceGalleryConfigurationWithCompletion:(id)a3;
- (void)fetchFaceSuggestionsForFocusMode:(id)a3 completion:(id)a4;
- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)a3 completion:(id)a4;
- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)a3 completion:(id)a4;
- (void)fetchMetricsDescriptionWithCompletion:(id)a3;
- (void)fetchPosterConfigurationsWithCompletion:(id)a3;
- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)a3;
- (void)fetchRankedPosterDescriptors:(id)a3;
- (void)fetchScoredComplicationDescriptionWithCompletion:(id)a3;
- (void)generatorDidUpdateFaceGalleryConfiguration:(id)a3;
- (void)inputDescriptionForComplicationSuggestionSignal:(id)a3 completion:(id)a4;
- (void)logComplicationsSeenInGalleryWithEngagements:(id)a3 completion:(id)a4;
- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)a3;
- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)a3 completion:(id)a4;
- (void)logPosterEdit:(id)a3 completion:(id)a4;
- (void)logPosterSwitch:(id)a3 completion:(id)a4;
- (void)posterBoardDidUpdateConfigurations:(id)a3 completion:(id)a4;
- (void)posterBoardDidUpdateDescriptors:(id)a3 completion:(id)a4;
- (void)refreshComplicationsCacheWithCompletion:(id)a3;
- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)a3;
- (void)reloadLockScreenSuggestionsWithActivity:(id)a3 completion:(id)a4;
- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)a3;
- (void)widgetDescriptorCacheDidUpdateDescriptors:(id)a3;
@end

@implementation ATXFaceSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_41 != -1)
  {
    +[ATXFaceSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_49;

  return v3;
}

void __41__ATXFaceSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_49;
  sharedInstance__pasExprOnceResult_49 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXFaceSuggestionServer)init
{
  v43 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = ATXFaceSuggestionServer;
  v2 = [(ATXFaceSuggestionServer *)&v40 init];
  if (v2)
  {
    v3 = +[ATXPosterConfigurationCache sharedInstance];
    configurationCache = v2->_configurationCache;
    v2->_configurationCache = v3;

    v5 = +[ATXPosterDescriptorCache sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = v5;

    [(ATXPosterDescriptorCache *)v2->_descriptorCache registerObserver:v2];
    v7 = objc_alloc(MEMORY[0x277D42628]);
    v8 = dispatch_get_global_queue(17, 0);
    v9 = [v7 initWithQueue:v8 leewaySeconds:&__block_literal_global_24_6 operation:10.0];
    modeFaceSuggestionRefreshCoalescingTimer = v2->_modeFaceSuggestionRefreshCoalescingTimer;
    v2->_modeFaceSuggestionRefreshCoalescingTimer = v9;

    v11 = objc_opt_new();
    complicationsGenerator = v2->_complicationsGenerator;
    v2->_complicationsGenerator = v11;

    v13 = objc_opt_new();
    v14 = [ATXFaceSuggestionGenerator alloc];
    v15 = v2->_descriptorCache;
    v16 = v2->_configurationCache;
    v17 = v2->_complicationsGenerator;
    v18 = [MEMORY[0x277CEB998] sharedInstance];
    v19 = [(ATXFaceSuggestionGenerator *)v14 initWithDescriptorCache:v15 configurationCache:v16 complicationProvider:v17 complicationDescriptorProvider:v18 parameters:v13];
    faceSuggestionGenerator = v2->_faceSuggestionGenerator;
    v2->_faceSuggestionGenerator = v19;

    [(ATXFaceSuggestionGenerator *)v2->_faceSuggestionGenerator setDelegate:v2];
    v21 = [MEMORY[0x277CEB998] sharedInstance];
    [v21 registerObserver:v2];

    v22 = objc_alloc(MEMORY[0x277CCAE98]);
    v23 = [v22 initWithMachServiceName:*MEMORY[0x277CEBA98]];
    listener = v2->_listener;
    v2->_listener = v23;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v25 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[ATXFaceSuggestionServer init]";
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%s: listening for connections", buf, 0xCu);
    }

    v26 = objc_opt_new();
    uninstallNotification = v2->_uninstallNotification;
    v2->_uninstallNotification = v26;

    [(_ATXInternalUninstallNotification *)v2->_uninstallNotification registerForNotificationsWithUninstallBlock:&__block_literal_global_36_4];
    objc_initWeak(buf, v2);
    v28 = objc_opt_new();
    lockedOrHiddenAppNotification = v2->_lockedOrHiddenAppNotification;
    v2->_lockedOrHiddenAppNotification = v28;

    v30 = v2->_lockedOrHiddenAppNotification;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __31__ATXFaceSuggestionServer_init__block_invoke_2;
    v38[3] = &unk_278598048;
    objc_copyWeak(&v39, buf);
    [(ATXInternalLockedOrHiddenAppNotification *)v30 registerForNotificationsWithLockedOrHiddenAppBlock:v38];
    v31 = objc_opt_new();
    unlockedOrUnhiddenAppNotification = v2->_unlockedOrUnhiddenAppNotification;
    v2->_unlockedOrUnhiddenAppNotification = v31;

    v33 = v2->_unlockedOrUnhiddenAppNotification;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __31__ATXFaceSuggestionServer_init__block_invoke_3;
    v36[3] = &unk_278598020;
    objc_copyWeak(&v37, buf);
    [(ATXInternalUnLockedOrUnHiddenAppNotification *)v33 registerForNotificationsWithUnLockedOrUnHiddenAppBlock:v36];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v2;
}

void __31__ATXFaceSuggestionServer_init__block_invoke()
{
  v3 = os_transaction_create();
  v0 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v1 = +[ATXPosterDescriptorCache sharedInstance];
  v2 = [v1 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v0 generateAndCacheFacesFromDescriptors:v2];
}

void __31__ATXFaceSuggestionServer_init__block_invoke_33()
{
  v0 = objc_opt_new();
  [v0 evictCachedSuggestedFaces];
}

void __31__ATXFaceSuggestionServer_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 lockedApps];
    v5 = [v4 containsObject:@"com.apple.mobileslideshow"];

    if (v5)
    {
      [WeakRetained[4] regenerateFaceGalleryConfigurationImmediatelyWithReason:@"Photos app has been locked"];
      [WeakRetained[4] regenerateFaceSuggestionsForFocusModesWithReason:@"Photos app has been locked"];
    }
  }
}

void __31__ATXFaceSuggestionServer_init__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 unLockedApps];
    v5 = [v4 containsObject:@"com.apple.mobileslideshow"];

    if (v5)
    {
      [WeakRetained[4] regenerateFaceGalleryConfigurationImmediatelyWithReason:@"Photos app has been unlocked"];
      [WeakRetained[4] regenerateFaceSuggestionsForFocusModesWithReason:@"Photos app has been unlocked"];
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ATXFaceSuggestionServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: incoming connection", buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:*MEMORY[0x277CEBA98]];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue] & 1) != 0)
  {
    v10 = ATXFaceSuggestionClientXPCInterface();
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_2785977B0;
    objc_copyWeak(&v21, buf);
    [v7 setInterruptionHandler:v20];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53;
    v18 = &unk_2785977B0;
    objc_copyWeak(&v19, buf);
    [v7 setInvalidationHandler:&v15];
    [v7 resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    v11 = 1;
  }

  else
  {
    v12 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer listener:shouldAcceptNewConnection:];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53_cold_1();
  }
}

- (void)fetchFaceGalleryConfigurationWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[ATXFaceSuggestionServer fetchFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v6 = [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator faceGalleryConfiguration];
  v7 = [v6 copy];

  v8 = [(ATXFaceSuggestionServer *)self checkGalleryForPhotosAppProtection:v7];

  v9 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 description];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Gallery returned: %@", &v12, 0xCu);
  }

  v4[2](v4, v8, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ATXFaceSuggestionServer fetchFaceGalleryConfigurationForSemanticType:completion:]";
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator faceGalleryConfiguration];
  v9 = [v8 copy];

  v10 = [v9 sections];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__ATXFaceSuggestionServer_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke;
  v15[3] = &__block_descriptor_40_e31_B16__0__ATXFaceGallerySection_8l;
  v15[4] = a3;
  v11 = [v10 _pas_filteredArrayWithTest:v15];

  [v9 setSections:v11];
  v12 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 description];
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Gallery returned: %@", buf, 0xCu);
  }

  v6[2](v6, v9, 0);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXFaceSuggestionServer regenerateFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = os_transaction_create();
  [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator regenerateFaceGalleryConfigurationImmediatelyWithReason:@"XPC request or activity"];
  [(ATXFaceSuggestionServer *)self fetchFaceGalleryConfigurationWithCompletion:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchFaceSuggestionsForFocusMode:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v8 = [(ATXPosterDescriptorCache *)self->_descriptorCache allDescriptors];
  v9 = [(ATXModeFaceSuggestionGenerator *)v10 facesForMode:v7 allDescriptors:v8];

  v6[2](v6, v9, 0);
}

- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[ATXFaceSuggestionServer fetchPosterDescriptorsAndSuggestionDataWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v27 = objc_opt_new();
  v5 = [(ATXPosterDescriptorCache *)self->_descriptorCache allDescriptors];
  v22 = objc_opt_new();
  v26 = [[ATXFaceSuggestionScorer alloc] initWithParameters:v22 descriptors:v5];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v28)
  {
    v25 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v30 = [(ATXFaceSuggestionScorer *)v26 signals];
        v9 = [v30 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            v12 = 0;
            do
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v30);
              }

              v13 = *(*(&v31 + 1) + 8 * v12);
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              v39[0] = @"weight";
              v16 = MEMORY[0x277CCABB0];
              [v13 weight];
              v17 = [v16 numberWithDouble:?];
              v39[1] = @"value";
              v40[0] = v17;
              v18 = MEMORY[0x277CCABB0];
              [v13 valueForDescriptor:v7];
              v19 = [v18 numberWithDouble:?];
              v40[1] = v19;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
              [v8 setObject:v20 forKeyedSubscript:v15];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v30 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v10);
        }

        [v27 setObject:v8 forKeyedSubscript:v7];
        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v28);
  }

  v23[2](v23, v27, 0);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchRankedPosterDescriptors:(id)a3
{
  v4 = a3;
  v12 = objc_opt_new();
  v5 = [ATXFaceGalleryLayoutGenerator alloc];
  v6 = [(ATXPosterDescriptorCache *)self->_descriptorCache descriptors];
  complicationsGenerator = self->_complicationsGenerator;
  v8 = [MEMORY[0x277CEB998] sharedInstance];
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [(ATXFaceGalleryLayoutGenerator *)v5 initWithDescriptors:v6 complicationProvider:complicationsGenerator complicationDescriptorProvider:v8 parameters:v12 dayZero:0 locale:v9];

  v11 = [(ATXFaceGalleryLayoutGenerator *)v10 rankedFeaturedDescriptors];
  v4[2](v4, v11, 0);
}

- (void)fetchPosterConfigurationsWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ATXFaceSuggestionServer fetchPosterConfigurationsWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(ATXPosterConfigurationCache *)self->_configurationCache configurations];
  v4[2](v4, v6, 0);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchComplicationSetsForFaceGalleryItem:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = os_transaction_create();
  v7 = [MEMORY[0x277CEB998] sharedInstance];
  v18 = 0;
  v8 = [v7 fetchAccessoryWidgetDescriptorMetadataWithError:&v18];
  v9 = v18;

  v10 = v8;
  if (!v8)
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer fetchComplicationSetsForFaceGalleryItem:completion:];
    }

    v10 = MEMORY[0x277CBEC10];
  }

  v12 = objc_alloc_init(MEMORY[0x277CEB388]);
  v13 = [v12 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  complicationsGenerator = self->_complicationsGenerator;
  v15 = [v13 allKeys];
  v16 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:v15];
  v17 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator modularSetsWithWidgetDescriptorsAdditionalData:v10 aggregatedAppLaunchData:v13 bundleIdToCompanionBundleId:v16];

  v5[2](v5, v17, 0);
}

- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = os_transaction_create();
  v7 = [MEMORY[0x277CEB998] sharedInstance];
  v18 = 0;
  v8 = [v7 fetchAccessoryWidgetDescriptorMetadataWithError:&v18];
  v9 = v18;

  v10 = v8;
  if (!v8)
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer fetchComplicationSetsForFaceGalleryItem:completion:];
    }

    v10 = MEMORY[0x277CBEC10];
  }

  v12 = objc_alloc_init(MEMORY[0x277CEB388]);
  v13 = [v12 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  complicationsGenerator = self->_complicationsGenerator;
  v15 = [v13 allKeys];
  v16 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:v15];
  v17 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator landscapeModularSetsWithWidgetDescriptorsAdditionalData:v10 aggregatedAppLaunchData:v13 bundleIdToCompanionBundleId:v16];

  v5[2](v5, v17, 0);
}

- (void)posterBoardDidUpdateConfigurations:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ATXFaceSuggestionServer posterBoardDidUpdateConfigurations:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  [(ATXPosterConfigurationCache *)self->_configurationCache updateConfigurations:v6 completion:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)posterBoardDidUpdateDescriptors:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ATXFaceSuggestionServer posterBoardDidUpdateDescriptors:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  [(ATXPosterDescriptorCache *)self->_descriptorCache updateDescriptors:v6];
  v7[2](v7, 1);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)inputDescriptionForComplicationSuggestionSignal:(id)a3 completion:(id)a4
{
  complicationsGenerator = self->_complicationsGenerator;
  v6 = a4;
  v7 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator inputDescriptionForComplicationSuggestionSignal:a3];
  v6[2](v6, v7, 0);
}

- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)a3
{
  complicationsGenerator = self->_complicationsGenerator;
  v4 = a3;
  v5 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator modelDescription];
  v4[2](v4, v5, 0);
}

- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = os_transaction_create();
  v6 = [(ATXComplicationSuggestionGenerator *)self->_complicationsGenerator inlineSet];
  v5[2](v5, v6, 0);
}

- (void)refreshComplicationsCacheWithCompletion:(id)a3
{
  complicationsGenerator = self->_complicationsGenerator;
  v4 = a3;
  [(ATXComplicationSuggestionGenerator *)complicationsGenerator refreshComplicationCache];
  v4[2](v4, 0);
}

- (void)reloadLockScreenSuggestionsWithActivity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CEB988] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke;
  v10[3] = &unk_2785A1158;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 refreshWithCompletion:v10];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_cold_1();
    }
  }

  if ([*(a1 + 32) didDefer])
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      v9 = "%s: deferred after fetching watch faces";
LABEL_11:
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v10 = objc_opt_new();
  [v10 refreshComplicationCache];

  if ([*(a1 + 32) didDefer])
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      v9 = "%s: deferred after refreshing complication cache";
      goto LABEL_11;
    }

LABEL_12:

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  v11 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v12 = +[ATXPosterDescriptorCache sharedInstance];
  v13 = [v12 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v11 generateAndCacheFacesFromDescriptors:v13];

  if ([*(a1 + 32) didDefer])
  {
    v14 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%s: deferred after refreshing mode face suggestions", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = +[ATXFaceSuggestionServer sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77;
    v17[3] = &unk_2785A1130;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    [v15 regenerateFaceGalleryConfigurationWithCompletion:v17];
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_lock_screen();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: successfully regenerated face gallery configuration", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) setDone];
  v10 = __atxlog_handle_lock_screen();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%s: activity set to DONE", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_2();
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchScoredComplicationDescriptionWithCompletion:(id)a3
{
  complicationsGenerator = self->_complicationsGenerator;
  v5 = a3;
  v6 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator scoredComplicationsDescription];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)fetchMetricsDescriptionWithCompletion:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = [v6 dailyMetricsDescription];
  (*(a3 + 2))(v4, v5, 0);
}

- (void)logPosterEdit:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  [v6 postEditMetricWithEvent:v5];

  v7[2](v7, 0);
}

- (void)logPosterSwitch:(id)a3 completion:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  [v6 postSwitchMetricWithEvent:v5];

  v7[2](v7, 0);
}

- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)a3
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = *MEMORY[0x277CEBDB0];
  v6 = v4;
  if (([v4 BOOLForKey:*MEMORY[0x277CEBDB0]] & 1) == 0)
  {
    [v6 setBool:1 forKey:v5];
  }
}

- (void)logComplicationsSeenInGalleryWithEngagements:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = a4;
  v6 = objc_opt_new();
  v7 = [v6 UUIDString];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [v14 integerValue];

        if (v15 >= 5)
        {
          v15 = 5;
        }

        v16 = objc_opt_new();
        v17 = [v13 extensionBundleIdentifier];
        [v16 setExtensionBundleId:v17];

        [v16 setFamily:{objc_msgSend(v13, "widgetFamily")}];
        v18 = [v13 kind];
        [v16 setKind:v18];

        [v16 setReason:{objc_msgSend(v13, "source")}];
        [v16 setOutcome:0];
        [v16 setNumEngaged:v15];
        [v16 setSessionId:v7];
        [v16 logToCoreAnalytics];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v20[2](v20, 0);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = a4;
  v6 = objc_opt_new();
  v7 = [v6 UUIDString];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = objc_opt_new();
        v16 = [v13 extensionBundleIdentifier];
        [v15 setExtensionBundleId:v16];

        [v15 setSection:{objc_msgSend(v13, "source")}];
        [v15 setSessionId:v7];
        v17 = [v14 isEqualToString:@"viewed"];
        if (v17 & 1) != 0 || ([v14 isEqualToString:@"tapped"])
        {
          v18 = 0;
LABEL_9:
          [v15 setOutcome:v18];
          [v15 setEngaged:v17 ^ 1u];
          goto LABEL_10;
        }

        if ([v14 isEqualToString:@"added"])
        {
          v18 = 1;
          goto LABEL_9;
        }

LABEL_10:
        [v15 logToCoreAnalytics];

        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v21[2](v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)a3
{
  v3 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__96;
  v13[4] = __Block_byref_object_dispose__96;
  v14 = 0;
  v4 = objc_opt_new();
  v5 = [v4 publisherFromStartTime:0.0];
  v6 = [v5 last];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke;
  v10[3] = &unk_2785A1180;
  v7 = v3;
  v11 = v7;
  v12 = v13;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke_96;
  v9[3] = &unk_278597BA8;
  v9[4] = v13;
  v8 = [v6 sinkWithCompletion:v10 receiveInput:v9];

  _Block_object_dispose(v13, 8);
}

void __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      v10 = 136315394;
      v11 = "[ATXFaceSuggestionServer synchronousDateOfLastGalleryAppearanceWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: failed to fetch Biome events with error %@", &v10, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v3 error];
  (*(v6 + 16))(v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 timestamp];
  v7 = v6;

  v8 = [v5 initWithTimeIntervalSinceReferenceDate:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8](v8, v10);
}

- (void)generatorDidUpdateFaceGalleryConfiguration:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v6 = [v4 copy];
  v7 = [(ATXFaceSuggestionServer *)self checkGalleryForPhotosAppProtection:v6];

  v8 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Gallery sent to PosterBoard: %@", &buf, 0xCu);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v10 = getPRSServiceClass_softClass_0;
  v20 = getPRSServiceClass_softClass_0;
  if (!getPRSServiceClass_softClass_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getPRSServiceClass_block_invoke_0;
    v23 = &unk_2785967D8;
    v24 = &v17;
    __getPRSServiceClass_block_invoke_0(&buf);
    v10 = v18[3];
  }

  v11 = v10;
  _Block_object_dispose(&v17, 8);
  v12 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke;
  v15[3] = &unk_27859EE08;
  v16 = v12;
  v13 = v12;
  [v13 pushPosterGalleryUpdate:v7 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: service: %@, successfully pushed face gallery configuration to PosterBoard", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)widgetDescriptorCacheDidUpdateDescriptors:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXFaceSuggestionServer widgetDescriptorCacheDidUpdateDescriptors:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: refreshing complication cache", &v6, 0xCu);
  }

  [(ATXComplicationSuggestionGenerator *)self->_complicationsGenerator refreshComplicationCache];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)descriptorCacheDidUpdateWithDescriptors:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_lock_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXFaceSuggestionServer descriptorCacheDidUpdateWithDescriptors:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: scheduling mode face suggestions cache refresh due to descriptor update", &v6, 0xCu);
  }

  [(_PASSimpleCoalescingTimer *)self->_modeFaceSuggestionRefreshCoalescingTimer runAfterDelaySeconds:1 coalescingBehavior:30.0];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)checkGalleryForPhotosAppProtection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v4 sections];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!-[ATXFaceSuggestionServer isPhotosBasedSection:](self, "isPhotosBasedSection:", v12) || ([v6 bundleIdIsLockedOrHiddenByUserPreference:@"com.apple.mobileslideshow"] & 1) == 0)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v4 setSections:v5];
  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, v0, v1, "%s: rejecting connection %@ without entitlement %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchComplicationSetsForFaceGalleryItem:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]_block_invoke";
  *&v4[12] = 2112;
  *&v4[14] = *(a1 + 32);
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, a2, a3, "%s: service: %@, error pushing face gallery configuration to PosterBoard: %@", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

@end