@interface ATXHomeScreenSuggestionClient
+ (id)sharedInstance;
- (ATXHomeScreenSuggestionClient)initWithHomeScreenConfigCache:(id)a3 engagementRecordManager:(id)a4 widgetDwellTracker:(id)a5 widgetDismissManager:(id)a6 uiCacheManager:(id)a7 actionPredictionClient:(id)a8 chronoServicesProvider:(id)a9 store:(id)a10 logger:(id)a11;
- (BOOL)_isFallbackSuggestionUsed:(id)a3 guardedData:(id)a4;
- (BOOL)_isWidgetEngaged:(id)a3 kind:(id)a4 afterMostRecentProactiveRotationToSuggestionWithIdentifier:(id)a5 guardedData:(id)a6;
- (BOOL)_replaceSuggestionIfNeeded:(id)a3 fromProactiveWidget:(id)a4 guardedData:(id)a5;
- (BOOL)hasWidgetBeenSeen:(id)a3;
- (BOOL)hasWidgetBeenTapped:(id)a3;
- (BOOL)isSuggestionReplacementAvailableForSuggestion:(id)a3 inLayout:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:(id)a3 cachedSuggestions:(id)a4;
- (id)_knownProactiveWidgetUniqueIdentifiersInPages:(id)a3;
- (id)_loadKnownHomeScreenProactiveWidgetUniqueIds;
- (id)_loadKnownTodayPageProactiveWidgetUniqueIds;
- (id)_newSuggestionLayoutForOldLayout:(id)a3 replacedSuggestionId:(id)a4 shouldSuggestionsBeDisjoint:(BOOL)a5 usedFallbackIndexSet:(id)a6 guardedData:(id)a7;
- (id)_replaceSuggestionWithId:(id)a3 fromSuggestionsArray:(id)a4 suggestionLayoutType:(int64_t)a5 usedFallbackIndexSet:(id)a6 shouldSuggestionsBeDisjoint:(BOOL)a7 guardedData:(id)a8;
- (id)homeScreenPrediction;
- (id)unusedFallbackAppSuggestionsForPage:(int64_t)a3;
- (int64_t)_layoutTypeOfSuggestion:(id)a3 inLayout:(id)a4;
- (unint64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)a3;
- (void)_alertUserIfNeededOfStackChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5;
- (void)_cancelAndReleaseLayoutUpdateSuppressionTimer:(id)a3;
- (void)_cleanupGuardedData:(id)a3;
- (void)_clearRotationSuppressionTimerWithGuardedData:(id)a3;
- (void)_dismissSuggestions:(id)a3 guardedData:(id)a4 fromSuggestionsWidget:(id)a5 dismissFromAllUIs:(BOOL)a6 duration:(double)a7;
- (void)_layoutUpdateSuppressionTimerFired;
- (void)_notifyObserversAboutLayoutUpdateWithGuardedData:(id)a3;
- (void)_notifyObserversAboutSuggestionRefreshWithGuardedData:(id)a3;
- (void)_readCachedSuggestionsFromDiskAndUpdateGuardedData:(id)a3;
- (void)_recordSuggestedWidgetIfNecessaryInStacks:(id)a3 guardedData:(id)a4;
- (void)_refreshInferredEngagementStatusForWidgetSuggestions:(id)a3;
- (void)_replaceSuggestionForAllProactiveWidgets:(id)a3 guardedData:(id)a4;
- (void)_replaceSuggestionWithId:(id)a3 shouldSuggestionsBeDisjoint:(BOOL)a4 guardedData:(id)a5;
- (void)_rotationSuppressionTimerFired;
- (void)_startSuppressingRotationForTimeInterval:(double)a3 leeway:(double)a4 guardedData:(id)a5;
- (void)_startSuppressingSystemInitiatedLayoutUpdateForTimeInterval:(double)a3 leeway:(double)a4 guardedData:(id)a5;
- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)a3;
- (void)_updateGuardedData:(id)a3 withCachedSuggestions:(id)a4 updateProactiveWidgetLayoutsOnly:(BOOL)a5;
- (void)_updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:(id)a3;
- (void)_updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:(id)a3;
- (void)_writeDockAppList:(id)a3 guardedData:(id)a4 completionHandler:(id)a5;
- (void)_writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 guardedData:(id)a5 completionHandler:(id)a6;
- (void)_writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 guardedData:(id)a5 completionHandler:(id)a6;
- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)a3 completion:(id)a4;
- (void)chronoServiceProvider:(id)a3 finishedPrewarmingSuggestions:(id)a4;
- (void)chronoServiceProvider:(id)a3 reloadDidCompleteForWidget:(id)a4 success:(BOOL)a5 widgetIsReadyForDisplay:(BOOL)a6 error:(id)a7;
- (void)dealloc;
- (void)didFinishExecutingTappedSuggestion:(id)a3 fromWidget:(id)a4;
- (void)forceDebugRotationForStack:(id)a3 extensionBundleId:(id)a4 kind:(id)a5 completion:(id)a6;
- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)a3;
- (void)homeScreenPredictionWithReply:(id)a3;
- (void)layoutForAppPredictionPanel:(id)a3 completionHandler:(id)a4;
- (void)layoutForSuggestionsWidget:(id)a3 completionHandler:(id)a4;
- (void)loadHomeScreenPageConfigurationsForClientWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)loadHomeScreenPageConfigurationsWithCompletionHandler:(id)a3;
- (void)logContextMenuDismissOnceForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logContextMenuNeverShowAgainForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logDeviceLock;
- (void)logDidTapSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logHomeScreenDidDisappearWithReason:(id)a3;
- (void)logHomeScreenPageDidAppear:(unint64_t)a3 topWidgetsByStackIdentifier:(id)a4 prediction:(id)a5;
- (void)logSpecialPageDidAppear:(unint64_t)a3 widgetsByStackId:(id)a4 prediction:(id)a5;
- (void)logSpecialPageDidDisappear:(unint64_t)a3;
- (void)logStackDidAppear:(id)a3 topWidget:(id)a4 prediction:(id)a5;
- (void)logStackDidDisappear:(id)a3 topWidget:(id)a4 prediction:(id)a5;
- (void)logStackDidTap:(id)a3 engagedUrl:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6;
- (void)logStackStatusDidChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5 prediction:(id)a6;
- (void)logStackVisibilityChanged:(id)a3 visibleRect:(CGRect)a4 topWidget:(id)a5 prediction:(id)a6;
- (void)logSuggestionsDidAppear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logSuggestionsDidDisappear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logSupplementaryActionInContextMenu:(unint64_t)a3 stackId:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6;
- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)a3;
- (void)logUserDidAddApp:(id)a3 page:(id)a4;
- (void)logUserDidAddPinnedWidget:(id)a3 page:(id)a4 defaultsComparator:(id)a5;
- (void)logUserDidAddWidgetToStack:(id)a3 stackIdentifier:(id)a4 isSuggestion:(BOOL)a5;
- (void)logUserDidChangeStackConfiguration:(id)a3;
- (void)logUserDidCreateStack:(id)a3 page:(id)a4 isSuggestion:(BOOL)a5;
- (void)logUserDidDeletePinnedWidget:(id)a3 stackLocation:(unint64_t)a4 page:(id)a5;
- (void)logUserDidDeleteStack:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 page:(id)a6;
- (void)logUserDidDeleteWidgetOnStack:(id)a3 stackIdentifier:(id)a4 stackKind:(unint64_t)a5 stackLocation:(unint64_t)a6;
- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)a3;
- (void)logUserDidRemoveApp:(id)a3 page:(id)a4;
- (void)logUserDidSwitchHomeScreenExperience:(unint64_t)a3;
- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5;
- (void)logWidgetDidAppear:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetDidAppear:(id)a3 stackId:(id)a4 prediction:(id)a5;
- (void)logWidgetDidDisappear:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetDidDisappear:(id)a3 stackId:(id)a4 prediction:(id)a5;
- (void)logWidgetInsertionDidFailInStack:(id)a3 prediction:(id)a4;
- (void)logWidgetOccluded:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetUnoccluded:(id)a3 blendingCacheId:(id)a4;
- (void)markFallbackAppSuggestion:(id)a3 asUnusedForPage:(int64_t)a4;
- (void)markFallbackAppSuggestion:(id)a3 asUsedForPage:(int64_t)a4;
- (void)registerObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setIsUserInteractingWithProactiveWidget:(BOOL)a3;
- (void)significantDwellDetectedForWidget:(id)a3 date:(id)a4;
- (void)startSuppressingRotationForTimeInterval:(double)a3 leeway:(double)a4;
- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)a3;
- (void)writeDockAppList:(id)a3 completionHandler:(id)a4;
- (void)writeHomeScreenPageConfigurations:(id)a3 completionHandler:(id)a4;
- (void)writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 completionHandler:(id)a5;
@end

@implementation ATXHomeScreenSuggestionClient

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ATXHomeScreenSuggestionClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (ATXHomeScreenSuggestionClient)initWithHomeScreenConfigCache:(id)a3 engagementRecordManager:(id)a4 widgetDwellTracker:(id)a5 widgetDismissManager:(id)a6 uiCacheManager:(id)a7 actionPredictionClient:(id)a8 chronoServicesProvider:(id)a9 store:(id)a10 logger:(id)a11
{
  v17 = a3;
  v55 = a4;
  v54 = a5;
  v53 = a6;
  v52 = a7;
  v47 = a8;
  v51 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a11;
  v61.receiver = self;
  v61.super_class = ATXHomeScreenSuggestionClient;
  v18 = [(ATXHomeScreenSuggestionClient *)&v61 init];
  if (v18)
  {
    v45 = v17;
    v19 = objc_opt_new();
    v20 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    v21 = *(v19 + 8);
    *(v19 + 8) = v20;

    v22 = objc_opt_new();
    v23 = *(v19 + 80);
    *(v19 + 80) = v22;

    objc_storeStrong((v19 + 192), a10);
    objc_storeStrong((v19 + 208), a6);
    objc_storeStrong((v19 + 200), a11);
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

    objc_storeStrong(v18 + 5, a7);
    objc_storeStrong(v18 + 6, a3);
    objc_storeStrong(v18 + 7, a4);
    objc_storeStrong(v18 + 8, a5);
    [*(v18 + 8) setDelegate:v18];
    *(v18 + 104) = xmmword_1BF6F5660;
    *(v18 + 15) = 0x4014000000000000;
    objc_storeStrong(v18 + 9, v47);
    objc_storeStrong(v18 + 10, a9);
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

    v17 = v45;
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

- (void)registerObserver:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ATXHomeScreenSuggestionClient_registerObserver___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ATXHomeScreenSuggestionClient_removeObserver___block_invoke;
  v7[3] = &unk_1E80C3470;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)startSuppressingRotationForTimeInterval:(double)a3 leeway:(double)a4
{
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__ATXHomeScreenSuggestionClient_startSuppressingRotationForTimeInterval_leeway___block_invoke;
  v5[3] = &unk_1E80C3498;
  v5[4] = self;
  *&v5[5] = a3;
  *&v5[6] = a4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v5];
}

- (void)_startSuppressingRotationForTimeInterval:(double)a3 leeway:(double)a4 guardedData:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v9 = *MEMORY[0x1E698B060];
    keyExistsAndHasValidFormat[0] = 0;
    if (CFPreferencesGetAppBooleanValue(v9, *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
    {
      a4 = 0.01;
      a3 = 1.0;
    }
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 134218240;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: start suppressing rotation for %f seconds with %f leeway seconds", keyExistsAndHasValidFormat, 0x16u);
  }

  v11 = v8[2];
  if (!v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_outputQueue);
    v13 = v8[2];
    v8[2] = v12;

    objc_initWeak(keyExistsAndHasValidFormat, self);
    v14 = v8[2];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __93__ATXHomeScreenSuggestionClient__startSuppressingRotationForTimeInterval_leeway_guardedData___block_invoke;
    handler[3] = &unk_1E80C10D8;
    objc_copyWeak(&v16, keyExistsAndHasValidFormat);
    dispatch_source_set_event_handler(v14, handler);
    objc_destroyWeak(&v16);
    objc_destroyWeak(keyExistsAndHasValidFormat);
    v11 = v8[2];
  }

  dispatch_source_set_timer(v11, [MEMORY[0x1E69C5D10] dispatchTimeWithSecondsFromNow:a3], 0xFFFFFFFFFFFFFFFFLL, (a4 * 1000000000.0));
  dispatch_activate(v8[2]);
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

- (void)_startSuppressingSystemInitiatedLayoutUpdateForTimeInterval:(double)a3 leeway:(double)a4 guardedData:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v9 = *MEMORY[0x1E698B060];
    keyExistsAndHasValidFormat[0] = 0;
    if (CFPreferencesGetAppBooleanValue(v9, *MEMORY[0x1E698B030], keyExistsAndHasValidFormat))
    {
      a4 = 0.01;
      a3 = 1.0;
    }
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 134218240;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: start suppressing layout update for %f seconds with %f leeway seconds", keyExistsAndHasValidFormat, 0x16u);
  }

  v11 = v8[3];
  if (!v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_outputQueue);
    v13 = v8[3];
    v8[3] = v12;

    objc_initWeak(keyExistsAndHasValidFormat, self);
    v14 = v8[3];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __112__ATXHomeScreenSuggestionClient__startSuppressingSystemInitiatedLayoutUpdateForTimeInterval_leeway_guardedData___block_invoke;
    handler[3] = &unk_1E80C10D8;
    objc_copyWeak(&v16, keyExistsAndHasValidFormat);
    dispatch_source_set_event_handler(v14, handler);
    objc_destroyWeak(&v16);
    objc_destroyWeak(keyExistsAndHasValidFormat);
    v11 = v8[3];
  }

  dispatch_source_set_timer(v11, [MEMORY[0x1E69C5D10] dispatchTimeWithSecondsFromNow:a3], 0xFFFFFFFFFFFFFFFFLL, (a4 * 1000000000.0));
  dispatch_activate(v8[3]);
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

- (void)_cancelAndReleaseLayoutUpdateSuppressionTimer:(id)a3
{
  v3 = *(a3 + 3);
  if (v3)
  {
    v5 = a3;
    dispatch_source_cancel(v3);
    v6 = *(a3 + 3);
    *(a3 + 3) = 0;
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

- (id)_knownProactiveWidgetUniqueIdentifiersInPages:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
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
        v32 = [v7 stacks];
        v34 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
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
                objc_enumerationMutation(v32);
              }

              v35 = v8;
              v9 = *(*(&v44 + 1) + 8 * v8);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v10 = [v9 widgets];
              v11 = [v10 countByEnumeratingWithState:&v40 objects:v55 count:16];
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
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v40 + 1) + 8 * i);
                    v16 = [v15 extensionBundleId];
                    v17 = [v16 isEqualToString:v5];

                    if (v17)
                    {
                      v18 = [v15 widgetUniqueId];

                      if (v18)
                      {
                        v19 = [v15 widgetUniqueId];
                        [v4 addObject:v19];
                      }

                      else
                      {
                        v19 = __atxlog_handle_home_screen();
                        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
                        {
                          [(ATXHomeScreenSuggestionClient *)v53 _knownProactiveWidgetUniqueIdentifiersInPages:v9, &v54, v19];
                        }
                      }
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v40 objects:v55 count:16];
                }

                while (v12);
              }

              v8 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v34);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v20 = [v30 panels];
        v21 = [v20 countByEnumeratingWithState:&v36 objects:v52 count:16];
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
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v36 + 1) + 8 * j) identifier];
              [v4 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v36 objects:v52 count:16];
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

- (void)_readCachedSuggestionsFromDiskAndUpdateGuardedData:(id)a3
{
  v4 = a3;
  v5 = [(ATXUICacheManager *)self->_uiCacheManager cachedLayoutForConsumerSubType:34 expectedClass:objc_opt_class()];
  if (v5)
  {
    [(ATXHomeScreenSuggestionClient *)self _updateGuardedData:v4 withCachedSuggestions:v5 updateProactiveWidgetLayoutsOnly:1];
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

    v7 = v4[17];
    v4[17] = 0;

    v8 = v4[11];
    v4[11] = 0;

    v9 = objc_opt_new();
    v10 = v4[14];
    v4[14] = v9;

    v11 = objc_opt_new();
    v12 = v4[12];
    v4[12] = v11;

    v13 = objc_opt_new();
    v14 = v4[13];
    v4[13] = v13;

    v15 = objc_opt_new();
    v16 = v4[15];
    v4[15] = v15;

    v17 = v4[18];
    v4[18] = 0;
  }
}

- (void)_updateKnownWidgetUniqueIdsIfNecessaryWithGuardedData:(id)a3
{
  v4 = a3;
  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:v4])
  {
    if (*(v4 + 64) == 1)
    {
      v5 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updating known today page widget unique ids", buf, 2u);
      }

      v6 = [(ATXHomeScreenSuggestionClient *)self _loadKnownTodayPageProactiveWidgetUniqueIds];
      v7 = v4[7];
      v4[7] = v6;

      *(v4 + 64) = 0;
    }

    if (*(v4 + 48) == 1)
    {
      v8 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updating known Home Screen widget unique ids", v11, 2u);
      }

      v9 = [(ATXHomeScreenSuggestionClient *)self _loadKnownHomeScreenProactiveWidgetUniqueIds];
      v10 = v4[5];
      v4[5] = v9;

      *(v4 + 48) = 0;
    }
  }
}

- (id)_computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:(id)a3 cachedSuggestions:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  v8 = [v5[12] allKeys];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v7 initWithArray:v11];

  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  v34 = v6;
  v14 = [v6 cachedSuggestionWidgetLayouts];
  v15 = [v14 allKeys];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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
  v19 = v5;
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
        v31 = [v5[12] objectForKeyedSubscript:v30];
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

- (void)_updateGuardedData:(id)a3 withCachedSuggestions:(id)a4 updateProactiveWidgetLayoutsOnly:(BOOL)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:v8]&& !*(v8 + 2))
  {
    v11 = *(v8 + 9);
    *(v8 + 9) = 0;
  }

  else
  {
    v10 = v9;
    v11 = *(v8 + 9);
    *(v8 + 9) = v10;
  }

  if ([(ATXHomeScreenSuggestionClient *)self _isSystemInitiatedLayoutUpdateAllowed:v8])
  {
    v12 = [(ATXHomeScreenSuggestionClient *)self _computePreviousSuggestedSuggestionWidgetLayoutsWithGuardedData:v8 cachedSuggestions:v9];
    v13 = *(v8 + 11);
    *(v8 + 11) = v12;

    if ([*(v8 + 11) count])
    {
      v14 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(v8 + 11) allKeys];
        *buf = 138412290;
        v35 = v15;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: keeping around previously-removed suggested suggestion widget layouts: %@", buf, 0xCu);
      }

      [(ATXHomeScreenSuggestionClient *)self _clearRotationSuppressionTimerWithGuardedData:v8];
    }

    v16 = [v9 cachedSuggestionWidgetLayouts];
    v17 = *(v8 + 12);
    *(v8 + 12) = v16;

    v18 = [v9 cachedAppPredictionPanelLayouts];
    v19 = *(v8 + 13);
    *(v8 + 13) = v18;

    v20 = [v9 fallbackSuggestions];
    v21 = [v20 mutableCopy];
    v22 = *(v8 + 15);
    *(v8 + 15) = v21;

    v23 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updated Proactive widget layouts", buf, 2u);
    }

    [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutLayoutUpdateWithGuardedData:v8];
    if (!a5)
    {
      if (*(v8 + 2) || [(NSUserDefaults *)self->_atxDefaults BOOLForKey:@"ATXStopAllStackRotation"])
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
        if ([*(v8 + 14) count])
        {
          [(ATXHomeScreenSuggestionClient *)self _refreshInferredEngagementStatusForWidgetSuggestions:v8];
        }

        v25 = [v9 uuid];
        v26 = [v25 UUIDString];
        v27 = *(v8 + 17);
        *(v8 + 17) = v26;

        v28 = [ATXHomeScreenStackSuggestion stackSuggestionsFromCachedSuggestions:v9];
        v29 = *(v8 + 14);
        *(v8 + 14) = v28;

        v30 = *(v8 + 18);
        *(v8 + 18) = 0;

        v31 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: updated stack suggestions", buf, 2u);
        }

        [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutSuggestionRefreshWithGuardedData:v8];
        [(ATXHomeScreenSuggestionClient *)self _handleStackSuggestionDidUpdate:v8];
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

- (void)_refreshInferredEngagementStatusForWidgetSuggestions:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v53 = self;
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
            v12 = [v11 object];
            v13 = [v12 suggestionIdentifier];
            v14 = [v12 widgetBundleIdentifier];
            v15 = [v12 widgetKind];
            v16 = [(ATXHomeScreenSuggestionClient *)v53 _isWidgetEngaged:v14 kind:v15 afterMostRecentProactiveRotationToSuggestionWithIdentifier:v13 guardedData:v52];

            if (!v16)
            {
              v17 = __atxlog_handle_home_screen();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v12 confidenceLevel];
                v19 = [v12 widgetBundleIdentifier];
                *buf = 138543874;
                v65 = v13;
                v66 = 2050;
                v67 = v18;
                v68 = 2112;
                v69 = v19;
                _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "RAS:     [TRYING TO REMOVE ENGAGEMENT] infoSuggestionId %{public}@, confidence %{public}ld, widgetExtBundleId %@", buf, 0x20u);
              }

              v20 = [v12 confidenceLevel];
              if (v20 >= [obj minInfoConfidenceLevelForBlendingConfidenceCategory:3])
              {
                v21 = v49;
              }

              else
              {
                v21 = v48;
              }

              [(ATXEngagementRecordManager *)v53->_engagementRecordManager removeEngagementForExecutableIdentifier:v11 recordType:4 abortingRemovalIfEngagementDateIsLaterThanDate:v21];
            }

            [v54 addObject:v13];
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
  obja = [v52[14] allValues];
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
        v28 = [v27 topWidgetProactiveSuggestion];

        if (v28)
        {
          v29 = [v27 topWidgetProactiveSuggestion];
          v30 = [v29 executableSpecification];
          v31 = [v30 executableIdentifier];

          if ([v54 containsObject:v31])
          {
            v32 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v65 = v31;
              _os_log_impl(&dword_1BF549000, v32, OS_LOG_TYPE_DEFAULT, "RAS:     Skipping infoSuggestionId %{public}@ becaues it was already processed", buf, 0xCu);
            }
          }

          else
          {
            v33 = [v27 topWidget];
            v34 = [v33 extensionBundleId];
            v35 = [v27 topWidget];
            v36 = [v35 widgetKind];
            v37 = [(ATXHomeScreenSuggestionClient *)v53 _isWidgetEngaged:v34 kind:v36 afterMostRecentProactiveRotationToSuggestionWithIdentifier:v31 guardedData:v52];

            if (v37)
            {
              engagementRecordManager = v53->_engagementRecordManager;
              v39 = [v27 topWidgetProactiveSuggestion];
              LODWORD(engagementRecordManager) = [(ATXEngagementRecordManager *)engagementRecordManager hasReferenceForSuggestion:v39];

              v40 = __atxlog_handle_home_screen();
              v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
              if (engagementRecordManager)
              {
                if (v41)
                {
                  v42 = [v27 topWidget];
                  v43 = [v42 extensionBundleId];
                  *buf = 138543618;
                  v65 = v31;
                  v66 = 2112;
                  v67 = v43;
                  _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "RAS:     [ADDING ENGAGEMENT] infoSuggestionId %{public}@, widgetExtBundleId %@", buf, 0x16u);
                }

                v44 = v53->_engagementRecordManager;
                v40 = [v27 topWidgetProactiveSuggestion];
                [(ATXEngagementRecordManager *)v44 addEngagedSuggestion:v40 engagementRecordType:4];
              }

              else if (v41)
              {
                v45 = [v27 topWidget];
                v46 = [v45 extensionBundleId];
                *buf = 138543618;
                v65 = v31;
                v66 = 2112;
                v67 = v46;
                _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "RAS:     Skipping infoSuggestionId %{public}@ because ERM doesn't contain a reference, widgetExtBundleId %@", buf, 0x16u);
              }

              [v54 addObject:v31];
            }
          }
        }
      }

      v24 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v24);
  }
}

- (BOOL)_isWidgetEngaged:(id)a3 kind:(id)a4 afterMostRecentProactiveRotationToSuggestionWithIdentifier:(id)a5 guardedData:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12[24] mostRecentRotationRecordForSuggestionIdentifier:v11];
  v14 = [v13 rotationDate];

  if (v14)
  {
    v15 = [v12[24] mostRecentEngagementOfWidget:v9 kind:v10 ofType:1];
    v16 = [v12[24] mostRecentEngagementOfWidget:v9 kind:v10 ofType:2];
    v17 = [v16 date];
    if (v17 && (v18 = v17, [v15 date], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
    {
      v20 = [v16 date];
      v21 = [v15 date];
      v22 = [v20 laterDate:v21];

      if (!v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = [v16 date];

      if (v23)
      {
        v24 = v16;
      }

      else
      {
        v22 = [v15 date];

        if (!v22)
        {
          goto LABEL_17;
        }

        v24 = v15;
      }

      v22 = [v24 date];
      if (!v22)
      {
        goto LABEL_17;
      }
    }

    v26 = [v13 rotationDate];
    v27 = [v22 earlierDate:v26];

    if (v27 != v22)
    {
      v28 = [v12[24] mostRecentTimelineUpdateDateOfWidget:v9 kind:v10];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = [MEMORY[0x1E695DF00] distantPast];
      }

      v31 = v30;

      v33 = [v22 laterDate:v31];

      log = __atxlog_handle_home_screen();
      v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      v35 = v33 == v31;
      v25 = v33 != v31;
      if (v35)
      {
        if (v34)
        {
          v38 = [v13 rotationDate];
          *buf = 138413314;
          v41 = v9;
          v42 = 2114;
          v43 = v11;
          v44 = 2114;
          v45 = v38;
          v46 = 2114;
          v47 = v22;
          v48 = 2114;
          v49 = v31;
          v36 = "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (mostRecentRotation %{public}@, mostRecentEngagement %{public}@, mostRecentTimelineUpdate %{public}@)";
          goto LABEL_26;
        }
      }

      else if (v34)
      {
        v38 = [v13 rotationDate];
        *buf = 138413314;
        v41 = v9;
        v42 = 2114;
        v43 = v11;
        v44 = 2114;
        v45 = v38;
        v46 = 2114;
        v47 = v22;
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
      v32 = [v13 rotationDate];
      *buf = 138413058;
      v41 = v9;
      v42 = 2114;
      v43 = v11;
      v44 = 2114;
      v45 = v32;
      v46 = 2114;
      v47 = v22;
      _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (mostRecentRotation %{public}@, mostRecentEngagement %{public}@)", buf, 0x2Au);
    }

    v25 = 0;
    goto LABEL_28;
  }

  v15 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v9;
    v42 = 2114;
    v43 = v11;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "RAS:     NO <= _isWidgetEngaged: %@, suggestionId: %{public}@ (nil suggestion rotation date)", buf, 0x16u);
  }

  v25 = 0;
LABEL_29:

  return v25;
}

- (void)_notifyObserversAboutSuggestionRefreshWithGuardedData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a3 + 1);
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

- (void)_notifyObserversAboutLayoutUpdateWithGuardedData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a3 + 1);
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

- (void)_cleanupGuardedData:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: cleaning up guarded data", v14, 2u);
  }

  v6 = v4[11];
  v4[11] = 0;

  v7 = v4[17];
  v4[17] = 0;

  v8 = v4[12];
  v4[12] = 0;

  v9 = v4[13];
  v4[13] = 0;

  v10 = v4[14];
  v4[14] = 0;

  v11 = v4[15];
  v4[15] = 0;

  v12 = v4[18];
  v4[18] = 0;

  v13 = v4[9];
  v4[9] = 0;

  [(ATXHomeScreenSuggestionClient *)self _clearRotationSuppressionTimerWithGuardedData:v4];
}

- (void)_clearRotationSuppressionTimerWithGuardedData:(id)a3
{
  v3 = *(a3 + 2);
  if (v3)
  {
    v5 = a3;
    dispatch_source_cancel(v3);
    v6 = *(a3 + 2);
    *(a3 + 2) = 0;
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

- (void)_alertUserIfNeededOfStackChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(NSUserDefaults *)self->_atxDefaults BOOLForKey:@"ATXHomeScreenStackChangeAlert"])
  {
    v10 = a5 > 9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ((1 << a5) & 0x20C) != 0)
  {
    v36 = v9;
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
        v37 = [v13 stacks];
        v14 = [v37 countByEnumeratingWithState:&v38 objects:v52 count:16];
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
                objc_enumerationMutation(v37);
              }

              v18 = *(*(&v38 + 1) + 8 * i);
              v19 = [v18 identifier];
              v20 = [v19 isEqualToString:v8];

              if (v20)
              {
                v21 = objc_opt_new();
                if (a5 == 9)
                {
                  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v23 = [v36 extensionBundleId];
                  v24 = [v25 initWithFormat:@"%@ (forced debug rotation)", v23];
LABEL_23:
                  v26 = v24;
                  [v21 setObject:v24 forKeyedSubscript:@"widget"];
                }

                else
                {
                  if (a5 == 3)
                  {
                    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v23 = [v36 extensionBundleId];
                    v24 = [v22 initWithFormat:@"%@ (due to suggestion expiry)", v23];
                    goto LABEL_23;
                  }

                  v23 = [v36 extensionBundleId];
                  [v21 setObject:v23 forKeyedSubscript:@"widget"];
                }

                v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "pageIndex")}];
                [v21 setObject:v27 forKeyedSubscript:@"pageNumber"];

                v28 = [MEMORY[0x1E696ABB0] defaultCenter];
                [v28 postNotificationName:@"com.apple.duetexpertd.homeScreenStackChange" object:0 userInfo:v21];

                v29 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v18 identifier];
                  v31 = [v13 pageIndex];
                  *buf = 136315650;
                  v47 = "[ATXHomeScreenSuggestionClient _alertUserIfNeededOfStackChange:widgetOnTop:reason:]";
                  v48 = 2112;
                  v49 = v30;
                  v50 = 2048;
                  v51 = v31;
                  _os_log_impl(&dword_1BF549000, v29, OS_LOG_TYPE_DEFAULT, "%s: sent notification about stackID: %@ on page: %lu", buf, 0x20u);
                }

                continue;
              }
            }

            v15 = [v37 countByEnumeratingWithState:&v38 objects:v52 count:16];
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

        v9 = v36;
        break;
      }
    }
  }
}

- (void)layoutForSuggestionsWidget:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__ATXHomeScreenSuggestionClient_layoutForSuggestionsWidget_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)layoutForAppPredictionPanel:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ATXHomeScreenSuggestionClient_layoutForAppPredictionPanel_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (int64_t)_layoutTypeOfSuggestion:(id)a3 inLayout:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 oneByOneSuggestions];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 oneByTwoSuggestions];
    v11 = [v10 containsObject:v5];

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      v12 = [v6 twoByTwoSuggestions];
      v13 = [v12 containsObject:v5];

      if (v13)
      {
        v9 = 3;
      }

      else
      {
        v14 = [v6 oneByFourSuggestions];
        v15 = [v14 containsObject:v5];

        if (v15)
        {
          v9 = 5;
        }

        else
        {
          v16 = [v6 twoByFourSuggestions];
          v17 = [v16 containsObject:v5];

          if (v17)
          {
            v9 = 4;
          }

          else
          {
            v18 = [v6 fourByFourSuggestions];
            v19 = [v18 containsObject:v5];

            if (v19)
            {
              v9 = 6;
            }

            else
            {
              v20 = [v6 fourByEightSuggestions];
              v21 = [v20 containsObject:v5];

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

- (BOOL)isSuggestionReplacementAvailableForSuggestion:(id)a3 inLayout:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXHomeScreenSuggestionClient *)self _layoutTypeOfSuggestion:v6 inLayout:v7];
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

- (BOOL)_isFallbackSuggestionUsed:(id)a3 guardedData:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 executableSpecification];
  v7 = [v6 executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v5[16] allValues];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsObject:v7])
          {
            LOBYTE(v9) = 1;
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)unusedFallbackAppSuggestionsForPage:(int64_t)a3
{
  v5 = objc_opt_new();
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ATXHomeScreenSuggestionClient_unusedFallbackAppSuggestionsForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  v11 = a3;
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

- (void)markFallbackAppSuggestion:(id)a3 asUnusedForPage:(int64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUnusedForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v9];
}

void __75__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUnusedForPage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:v5];
  [v4 removeObject:*(a1 + 32)];
}

- (void)markFallbackAppSuggestion:(id)a3 asUsedForPage:(int64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__ATXHomeScreenSuggestionClient_markFallbackAppSuggestion_asUsedForPage___block_invoke;
  v9[3] = &unk_1E80C35A8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
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

- (void)didFinishExecutingTappedSuggestion:(id)a3 fromWidget:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ATXHomeScreenSuggestionClient_didFinishExecutingTappedSuggestion_fromWidget___block_invoke;
  v11[3] = &unk_1E80C35D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)setIsUserInteractingWithProactiveWidget:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__ATXHomeScreenSuggestionClient_setIsUserInteractingWithProactiveWidget___block_invoke;
  v4[3] = &unk_1E80C35F8;
  v5 = a3;
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

- (void)homeScreenPredictionWithReply:(id)a3
{
  v4 = a3;
  outputQueue = self->_outputQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXHomeScreenSuggestionClient_homeScreenPredictionWithReply___block_invoke;
  v7[3] = &unk_1E80C2008;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)chronoServiceProvider:(id)a3 finishedPrewarmingSuggestions:(id)a4
{
  v5 = a4;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__ATXHomeScreenSuggestionClient_chronoServiceProvider_finishedPrewarmingSuggestions___block_invoke;
  v8[3] = &unk_1E80C3470;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
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

- (void)chronoServiceProvider:(id)a3 reloadDidCompleteForWidget:(id)a4 success:(BOOL)a5 widgetIsReadyForDisplay:(BOOL)a6 error:(id)a7
{
  v11 = a4;
  v12 = a7;
  lock = self->_lock;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__ATXHomeScreenSuggestionClient_chronoServiceProvider_reloadDidCompleteForWidget_success_widgetIsReadyForDisplay_error___block_invoke;
  v16[3] = &unk_1E80C3648;
  v19 = a5;
  v17 = v11;
  v18 = v12;
  v20 = a6;
  v14 = v12;
  v15 = v11;
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

- (void)_updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:(id)a3
{
  v4 = [ATXHomeScreenStackSuggestion stackSuggestionsFromCachedSuggestions:a3];
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

- (void)blendingLayerDidUpdateHomeScreenCachedSuggestions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenSuggestionClient: received update from duetexpertd", buf, 2u);
  }

  [(ATXChronoServicesProvider *)self->_chronoServicesProvider resetToPrewarmWidgetsInSuggestions:v7];
  [(ATXHomeScreenSuggestionClient *)self _updateLoggerStacksToStackSuggestionsFromHomeScreenCachedSuggestions:v7];

  outputQueue = self->_outputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__ATXHomeScreenSuggestionClient_blendingLayerDidUpdateHomeScreenCachedSuggestions_completion___block_invoke;
  block[3] = &unk_1E80C3698;
  v12 = v6;
  v10 = v6;
  dispatch_async(outputQueue, block);
}

- (void)getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__ATXHomeScreenSuggestionClient_getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C36C0;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:(id)a3
{
  lock = self->_lock;
  v4 = a3;
  [(_PASQueueLock *)lock runWithLockAcquired:&__block_literal_global_160];
  v4[2](v4, 0);
}

void __112__ATXHomeScreenSuggestionClient_synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[24];
  v4 = a2;
  [v3 close];
  v5 = a2[24];
  a2[24] = 0;
}

- (void)forceDebugRotationForStack:(id)a3 extensionBundleId:(id)a4 kind:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  lock = self->_lock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__ATXHomeScreenSuggestionClient_forceDebugRotationForStack_extensionBundleId_kind_completion___block_invoke;
  v19[3] = &unk_1E80C36E8;
  v22 = v12;
  v23 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.proactive.HomeScreenSuggestion.xpc"];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue] & 1) != 0)
  {
    v9 = ATXHomeScreenSuggestionServerXPCInterface();
    [v7 setExportedInterface:v9];

    [v7 setExportedObject:self];
    [v7 setInterruptionHandler:&__block_literal_global_172];
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__ATXHomeScreenSuggestionClient_listener_shouldAcceptNewConnection___block_invoke_173;
    v18 = &unk_1E80C10D8;
    objc_copyWeak(&v19, &location);
    [v7 setInvalidationHandler:&v15];
    v10 = ATXHomeScreenSuggestionClientXPCInterface();
    [v7 setRemoteObjectInterface:{v10, v15, v16, v17, v18}];

    [(ATXHomeScreenSuggestionClient *)self setXpcConnection:v7];
    [v7 resume];
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v7;
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

- (void)logWidgetAddedFeaturesInCoreAnalytics:(id)a3 rankOfWidgetInGallery:(unint64_t)a4 galleryItems:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(ATXHomeScreenSuggestionClient *)self xpcConnection];
  v10 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_175];
  [v10 logWidgetAddedFeaturesInCoreAnalytics:v9 rankOfWidgetInGallery:a4 galleryItems:v8];
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

- (BOOL)hasWidgetBeenSeen:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (BOOL)hasWidgetBeenTapped:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (void)significantDwellDetectedForWidget:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__ATXHomeScreenSuggestionClient_significantDwellDetectedForWidget_date___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (unint64_t)pageIndexOfAppPredictionPanelWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__ATXHomeScreenSuggestionClient_pageIndexOfAppPredictionPanelWithIdentifier___block_invoke;
  v9[3] = &unk_1E80C3738;
  v6 = v4;
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

- (void)loadHomeScreenPageConfigurationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E80C3760;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)loadHomeScreenPageConfigurationsForClientWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__ATXHomeScreenSuggestionClient_loadHomeScreenPageConfigurationsForClientWithIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)writeHomeScreenPageConfigurations:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__ATXHomeScreenSuggestionClient_writeHomeScreenPageConfigurations_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__ATXHomeScreenSuggestionClient_writeHomeScreenPageConfigurations_forClientWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E80C3788;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)_writeHomeScreenPageConfigurations:(id)a3 forClientWithIdentifier:(id)a4 guardedData:(id)a5 completionHandler:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v14 = [v10 copy];
    v15 = *(v12 + 19);
    *(v12 + 19) = v14;

    v16 = [v11 copy];
    v17 = *(v12 + 20);
    *(v12 + 20) = v16;

    v13[2](v13, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v41 = 0;
    v19 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeHomeScreenPageConfigurations:v10 forClientWithIdentifier:v11 error:&v41];
    v20 = v41;
    v21 = v20;
    if (v19)
    {
      v36 = v20;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v10;
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
              v28 = [v27 stacks];
              [(ATXHomeScreenSuggestionClient *)self _recordSuggestedWidgetIfNecessaryInStacks:v28 guardedData:v12];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v24);
      }

      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote home screen page configurations"];
      *(v12 + 48) = 1;
      [*(v12 + 25) homeScreenOrTodayPageConfigDidChange];
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
      v13[2](v13, 0);

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

      (v13)[2](v13, v21);
    }
  }
}

- (void)writeDockAppList:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXHomeScreenSuggestionClient_writeDockAppList_completionHandler___block_invoke;
  v11[3] = &unk_1E80C3508;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)_writeDockAppList:(id)a3 guardedData:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E69C5D08];
  v11 = a3;
  if ([v10 isClassCLocked])
  {
    v12 = [v11 copy];

    v13 = *(v8 + 21);
    *(v8 + 21) = v12;

    v9[2](v9, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v20 = 0;
    v15 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeDockAppList:v11 error:&v20];

    v16 = v20;
    v17 = v16;
    if (v15)
    {
      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote Dock apps"];
      [*(v8 + 25) dockAppListDidChange];
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

    (v9)[2](v9, v18);
  }
}

- (void)writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__ATXHomeScreenSuggestionClient_writeTodayPageStacks_appPredictionPanels_completionHandler___block_invoke;
  v15[3] = &unk_1E80C3788;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)_writeTodayPageStacks:(id)a3 appPredictionPanels:(id)a4 guardedData:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v14 = [v10 copy];
    v15 = *(v12 + 22);
    *(v12 + 22) = v14;

    v16 = [v11 copy];
    v17 = *(v12 + 23);
    *(v12 + 23) = v16;

    v13[2](v13, 0);
  }

  else
  {
    homeScreenConfigCache = self->_homeScreenConfigCache;
    v24 = 0;
    v19 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache writeTodayPageStacks:v10 appPredictionPanels:v11 error:&v24];
    v20 = v24;
    v21 = v20;
    if (v19)
    {
      [(ATXHomeScreenSuggestionClient *)self _recordSuggestedWidgetIfNecessaryInStacks:v10 guardedData:v12];
      [MEMORY[0x1E69C5BB8] refreshBlendingLayerWithReason:@"Wrote Today page configuration"];
      v22 = objc_opt_new();
      [v22 setPageIndex:20000];
      [v22 setStacks:v10];
      [v22 setPanels:v11];
      *(v12 + 64) = 1;
      [*(v12 + 25) homeScreenOrTodayPageConfigDidChange];
      v13[2](v13, 0);
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

      (v13)[2](v13, v21);
    }
  }
}

- (void)_recordSuggestedWidgetIfNecessaryInStacks:(id)a3 guardedData:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v21 = [v5 countByEnumeratingWithState:&v26 objects:v37 count:16];
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
        v9 = [v8 widgets];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v36 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              if ([v14 isSuggestedWidget])
              {
                v15 = [v14 widgetUniqueId];

                if (v15)
                {
                  v16 = v6[24];
                  v17 = [v14 widgetUniqueId];
                  [v16 recordSuggestedWidgetUniqueIdIfNotExist:v17];
                }

                else
                {
                  v17 = __atxlog_handle_home_screen();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
                  {
                    v18 = [v8 identifier];
                    *buf = 136315650;
                    v31 = "[ATXHomeScreenSuggestionClient _recordSuggestedWidgetIfNecessaryInStacks:guardedData:]";
                    v32 = 2112;
                    v33 = v14;
                    v34 = 2114;
                    v35 = v18;
                    _os_log_fault_impl(&dword_1BF549000, v17, OS_LOG_TYPE_FAULT, "%s: Suggested widget %@ in stack %{public}@ does not have widgetUniqueId", buf, 0x20u);
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v36 count:16];
          }

          while (v11);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v21);
  }
}

- (void)logWidgetDidAppear:(id)a3 stackId:(id)a4 prediction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__ATXHomeScreenSuggestionClient_logWidgetDidAppear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logWidgetDidDisappear:(id)a3 stackId:(id)a4 prediction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__ATXHomeScreenSuggestionClient_logWidgetDidDisappear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logStackVisibilityChanged:(id)a3 visibleRect:(CGRect)a4 topWidget:(id)a5 prediction:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  lock = self->_lock;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__ATXHomeScreenSuggestionClient_logStackVisibilityChanged_visibleRect_topWidget_prediction___block_invoke;
  v20[3] = &unk_1E80C37F8;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v20];
}

- (void)logStackDidDisappear:(id)a3 topWidget:(id)a4 prediction:(id)a5
{
  if (a4)
  {

    [(ATXHomeScreenSuggestionClient *)self logWidgetDidDisappear:a4 stackId:a3 prediction:a5];
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

- (void)logStackDidAppear:(id)a3 topWidget:(id)a4 prediction:(id)a5
{
  if (a4)
  {

    [(ATXHomeScreenSuggestionClient *)self logWidgetDidAppear:a4 stackId:a3 prediction:a5];
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

- (void)logHomeScreenPageDidAppear:(unint64_t)a3 topWidgetsByStackIdentifier:(id)a4 prediction:(id)a5
{
  v8 = a4;
  v9 = a5;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__ATXHomeScreenSuggestionClient_logHomeScreenPageDidAppear_topWidgetsByStackIdentifier_prediction___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = v9;
  v16 = a3;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logHomeScreenDidDisappearWithReason:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ATXHomeScreenSuggestionClient_logHomeScreenDidDisappearWithReason___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logSpecialPageDidAppear:(unint64_t)a3 widgetsByStackId:(id)a4 prediction:(id)a5
{
  v8 = a4;
  v9 = a5;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__ATXHomeScreenSuggestionClient_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = v9;
  v16 = a3;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logSpecialPageDidDisappear:(unint64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__ATXHomeScreenSuggestionClient_logSpecialPageDidDisappear___block_invoke;
  v4[3] = &__block_descriptor_40_e50_v16__0__ATXHomeScreenSuggestionClientGuardedData_8l;
  v4[4] = a3;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v4];
}

- (void)logStackStatusDidChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5 prediction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__ATXHomeScreenSuggestionClient_logStackStatusDidChange_widgetOnTop_reason_prediction___block_invoke;
  v17[3] = &unk_1E80C3868;
  v20 = v11;
  v21 = a5;
  v17[4] = self;
  v18 = v12;
  v19 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
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

- (void)logStackDidTap:(id)a3 engagedUrl:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  lock = self->_lock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__ATXHomeScreenSuggestionClient_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke;
  v19[3] = &unk_1E80C37D0;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
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

- (void)logSupplementaryActionInContextMenu:(unint64_t)a3 stackId:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__ATXHomeScreenSuggestionClient_logSupplementaryActionInContextMenu_stackId_widgetOnTop_prediction___block_invoke;
  v17[3] = &unk_1E80C3868;
  v20 = v12;
  v21 = a3;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v11;
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

- (void)logUserDidChangeStackConfiguration:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ATXHomeScreenSuggestionClient_logUserDidChangeStackConfiguration___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidAddApp:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__ATXHomeScreenSuggestionClient_logUserDidAddApp_page___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logUserDidRemoveApp:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ATXHomeScreenSuggestionClient_logUserDidRemoveApp_page___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logUserDidAddPinnedWidget:(id)a3 page:(id)a4 defaultsComparator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__ATXHomeScreenSuggestionClient_logUserDidAddPinnedWidget_page_defaultsComparator___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logUserDidDeletePinnedWidget:(id)a3 stackLocation:(unint64_t)a4 page:(id)a5
{
  v8 = a3;
  v9 = a5;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__ATXHomeScreenSuggestionClient_logUserDidDeletePinnedWidget_stackLocation_page___block_invoke;
  v13[3] = &unk_1E80C3820;
  v15 = v9;
  v16 = a4;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logUserDidAddWidgetToStack:(id)a3 stackIdentifier:(id)a4 isSuggestion:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__ATXHomeScreenSuggestionClient_logUserDidAddWidgetToStack_stackIdentifier_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C3890;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

- (void)logUserDidDeleteWidgetOnStack:(id)a3 stackIdentifier:(id)a4 stackKind:(unint64_t)a5 stackLocation:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__ATXHomeScreenSuggestionClient_logUserDidDeleteWidgetOnStack_stackIdentifier_stackKind_stackLocation___block_invoke;
  v15[3] = &unk_1E80C38B8;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logUserDidCreateStack:(id)a3 page:(id)a4 isSuggestion:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ATXHomeScreenSuggestionClient_logUserDidCreateStack_page_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C38E0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
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

- (void)logUserDidDeleteStack:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 page:(id)a6
{
  v10 = a3;
  v11 = a6;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__ATXHomeScreenSuggestionClient_logUserDidDeleteStack_stackKind_stackLocation_page___block_invoke;
  v15[3] = &unk_1E80C38B8;
  v18 = a4;
  v19 = a5;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
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

- (void)logWidgetInsertionDidFailInStack:(id)a3 prediction:(id)a4
{
  v5 = a3;
  v6 = [a4 suggestionForStackIdentifier:v5];
  v7 = [v6 topWidget];

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXHomeScreenSuggestionClient logWidgetInsertionDidFailInStack:v7 prediction:?];
  }
}

- (void)logWidgetDidAppear:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__ATXHomeScreenSuggestionClient_logWidgetDidAppear_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logWidgetDidDisappear:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__ATXHomeScreenSuggestionClient_logWidgetDidDisappear_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logSuggestionsDidAppear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ATXHomeScreenSuggestionClient_logSuggestionsDidAppear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logSuggestionsDidDisappear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__ATXHomeScreenSuggestionClient_logSuggestionsDidDisappear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

- (void)logWidgetOccluded:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ATXHomeScreenSuggestionClient_logWidgetOccluded_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logWidgetUnoccluded:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__ATXHomeScreenSuggestionClient_logWidgetUnoccluded_blendingCacheId___block_invoke;
  v11[3] = &unk_1E80C3470;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

- (void)logDidTapSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__ATXHomeScreenSuggestionClient_logDidTapSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C35D0;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
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

- (void)_dismissSuggestions:(id)a3 guardedData:(id)a4 fromSuggestionsWidget:(id)a5 dismissFromAllUIs:(BOOL)a6 duration:(double)a7
{
  v8 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = *(a4 + 26);
  v15 = [v13 extensionBundleId];
  v16 = [v13 widgetKind];
  v29 = v13;
  v17 = [v13 intent];
  v18 = [MEMORY[0x1E695DF00] now];
  [v14 userDidDismissSuggestionForWidget:v15 kind:v16 intent:v17 atDate:v18 duration:a7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    if (v8)
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
        v26 = [v25 executableSpecification];
        v27 = [v26 executableType];

        if (v27 == 1)
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

- (void)logContextMenuDismissOnceForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__ATXHomeScreenSuggestionClient_logContextMenuDismissOnceForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logContextMenuNeverShowAgainForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__ATXHomeScreenSuggestionClient_logContextMenuNeverShowAgainForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C37D0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__ATXHomeScreenSuggestionClient_logUserDidAcceptWidgetOnboardingSuggestion___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__ATXHomeScreenSuggestionClient_logUserDidRejectWidgetOnboardingSuggestion___block_invoke;
  v7[3] = &unk_1E80C3448;
  v8 = v4;
  v6 = v4;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

- (void)logUserDidSwitchHomeScreenExperience:(unint64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__ATXHomeScreenSuggestionClient_logUserDidSwitchHomeScreenExperience___block_invoke;
  v4[3] = &__block_descriptor_40_e50_v16__0__ATXHomeScreenSuggestionClientGuardedData_8l;
  v4[4] = a3;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v4];
}

- (BOOL)_replaceSuggestionIfNeeded:(id)a3 fromProactiveWidget:(id)a4 guardedData:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 extensionBundleId];
  v12 = [v11 isEqualToString:*MEMORY[0x1E698AFC0]];

  if (v12)
  {
    v13 = 11;
  }

  else
  {
    v14 = [v9 extensionBundleId];
    v15 = [v14 isEqualToString:@"com.apple.proactive.appprediction.panel"];

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

  v17 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:v8 engagementRecordType:v13];
  v18 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 uuid];
    v20 = [v19 UUIDString];
    v24 = 136315650;
    v25 = "[ATXHomeScreenSuggestionClient _replaceSuggestionIfNeeded:fromProactiveWidget:guardedData:]";
    v26 = 2114;
    v27 = v20;
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "%s: suggestionID %{public}@, isSuggestionReplacementNeeded %{BOOL}u", &v24, 0x1Cu);
  }

  if (v17)
  {
    v21 = [v8 uuid];
    v22 = [v21 UUIDString];
    [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionForAllProactiveWidgets:v22 guardedData:v10];
  }

  return v17;
}

- (void)_replaceSuggestionForAllProactiveWidgets:(id)a3 guardedData:(id)a4
{
  rotationSuppressionInterval = self->_rotationSuppressionInterval;
  timerLeeway = self->_timerLeeway;
  v8 = a4;
  v9 = a3;
  [(ATXHomeScreenSuggestionClient *)self _startSuppressingRotationForTimeInterval:v8 leeway:rotationSuppressionInterval guardedData:timerLeeway];
  [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v9 shouldSuggestionsBeDisjoint:0 guardedData:v8];

  [(ATXHomeScreenSuggestionClient *)self _notifyObserversAboutLayoutUpdateWithGuardedData:v8];
  v10 = MEMORY[0x1E69C5BB8];

  [v10 refreshBlendingLayerWithReason:@"Replaced suggestion for all widgets"];
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  v6 = [v3 executableSpecification];
  v7 = [v6 executableObject];

  if (v5 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
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
      [ATXHomeScreenSuggestionClient _toggleSiriSearchSettingsOffForAppSuggestion:v3];
    }
  }
}

- (id)_newSuggestionLayoutForOldLayout:(id)a3 replacedSuggestionId:(id)a4 shouldSuggestionsBeDisjoint:(BOOL)a5 usedFallbackIndexSet:(id)a6 guardedData:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [v15 oneByOneSuggestions];
  v33 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v16 suggestionLayoutType:1 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v17 = [v15 oneByTwoSuggestions];
  v32 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v17 suggestionLayoutType:2 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v18 = [v15 twoByTwoSuggestions];
  v31 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v18 suggestionLayoutType:3 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v19 = [v15 oneByFourSuggestions];
  v20 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v19 suggestionLayoutType:5 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v21 = [v15 twoByFourSuggestions];
  v22 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v21 suggestionLayoutType:4 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v23 = [v15 fourByFourSuggestions];
  v24 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v23 suggestionLayoutType:6 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v25 = [v15 fourByEightSuggestions];
  v26 = [(ATXHomeScreenSuggestionClient *)self _replaceSuggestionWithId:v14 fromSuggestionsArray:v25 suggestionLayoutType:7 usedFallbackIndexSet:v13 shouldSuggestionsBeDisjoint:v8 guardedData:v12];

  v27 = [objc_alloc(MEMORY[0x1E69C5C10]) initWithLayoutType:objc_msgSend(v15 oneByOneSuggestions:"layoutType") oneByTwoSuggestions:v33 twoByTwoSuggestions:v32 oneByFourSuggestions:v31 twoByFourSuggestions:v20 fourByFourSuggestions:v22 fourByEightSuggestions:{v24, v26}];
  [v15 layoutScore];
  [v27 setLayoutScore:?];
  v28 = [v15 uuid];
  [v27 setUuid:v28];

  [v27 setIsValidForSuggestionsWidget:{objc_msgSend(v15, "isValidForSuggestionsWidget")}];
  [v27 setConfidenceWarrantsSnappingOrNPlusOne:{objc_msgSend(v15, "confidenceWarrantsSnappingOrNPlusOne")}];
  [v27 setIsNPlusOne:{objc_msgSend(v15, "isNPlusOne")}];
  v29 = [v15 widgetUniqueId];

  [v27 setWidgetUniqueId:v29];
  return v27;
}

- (void)_replaceSuggestionWithId:(id)a3 shouldSuggestionsBeDisjoint:(BOOL)a4 guardedData:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v8 + 12;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8[12], "count")}];
  v11 = v8 + 13;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8[13], "count")}];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9;
  v40 = __Block_byref_object_dispose__9;
  v41 = objc_opt_new();
  v13 = v8[12];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __98__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_shouldSuggestionsBeDisjoint_guardedData___block_invoke;
  v30[3] = &unk_1E80C3908;
  v30[4] = self;
  v14 = v7;
  v35 = a4;
  v31 = v14;
  v34 = &v36;
  v15 = v8;
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
  v29 = a4;
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
    v22 = [*v9 allKeys];
    *buf = 138543362;
    v43 = v22;
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

- (id)_replaceSuggestionWithId:(id)a3 fromSuggestionsArray:(id)a4 suggestionLayoutType:(int64_t)a5 usedFallbackIndexSet:(id)a6 shouldSuggestionsBeDisjoint:(BOOL)a7 guardedData:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (v15)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = [v15 count];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke;
    v39[3] = &unk_1E80C3930;
    v40 = v14;
    v41 = &v42;
    [v15 enumerateObjectsUsingBlock:v39];
    v18 = v43[3];
    if (v18 == [v15 count])
    {
      v19 = v15;
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = [v17[15] count];
      v20 = v17[15];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __161__ATXHomeScreenSuggestionClient__replaceSuggestionWithId_fromSuggestionsArray_suggestionLayoutType_usedFallbackIndexSet_shouldSuggestionsBeDisjoint_guardedData___block_invoke_2;
      v28 = &unk_1E80C3958;
      v29 = self;
      v30 = v17;
      v34 = a7;
      v21 = v16;
      v32 = &v35;
      v33 = a5;
      v31 = v21;
      [v20 enumerateObjectsUsingBlock:&v25];
      v22 = v36[3];
      if (v22 == [v17[15] count])
      {
        v19 = v15;
      }

      else
      {
        v23 = [v17[15] objectAtIndexedSubscript:v36[3]];
        [v21 addIndex:v36[3]];
        v19 = [v15 mutableCopy];
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