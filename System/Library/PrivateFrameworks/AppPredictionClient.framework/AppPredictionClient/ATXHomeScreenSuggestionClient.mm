@interface ATXHomeScreenSuggestionClient
+ (id)sharedInstance;
- (ATXHomeScreenSuggestionClient)initWithHomeScreenConfigCache:(id)cache engagementRecordManager:(id)manager widgetDwellTracker:(id)tracker widgetDismissManager:(id)dismissManager uiCacheManager:(id)cacheManager actionPredictionClient:(id)client chronoServicesProvider:(id)provider store:(id)self0 logger:(id)self1;
- (BOOL)_isFallbackSuggestionUsed:(id)used guardedData:(id)data;
- (BOOL)_isWidgetEngaged:(id)engaged kind:(id)kind afterMostRecentProactiveRotationToSuggestionWithIdentifier:(id)identifier guardedData:(id)data;
- (BOOL)_replaceSuggestionIfNeeded:(id)needed fromProactiveWidget:(id)widget guardedData:(id)data;
- (BOOL)hasWidgetBeenSeen:(id)seen;
- (BOOL)hasWidgetBeenTapped:(id)tapped;
- (BOOL)isSuggestionReplacementAvailableForSuggestion:(id)suggestion inLayout:(id)layout;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:(id)data cachedSuggestions:(id)suggestions;
- (id)_knownProactiveWidgetUniqueIdentifiersInPages:(id)pages;
- (id)_loadKnownHomeScreenProactiveWidgetUniqueIds;
- (id)_loadKnownTodayPageProactiveWidgetUniqueIds;
- (id)_newSuggestionLayoutForOldLayout:(id)layout replacedSuggestionId:(id)id shouldSuggestionsBeDisjoint:(BOOL)disjoint usedFallbackIndexSet:(id)set guardedData:(id)data;
- (id)_replaceSuggestionWithId:(id)id fromSuggestionsArray:(id)array suggestionLayoutType:(int64_t)type usedFallbackIndexSet:(id)set shouldSuggestionsBeDisjoint:(BOOL)disjoint guardedData:(id)data;
- (id)homeScreenPrediction;
- (id)unusedFallbackAppSuggestionsForPage:(int64_t)page;
- (int64_t)_layoutTypeOfSuggestion:(id)suggestion inLayout:(id)layout;
- (unint64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)identifier;
- (void)_alertUserIfNeededOfStackChange:(id)change widgetOnTop:(id)top reason:(unint64_t)reason;
- (void)_cancelAndReleaseLayoutUpdateSuppressionTimer:(id)timer;
- (void)_cleanupGuardedData:(id)data;
- (void)_clearRotationSuppressionTimerWithGuardedData:(id)data;
- (void)_dismissSuggestions:(id)suggestions guardedData:(id)data fromSuggestionsWidget:(id)widget dismissFromAllUIs:(BOOL)is duration:(double)duration;
- (void)_layoutUpdateSuppressionTimerFired;
- (void)_notifyObserversAboutLayoutUpdateWithGuardedData:(id)data;
- (void)_notifyObserversAboutSuggestionRefreshWithGuardedData:(id)data;
- (void)_readCachedSuggestionsFromDiskAndUpdateGuardedData:(id)data;
- (void)_recordSuggestedWidgetIfNecessaryInStacks:(id)stacks guardedData:(id)data;
- (void)_refreshInferredEngagementStatusForWidgetSuggestions:(id)suggestions;
- (void)_replaceSuggestionForAllProactiveWidgets:(id)widgets guardedData:(id)data;
- (void)_replaceSuggestionWithId:(id)id shouldSuggestionsBeDisjoint:(BOOL)disjoint guardedData:(id)data;
- (void)_rotationSuppressionTimerFired;
- (void)_startSuppressingRotationForTimeInterval:(double)interval leeway:(double)leeway guardedData:(id)data;
- (void)_startSuppressingSystemInitiatedLayoutUpdateForTimeInterval:(double)interval leeway:(double)leeway guardedData:(id)data;
- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)suggestion;
- (void)_updateGuardedData:(id)data withCachedSuggestions:(id)suggestions updateProactiveWidgetLayoutsOnly:(BOOL)only;
- (void)_updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:(id)data;
- (void)_updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:(id)suggestions;
- (void)_writeDockAppList:(id)list guardedData:(id)data completionHandler:(id)handler;
- (void)_writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier guardedData:(id)data completionHandler:(id)handler;
- (void)_writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels guardedData:(id)data completionHandler:(id)handler;
- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)suggestions completion:(id)completion;
- (void)chronoServiceProvider:(id)provider finishedPrewarmingSuggestions:(id)suggestions;
- (void)chronoServiceProvider:(id)provider reloadDidCompleteForWidget:(id)widget success:(BOOL)success widgetIsReadyForDisplay:(BOOL)display error:(id)error;
- (void)dealloc;
- (void)didFinishExecutingTappedSuggestion:(id)suggestion fromWidget:(id)widget;
- (void)forceDebugRotationForStack:(id)stack extensionBundleId:(id)id kind:(id)kind completion:(id)completion;
- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)handler;
- (void)homeScreenPredictionWithReply:(id)reply;
- (void)layoutForAppPredictionPanel:(id)panel completionHandler:(id)handler;
- (void)layoutForSuggestionsWidget:(id)widget completionHandler:(id)handler;
- (void)loadHomeScreenPageConfigurationsForClientWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)loadHomeScreenPageConfigurationsWithCompletionHandler:(id)handler;
- (void)logContextMenuDismissOnceForSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id;
- (void)logContextMenuNeverShowAgainForSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id;
- (void)logDeviceLock;
- (void)logDidTapSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id;
- (void)logHomeScreenDidDisappearWithReason:(id)reason;
- (void)logHomeScreenPageDidAppear:(unint64_t)appear topWidgetsByStackIdentifier:(id)identifier prediction:(id)prediction;
- (void)logSpecialPageDidAppear:(unint64_t)appear widgetsByStackId:(id)id prediction:(id)prediction;
- (void)logSpecialPageDidDisappear:(unint64_t)disappear;
- (void)logStackDidAppear:(id)appear topWidget:(id)widget prediction:(id)prediction;
- (void)logStackDidDisappear:(id)disappear topWidget:(id)widget prediction:(id)prediction;
- (void)logStackDidTap:(id)tap engagedUrl:(id)url widgetOnTop:(id)top prediction:(id)prediction;
- (void)logStackStatusDidChange:(id)change widgetOnTop:(id)top reason:(unint64_t)reason prediction:(id)prediction;
- (void)logStackVisibilityChanged:(id)changed visibleRect:(CGRect)rect topWidget:(id)widget prediction:(id)prediction;
- (void)logSuggestionsDidAppear:(id)appear widget:(id)widget blendingCacheId:(id)id;
- (void)logSuggestionsDidDisappear:(id)disappear widget:(id)widget blendingCacheId:(id)id;
- (void)logSupplementaryActionInContextMenu:(unint64_t)menu stackId:(id)id widgetOnTop:(id)top prediction:(id)prediction;
- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)suggestion;
- (void)logUserDidAddApp:(id)app page:(id)page;
- (void)logUserDidAddPinnedWidget:(id)widget page:(id)page defaultsComparator:(id)comparator;
- (void)logUserDidAddWidgetToStack:(id)stack stackIdentifier:(id)identifier isSuggestion:(BOOL)suggestion;
- (void)logUserDidChangeStackConfiguration:(id)configuration;
- (void)logUserDidCreateStack:(id)stack page:(id)page isSuggestion:(BOOL)suggestion;
- (void)logUserDidDeletePinnedWidget:(id)widget stackLocation:(unint64_t)location page:(id)page;
- (void)logUserDidDeleteStack:(id)stack stackKind:(unint64_t)kind stackLocation:(unint64_t)location page:(id)page;
- (void)logUserDidDeleteWidgetOnStack:(id)stack stackIdentifier:(id)identifier stackKind:(unint64_t)kind stackLocation:(unint64_t)location;
- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)suggestion;
- (void)logUserDidRemoveApp:(id)app page:(id)page;
- (void)logUserDidSwitchHomeScreenExperience:(unint64_t)experience;
- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)analytics rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items;
- (void)logWidgetDidAppear:(id)appear blendingCacheId:(id)id;
- (void)logWidgetDidAppear:(id)appear stackId:(id)id prediction:(id)prediction;
- (void)logWidgetDidDisappear:(id)disappear blendingCacheId:(id)id;
- (void)logWidgetDidDisappear:(id)disappear stackId:(id)id prediction:(id)prediction;
- (void)logWidgetInsertionDidFailInStack:(id)stack prediction:(id)prediction;
- (void)logWidgetOccluded:(id)occluded blendingCacheId:(id)id;
- (void)logWidgetUnoccluded:(id)unoccluded blendingCacheId:(id)id;
- (void)markFallbackAppSuggestion:(id)suggestion asUnusedForPage:(int64_t)page;
- (void)markFallbackAppSuggestion:(id)suggestion asUsedForPage:(int64_t)page;
- (void)registerObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setIsUserInteractingWithProactiveWidget:(BOOL)widget;
- (void)significantDwellDetectedForWidget:(id)widget date:(id)date;
- (void)startSuppressingRotationForTimeInterval:(double)interval leeway:(double)leeway;
- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)handler;
- (void)writeDockAppList:(id)list completionHandler:(id)handler;
- (void)writeHomeScreenPageConfigurations:(id)configurations completionHandler:(id)handler;
- (void)writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels completionHandler:(id)handler;
@end

@implementation ATXHomeScreenSuggestionClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ATXHomeScreenSuggestionClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_7 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_7, block);
  }

  v2 = sharedInstance__pasExprOnceResult_8;

  return v2;
}

void __47__ATXHomeScreenSuggestionClient_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(*(a1 + 32));
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [v3 initWithHomeScreenConfigCache:v4 engagementRecordManager:v5 widgetDwellTracker:v6 widgetDismissManager:0 uiCacheManager:v7 actionPredictionClient:v8 chronoServicesProvider:v9 store:0 logger:0];
  v11 = sharedInstance__pasExprOnceResult_8;
  sharedInstance__pasExprOnceResult_8 = v10;

  objc_autoreleasePoolPop(v2);
}

- (ATXHomeScreenSuggestionClient)initWithHomeScreenConfigCache:(id)cache engagementRecordManager:(id)manager widgetDwellTracker:(id)tracker widgetDismissManager:(id)dismissManager uiCacheManager:(id)cacheManager actionPredictionClient:(id)client chronoServicesProvider:(id)provider store:(id)self0 logger:(id)self1
{
  cacheCopy = cache;
  managerCopy = manager;
  trackerCopy = tracker;
  dismissManagerCopy = dismissManager;
  cacheManagerCopy = cacheManager;
  clientCopy = client;
  clientCopy2 = client;
  providerCopy = provider;
  storeCopy = store;
  loggerCopy = logger;
  v61.receiver = self;
  v61.super_class = ATXHomeScreenSuggestionClient;
  v18 = [(ATXHomeScreenSuggestionClient *)&v61 init];
  if (v18)
  {
    v45 = cacheCopy;
    v19 = objc_opt_new();
    v20 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    v21 = *(v19 + 8);
    *(v19 + 8) = v20;

    v22 = objc_opt_new();
    v23 = *(v19 + 80);
    *(v19 + 80) = v22;

    objc_storeStrong((v19 + 192), store);
    objc_storeStrong((v19 + 208), dismissManager);
    objc_storeStrong((v19 + 200), logger);
    v24 = objc_opt_new();
    v25 = *(v19 + 128);
    *(v19 + 128) = v24;

    v26 = objc_alloc(MEMORY[0x1E69C5D70]);
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create("com.apple.proactive.ATXHomeScreenSuggestionClient.lock", v27);
    v29 = [v26 initWithGuardedData:v19 serialQueue:v28];
    v30 = *(v18 + 3);
    *(v18 + 3) = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("com.apple.proactive.ATXHomeScreenSuggestionClient.output", v31);
    v33 = *(v18 + 1);
    *(v18 + 1) = v32;

    v34 = objc_alloc(MEMORY[0x1E695E000]);
    v35 = [v34 initWithSuiteName:*MEMORY[0x1E698B030]];
    v36 = *(v18 + 11);
    *(v18 + 11) = v35;

    objc_storeStrong(v18 + 5, cacheManager);
    objc_storeStrong(v18 + 6, cache);
    objc_storeStrong(v18 + 7, manager);
    objc_storeStrong(v18 + 8, tracker);
    [*(v18 + 8) setDelegate:v18];
    *(v18 + 104) = xmmword_1BF6F5660;
    *(v18 + 15) = 0x4014000000000000;
    objc_storeStrong(v18 + 9, clientCopy);
    objc_storeStrong(v18 + 10, provider);
    [*(v18 + 10) setDelegate:v18];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke;
    v59[3] = &unk_1E80C3420;
    v37 = v18;
    v60 = v37;
    v38 = MEMORY[0x1BFB5BA40](v59);
    notify_register_dispatch([@"com.apple.duetexpertd.homeScreenPageConfigCacheUpdate" UTF8String], v37 + 8, *(v18 + 1), v38);
    notify_register_dispatch([@"com.apple.duetexpertd.todayPageConfigCacheUpdate" UTF8String], v37 + 9, *(v18 + 1), v38);
    v39 = MEMORY[0x1E69C5D08];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_3;
    v57[3] = &unk_1E80C0C90;
    v40 = v37;
    v58 = v40;
    [v39 runBlockWhenDeviceIsClassCUnlockedWithQoS:25 block:v57];
    v41 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.proactive.HomeScreenSuggestion.xpc"];
    v42 = v40[2];
    v40[2] = v41;

    [v40[2] setDelegate:v40];
    [v40[2] resume];
    v43 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v43, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: XPC listener resumed", buf, 2u);
    }

    cacheCopy = v45;
  }

  return v18;
}

void __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_3(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: Received class C unlock event from ProactiveSupport", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = v3[3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_90;
  v5[3] = &unk_1E80C3448;
  v6 = v3;
  [v4 runAsyncWithLockAcquired:v5];
}

void __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = v3[19];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = v3[20];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_2_91;
    v34[3] = &unk_1E80C2AF8;
    v35 = v3;
    [v6 _writeHomeScreenPageConfigurations:v5 forClientWithIdentifier:v7 guardedData:v35 completionHandler:v34];
  }

  v8 = v4[21];
  if (v8)
  {
    v9 = *(a1 + 32);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_93;
    v32[3] = &unk_1E80C2AF8;
    v33 = v4;
    [v9 _writeDockAppList:v8 guardedData:v33 completionHandler:v32];
  }

  v10 = v4[22];
  if (v10)
  {
    v11 = v4[23];
    if (v11)
    {
      v12 = *(a1 + 32);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_94;
      v30[3] = &unk_1E80C2AF8;
      v31 = v4;
      [v12 _writeTodayPageStacks:v10 appPredictionPanels:v11 guardedData:v31 completionHandler:v30];
    }
  }

  v13 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: Device is Class C unlocked. Populating in-memory prediction cache with on-disk prediction cache.", &v29, 2u);
  }

  if (!v4[24])
  {
    v14 = objc_opt_new();
    v15 = v4[24];
    v4[24] = v14;

    if (!v4[24])
    {
      v16 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_90_cold_1();
      }
    }
  }

  if (!v4[26] && v4[24])
  {
    v17 = [[ATXWidgetSuggestionDismissManager alloc] initWithStore:v4[24]];
    v18 = v4[26];
    v4[26] = v17;
  }

  if (!v4[25])
  {
    v19 = [ATXHomeScreenEventLogger alloc];
    v20 = *(*(a1 + 32) + 48);
    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = [(ATXHomeScreenEventLogger *)v19 initWithHomeScreenConfigCache:v20 biomeUIStream:v21 PETEventTracker:v22 defaults:*(*(a1 + 32) + 88)];
    v24 = v4[25];
    v4[25] = v23;

    [v4[25] setDelegate:*(a1 + 32)];
  }

  v25 = [*(a1 + 32) _loadKnownHomeScreenProactiveWidgetUniqueIds];
  v26 = v4[5];
  v4[5] = v25;

  v27 = [*(a1 + 32) _loadKnownTodayPageProactiveWidgetUniqueIds];
  v28 = v4[7];
  v4[7] = v27;

  [*(a1 + 32) _readCachedSuggestionsFromDiskAndUpdateGuardedData:v4];
  +[ATXDemoStackAndWidgetProvider startYourEngines];
}

void __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_2_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_2_91_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: successfully wrote staged home screen page configurations post-class C unlock", v10, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = 0;
}

void __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_93(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_93_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: successfully wrote staged dock app list post-class C unlock", v8, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  *(v6 + 168) = 0;
}

void __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __201__ATXHomeScreenSuggestionClient_initWithHomeScreenConfigCache_engagementRecordManager_widgetDwellTracker_widgetDismissManager_uiCacheManager_actionPredictionClient_chronoServicesProvider_store_logger___block_invoke_94_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: successfully wrote staged today page stacks and panels post-class C unlock", v10, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 176);
  *(v6 + 176) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 184);
  *(v8 + 184) = 0;
}

- (void)dealloc
{
  v3 = self->_notifyObservers[0];
  if (v3)
  {
    notify_cancel(v3);
  }

  v4 = self->_notifyObservers[1];
  if (v4)
  {
    notify_cancel(v4);
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  v5.receiver = self;
  v5.super_class = ATXHomeScreenSuggestionClient;
  [(ATXHomeScreenSuggestionClient *)&v5 dealloc];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ATXHomeScreenSuggestionClient_registerObserver___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXHomeScreenSuggestionClient_removeObserver___block_invoke;
  v7[3] = &unk_1E80C3470;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

void __48__ATXHomeScreenSuggestionClient_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3[1] removeObject:*(a1 + 32)];
  if (![v3[1] count])
  {
    [*(a1 + 40) _cleanupGuardedData:v3];
  }
}

- (void)startSuppressingRotationForTimeInterval:(double)interval leeway:(double)leeway
{
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__ATXHomeScreenSuggestionClient_startSuppressingRotationForTimeInterval_leeway___block_invoke;
  v5[3] = &unk_1E80C3498;
  v5[4] = self;
  *&v5[5] = interval;
  *&v5[6] = leeway;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v5];
}

- (void)_startSuppressingRotationForTimeInterval:(double)interval leeway:(double)leeway guardedData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v9 = *MEMORY[0x1E698B060];
    keyExistsAndHasValidFormat[0] = 0;
    if (CFPreferencesGetAppBooleanValue(v9, *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
    {
      leeway = 0.01;
      interval = 1.0;
    }
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 134218240;
    intervalCopy = interval;
    v19 = 2048;
    leewayCopy = leeway;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: start suppressing rotation for %f seconds with %f leeway seconds", keyExistsAndHasValidFormat, 0x16u);
  }

  v11 = dataCopy[2];
  if (!v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_outputQueue);
    v13 = dataCopy[2];
    dataCopy[2] = v12;

    objc_initWeak(keyExistsAndHasValidFormat, self);
    v14 = dataCopy[2];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __93__ATXHomeScreenSuggestionClient__startSuppressingRotationForTimeInterval_leeway_guardedData___block_invoke;
    handler[3] = &unk_1E80C10D8;
    objc_copyWeak(&v16, keyExistsAndHasValidFormat);
    dispatch_source_set_event_handler(v14, handler);
    objc_destroyWeak(&v16);
    objc_destroyWeak(keyExistsAndHasValidFormat);
    v11 = dataCopy[2];
  }

  dispatch_source_set_timer(v11, [MEMORY[0x1E69C5D10] dispatchTimeWithSecondsFromNow:interval], 0xFFFFFFFFFFFFFFFFLL, (leeway * 1000000000.0));
  dispatch_activate(dataCopy[2]);
}

void __93__ATXHomeScreenSuggestionClient__startSuppressingRotationForTimeInterval_leeway_guardedData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rotationSuppressionTimerFired];
}

- (void)_rotationSuppressionTimerFired
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__ATXHomeScreenSuggestionClient__rotationSuppressionTimerFired__block_invoke;
  v3[3] = &unk_1E80C3448;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __63__ATXHomeScreenSuggestionClient__rotationSuppressionTimerFired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _clearRotationSuppressionTimerWithGuardedData:v3];
  v4 = v3[9];
  v5 = __atxlog_handle_home_screen();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: rotation suppression lifted, updating states with suppressed suggestion update.", buf, 2u);
    }

    v7 = v3[9];
    v3[9] = 0;
    v5 = v7;

    [*(a1 + 32) _updateGuardedData:v3 withCachedSuggestions:v5 updateProactiveWidgetLayoutsOnly:0];
  }

  else if (v6)
  {
    *v8 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: rotation suppression lifted, no suppressed suggestion.", v8, 2u);
  }
}

- (void)_startSuppressingSystemInitiatedLayoutUpdateForTimeInterval:(double)interval leeway:(double)leeway guardedData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v9 = *MEMORY[0x1E698B060];
    keyExistsAndHasValidFormat[0] = 0;
    if (CFPreferencesGetAppBooleanValue(v9, *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
    {
      leeway = 0.01;
      interval = 1.0;
    }
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 134218240;
    intervalCopy = interval;
    v19 = 2048;
    leewayCopy = leeway;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: start suppressing layout update for %f seconds with %f leeway seconds", keyExistsAndHasValidFormat, 0x16u);
  }

  v11 = dataCopy[3];
  if (!v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_outputQueue);
    v13 = dataCopy[3];
    dataCopy[3] = v12;

    objc_initWeak(keyExistsAndHasValidFormat, self);
    v14 = dataCopy[3];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __112__ATXHomeScreenSuggestionClient__startSuppressingSystemInitiatedLayoutUpdateForTimeInterval_leeway_guardedData___block_invoke;
    handler[3] = &unk_1E80C10D8;
    objc_copyWeak(&v16, keyExistsAndHasValidFormat);
    dispatch_source_set_event_handler(v14, handler);
    objc_destroyWeak(&v16);
    objc_destroyWeak(keyExistsAndHasValidFormat);
    v11 = dataCopy[3];
  }

  dispatch_source_set_timer(v11, [MEMORY[0x1E69C5D10] dispatchTimeWithSecondsFromNow:interval], 0xFFFFFFFFFFFFFFFFLL, (leeway * 1000000000.0));
  dispatch_activate(dataCopy[3]);
}

void __112__ATXHomeScreenSuggestionClient__startSuppressingSystemInitiatedLayoutUpdateForTimeInterval_leeway_guardedData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutUpdateSuppressionTimerFired];
}

- (void)_layoutUpdateSuppressionTimerFired
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__ATXHomeScreenSuggestionClient__layoutUpdateSuppressionTimerFired__block_invoke;
  v3[3] = &unk_1E80C3448;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __67__ATXHomeScreenSuggestionClient__layoutUpdateSuppressionTimerFired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _cancelAndReleaseLayoutUpdateSuppressionTimer:v3];
  v4 = v3[9];
  v5 = __atxlog_handle_home_screen();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: layout update suppression lifted, updating states with suppressed suggestion update.", buf, 2u);
    }

    [*(a1 + 32) _updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:v3];
    [*(a1 + 32) _updateGuardedData:v3 withCachedSuggestions:v3[9] updateProactiveWidgetLayoutsOnly:0];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: layout update suppression lifted, no suppressed suggestion.", v7, 2u);
    }
  }
}

- (void)_cancelAndReleaseLayoutUpdateSuppressionTimer:(id)timer
{
  v3 = *(timer + 3);
  if (v3)
  {
    timerCopy = timer;
    dispatch_source_cancel(v3);
    v6 = *(timer + 3);
    *(timer + 3) = 0;
  }
}

- (id)_loadKnownHomeScreenProactiveWidgetUniqueIds
{
  homeScreenConfigCache = self->_homeScreenConfigCache;
  v10 = 0;
  v4 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache loadHomeScreenPageConfigurationsWithError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenSuggestionClient _loadKnownHomeScreenProactiveWidgetUniqueIds];
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    v7 = objc_opt_new();
    goto LABEL_8;
  }

  v7 = [(ATXHomeScreenSuggestionClient *)self _knownProactiveWidgetUniqueIdentifiersInPages:v4];
LABEL_8:
  v8 = v7;

  return v8;
}

- (id)_loadKnownTodayPageProactiveWidgetUniqueIds
{
  v11[1] = *MEMORY[0x1E69E9840];
  homeScreenConfigCache = self->_homeScreenConfigCache;
  v10 = 0;
  v4 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache loadTodayStacksAndPanelsAsHomeScreenPageWithError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenSuggestionClient _loadKnownTodayPageProactiveWidgetUniqueIds];
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    v7 = objc_opt_new();
    goto LABEL_8;
  }

  v11[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(ATXHomeScreenSuggestionClient *)self _knownProactiveWidgetUniqueIdentifiersInPages:v8];

LABEL_8:

  return v7;
}

- (id)_knownProactiveWidgetUniqueIdentifiersInPages:(id)pages
{
  v58 = *MEMORY[0x1E69E9840];
  pagesCopy = pages;
  v4 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = pagesCopy;
  v29 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v29)
  {
    v28 = *v49;
    v5 = *MEMORY[0x1E698AFC0];
    do
    {
      v6 = 0;
      do
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * v6);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v30 = v7;
        v31 = v6;
        stacks = [v7 stacks];
        v34 = [stacks countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v34)
        {
          v33 = *v45;
          do
          {
            v8 = 0;
            do
            {
              if (*v45 != v33)
              {
                objc_enumerationMutation(stacks);
              }

              v35 = v8;
              v9 = *(*(&v44 + 1) + 8 * v8);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              widgets = [v9 widgets];
              v11 = [widgets countByEnumeratingWithState:&v40 objects:v55 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v41;
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v41 != v13)
                    {
                      objc_enumerationMutation(widgets);
                    }

                    v15 = *(*(&v40 + 1) + 8 * i);
                    extensionBundleId = [v15 extensionBundleId];
                    v17 = [extensionBundleId isEqualToString:v5];

                    if (v17)
                    {
                      widgetUniqueId = [v15 widgetUniqueId];

                      if (widgetUniqueId)
                      {
                        widgetUniqueId2 = [v15 widgetUniqueId];
                        [v4 addObject:widgetUniqueId2];
                      }

                      else
                      {
                        widgetUniqueId2 = __atxlog_handle_home_screen();
                        if (os_log_type_enabled(widgetUniqueId2, OS_LOG_TYPE_FAULT))
                        {
                          [(ATXHomeScreenSuggestionClient *)v53 _knownProactiveWidgetUniqueIdentifiersInPages:v9, &v54, widgetUniqueId2];
                        }
                      }
                    }
                  }

                  v12 = [widgets countByEnumeratingWithState:&v40 objects:v55 count:16];
                }

                while (v12);
              }

              v8 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [stacks countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v34);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        panels = [v30 panels];
        v21 = [panels countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(panels);
              }

              identifier = [*(*(&v36 + 1) + 8 * j) identifier];
              [v4 addObject:identifier];
            }

            v22 = [panels countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v22);
        }

        v6 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v29);
  }

  return v4;
}

- (void)_readCachedSuggestionsFromDiskAndUpdateGuardedData:(id)data
{
  dataCopy = data;
  v5 = [(ATXUICacheManager *)self->_uiCacheManager cachedLayoutForConsumerSubType:34 expectedClass:objc_opt_class()];
  if (v5)
  {
    [(ATXHomeScreenSuggestionClient *)self _updateGuardedData:dataCopy withCachedSuggestions:v5 updateProactiveWidgetLayoutsOnly:1];
    [(ATXChronoServicesProvider *)self->_chronoServicesProvider resetToPrewarmWidgetsInSuggestions:v5];
  }

  else
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: Unable to read cached suggestions, set prediction data as empty.", v18, 2u);
    }

    v7 = dataCopy[17];
    dataCopy[17] = 0;

    v8 = dataCopy[11];
    dataCopy[11] = 0;

    v9 = objc_opt_new();
    v10 = dataCopy[14];
    dataCopy[14] = v9;

    v11 = objc_opt_new();
    v12 = dataCopy[12];
    dataCopy[12] = v11;

    v13 = objc_opt_new();
    v14 = dataCopy[13];
    dataCopy[13] = v13;

    v15 = objc_opt_new();
    v16 = dataCopy[15];
    dataCopy[15] = v15;

    v17 = dataCopy[18];
    dataCopy[18] = 0;
  }
}

- (void)_updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:(id)data
{
  dataCopy = data;
  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:dataCopy])
  {
    if (*(dataCopy + 64) == 1)
    {
      v5 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updating known today page widget unique ids", buf, 2u);
      }

      _loadKnownTodayPageProactiveWidgetUniqueIds = [(ATXHomeScreenSuggestionClient *)self _loadKnownTodayPageProactiveWidgetUniqueIds];
      v7 = dataCopy[7];
      dataCopy[7] = _loadKnownTodayPageProactiveWidgetUniqueIds;

      *(dataCopy + 64) = 0;
    }

    if (*(dataCopy + 48) == 1)
    {
      v8 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updating known Home Screen widget unique ids", v11, 2u);
      }

      _loadKnownHomeScreenProactiveWidgetUniqueIds = [(ATXHomeScreenSuggestionClient *)self _loadKnownHomeScreenProactiveWidgetUniqueIds];
      v10 = dataCopy[5];
      dataCopy[5] = _loadKnownHomeScreenProactiveWidgetUniqueIds;

      *(dataCopy + 48) = 0;
    }
  }
}

- (id)_computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:(id)data cachedSuggestions:(id)suggestions
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  suggestionsCopy = suggestions;
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  allKeys = [dataCopy[12] allKeys];
  v9 = allKeys;
  v10 = MEMORY[0x1E695E0F0];
  if (allKeys)
  {
    v11 = allKeys;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v7 initWithArray:v11];

  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  v34 = suggestionsCopy;
  cachedSuggestionWidgetLayouts = [suggestionsCopy cachedSuggestionWidgetLayouts];
  allKeys2 = [cachedSuggestionWidgetLayouts allKeys];
  v16 = allKeys2;
  if (allKeys2)
  {
    v17 = allKeys2;
  }

  else
  {
    v17 = v10;
  }

  v18 = [v13 initWithArray:v17];

  v33 = v18;
  [v12 minusSet:v18];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __115__ATXHomeScreenSuggestionClient__computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData_cachedSuggestions___block_invoke;
  v39[3] = &unk_1E80C34C0;
  v19 = dataCopy;
  v40 = v19;
  v20 = [v12 objectsPassingTest:v39];
  v21 = [v19[11] mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_opt_new();
  }

  v24 = v23;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v20;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * i);
        v31 = [dataCopy[12] objectForKeyedSubscript:v30];
        [v24 setObject:v31 forKeyedSubscript:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v27);
  }

  return v24;
}

uint64_t __115__ATXHomeScreenSuggestionClient__computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData_cachedSuggestions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:a2];
  v3 = [v2 isNPlusOne];

  return v3;
}

- (void)_updateGuardedData:(id)data withCachedSuggestions:(id)suggestions updateProactiveWidgetLayoutsOnly:(BOOL)only
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  suggestionsCopy = suggestions;
  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:dataCopy]&& !*(dataCopy + 2))
  {
    v11 = *(dataCopy + 9);
    *(dataCopy + 9) = 0;
  }

  else
  {
    v10 = suggestionsCopy;
    v11 = *(dataCopy + 9);
    *(dataCopy + 9) = v10;
  }

  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:dataCopy])
  {
    v12 = [(ATXHomeScreenSuggestionClient *)self _computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:dataCopy cachedSuggestions:suggestionsCopy];
    v13 = *(dataCopy + 11);
    *(dataCopy + 11) = v12;

    if ([*(dataCopy + 11) count])
    {
      v14 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [*(dataCopy + 11) allKeys];
        *buf = 138412290;
        v35 = allKeys;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: keeping around previously-removed suggested suggestion widget layouts: %@", buf, 0xCu);
      }

      [(ATXHomeScreenSuggestionClient *)self _clearRotationSuppressionTimerWithGuardedData:dataCopy];
    }

    cachedSuggestionWidgetLayouts = [suggestionsCopy cachedSuggestionWidgetLayouts];
    v17 = *(dataCopy + 12);
    *(dataCopy + 12) = cachedSuggestionWidgetLayouts;

    cachedAppPredictionPanelLayouts = [suggestionsCopy cachedAppPredictionPanelLayouts];
    v19 = *(dataCopy + 13);
    *(dataCopy + 13) = cachedAppPredictionPanelLayouts;

    fallbackSuggestions = [suggestionsCopy fallbackSuggestions];
    v21 = [fallbackSuggestions mutableCopy];
    v22 = *(dataCopy + 15);
    *(dataCopy + 15) = v21;

    v23 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updated Proactive widget layouts", buf, 2u);
    }

    [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutLayoutUpdateWithGuardedData:dataCopy];
    if (!only)
    {
      if (*(dataCopy + 2) || [(NSUserDefaults *)self->_atxDefaults BOOLForKey:@"ATXStopAllStackRotation"])
      {
        v24 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: not pushing suggestions to UI clients due to rotation suppression", buf, 2u);
        }
      }

      else
      {
        if ([*(dataCopy + 14) count])
        {
          [(ATXHomeScreenSuggestionClient *)self _refreshInferredEngagementStatusForWidgetSuggestions:dataCopy];
        }

        uuid = [suggestionsCopy uuid];
        uUIDString = [uuid UUIDString];
        v27 = *(dataCopy + 17);
        *(dataCopy + 17) = uUIDString;

        v28 = [ATXHomeScreenStackSuggestion stackSuggestionsFromCachedSuggestions:suggestionsCopy];
        v29 = *(dataCopy + 14);
        *(dataCopy + 14) = v28;

        v30 = *(dataCopy + 18);
        *(dataCopy + 18) = 0;

        v31 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updated stack suggestions", buf, 2u);
        }

        [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutSuggestionRefreshWithGuardedData:dataCopy];
        [(ATXHomeScreenSuggestionClient *)self _handleStackSuggestionDidUpdate:dataCopy];
        outputQueue = self->_outputQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __107__ATXHomeScreenSuggestionClient__updateGuardedData_withCachedSuggestions_updateProactiveWidgetLayoutsOnly___block_invoke;
        block[3] = &unk_1E80C0C90;
        block[4] = self;
        dispatch_async(outputQueue, block);
      }
    }
  }
}

void __107__ATXHomeScreenSuggestionClient__updateGuardedData_withCachedSuggestions_updateProactiveWidgetLayoutsOnly___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__ATXHomeScreenSuggestionClient__updateGuardedData_withCachedSuggestions_updateProactiveWidgetLayoutsOnly___block_invoke_2;
  block[3] = &unk_1E80C0C90;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __107__ATXHomeScreenSuggestionClient__updateGuardedData_withCachedSuggestions_updateProactiveWidgetLayoutsOnly___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  *(a2 + 88) = 0;
}

- (void)_refreshInferredEngagementStatusForWidgetSuggestions:(id)suggestions
{
  v71 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  selfCopy = self;
  v4 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:4 queryOptions:0];
  v54 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "RAS: >>>>>>>>>> checking currently engaged executables for removing engagement <<<<<<<<<<", buf, 2u);
  }

  v47 = v4;
  if ([v4 count])
  {
    obj = objc_opt_new();
    v49 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-300.0];
    v48 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-6000.0];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v60;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v60 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v59 + 1) + 8 * i);
          if ([v11 type] == 3)
          {
            object = [v11 object];
            suggestionIdentifier = [object suggestionIdentifier];
            widgetBundleIdentifier = [object widgetBundleIdentifier];
            widgetKind = [object widgetKind];
            v16 = [(ATXHomeScreenSuggestionClient *)selfCopy _isWidgetEngaged:widgetBundleIdentifier kind:widgetKind afterMostRecentProactiveRotationToSuggestionWithIdentifier:suggestionIdentifier guardedData:suggestionsCopy];

            if (!v16)
            {
              v17 = __atxlog_handle_home_screen();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                confidenceLevel = [object confidenceLevel];
                widgetBundleIdentifier2 = [object widgetBundleIdentifier];
                *buf = 138543874;
                v65 = suggestionIdentifier;
                v66 = 2050;
                v67 = confidenceLevel;
                v68 = 2112;
                v69 = widgetBundleIdentifier2;
                _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "RAS:     [TRYING TO REMOVE ENGAGEMENT] infoSuggestionId %{public}@, confidence %{public}ld, widgetExtBundleId %@", buf, 0x20u);
              }

              confidenceLevel2 = [object confidenceLevel];
              if (confidenceLevel2 >= [obj minInfoConfidenceLevelForBlendingConfidenceCategory:3])
              {
                v21 = v49;
              }

              else
              {
                v21 = v48;
              }

              [(ATXEngagementRecordManager *)selfCopy->_engagementRecordManager removeEngagementForExecutableIdentifier:v11 recordType:4 abortingRemovalIfEngagementDateIsLaterThanDate:v21];
            }

            [v54 addObject:suggestionIdentifier];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v8);
    }
  }

  v22 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "RAS: ========== checking current stack suggestions for adding engagement ==========", buf, 2u);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obja = [suggestionsCopy[14] allValues];
  v23 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v56;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v55 + 1) + 8 * j);
        topWidgetProactiveSuggestion = [v27 topWidgetProactiveSuggestion];

        if (topWidgetProactiveSuggestion)
        {
          topWidgetProactiveSuggestion2 = [v27 topWidgetProactiveSuggestion];
          executableSpecification = [topWidgetProactiveSuggestion2 executableSpecification];
          executableIdentifier = [executableSpecification executableIdentifier];

          if ([v54 containsObject:executableIdentifier])
          {
            v32 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v65 = executableIdentifier;
              _os_log_impl(&dword_1BF549000, v32, OS_LOG_TYPE_DEFAULT, "RAS:     Skipping infoSuggestionId %{public}@ becaues it was already processed", buf, 0xCu);
            }
          }

          else
          {
            topWidget = [v27 topWidget];
            extensionBundleId = [topWidget extensionBundleId];
            topWidget2 = [v27 topWidget];
            widgetKind2 = [topWidget2 widgetKind];
            v37 = [(ATXHomeScreenSuggestionClient *)selfCopy _isWidgetEngaged:extensionBundleId kind:widgetKind2 afterMostRecentProactiveRotationToSuggestionWithIdentifier:executableIdentifier guardedData:suggestionsCopy];

            if (v37)
            {
              engagementRecordManager = selfCopy->_engagementRecordManager;
              topWidgetProactiveSuggestion3 = [v27 topWidgetProactiveSuggestion];
              LODWORD(engagementRecordManager) = [(ATXEngagementRecordManager *)engagementRecordManager hasReferenceForSuggestion:topWidgetProactiveSuggestion3];

              topWidgetProactiveSuggestion4 = __atxlog_handle_home_screen();
              v41 = os_log_type_enabled(topWidgetProactiveSuggestion4, OS_LOG_TYPE_DEFAULT);
              if (engagementRecordManager)
              {
                if (v41)
                {
                  topWidget3 = [v27 topWidget];
                  extensionBundleId2 = [topWidget3 extensionBundleId];
                  *buf = 138543618;
                  v65 = executableIdentifier;
                  v66 = 2112;
                  v67 = extensionBundleId2;
                  _os_log_impl(&dword_1BF549000, topWidgetProactiveSuggestion4, OS_LOG_TYPE_DEFAULT, "RAS:     [ADDING ENGAGEMENT] infoSuggestionId %{public}@, widgetExtBundleId %@", buf, 0x16u);
                }

                v44 = selfCopy->_engagementRecordManager;
                topWidgetProactiveSuggestion4 = [v27 topWidgetProactiveSuggestion];
                [(ATXEngagementRecordManager *)v44 addEngagedSuggestion:topWidgetProactiveSuggestion4 engagementRecordType:4];
              }

              else if (v41)
              {
                topWidget4 = [v27 topWidget];
                extensionBundleId3 = [topWidget4 extensionBundleId];
                *buf = 138543618;
                v65 = executableIdentifier;
                v66 = 2112;
                v67 = extensionBundleId3;
                _os_log_impl(&dword_1BF549000, topWidgetProactiveSuggestion4, OS_LOG_TYPE_DEFAULT, "RAS:     Skipping infoSuggestionId %{public}@ because ERM doesn't contain a reference, widgetExtBundleId %@", buf, 0x16u);
              }

              [v54 addObject:executableIdentifier];
            }
          }
        }
      }

      v24 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v24);
  }
}

- (BOOL)_isWidgetEngaged:(id)engaged kind:(id)kind afterMostRecentProactiveRotationToSuggestionWithIdentifier:(id)identifier guardedData:(id)data
{
  v50 = *MEMORY[0x1E69E9840];
  engagedCopy = engaged;
  kindCopy = kind;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = [dataCopy[24] mostRecentRotationRecordForSuggestionIdentifier:identifierCopy];
  rotationDate = [v13 rotationDate];

  if (rotationDate)
  {
    v15 = [dataCopy[24] mostRecentEngagementOfWidget:engagedCopy kind:kindCopy ofType:1];
    v16 = [dataCopy[24] mostRecentEngagementOfWidget:engagedCopy kind:kindCopy ofType:2];
    date = [v16 date];
    if (date && (v18 = date, [v15 date], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
    {
      date2 = [v16 date];
      date3 = [v15 date];
      date5 = [date2 laterDate:date3];

      if (!date5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      date4 = [v16 date];

      if (date4)
      {
        v24 = v16;
      }

      else
      {
        date5 = [v15 date];

        if (!date5)
        {
          goto LABEL_17;
        }

        v24 = v15;
      }

      date5 = [v24 date];
      if (!date5)
      {
        goto LABEL_17;
      }
    }

    rotationDate2 = [v13 rotationDate];
    v27 = [date5 earlierDate:rotationDate2];

    if (v27 != date5)
    {
      v28 = [dataCopy[24] mostRecentTimelineUpdateDateOfWidget:engagedCopy kind:kindCopy];
      v29 = v28;
      if (v28)
      {
        distantPast = v28;
      }

      else
      {
        distantPast = [MEMORY[0x1E695DF00] distantPast];
      }

      v31 = distantPast;

      v33 = [date5 laterDate:v31];

      log = __atxlog_handle_home_screen();
      v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      v35 = v33 == v31;
      v25 = v33 != v31;
      if (v35)
      {
        if (v34)
        {
          rotationDate3 = [v13 rotationDate];
          *buf = 138413314;
          v41 = engagedCopy;
          v42 = 2114;
          v43 = identifierCopy;
          v44 = 2114;
          v45 = rotationDate3;
          v46 = 2114;
          v47 = date5;
          v48 = 2114;
          v49 = v31;
          v36 = "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (mostRecentRotation %{public}@, mostRecentEngagement %{public}@, mostRecentTimelineUpdate %{public}@)";
          goto LABEL_26;
        }
      }

      else if (v34)
      {
        rotationDate3 = [v13 rotationDate];
        *buf = 138413314;
        v41 = engagedCopy;
        v42 = 2114;
        v43 = identifierCopy;
        v44 = 2114;
        v45 = rotationDate3;
        v46 = 2114;
        v47 = date5;
        v48 = 2114;
        v49 = v31;
        v36 = "RAS:     YES <= _isWidgetEngaged: %@, suggestionId: %{public}@ (mostRecentRotation %{public}@, mostRecentEngagement %{public}@, mostRecentTimelineUpdate %{public}@)";
LABEL_26:
        _os_log_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEFAULT, v36, buf, 0x34u);
      }

LABEL_28:
      goto LABEL_29;
    }

LABEL_17:
    v31 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      rotationDate4 = [v13 rotationDate];
      *buf = 138413058;
      v41 = engagedCopy;
      v42 = 2114;
      v43 = identifierCopy;
      v44 = 2114;
      v45 = rotationDate4;
      v46 = 2114;
      v47 = date5;
      _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (mostRecentRotation %{public}@, mostRecentEngagement %{public}@)", buf, 0x2Au);
    }

    v25 = 0;
    goto LABEL_28;
  }

  v15 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = engagedCopy;
    v42 = 2114;
    v43 = identifierCopy;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (nil suggestion rotation date)", buf, 0x16u);
  }

  v25 = 0;
LABEL_29:

  return v25;
}

- (void)_notifyObserversAboutSuggestionRefreshWithGuardedData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(data + 1);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        outputQueue = self->_outputQueue;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __87__ATXHomeScreenSuggestionClient__notifyObserversAboutSuggestionRefreshWithGuardedData___block_invoke;
        v11[3] = &unk_1E80C0958;
        v11[4] = v9;
        v11[5] = self;
        dispatch_async(outputQueue, v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

uint64_t __87__ATXHomeScreenSuggestionClient__notifyObserversAboutSuggestionRefreshWithGuardedData___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 suggestionClientDidRefreshSuggestions:v4];
  }

  return result;
}

- (void)_notifyObserversAboutLayoutUpdateWithGuardedData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(data + 1);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        outputQueue = self->_outputQueue;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __82__ATXHomeScreenSuggestionClient__notifyObserversAboutLayoutUpdateWithGuardedData___block_invoke;
        v11[3] = &unk_1E80C0958;
        v11[4] = v9;
        v11[5] = self;
        dispatch_async(outputQueue, v11);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

uint64_t __82__ATXHomeScreenSuggestionClient__notifyObserversAboutLayoutUpdateWithGuardedData___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 suggestionClientDidRefreshProactiveWidgetLayouts:v4];
  }

  return result;
}

- (void)_cleanupGuardedData:(id)data
{
  dataCopy = data;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: cleaning up guarded data", v14, 2u);
  }

  v6 = dataCopy[11];
  dataCopy[11] = 0;

  v7 = dataCopy[17];
  dataCopy[17] = 0;

  v8 = dataCopy[12];
  dataCopy[12] = 0;

  v9 = dataCopy[13];
  dataCopy[13] = 0;

  v10 = dataCopy[14];
  dataCopy[14] = 0;

  v11 = dataCopy[15];
  dataCopy[15] = 0;

  v12 = dataCopy[18];
  dataCopy[18] = 0;

  v13 = dataCopy[9];
  dataCopy[9] = 0;

  [(ATXHomeScreenSuggestionClient *)self _clearRotationSuppressionTimerWithGuardedData:dataCopy];
}

- (void)_clearRotationSuppressionTimerWithGuardedData:(id)data
{
  v3 = *(data + 2);
  if (v3)
  {
    dataCopy = data;
    dispatch_source_cancel(v3);
    v6 = *(data + 2);
    *(data + 2) = 0;
  }
}

void __65__ATXHomeScreenSuggestionClient__handleStackSuggestionDidUpdate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = [v6 topWidgetInfoSuggestion];

  if (v3)
  {
    v4 = [MEMORY[0x1E69C5B90] sharedInstance];
    v5 = [v6 topWidgetInfoSuggestion];
    [v4 stackDidRotateProactivelyForInfoSuggestion:v5 isStalenessRotation:{objc_msgSend(v6, "isLowConfidenceStackRotationForStaleStack")}];
  }
}

- (void)_alertUserIfNeededOfStackChange:(id)change widgetOnTop:(id)top reason:(unint64_t)reason
{
  v54 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  topCopy = top;
  if ([(NSUserDefaults *)self->_atxDefaults BOOLForKey:@"ATXHomeScreenStackChangeAlert"])
  {
    v10 = reason > 9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ((1 << reason) & 0x20C) != 0)
  {
    v36 = topCopy;
    [(ATXHomeScreenConfigCache *)self->_homeScreenConfigCache loadHomeScreenAndTodayPageConfigurationsWithError:0];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v34 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (!v34)
    {
      goto LABEL_32;
    }

    v33 = *v43;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v12;
        v13 = *(*(&v42 + 1) + 8 * v12);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        stacks = [v13 stacks];
        v14 = [stacks countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v39;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(stacks);
              }

              v18 = *(*(&v38 + 1) + 8 * i);
              identifier = [v18 identifier];
              v20 = [identifier isEqualToString:changeCopy];

              if (v20)
              {
                v21 = objc_opt_new();
                if (reason == 9)
                {
                  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
                  extensionBundleId = [v36 extensionBundleId];
                  v24 = [v25 initWithFormat:@"%@ (forced debug rotation)", extensionBundleId];
LABEL_23:
                  v26 = v24;
                  [v21 setObject:v24 forKeyedSubscript:@"widget"];
                }

                else
                {
                  if (reason == 3)
                  {
                    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                    extensionBundleId = [v36 extensionBundleId];
                    v24 = [v22 initWithFormat:@"%@ (due to suggestion expiry)", extensionBundleId];
                    goto LABEL_23;
                  }

                  extensionBundleId = [v36 extensionBundleId];
                  [v21 setObject:extensionBundleId forKeyedSubscript:@"widget"];
                }

                v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "pageIndex")}];
                [v21 setObject:v27 forKeyedSubscript:@"pageNumber"];

                defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
                [defaultCenter postNotificationName:@"com.apple.duetexpertd.homeScreenStackChange" object:0 userInfo:v21];

                v29 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [v18 identifier];
                  pageIndex = [v13 pageIndex];
                  *buf = 136315650;
                  v47 = "[ATXHomeScreenSuggestionClient _alertUserIfNeededOfStackChange:widgetOnTop:reason:]";
                  v48 = 2112;
                  v49 = identifier2;
                  v50 = 2048;
                  v51 = pageIndex;
                  _os_log_impl(&dword_1BF549000, v29, OS_LOG_TYPE_DEFAULT, "%s: sent notification about stackID: %@ on page: %lu", buf, 0x20u);
                }

                continue;
              }
            }

            v15 = [stacks countByEnumeratingWithState:&v38 objects:v52 count:16];
          }

          while (v15);
        }

        v12 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (!v34)
      {
LABEL_32:

        topCopy = v36;
        break;
      }
    }
  }
}

- (void)layoutForSuggestionsWidget:(id)widget completionHandler:(id)handler
{
  widgetCopy = widget;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__ATXHomeScreenSuggestionClient_layoutForSuggestionsWidget_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = widgetCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __78__ATXHomeScreenSuggestionClient_layoutForSuggestionsWidget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(v3 + 12);
  if (!v4)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: layoutForSuggestionWidgetWithIdentifier fallback to read from DisplayCache", &v23, 2u);
    }

    [*(a1 + 32) _readCachedSuggestionsFromDiskAndUpdateGuardedData:v3];
    v4 = *(v3 + 12);
  }

  v6 = (a1 + 40);
  v7 = [*(a1 + 40) widgetUniqueId];
  v8 = [v4 objectForKeyedSubscript:v7];
  v9 = [v8 copy];

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*v6 widgetUniqueId];
    v23 = 138543362;
    v24 = v11;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: using previous suggested SG widget layout: %{public}@", &v23, 0xCu);
  }

  v12 = *(v3 + 11);
  v13 = [*v6 widgetUniqueId];
  v14 = [v12 objectForKeyedSubscript:v13];
  v9 = [v14 copy];

  if (v9)
  {
    goto LABEL_9;
  }

  v15 = [*v6 widgetUniqueId];
  if (!v15)
  {
LABEL_16:
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v16 = v15;
  v17 = *(v3 + 5);
  v18 = [*v6 widgetUniqueId];
  if ([v17 containsObject:v18])
  {

LABEL_14:
    goto LABEL_16;
  }

  v19 = *(v3 + 7);
  v20 = [*v6 widgetUniqueId];
  LODWORD(v19) = [v19 containsObject:v20];

  if (v19)
  {
    goto LABEL_16;
  }

  if ([*v6 size])
  {
    if ([*v6 size] == 1)
    {
      v21 = MEMORY[0x1E698AFD0];
    }

    else
    {
      if ([*v6 size] != 2)
      {
        v16 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          __78__ATXHomeScreenSuggestionClient_layoutForSuggestionsWidget_completionHandler___block_invoke_cold_1((a1 + 40));
        }

        goto LABEL_14;
      }

      v21 = MEMORY[0x1E698AFD8];
    }
  }

  else
  {
    v21 = MEMORY[0x1E698AFC8];
  }

  v22 = [*(v3 + 12) objectForKeyedSubscript:*v21];
  v9 = [v22 copy];

LABEL_9:
  (*(*(a1 + 48) + 16))();

LABEL_10:
}

- (void)layoutForAppPredictionPanel:(id)panel completionHandler:(id)handler
{
  panelCopy = panel;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ATXHomeScreenSuggestionClient_layoutForAppPredictionPanel_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = panelCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = panelCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __79__ATXHomeScreenSuggestionClient_layoutForAppPredictionPanel_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = v3[13];
  if (!v5 || !v3[12])
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: layoutForSuggestionWidgetWithIdentifier fallback to read from DisplayCache", &v22, 2u);
    }

    [*(a1 + 32) _readCachedSuggestionsFromDiskAndUpdateGuardedData:v4];
    v5 = *(v4 + 13);
  }

  v7 = (a1 + 40);
  v8 = [*(a1 + 40) widgetUniqueId];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 copy];

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = [*v7 widgetUniqueId];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = *(v4 + 5);
  v14 = [*v7 widgetUniqueId];
  if ([v13 containsObject:v14])
  {

    goto LABEL_12;
  }

  v15 = *(v4 + 7);
  v16 = [*v7 widgetUniqueId];
  LODWORD(v15) = [v15 containsObject:v16];

  if (v15)
  {
LABEL_12:
    v17 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v7 widgetUniqueId];
      v22 = 138543362;
      v23 = v18;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: expecting layout for %{public}@ but did not have one", &v22, 0xCu);
    }

LABEL_14:

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  if ([*v7 size] != 1)
  {
    v17 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __79__ATXHomeScreenSuggestionClient_layoutForAppPredictionPanel_completionHandler___block_invoke_cold_1((a1 + 40));
    }

    goto LABEL_14;
  }

  v19 = [*(v4 + 13) objectForKeyedSubscript:*MEMORY[0x1E698AF60]];
  v10 = [v19 copy];

  v20 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*v7 widgetUniqueId];
    v22 = 138543362;
    v23 = v21;
    _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: returning preview layout for %{public}@", &v22, 0xCu);
  }

LABEL_7:
  (*(*(a1 + 48) + 16))();

LABEL_15:
}

- (int64_t)_layoutTypeOfSuggestion:(id)suggestion inLayout:(id)layout
{
  suggestionCopy = suggestion;
  layoutCopy = layout;
  oneByOneSuggestions = [layoutCopy oneByOneSuggestions];
  v8 = [oneByOneSuggestions containsObject:suggestionCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    oneByTwoSuggestions = [layoutCopy oneByTwoSuggestions];
    v11 = [oneByTwoSuggestions containsObject:suggestionCopy];

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
      v13 = [twoByTwoSuggestions containsObject:suggestionCopy];

      if (v13)
      {
        v9 = 3;
      }

      else
      {
        oneByFourSuggestions = [layoutCopy oneByFourSuggestions];
        v15 = [oneByFourSuggestions containsObject:suggestionCopy];

        if (v15)
        {
          v9 = 5;
        }

        else
        {
          twoByFourSuggestions = [layoutCopy twoByFourSuggestions];
          v17 = [twoByFourSuggestions containsObject:suggestionCopy];

          if (v17)
          {
            v9 = 4;
          }

          else
          {
            fourByFourSuggestions = [layoutCopy fourByFourSuggestions];
            v19 = [fourByFourSuggestions containsObject:suggestionCopy];

            if (v19)
            {
              v9 = 6;
            }

            else
            {
              fourByEightSuggestions = [layoutCopy fourByEightSuggestions];
              v21 = [fourByEightSuggestions containsObject:suggestionCopy];

              if (v21)
              {
                v9 = 7;
              }

              else
              {
                v9 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

- (BOOL)isSuggestionReplacementAvailableForSuggestion:(id)suggestion inLayout:(id)layout
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  layoutCopy = layout;
  v8 = [(ATXHomeScreenSuggestionClient *)self _layoutTypeOfSuggestion:suggestionCopy inLayout:layoutCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke;
  v14[3] = &unk_1E80C3558;
  v14[5] = &v15;
  v14[6] = v8;
  v14[4] = self;
  [(_PASQueueLock *)lock runWithLockAcquired:v14];
  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v16 + 24);
    *buf = 67109120;
    v20 = v11;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: isSuggestionReplacementAvailableForSuggestion: %d", buf, 8u);
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v12 & 1;
}

void __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3[15];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2;
  v8[3] = &unk_1E80C3530;
  v5 = a1[5];
  v8[4] = a1[4];
  v9 = v3;
  v6 = a1[6];
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 enumerateObjectsUsingBlock:v8];
}

void __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([v6 isValidForSuggestionsWidget])
  {
    if ([*(a1 + 32) _isFallbackSuggestionUsed:v6 guardedData:*(a1 + 40)])
    {
      v7 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_3(v6);
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v6 uiSpecification];
      v7 = [v8 preferredLayoutConfigs];

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v7);
            }

            if ([*(*(&v14 + 1) + 8 * i) applicableLayoutType] == *(a1 + 56))
            {
              v13 = __atxlog_handle_home_screen();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_2(v6);
              }

              *(*(*(a1 + 48) + 8) + 24) = 1;
              *a4 = 1;
              goto LABEL_19;
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_1(v6);
    }
  }

LABEL_19:
}

- (BOOL)_isFallbackSuggestionUsed:(id)used guardedData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  executableSpecification = [used executableSpecification];
  executableObject = [executableSpecification executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [dataCopy[16] allValues];
    v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsObject:executableObject])
          {
            LOBYTE(v9) = 1;
            goto LABEL_13;
          }
        }

        v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)unusedFallbackAppSuggestionsForPage:(int64_t)page
{
  v5 = objc_opt_new();
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  pageCopy = page;
  v7 = v5;
  v10 = v7;
  [(_PASQueueLock *)lock runWithLockAcquired:v9];

  return v7;
}

void __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[16];
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 numberWithInteger:v5];
  v8 = [v3 objectForKeyedSubscript:v7];

  v9 = v6[15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke_2;
  v11[3] = &unk_1E80C3580;
  v12 = v8;
  v13 = *(a1 + 32);
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v11];
}

void __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 executableSpecification];
  if ([v4 executableType] == 1)
  {

    goto LABEL_4;
  }

  v5 = [v3 executableSpecification];
  v6 = [v5 executableType];

  if (v6 == 5)
  {
LABEL_4:
    v7 = [v3 executableSpecification];
    v8 = [v7 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(a1 + 32) containsObject:v8])
      {
LABEL_19:

        goto LABEL_20;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v3 uiSpecification];
      v10 = [v9 preferredLayoutConfigs];

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v15 + 1) + 8 * i) applicableLayoutType] == 1)
            {
              [*(a1 + 40) addObject:v3];
              goto LABEL_18;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke_2_cold_1();
      }
    }

LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (void)markFallbackAppSuggestion:(id)suggestion asUnusedForPage:(int64_t)page
{
  suggestionCopy = suggestion;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUnusedForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  v10 = suggestionCopy;
  pageCopy = page;
  v8 = suggestionCopy;
  [(_PASQueueLock *)lock runWithLockAcquired:v9];
}

void __75__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUnusedForPage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:v5];
  [v4 removeObject:*(a1 + 32)];
}

- (void)markFallbackAppSuggestion:(id)suggestion asUsedForPage:(int64_t)page
{
  suggestionCopy = suggestion;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUsedForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  v10 = suggestionCopy;
  pageCopy = page;
  v8 = suggestionCopy;
  [(_PASQueueLock *)lock runWithLockAcquired:v9];
}

void __73__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUsedForPage___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = v8[16];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = objc_opt_new();
    v6 = v8[16];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  [v5 addObject:*(a1 + 32)];
}

- (void)didFinishExecutingTappedSuggestion:(id)suggestion fromWidget:(id)widget
{
  suggestionCopy = suggestion;
  widgetCopy = widget;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ATXHomeScreenSuggestionClient_didFinishExecutingTappedSuggestion_fromWidget___block_invoke;
  v11[3] = &unk_1E80C35D0;
  v12 = suggestionCopy;
  selfCopy = self;
  v14 = widgetCopy;
  v9 = widgetCopy;
  v10 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __79__ATXHomeScreenSuggestionClient_didFinishExecutingTappedSuggestion_fromWidget___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = [*(a1 + 32) executableSpecification];
    v8 = [v7 executableDescription];
    v9 = MEMORY[0x1E69C5BC8];
    v10 = [*(a1 + 32) executableSpecification];
    v11 = [v9 stringForExecutableType:{objc_msgSend(v10, "executableType")}];
    v12 = 138543874;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: handling didFinishExecutingTappedSuggestion for suggestion with uuid: %{public}@ executable description: %@ executable type: %{public}@", &v12, 0x20u);
  }

  [*(*(a1 + 40) + 56) addEngagedSuggestion:*(a1 + 32) engagementRecordType:1];
  [*(*(a1 + 40) + 72) removeActionPredictionNotificationsMatchingSuggestion:*(a1 + 32) reply:0];
  [*(a1 + 40) _replaceSuggestionIfNeeded:*(a1 + 32) fromProactiveWidget:*(a1 + 48) guardedData:v3];
}

- (void)setIsUserInteractingWithProactiveWidget:(BOOL)widget
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__ATXHomeScreenSuggestionClient_setIsUserInteractingWithProactiveWidget___block_invoke;
  v4[3] = &unk_1E80C35F8;
  widgetCopy = widget;
  v4[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v4];
}

uint64_t __73__ATXHomeScreenSuggestionClient_setIsUserInteractingWithProactiveWidget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3[32] != *(a1 + 40))
  {
    v6 = v3;
    if (*(a1 + 40))
    {
      v3[32] = 1;
      v3 = [*(a1 + 32) _cancelAndReleaseLayoutUpdateSuppressionTimer:v3];
    }

    else
    {
      v3[32] = 0;
      v3 = [*(a1 + 32) _startSuppressingSystemInitiatedLayoutUpdateForTimeInterval:v3 leeway:*(*(a1 + 32) + 112) guardedData:*(*(a1 + 32) + 120)];
    }

    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)homeScreenPrediction
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ATXHomeScreenSuggestionClient_homeScreenPrediction__block_invoke;
  v6[3] = &unk_1E80C3620;
  v6[4] = self;
  v6[5] = &v19;
  v6[6] = &v13;
  v6[7] = &v7;
  [(_PASQueueLock *)lock runWithLockAcquired:v6];
  if (v20[5] && v14[5])
  {
    v3 = [ATXHomeScreenPrediction alloc];
    v4 = [(ATXHomeScreenPrediction *)v3 initWithBlendingCacheIdentifier:v20[5] widgetSuggestions:v14[5] stacksAffectedByDebugRotation:v8[5]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v4;
}

void __53__ATXHomeScreenSuggestionClient_homeScreenPrediction__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(v13 + 17);
  if (!v3)
  {
    [*(a1 + 32) _readCachedSuggestionsFromDiskAndUpdateGuardedData:v13];
    v3 = *(v13 + 17);
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(v13 + 14) copy];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(v13 + 18) copy];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)homeScreenPredictionWithReply:(id)reply
{
  replyCopy = reply;
  outputQueue = self->_outputQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXHomeScreenSuggestionClient_homeScreenPredictionWithReply___block_invoke;
  v7[3] = &unk_1E80C2008;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(outputQueue, v7);
}

void __63__ATXHomeScreenSuggestionClient_homeScreenPredictionWithReply___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ATXHomeScreenSuggestionClient_homeScreenPredictionWithReply___block_invoke_cold_1(v2, v3, v4);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) homeScreenPrediction];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)chronoServiceProvider:(id)provider finishedPrewarmingSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__ATXHomeScreenSuggestionClient_chronoServiceProvider_finishedPrewarmingSuggestions___block_invoke;
  v8[3] = &unk_1E80C3470;
  v8[4] = self;
  v9 = suggestionsCopy;
  v7 = suggestionsCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v8];
}

void __85__ATXHomeScreenSuggestionClient_chronoServiceProvider_finishedPrewarmingSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: chornoServiceProvider finished preparing suggestions, starting suggestion update.", v5, 2u);
  }

  [*(a1 + 32) _updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:v3];
  [*(a1 + 32) _updateGuardedData:v3 withCachedSuggestions:*(a1 + 40) updateProactiveWidgetLayoutsOnly:0];
}

- (void)chronoServiceProvider:(id)provider reloadDidCompleteForWidget:(id)widget success:(BOOL)success widgetIsReadyForDisplay:(BOOL)display error:(id)error
{
  widgetCopy = widget;
  errorCopy = error;
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__ATXHomeScreenSuggestionClient_chronoServiceProvider_reloadDidCompleteForWidget_success_widgetIsReadyForDisplay_error___block_invoke;
  v16[3] = &unk_1E80C3648;
  successCopy = success;
  v17 = widgetCopy;
  v18 = errorCopy;
  displayCopy = display;
  v14 = errorCopy;
  v15 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v16];
}

void __120__ATXHomeScreenSuggestionClient_chronoServiceProvider_reloadDidCompleteForWidget_success_widgetIsReadyForDisplay_error___block_invoke(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 extensionIdentity];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [*(a1 + 32) kind];
  v9 = [v3 stringWithFormat:@"%@:%@", v7, v8];

  v16[0] = @"reloadDidSuccess";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v17[0] = v10;
  v17[1] = v9;
  v16[1] = @"widget";
  v16[2] = @"errorCode";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  AnalyticsSendEvent();
  v13 = v5[24];

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x1E695DF00] now];
  [v13 recordWidgetReloadForSuggestion:v14 date:v15 readyForDisplay:*(a1 + 49)];
}

- (void)_updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:(id)suggestions
{
  v4 = [ATXHomeScreenStackSuggestion stackSuggestionsFromCachedSuggestions:suggestions];
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__ATXHomeScreenSuggestionClient__updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions___block_invoke;
  v11[3] = &unk_1E80C3670;
  v6 = v5;
  v12 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__ATXHomeScreenSuggestionClient__updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions___block_invoke_2;
  v9[3] = &unk_1E80C3448;
  v10 = v6;
  v8 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v9];
}

void __102__ATXHomeScreenSuggestionClient__updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 suggestedWidgets];
  v8 = [v7 count];

  if (v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v6 suggestedWidgets];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 32);
          v15 = [*(*(&v16 + 1) + 8 * v13) widgetUniqueId];
          [v14 setObject:v5 forKeyedSubscript:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)suggestions completion:(id)completion
{
  completionCopy = completion;
  suggestionsCopy = suggestions;
  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: received update from duetexpertd", buf, 2u);
  }

  [(ATXChronoServicesProvider *)self->_chronoServicesProvider resetToPrewarmWidgetsInSuggestions:suggestionsCopy];
  [(ATXHomeScreenSuggestionClient *)self _updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:suggestionsCopy];

  outputQueue = self->_outputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__ATXHomeScreenSuggestionClient_blendingLayerDidUpdateHomeScreenCachedSuggestions_completion___block_invoke;
  block[3] = &unk_1E80C3698;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(outputQueue, block);
}

- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__ATXHomeScreenSuggestionClient_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C36C0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)handler
{
  lock = self->_lock;
  handlerCopy = handler;
  [(_PASQueueLock *)lock runWithLockAcquired:&__block_literal_global_160];
  handlerCopy[2](handlerCopy, 0);
}

void __112__ATXHomeScreenSuggestionClient_synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[24];
  v4 = a2;
  [v3 close];
  v5 = a2[24];
  a2[24] = 0;
}

- (void)forceDebugRotationForStack:(id)stack extensionBundleId:(id)id kind:(id)kind completion:(id)completion
{
  stackCopy = stack;
  idCopy = id;
  kindCopy = kind;
  completionCopy = completion;
  lock = self->_lock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__ATXHomeScreenSuggestionClient_forceDebugRotationForStack_extensionBundleId_kind_completion___block_invoke;
  v19[3] = &unk_1E80C36E8;
  v22 = kindCopy;
  v23 = completionCopy;
  v19[4] = self;
  v20 = stackCopy;
  v21 = idCopy;
  v15 = kindCopy;
  v16 = idCopy;
  v17 = stackCopy;
  v18 = completionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v19];
}

void __94__ATXHomeScreenSuggestionClient_forceDebugRotationForStack_extensionBundleId_kind_completion___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v66 = 0;
  v5 = [v4 loadHomeScreenAndTodayPageConfigurationsWithError:&v66];
  v6 = v66;
  if (!v6)
  {
    v48 = v5;
    v49 = v3;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v8 = v5;
    v52 = [v8 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v52)
    {
      v9 = 0;
      v53 = 0;
      v51 = *v63;
      obj = v8;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v63 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v62 + 1) + 8 * i);
          v12 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v68 = v9;
            v69 = 2114;
            v70 = v11;
            _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: Page %lu: %{public}@", buf, 0x16u);
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v13 = [v11 stacks];
          v14 = [v13 countByEnumeratingWithState:&v58 objects:v76 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v59;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v59 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v58 + 1) + 8 * j);
                v19 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v68 = v9;
                  v69 = 2114;
                  v70 = v18;
                  _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: Stack on page %lu: %{public}@", buf, 0x16u);
                }

                v20 = [v18 identifier];
                v21 = [v20 isEqualToString:*(a1 + 40)];

                if (v21)
                {
                  v22 = v18;

                  v53 = v22;
                  goto LABEL_22;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v58 objects:v76 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          ++v9;
        }

        v52 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
      }

      while (v52);

      if (v53)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v23 = [v53 widgets];
        v24 = [v23 countByEnumeratingWithState:&v54 objects:v73 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v55;
LABEL_27:
          v27 = 0;
          while (1)
          {
            if (*v55 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v54 + 1) + 8 * v27);
            v29 = [v28 extensionBundleId];
            if ([v29 isEqualToString:*(a1 + 48)])
            {
              v30 = [v28 widgetKind];
              v31 = [v30 isEqualToString:*(a1 + 56)];

              if (v31)
              {
                v34 = v28;

                if (v34)
                {
                  goto LABEL_41;
                }

                goto LABEL_40;
              }
            }

            else
            {
            }

            if (v25 == ++v27)
            {
              v25 = [v23 countByEnumeratingWithState:&v54 objects:v73 count:16];
              if (v25)
              {
                goto LABEL_27;
              }

              break;
            }
          }
        }

LABEL_40:
        v34 = objc_opt_new();
        [v34 setExtensionBundleId:*(a1 + 48)];
        [v34 setWidgetKind:*(a1 + 56)];
        [v34 setSize:{objc_msgSend(v53, "stackLayoutSize")}];
LABEL_41:
        v3 = v49;
        v35 = [v49[14] mutableCopy];
        v36 = [ATXHomeScreenStackSuggestion alloc];
        v37 = *(a1 + 40);
        v38 = [v35 objectForKeyedSubscript:v37];
        v39 = [v38 suggestedWidgets];
        v40 = [(ATXHomeScreenStackSuggestion *)v36 initForDebuggingWithStackIdentifier:v37 topWidget:v34 suggestedWidgets:v39];

        [v35 setObject:v40 forKeyedSubscript:*(a1 + 40)];
        objc_storeStrong(v49 + 14, v35);
        v41 = v49[18];
        if (!v41)
        {
          v42 = objc_opt_new();
          v43 = v49[18];
          v49[18] = v42;

          v41 = v49[18];
        }

        [v41 addObject:*(a1 + 40)];
        v44 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 40);
          v46 = *(a1 + 48);
          v47 = *(a1 + 56);
          *buf = 138412802;
          v68 = v45;
          v69 = 2112;
          v70 = v46;
          v71 = 2112;
          v72 = v47;
          _os_log_impl(&dword_1BF549000, v44, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: forcing debug rotation for stack %@, widget %@, kind %@. Notifying observers.", buf, 0x20u);
        }

        [*(a1 + 32) _notifyObserversAboutSuggestionRefreshWithGuardedData:v49];
        (*(*(a1 + 64) + 16))();

        v7 = 0;
        goto LABEL_46;
      }
    }

    else
    {
    }

    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v74 = *MEMORY[0x1E696A578];
    v75 = @"Specified stack not found in home screen config.";
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v7 = [v32 initWithDomain:@"ATXHomeScreenSuggestionClientErrorDomain" code:-1 userInfo:v33];

    (*(*(a1 + 64) + 16))();
    v3 = v49;
LABEL_46:
    v5 = v48;
    goto LABEL_47;
  }

  v7 = v6;
  (*(*(a1 + 64) + 16))();
LABEL_47:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.proactive.HomeScreenSuggestion.xpc"];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue] & 1) != 0)
  {
    v9 = ATXHomeScreenSuggestionServerXPCInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_172];
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__ATXHomeScreenSuggestionClient_listener_shouldAcceptNewConnection___block_invoke_173;
    v18 = &unk_1E80C10D8;
    objc_copyWeak(&v19, &location);
    [connectionCopy setInvalidationHandler:&v15];
    v10 = ATXHomeScreenSuggestionClientXPCInterface();
    [connectionCopy setRemoteObjectInterface:{v10, v15, v16, v17, v18}];

    [(ATXHomeScreenSuggestionClient *)self setXpcConnection:connectionCopy];
    [connectionCopy resume];
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = connectionCopy;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: accepts XPC connection: %{public}@", buf, 0xCu);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v12 = 1;
  }

  else
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenSuggestionClient listener:shouldAcceptNewConnection:];
    }

    v12 = 0;
  }

  return v12;
}

void __68__ATXHomeScreenSuggestionClient_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: XPC connection interrupted.", v1, 2u);
  }
}

void __68__ATXHomeScreenSuggestionClient_listener_shouldAcceptNewConnection___block_invoke_173(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: XPC connection invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)analytics rankOfWidgetInGallery:(unint64_t)gallery galleryItems:(id)items
{
  itemsCopy = items;
  analyticsCopy = analytics;
  xpcConnection = [(ATXHomeScreenSuggestionClient *)self xpcConnection];
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_175];
  [v10 logWidgetAddedFeaturesInCoreAnalytics:analyticsCopy rankOfWidgetInGallery:gallery galleryItems:itemsCopy];
}

void __106__ATXHomeScreenSuggestionClient_logWidgetAddedFeaturesInCoreAnalytics_rankOfWidgetInGallery_galleryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __106__ATXHomeScreenSuggestionClient_logWidgetAddedFeaturesInCoreAnalytics_rankOfWidgetInGallery_galleryItems___block_invoke_cold_1();
  }
}

- (BOOL)hasWidgetBeenSeen:(id)seen
{
  seenCopy = seen;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ATXHomeScreenSuggestionClient_hasWidgetBeenSeen___block_invoke;
  v8[3] = &unk_1E80C3710;
  v10 = &v11;
  v6 = seenCopy;
  v9 = v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __51__ATXHomeScreenSuggestionClient_hasWidgetBeenSeen___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 192) mostRecentEngagementOfWidget:*(a1 + 32) ofType:3];
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
}

- (BOOL)hasWidgetBeenTapped:(id)tapped
{
  tappedCopy = tapped;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__ATXHomeScreenSuggestionClient_hasWidgetBeenTapped___block_invoke;
  v8[3] = &unk_1E80C3710;
  v10 = &v11;
  v6 = tappedCopy;
  v9 = v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __53__ATXHomeScreenSuggestionClient_hasWidgetBeenTapped___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 192) mostRecentEngagementOfWidget:*(a1 + 32) ofType:1];
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
}

- (void)significantDwellDetectedForWidget:(id)widget date:(id)date
{
  widgetCopy = widget;
  dateCopy = date;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__ATXHomeScreenSuggestionClient_significantDwellDetectedForWidget_date___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = widgetCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (unint64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__ATXHomeScreenSuggestionClient_pageIndexOfAppPredictionPanelWithIdentifier___block_invoke;
  v9[3] = &unk_1E80C3738;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASQueueLock *)lock runWithLockAcquired:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __77__ATXHomeScreenSuggestionClient_pageIndexOfAppPredictionPanelWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7[10] objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = objc_opt_new();
    *(*(*(a1 + 40) + 8) + 24) = [v5 pageIndexOfAppPredictionPanelWithIdentifier:*(a1 + 32)];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
    [v7[10] setObject:v6 forKeyedSubscript:*(a1 + 32)];
  }
}

- (void)loadHomeScreenPageConfigurationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C3760;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

void __87__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5 = 0;
  v3 = [v2 loadHomeScreenPageConfigurationsWithError:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

- (void)loadHomeScreenPageConfigurationsForClientWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsForClientWithIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __107__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsForClientWithIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 48);
  v6 = 0;
  v4 = [v3 loadHomeScreenPageConfigurationsIncludingHidden:0 forClientWithIdentifier:v2 error:&v6];
  v5 = v6;
  (*(a1[6] + 16))();
}

- (void)writeHomeScreenPageConfigurations:(id)configurations completionHandler:(id)handler
{
  configurationsCopy = configurations;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__ATXHomeScreenSuggestionClient_writeHomeScreenPageConfigurations_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = configurationsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationsCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier completionHandler:(id)handler
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  handlerCopy = handler;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__ATXHomeScreenSuggestionClient_writeHomeScreenPageConfigurations_forClientWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E80C3788;
  v15[4] = self;
  v16 = configurationsCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = configurationsCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)_writeHomeScreenPageConfigurations:(id)configurations forClientWithIdentifier:(id)identifier guardedData:(id)data completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  identifierCopy = identifier;
  dataCopy = data;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v14 = [configurationsCopy copy];
    v15 = *(dataCopy + 19);
    *(dataCopy + 19) = v14;

    v16 = [identifierCopy copy];
    v17 = *(dataCopy + 20);
    *(dataCopy + 20) = v16;

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v41 = 0;
    v19 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeHomeScreenPageConfigurations:configurationsCopy forClientWithIdentifier:identifierCopy error:&v41];
    v20 = v41;
    v21 = v20;
    if (v19)
    {
      v36 = v20;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = configurationsCopy;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            if (([v27 isHidden] & 1) == 0)
            {
              stacks = [v27 stacks];
              [(ATXHomeScreenSuggestionClient *)self _recordSuggestedWidgetIfNecessaryInStacks:stacks guardedData:dataCopy];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v24);
      }

      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote home screen page configurations"];
      *(dataCopy + 48) = 1;
      [*(dataCopy + 25) homeScreenOrTodayPageConfigDidChange];
      v29 = objc_alloc(MEMORY[0x1E695DFD8]);
      v30 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_182];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = MEMORY[0x1E695E0F0];
      }

      v33 = [v29 initWithArray:v32];

      v34 = objc_opt_new();
      [v34 removePagesWithIdentifiersNotInSet:v33];
      handlerCopy[2](handlerCopy, 0);

      v21 = v36;
    }

    else
    {
      if (v20)
      {
        v35 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [ATXHomeScreenSuggestionClient _writeHomeScreenPageConfigurations:forClientWithIdentifier:guardedData:completionHandler:];
        }
      }

      (handlerCopy)[2](handlerCopy, v21);
    }
  }
}

- (void)writeDockAppList:(id)list completionHandler:(id)handler
{
  listCopy = list;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXHomeScreenSuggestionClient_writeDockAppList_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = listCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = listCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)_writeDockAppList:(id)list guardedData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = MEMORY[0x1E69C5D08];
  listCopy = list;
  if ([v10 isClassCLocked])
  {
    v12 = [listCopy copy];

    v13 = *(dataCopy + 21);
    *(dataCopy + 21) = v12;

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v20 = 0;
    v15 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeDockAppList:listCopy error:&v20];

    v16 = v20;
    v17 = v16;
    if (v15)
    {
      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote Dock apps"];
      [*(dataCopy + 25) dockAppListDidChange];
      v18 = 0;
    }

    else
    {
      v18 = v16;
      if (v16)
      {
        v19 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [ATXHomeScreenSuggestionClient _writeDockAppList:guardedData:completionHandler:];
        }

        v18 = v17;
      }
    }

    (handlerCopy)[2](handlerCopy, v18);
  }
}

- (void)writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels completionHandler:(id)handler
{
  stacksCopy = stacks;
  panelsCopy = panels;
  handlerCopy = handler;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__ATXHomeScreenSuggestionClient_writeTodayPageStacks_appPredictionPanels_completionHandler___block_invoke;
  v15[3] = &unk_1E80C3788;
  v15[4] = self;
  v16 = stacksCopy;
  v17 = panelsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = panelsCopy;
  v14 = stacksCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)_writeTodayPageStacks:(id)stacks appPredictionPanels:(id)panels guardedData:(id)data completionHandler:(id)handler
{
  stacksCopy = stacks;
  panelsCopy = panels;
  dataCopy = data;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v14 = [stacksCopy copy];
    v15 = *(dataCopy + 22);
    *(dataCopy + 22) = v14;

    v16 = [panelsCopy copy];
    v17 = *(dataCopy + 23);
    *(dataCopy + 23) = v16;

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v24 = 0;
    v19 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeTodayPageStacks:stacksCopy appPredictionPanels:panelsCopy error:&v24];
    v20 = v24;
    v21 = v20;
    if (v19)
    {
      [(ATXHomeScreenSuggestionClient *)self _recordSuggestedWidgetIfNecessaryInStacks:stacksCopy guardedData:dataCopy];
      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote Today page configuration"];
      v22 = objc_opt_new();
      [v22 setPageIndex:20000];
      [v22 setStacks:stacksCopy];
      [v22 setPanels:panelsCopy];
      *(dataCopy + 64) = 1;
      [*(dataCopy + 25) homeScreenOrTodayPageConfigDidChange];
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      if (v20)
      {
        v23 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [ATXHomeScreenSuggestionClient _writeTodayPageStacks:appPredictionPanels:guardedData:completionHandler:];
        }
      }

      (handlerCopy)[2](handlerCopy, v21);
    }
  }
}

- (void)_recordSuggestedWidgetIfNecessaryInStacks:(id)stacks guardedData:(id)data
{
  v38 = *MEMORY[0x1E69E9840];
  stacksCopy = stacks;
  dataCopy = data;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = stacksCopy;
  v21 = [stacksCopy countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        widgets = [v8 widgets];
        v10 = [widgets countByEnumeratingWithState:&v22 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(widgets);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              if ([v14 isSuggestedWidget])
              {
                widgetUniqueId = [v14 widgetUniqueId];

                if (widgetUniqueId)
                {
                  v16 = dataCopy[24];
                  widgetUniqueId2 = [v14 widgetUniqueId];
                  [v16 recordSuggestedWidgetUniqueIdIfNotExist:widgetUniqueId2];
                }

                else
                {
                  widgetUniqueId2 = __atxlog_handle_home_screen();
                  if (os_log_type_enabled(widgetUniqueId2, OS_LOG_TYPE_FAULT))
                  {
                    identifier = [v8 identifier];
                    *buf = 136315650;
                    v31 = "[ATXHomeScreenSuggestionClient _recordSuggestedWidgetIfNecessaryInStacks:guardedData:]";
                    v32 = 2112;
                    v33 = v14;
                    v34 = 2114;
                    v35 = identifier;
                    _os_log_fault_impl(&dword_1BF549000, widgetUniqueId2, OS_LOG_TYPE_FAULT, "%s: Suggested widget %@ in stack %{public}@ does not have widgetUniqueId", buf, 0x20u);
                  }
                }
              }
            }

            v11 = [widgets countByEnumeratingWithState:&v22 objects:v36 count:16];
          }

          while (v11);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v21);
  }
}

- (void)logWidgetDidAppear:(id)appear stackId:(id)id prediction:(id)prediction
{
  appearCopy = appear;
  idCopy = id;
  predictionCopy = prediction;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__ATXHomeScreenSuggestionClient_logWidgetDidAppear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v15[4] = self;
  v16 = appearCopy;
  v17 = idCopy;
  v18 = predictionCopy;
  v12 = predictionCopy;
  v13 = idCopy;
  v14 = appearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

void __71__ATXHomeScreenSuggestionClient_logWidgetDidAppear_stackId_prediction___block_invoke(uint64_t *a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(a1[4] + 64);
  v5 = MEMORY[0x1E695DF00];
  v6 = a2;
  v7 = [v5 now];
  [v4 widgetDidAppear:v3 date:v7];

  v8 = v6[24];
  v9 = a1[5];
  v10 = [MEMORY[0x1E695DF00] date];
  [v8 addEngagementRecordForWidget:v9 date:v10 engagementType:3];

  v11 = v6[25];
  [v11 logWidgetDidAppear:a1[5] stackId:a1[6] prediction:a1[7]];
  v12 = [a1[5] widgetUniqueId];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = a1[4];
    v17[0] = @"uniqueID";
    v17[1] = @"stackID";
    v15 = a1[6];
    v18[0] = v12;
    v18[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v13 postNotificationName:@"ATXHomeScreenSuggestionClientTopWidgetDidAppearNotification" object:v14 userInfo:v16];
  }
}

- (void)logWidgetDidDisappear:(id)disappear stackId:(id)id prediction:(id)prediction
{
  disappearCopy = disappear;
  idCopy = id;
  predictionCopy = prediction;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__ATXHomeScreenSuggestionClient_logWidgetDidDisappear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v15[4] = self;
  v16 = disappearCopy;
  v17 = idCopy;
  v18 = predictionCopy;
  v12 = predictionCopy;
  v13 = idCopy;
  v14 = disappearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

void __74__ATXHomeScreenSuggestionClient_logWidgetDidDisappear_stackId_prediction___block_invoke(uint64_t *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(a1[4] + 64);
  v5 = MEMORY[0x1E695DF00];
  v6 = a2;
  v7 = [v5 now];
  [v4 widgetDidDisappear:v3 date:v7];

  v8 = v6[25];
  [v8 logWidgetDidDisappear:a1[5] stackId:a1[6] prediction:a1[7]];
  v9 = [a1[5] widgetUniqueId];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = a1[4];
    v14[0] = @"uniqueID";
    v14[1] = @"stackID";
    v12 = a1[6];
    v15[0] = v9;
    v15[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v10 postNotificationName:@"ATXHomeScreenSuggestionClientTopWidgetDidDisappearNotification" object:v11 userInfo:v13];
  }
}

- (void)logStackVisibilityChanged:(id)changed visibleRect:(CGRect)rect topWidget:(id)widget prediction:(id)prediction
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  changedCopy = changed;
  widgetCopy = widget;
  predictionCopy = prediction;
  lock = self->_lock;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__ATXHomeScreenSuggestionClient_logStackVisibilityChanged_visibleRect_topWidget_prediction___block_invoke;
  v20[3] = &unk_1E80C37F8;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v21 = changedCopy;
  v22 = widgetCopy;
  v23 = predictionCopy;
  v17 = predictionCopy;
  v18 = widgetCopy;
  v19 = changedCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v20];
}

- (void)logStackDidDisappear:(id)disappear topWidget:(id)widget prediction:(id)prediction
{
  if (widget)
  {

    [(ATXHomeScreenSuggestionClient *)self logWidgetDidDisappear:widget stackId:disappear prediction:prediction];
  }

  else
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenSuggestionClient logStackDidDisappear:topWidget:prediction:];
    }
  }
}

- (void)logStackDidAppear:(id)appear topWidget:(id)widget prediction:(id)prediction
{
  if (widget)
  {

    [(ATXHomeScreenSuggestionClient *)self logWidgetDidAppear:widget stackId:appear prediction:prediction];
  }

  else
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenSuggestionClient logStackDidAppear:topWidget:prediction:];
    }
  }
}

- (void)logHomeScreenPageDidAppear:(unint64_t)appear topWidgetsByStackIdentifier:(id)identifier prediction:(id)prediction
{
  identifierCopy = identifier;
  predictionCopy = prediction;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__ATXHomeScreenSuggestionClient_logHomeScreenPageDidAppear_topWidgetsByStackIdentifier_prediction___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = predictionCopy;
  appearCopy = appear;
  v14 = identifierCopy;
  v11 = predictionCopy;
  v12 = identifierCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logHomeScreenDidDisappearWithReason:(id)reason
{
  reasonCopy = reason;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ATXHomeScreenSuggestionClient_logHomeScreenDidDisappearWithReason___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logSpecialPageDidAppear:(unint64_t)appear widgetsByStackId:(id)id prediction:(id)prediction
{
  idCopy = id;
  predictionCopy = prediction;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__ATXHomeScreenSuggestionClient_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = predictionCopy;
  appearCopy = appear;
  v14 = idCopy;
  v11 = predictionCopy;
  v12 = idCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logSpecialPageDidDisappear:(unint64_t)disappear
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__ATXHomeScreenSuggestionClient_logSpecialPageDidDisappear___block_invoke;
  v4[3] = &__block_descriptor_40_e50_v16__0__ATXHomeScreenSuggestionClientGuardedData_8l;
  v4[4] = disappear;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v4];
}

- (void)logStackStatusDidChange:(id)change widgetOnTop:(id)top reason:(unint64_t)reason prediction:(id)prediction
{
  changeCopy = change;
  topCopy = top;
  predictionCopy = prediction;
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__ATXHomeScreenSuggestionClient_logStackStatusDidChange_widgetOnTop_reason_prediction___block_invoke;
  v17[3] = &unk_1E80C3868;
  v20 = topCopy;
  reasonCopy = reason;
  v17[4] = self;
  v18 = predictionCopy;
  v19 = changeCopy;
  v14 = topCopy;
  v15 = changeCopy;
  v16 = predictionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v17];
}

void __87__ATXHomeScreenSuggestionClient_logStackStatusDidChange_widgetOnTop_reason_prediction___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 64);
  if (v3 <= 8 && ((1 << v3) & 0x182) != 0)
  {
    [*(a1 + 32) startSuppressingRotationForTimeInterval:*(*(a1 + 32) + 104) leeway:*(*(a1 + 32) + 120)];
    v3 = *(a1 + 64);
  }

  v5 = [*(a1 + 40) stacksAffectedByDebugRotation];
  v6 = [v5 containsObject:*(a1 + 48)];

  if (v6)
  {
    v7 = 9;
  }

  else
  {
    v7 = v3;
  }

  [v8[25] logStackStatusDidChange:*(a1 + 48) widgetOnTop:*(a1 + 56) reason:v7 prediction:*(a1 + 40)];
  [*(a1 + 32) _alertUserIfNeededOfStackChange:*(a1 + 48) widgetOnTop:*(a1 + 56) reason:v7];
}

- (void)logStackDidTap:(id)tap engagedUrl:(id)url widgetOnTop:(id)top prediction:(id)prediction
{
  tapCopy = tap;
  urlCopy = url;
  topCopy = top;
  predictionCopy = prediction;
  lock = self->_lock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__ATXHomeScreenSuggestionClient_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke;
  v19[3] = &unk_1E80C37D0;
  v20 = topCopy;
  v21 = tapCopy;
  v22 = urlCopy;
  v23 = predictionCopy;
  v15 = predictionCopy;
  v16 = urlCopy;
  v17 = tapCopy;
  v18 = topCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v19];
}

uint64_t __82__ATXHomeScreenSuggestionClient_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke(void *a1, void *a2)
{
  v3 = a2[24];
  v4 = a1[4];
  v5 = MEMORY[0x1E695DF00];
  v6 = a2;
  v7 = [v5 now];
  [v3 updateMostRecentTapOfWidget:v4 date:v7];

  v8 = v6[25];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = a1[7];

  return [v8 logStackDidTap:v9 engagedUrl:v11 widgetOnTop:v10 prediction:v12];
}

- (void)logSupplementaryActionInContextMenu:(unint64_t)menu stackId:(id)id widgetOnTop:(id)top prediction:(id)prediction
{
  idCopy = id;
  topCopy = top;
  predictionCopy = prediction;
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__ATXHomeScreenSuggestionClient_logSupplementaryActionInContextMenu_stackId_widgetOnTop_prediction___block_invoke;
  v17[3] = &unk_1E80C3868;
  v20 = predictionCopy;
  menuCopy = menu;
  v17[4] = self;
  v18 = topCopy;
  v19 = idCopy;
  v14 = predictionCopy;
  v15 = idCopy;
  v16 = topCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v17];
}

void __100__ATXHomeScreenSuggestionClient_logSupplementaryActionInContextMenu_stackId_widgetOnTop_prediction___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__ATXHomeScreenSuggestionClient_logSupplementaryActionInContextMenu_stackId_widgetOnTop_prediction___block_invoke_2;
  v30[3] = &unk_1E80C0C90;
  v30[4] = *(a1 + 32);
  v4 = MEMORY[0x1BFB5BA40](v30);
  v5 = *(a1 + 64);
  switch(v5)
  {
    case 3:
LABEL_7:
      v4[2](v4);
      break;
    case 2:
      v14 = [*(a1 + 40) extensionBundleId];
      v15 = [v14 isEqualToString:*MEMORY[0x1E698AFC0]];

      if (v15)
      {
        v16 = *(v3 + 12);
        v17 = [*(a1 + 40) widgetUniqueId];
        v18 = [v16 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [v18 minSuggestionListInLayout];
          [*(a1 + 32) _dismissSuggestions:v19 guardedData:v3 fromSuggestionsWidget:*(a1 + 40) dismissFromAllUIs:0 duration:604800.0];
        }
      }

      v20 = [*(a1 + 40) appBundleId];
      if ([v20 length])
      {
        v21 = MEMORY[0x1E695DFA8];
        v22 = v20;
        v23 = [v21 alloc];
        v24 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = objc_opt_new();
        }

        v27 = v26;

        v28 = [v23 initWithArray:v27];
        [v28 addObject:v22];

        CFPreferencesSetAppValue(@"SBSearchDisabledShortcuts", [v28 allObjects], @"com.apple.spotlightui");
        CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.spotlightui.prefschanged", 0, 0, 1u);
      }

      v4[2](v4);

      break;
    case 1:
      v6 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) extensionBundleId];
        v8 = *(v3 + 26);
        *buf = 138412546;
        v32 = v7;
        v33 = 2048;
        v34 = v8;
        _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Recording dismiss once for %@ with widget dismiss manager: %p", buf, 0x16u);
      }

      v9 = *(v3 + 26);
      v10 = [*(a1 + 40) extensionBundleId];
      v11 = [*(a1 + 40) widgetKind];
      v12 = [*(a1 + 40) intent];
      v13 = [MEMORY[0x1E695DF00] now];
      [v9 userDidDismissSuggestionForWidget:v10 kind:v11 intent:v12 atDate:v13 duration:0.0];

      goto LABEL_7;
  }

  [*(v3 + 25) logSupplementaryActionInContextMenu:*(a1 + 64) stackId:*(a1 + 48) widgetOnTop:*(a1 + 40) prediction:*(a1 + 56)];
}

- (void)logUserDidChangeStackConfiguration:(id)configuration
{
  configurationCopy = configuration;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ATXHomeScreenSuggestionClient_logUserDidChangeStackConfiguration___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidAddApp:(id)app page:(id)page
{
  appCopy = app;
  pageCopy = page;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__ATXHomeScreenSuggestionClient_logUserDidAddApp_page___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = appCopy;
  v13 = pageCopy;
  v9 = pageCopy;
  v10 = appCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logUserDidRemoveApp:(id)app page:(id)page
{
  appCopy = app;
  pageCopy = page;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ATXHomeScreenSuggestionClient_logUserDidRemoveApp_page___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = appCopy;
  v13 = pageCopy;
  v9 = pageCopy;
  v10 = appCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logUserDidAddPinnedWidget:(id)widget page:(id)page defaultsComparator:(id)comparator
{
  widgetCopy = widget;
  pageCopy = page;
  comparatorCopy = comparator;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__ATXHomeScreenSuggestionClient_logUserDidAddPinnedWidget_page_defaultsComparator___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = widgetCopy;
  v17 = pageCopy;
  v18 = comparatorCopy;
  v12 = comparatorCopy;
  v13 = pageCopy;
  v14 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logUserDidDeletePinnedWidget:(id)widget stackLocation:(unint64_t)location page:(id)page
{
  widgetCopy = widget;
  pageCopy = page;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__ATXHomeScreenSuggestionClient_logUserDidDeletePinnedWidget_stackLocation_page___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = pageCopy;
  locationCopy = location;
  v14 = widgetCopy;
  v11 = pageCopy;
  v12 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logUserDidAddWidgetToStack:(id)stack stackIdentifier:(id)identifier isSuggestion:(BOOL)suggestion
{
  stackCopy = stack;
  identifierCopy = identifier;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__ATXHomeScreenSuggestionClient_logUserDidAddWidgetToStack_stackIdentifier_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C3890;
  v14 = stackCopy;
  v15 = identifierCopy;
  suggestionCopy = suggestion;
  v11 = identifierCopy;
  v12 = stackCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logUserDidDeleteWidgetOnStack:(id)stack stackIdentifier:(id)identifier stackKind:(unint64_t)kind stackLocation:(unint64_t)location
{
  stackCopy = stack;
  identifierCopy = identifier;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__ATXHomeScreenSuggestionClient_logUserDidDeleteWidgetOnStack_stackIdentifier_stackKind_stackLocation___block_invoke;
  v15[3] = &unk_1E80C38B8;
  v16 = stackCopy;
  v17 = identifierCopy;
  kindCopy = kind;
  locationCopy = location;
  v13 = identifierCopy;
  v14 = stackCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logUserDidCreateStack:(id)stack page:(id)page isSuggestion:(BOOL)suggestion
{
  stackCopy = stack;
  pageCopy = page;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ATXHomeScreenSuggestionClient_logUserDidCreateStack_page_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C38E0;
  v13[4] = self;
  v14 = stackCopy;
  v15 = pageCopy;
  suggestionCopy = suggestion;
  v11 = pageCopy;
  v12 = stackCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

uint64_t __73__ATXHomeScreenSuggestionClient_logUserDidCreateStack_page_isSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[13];
  v5 = v3[15];
  v6 = a2;
  [v3 startSuppressingRotationForTimeInterval:v4 leeway:v5];
  v7 = v6[25];

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);

  return [v7 logUserDidCreateStack:v8 page:v9 isSuggestion:v10];
}

- (void)logUserDidDeleteStack:(id)stack stackKind:(unint64_t)kind stackLocation:(unint64_t)location page:(id)page
{
  stackCopy = stack;
  pageCopy = page;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__ATXHomeScreenSuggestionClient_logUserDidDeleteStack_stackKind_stackLocation_page___block_invoke;
  v15[3] = &unk_1E80C38B8;
  kindCopy = kind;
  locationCopy = location;
  v16 = stackCopy;
  v17 = pageCopy;
  v13 = pageCopy;
  v14 = stackCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logDeviceLock
{
  v3 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ATXHomeScreenSuggestionClient_logDeviceLock__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

uint64_t __46__ATXHomeScreenSuggestionClient_logDeviceLock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__ATXHomeScreenSuggestionClient_logDeviceLock__block_invoke_2;
  v4[3] = &unk_1E80C3448;
  v4[4] = v1;
  return [v2 runAsyncWithLockAcquired:v4];
}

uint64_t __46__ATXHomeScreenSuggestionClient_logDeviceLock__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _refreshInferredEngagementStatusForWidgetSuggestions:v4];
  [*(*(a1 + 32) + 64) resetAllTracking];
  v5 = v4[25];

  return [v5 logDeviceLock];
}

- (void)logWidgetInsertionDidFailInStack:(id)stack prediction:(id)prediction
{
  stackCopy = stack;
  v6 = [prediction suggestionForStackIdentifier:stackCopy];
  topWidget = [v6 topWidget];

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXHomeScreenSuggestionClient logWidgetInsertionDidFailInStack:topWidget prediction:?];
  }
}

- (void)logWidgetDidAppear:(id)appear blendingCacheId:(id)id
{
  appearCopy = appear;
  idCopy = id;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXHomeScreenSuggestionClient_logWidgetDidAppear_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = appearCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = appearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logWidgetDidDisappear:(id)disappear blendingCacheId:(id)id
{
  disappearCopy = disappear;
  idCopy = id;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ATXHomeScreenSuggestionClient_logWidgetDidDisappear_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = disappearCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = disappearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logSuggestionsDidAppear:(id)appear widget:(id)widget blendingCacheId:(id)id
{
  appearCopy = appear;
  widgetCopy = widget;
  idCopy = id;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ATXHomeScreenSuggestionClient_logSuggestionsDidAppear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = appearCopy;
  v17 = widgetCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = widgetCopy;
  v14 = appearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logSuggestionsDidDisappear:(id)disappear widget:(id)widget blendingCacheId:(id)id
{
  disappearCopy = disappear;
  widgetCopy = widget;
  idCopy = id;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__ATXHomeScreenSuggestionClient_logSuggestionsDidDisappear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = disappearCopy;
  v17 = widgetCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = widgetCopy;
  v14 = disappearCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logWidgetOccluded:(id)occluded blendingCacheId:(id)id
{
  occludedCopy = occluded;
  idCopy = id;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ATXHomeScreenSuggestionClient_logWidgetOccluded_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = occludedCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = occludedCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logWidgetUnoccluded:(id)unoccluded blendingCacheId:(id)id
{
  unoccludedCopy = unoccluded;
  idCopy = id;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXHomeScreenSuggestionClient_logWidgetUnoccluded_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = unoccludedCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = unoccludedCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logDidTapSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id
{
  suggestionCopy = suggestion;
  widgetCopy = widget;
  idCopy = id;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__ATXHomeScreenSuggestionClient_logDidTapSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = widgetCopy;
  v17 = suggestionCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = suggestionCopy;
  v14 = widgetCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

uint64_t __76__ATXHomeScreenSuggestionClient_logDidTapSuggestion_widget_blendingCacheId___block_invoke(void *a1, void *a2)
{
  v3 = a2[24];
  v4 = a1[4];
  v5 = MEMORY[0x1E695DF00];
  v6 = a2;
  v7 = [v5 now];
  [v3 updateMostRecentTapOfWidget:v4 date:v7];

  v8 = v6[25];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];

  return [v8 logDidTapSuggestion:v9 widget:v10 blendingCacheId:v11];
}

- (void)_dismissSuggestions:(id)suggestions guardedData:(id)data fromSuggestionsWidget:(id)widget dismissFromAllUIs:(BOOL)is duration:(double)duration
{
  isCopy = is;
  v35 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  widgetCopy = widget;
  v14 = *(data + 26);
  extensionBundleId = [widgetCopy extensionBundleId];
  widgetKind = [widgetCopy widgetKind];
  v29 = widgetCopy;
  intent = [widgetCopy intent];
  v18 = [MEMORY[0x1E695DF00] now];
  [v14 userDidDismissSuggestionForWidget:extensionBundleId kind:widgetKind intent:intent atDate:v18 duration:duration];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = suggestionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    if (isCopy)
    {
      v23 = 120;
    }

    else
    {
      v23 = 8;
    }

    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        executableSpecification = [v25 executableSpecification];
        executableType = [executableSpecification executableType];

        if (executableType == 1)
        {
          v28 = 8;
        }

        else
        {
          v28 = v23;
        }

        [(ATXEngagementRecordManager *)self->_engagementRecordManager addHiddenSuggestion:v25 duration:v28 engagementRecordType:691200.0];
        [(ATXActionPredictionClient *)self->_actionPredictionClient removeActionPredictionNotificationsMatchingSuggestion:v25 reply:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }
}

- (void)logContextMenuDismissOnceForSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id
{
  suggestionCopy = suggestion;
  widgetCopy = widget;
  idCopy = id;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__ATXHomeScreenSuggestionClient_logContextMenuDismissOnceForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v16 = suggestionCopy;
  selfCopy = self;
  v18 = widgetCopy;
  v19 = idCopy;
  v12 = idCopy;
  v13 = widgetCopy;
  v14 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

uint64_t __95__ATXHomeScreenSuggestionClient_logContextMenuDismissOnceForSuggestion_widget_blendingCacheId___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = [*(a1 + 32) executableSpecification];
    v8 = [v7 executableDescription];
    v9 = MEMORY[0x1E69C5BC8];
    v10 = [*(a1 + 32) executableSpecification];
    v11 = [v9 stringForExecutableType:{objc_msgSend(v10, "executableType")}];
    *buf = 138543874;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: handling dismiss once for suggestion with uuid: %{public}@ executable description: %@ executable type: %{public}@", buf, 0x20u);
  }

  v12 = *(a1 + 40);
  v16 = *(a1 + 32);
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v12 _dismissSuggestions:v13 guardedData:v3 fromSuggestionsWidget:*(a1 + 48) dismissFromAllUIs:1 duration:3600.0];

  [*(a1 + 40) _replaceSuggestionIfNeeded:*(a1 + 32) fromProactiveWidget:*(a1 + 48) guardedData:v3];
  v14 = v3[25];

  return [v14 logContextMenuDismissOnceForSuggestion:*(a1 + 32) widget:*(a1 + 48) blendingCacheId:*(a1 + 56)];
}

- (void)logContextMenuNeverShowAgainForSuggestion:(id)suggestion widget:(id)widget blendingCacheId:(id)id
{
  suggestionCopy = suggestion;
  widgetCopy = widget;
  idCopy = id;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__ATXHomeScreenSuggestionClient_logContextMenuNeverShowAgainForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v16 = suggestionCopy;
  selfCopy = self;
  v18 = widgetCopy;
  v19 = idCopy;
  v12 = idCopy;
  v13 = widgetCopy;
  v14 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

uint64_t __98__ATXHomeScreenSuggestionClient_logContextMenuNeverShowAgainForSuggestion_widget_blendingCacheId___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = MEMORY[0x1E69C5BC8];
    v8 = [*(a1 + 32) executableSpecification];
    v9 = [v7 stringForExecutableType:{objc_msgSend(v8, "executableType")}];
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: handling never show again for suggestion with uuid: %{public}@ executable type: %{public}@", &v12, 0x16u);
  }

  [*(*(a1 + 40) + 56) addHiddenSuggestion:*(a1 + 32) duration:120 engagementRecordType:86400.0];
  [*(a1 + 40) _toggleSiriSearchSettingsOffForAppSuggestion:*(a1 + 32)];
  [*(a1 + 40) _replaceSuggestionIfNeeded:*(a1 + 32) fromProactiveWidget:*(a1 + 48) guardedData:v3];
  v10 = v3[25];

  return [v10 logContextMenuNeverShowAgainForSuggestion:*(a1 + 32) widget:*(a1 + 48) blendingCacheId:*(a1 + 56)];
}

- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__ATXHomeScreenSuggestionClient_logUserDidAcceptWidgetOnboardingSuggestion___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = suggestionCopy;
  v6 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__ATXHomeScreenSuggestionClient_logUserDidRejectWidgetOnboardingSuggestion___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = suggestionCopy;
  v6 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidSwitchHomeScreenExperience:(unint64_t)experience
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__ATXHomeScreenSuggestionClient_logUserDidSwitchHomeScreenExperience___block_invoke;
  v4[3] = &__block_descriptor_40_e50_v16__0__ATXHomeScreenSuggestionClientGuardedData_8l;
  v4[4] = experience;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v4];
}

- (BOOL)_replaceSuggestionIfNeeded:(id)needed fromProactiveWidget:(id)widget guardedData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  widgetCopy = widget;
  dataCopy = data;
  extensionBundleId = [widgetCopy extensionBundleId];
  v12 = [extensionBundleId isEqualToString:*MEMORY[0x1E698AFC0]];

  if (v12)
  {
    v13 = 11;
  }

  else
  {
    extensionBundleId2 = [widgetCopy extensionBundleId];
    v15 = [extensionBundleId2 isEqualToString:@"com.apple.proactive.appprediction.panel"];

    if (v15)
    {
      v13 = 19;
    }

    else
    {
      v16 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXHomeScreenSuggestionClient _replaceSuggestionIfNeeded:fromProactiveWidget:guardedData:];
      }

      v13 = 3;
    }
  }

  v17 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:neededCopy engagementRecordType:v13];
  v18 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [neededCopy uuid];
    uUIDString = [uuid UUIDString];
    v24 = 136315650;
    v25 = "[ATXHomeScreenSuggestionClient _replaceSuggestionIfNeeded:fromProactiveWidget:guardedData:]";
    v26 = 2114;
    v27 = uUIDString;
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "%s: suggestionID %{public}@, isSuggestionReplacementNeeded %{BOOL}u", &v24, 0x1Cu);
  }

  if (v17)
  {
    uuid2 = [neededCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionForAllProactiveWidgets:uUIDString2 guardedData:dataCopy];
  }

  return v17;
}

- (void)_replaceSuggestionForAllProactiveWidgets:(id)widgets guardedData:(id)data
{
  rotationSuppressionInterval = self->_rotationSuppressionInterval;
  timerLeeway = self->_timerLeeway;
  dataCopy = data;
  widgetsCopy = widgets;
  [(ATXHomeScreenSuggestionClient *)self _startSuppressingRotationForTimeInterval:dataCopy leeway:rotationSuppressionInterval guardedData:timerLeeway];
  [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:widgetsCopy shouldSuggestionsBeDisjoint:0 guardedData:dataCopy];

  [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutLayoutUpdateWithGuardedData:dataCopy];
  v10 = MEMORY[0x1E69C5BB8];

  [v10 refreshBlendingLayerWithReason:@"Replaced suggestion for all widgets"];
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)suggestion
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification2 executableObject];

  if (executableType == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = executableObject;
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    v10 = *MEMORY[0x1E695E8B8];
    v11 = *MEMORY[0x1E695E898];
    v12 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_opt_new();
    }

    v15 = v14;

    v16 = [v9 initWithArray:v15];
    [v16 addObject:v8];
    CFPreferencesSetAppValue(@"SBSearchSuggestAppDisabled", [v16 allObjects], @"com.apple.spotlightui");
    CFPreferencesSynchronize(@"com.apple.spotlightui", v10, v11);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.spotlightui.prefschanged", 0, 0, 1u);

    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "toggled siri & search settings for spotlight OFF for app prediction: %@", &v19, 0xCu);
    }
  }

  else
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenSuggestionClient _toggleSiriSearchSettingsOffForAppSuggestion:suggestionCopy];
    }
  }
}

- (id)_newSuggestionLayoutForOldLayout:(id)layout replacedSuggestionId:(id)id shouldSuggestionsBeDisjoint:(BOOL)disjoint usedFallbackIndexSet:(id)set guardedData:(id)data
{
  disjointCopy = disjoint;
  dataCopy = data;
  setCopy = set;
  idCopy = id;
  layoutCopy = layout;
  oneByOneSuggestions = [layoutCopy oneByOneSuggestions];
  v33 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:oneByOneSuggestions suggestionLayoutType:1 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  oneByTwoSuggestions = [layoutCopy oneByTwoSuggestions];
  v32 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:oneByTwoSuggestions suggestionLayoutType:2 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
  v31 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:twoByTwoSuggestions suggestionLayoutType:3 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  oneByFourSuggestions = [layoutCopy oneByFourSuggestions];
  v20 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:oneByFourSuggestions suggestionLayoutType:5 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  twoByFourSuggestions = [layoutCopy twoByFourSuggestions];
  v22 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:twoByFourSuggestions suggestionLayoutType:4 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  fourByFourSuggestions = [layoutCopy fourByFourSuggestions];
  v24 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:fourByFourSuggestions suggestionLayoutType:6 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  fourByEightSuggestions = [layoutCopy fourByEightSuggestions];
  v26 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:idCopy fromSuggestionsArray:fourByEightSuggestions suggestionLayoutType:7 usedFallbackIndexSet:setCopy shouldSuggestionsBeDisjoint:disjointCopy guardedData:dataCopy];

  v27 = [objc_alloc(MEMORY[0x1E69C5C10]) initWithLayoutType:objc_msgSend(layoutCopy oneByOneSuggestions:"layoutType") oneByTwoSuggestions:v33 twoByTwoSuggestions:v32 oneByFourSuggestions:v31 twoByFourSuggestions:v20 fourByFourSuggestions:v22 fourByEightSuggestions:{v24, v26}];
  [layoutCopy layoutScore];
  [v27 setLayoutScore:?];
  uuid = [layoutCopy uuid];
  [v27 setUuid:uuid];

  [v27 setIsValidForSuggestionsWidget:{objc_msgSend(layoutCopy, "isValidForSuggestionsWidget")}];
  [v27 setConfidenceWarrantsSnappingOrNPlusOne:{objc_msgSend(layoutCopy, "confidenceWarrantsSnappingOrNPlusOne")}];
  [v27 setIsNPlusOne:{objc_msgSend(layoutCopy, "isNPlusOne")}];
  widgetUniqueId = [layoutCopy widgetUniqueId];

  [v27 setWidgetUniqueId:widgetUniqueId];
  return v27;
}

- (void)_replaceSuggestionWithId:(id)id shouldSuggestionsBeDisjoint:(BOOL)disjoint guardedData:(id)data
{
  v44 = *MEMORY[0x1E69E9840];
  idCopy = id;
  dataCopy = data;
  v9 = dataCopy + 12;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dataCopy[12], "count")}];
  v11 = dataCopy + 13;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dataCopy[13], "count")}];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9;
  v40 = __Block_byref_object_dispose__9;
  v41 = objc_opt_new();
  v13 = dataCopy[12];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __98__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_shouldSuggestionsBeDisjoint_guardedData___block_invoke;
  v30[3] = &unk_1E80C3908;
  v30[4] = self;
  v14 = idCopy;
  disjointCopy = disjoint;
  v31 = v14;
  v34 = &v36;
  v15 = dataCopy;
  v32 = v15;
  v16 = v10;
  v33 = v16;
  [v13 enumerateKeysAndObjectsUsingBlock:v30];
  v17 = *v11;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_shouldSuggestionsBeDisjoint_guardedData___block_invoke_2;
  v24[3] = &unk_1E80C3908;
  v24[4] = self;
  v18 = v14;
  disjointCopy2 = disjoint;
  v25 = v18;
  v28 = &v36;
  v19 = v15;
  v26 = v19;
  v20 = v12;
  v27 = v20;
  [v17 enumerateKeysAndObjectsUsingBlock:v24];
  objc_storeStrong(v9, v10);
  objc_storeStrong(v11, v12);
  [v19[15] removeObjectsAtIndexes:v37[5]];
  v21 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [*v9 allKeys];
    *buf = 138543362;
    v43 = allKeys;
    _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: setting new suggestion widget layouts after replacement: %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(&v36, 8);
}

void __98__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_shouldSuggestionsBeDisjoint_guardedData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v8 = *(*(*(a1 + 64) + 8) + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = [v5 _newSuggestionLayoutForOldLayout:a3 replacedSuggestionId:v6 shouldSuggestionsBeDisjoint:v7 usedFallbackIndexSet:v8 guardedData:v9];
  [*(a1 + 56) setObject:v11 forKeyedSubscript:v10];
}

void __98__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_shouldSuggestionsBeDisjoint_guardedData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v8 = *(*(*(a1 + 64) + 8) + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = [v5 _newSuggestionLayoutForOldLayout:a3 replacedSuggestionId:v6 shouldSuggestionsBeDisjoint:v7 usedFallbackIndexSet:v8 guardedData:v9];
  [*(a1 + 56) setObject:v11 forKeyedSubscript:v10];
}

- (id)_replaceSuggestionWithId:(id)id fromSuggestionsArray:(id)array suggestionLayoutType:(int64_t)type usedFallbackIndexSet:(id)set shouldSuggestionsBeDisjoint:(BOOL)disjoint guardedData:(id)data
{
  idCopy = id;
  arrayCopy = array;
  setCopy = set;
  dataCopy = data;
  if (arrayCopy)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = [arrayCopy count];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke;
    v39[3] = &unk_1E80C3930;
    v40 = idCopy;
    v41 = &v42;
    [arrayCopy enumerateObjectsUsingBlock:v39];
    v18 = v43[3];
    if (v18 == [arrayCopy count])
    {
      v19 = arrayCopy;
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = [dataCopy[15] count];
      v20 = dataCopy[15];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke_2;
      v28 = &unk_1E80C3958;
      selfCopy = self;
      v30 = dataCopy;
      disjointCopy = disjoint;
      v21 = setCopy;
      v32 = &v35;
      typeCopy = type;
      v31 = v21;
      [v20 enumerateObjectsUsingBlock:&v25];
      v22 = v36[3];
      if (v22 == [dataCopy[15] count])
      {
        v19 = arrayCopy;
      }

      else
      {
        v23 = [dataCopy[15] objectAtIndexedSubscript:v36[3]];
        [v21 addIndex:v36[3]];
        v19 = [arrayCopy mutableCopy];
        [v19 replaceObjectAtIndex:v43[3] withObject:v23];
      }

      _Block_object_dispose(&v35, 8);
    }

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 uuid];
  v8 = [v7 UUIDString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 isValidForSuggestionsWidget] && (objc_msgSend(*(a1 + 32), "_isFallbackSuggestionUsed:guardedData:", v7, *(a1 + 40)) & 1) == 0 && (*(a1 + 72) != 1 || (objc_msgSend(*(a1 + 48), "containsIndex:", a3) & 1) == 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 uiSpecification];
    v9 = [v8 preferredLayoutConfigs];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * v13) applicableLayoutType] == *(a1 + 64))
          {
            *(*(*(a1 + 56) + 8) + 24) = a3;
            *a4 = 1;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_knownProactiveWidgetUniqueIdentifiersInPages:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_fault_impl(&dword_1BF549000, a4, OS_LOG_TYPE_FAULT, "ATXHomeScreenSuggestionClient: Proactive widget in stack %{public}@ does not have widget unique ID.", a1, 0xCu);
}

void __78__ATXHomeScreenSuggestionClient_layoutForSuggestionsWidget_completionHandler___block_invoke_cold_1(id *a1)
{
  [*a1 size];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void __79__ATXHomeScreenSuggestionClient_layoutForAppPredictionPanel_completionHandler___block_invoke_cold_1(id *a1)
{
  [*a1 size];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 uiSpecification];
  v2 = [v1 title];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5_4(v3, v4, v5, v6, v7);
}

void __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_2(void *a1)
{
  v1 = [a1 uiSpecification];
  v2 = [v1 title];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5_4(v3, v4, v5, v6, v7);
}

void __88__ATXHomeScreenSuggestionClient_isSuggestionReplacementAvailableForSuggestion_inLayout___block_invoke_2_cold_3(void *a1)
{
  v1 = [a1 uiSpecification];
  v2 = [v1 title];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5_4(v3, v4, v5, v6, v7);
}

void __63__ATXHomeScreenSuggestionClient_homeScreenPredictionWithReply___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = "[ATXHomeScreenSuggestionClient homeScreenPredictionWithReply:]_block_invoke";
  OUTLINED_FUNCTION_5_4(&dword_1BF549000, a1, a3, "%s", &v3);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "ATXHomeScreenSuggestionClient: Rejecting connection %{public}@ without entitlement %{public}@", v2, 0x16u);
}

void __106__ATXHomeScreenSuggestionClient_logWidgetAddedFeaturesInCoreAnalytics_rankOfWidgetInGallery_galleryItems___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "[ATXHomeScreenSuggestionClient logWidgetAddedFeaturesInCoreAnalytics:rankOfWidgetInGallery:galleryItems:]_block_invoke";
  OUTLINED_FUNCTION_4_3();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "%s: error with xpc connection to logWidgetAddedFeaturesInCoreAnalytics: %@", &v1, 0x16u);
}

- (void)logWidgetInsertionDidFailInStack:(void *)a1 prediction:.cold.1(void *a1)
{
  v2 = [a1 widgetUniqueId];
  v3 = [a1 extensionBundleId];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x20u);
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(void *)a1 .cold.1(void *a1)
{
  v1 = MEMORY[0x1E69C5BC8];
  v2 = [a1 executableSpecification];
  v3 = [v1 stringForExecutableType:{objc_msgSend(v2, "executableType")}];
  v4 = objc_opt_class();
  v9 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x20u);
}

@end