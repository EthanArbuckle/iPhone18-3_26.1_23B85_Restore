@interface ATXAppDirectoryOrderingProvider
+ (id)_reorderedRecentApps:(id)apps;
+ (id)sharedInstance;
- (ATXAppDirectoryOrderingProvider)initWithAppInfoManager:(id)manager cache:(id)cache blacklist:(id)blacklist recentsCache:(id)recentsCache hiddenAppsCache:(id)appsCache appClipDataProvider:(id)provider appIconState:(id)state appClipChangeListener:(id)self0 histogramManager:(id)self1 appProtectionInfoProvider:(id)self2;
- (BOOL)_bundleIDIsPresentInLibraryCategories:(id)categories remoteBundleID:(id)d;
- (BOOL)_bundleIDIsPresentInLibraryRecents:(id)recents remoteBundleID:(id)d;
- (BOOL)_readCategoriesFromDisk;
- (BOOL)_shiftAppIndices:(id)indices category:(id)category;
- (BOOL)_shouldConsiderAppForRecents:(id)recents;
- (BOOL)_shouldInvalidateCachedCategoriesForDemoMode;
- (BOOL)_writeCategoriesToDisk;
- (BOOL)_writeHiddenAppsToDisk:(id)disk;
- (BOOL)_writeRecentsToDisk;
- (BOOL)_writeToDisk:(id)disk cache:(id)cache logIdentifier:(id)identifier;
- (id)_appBundleIDLaunchCountComparator;
- (id)_appBundleIDRecencyComparatorForLastLaunchDates:(id)dates;
- (id)_appBundleIDTotalLaunchComparator;
- (id)_categoryChangesDictionaryForChangedApps:(id)apps;
- (id)_categoryComparator;
- (id)_categoryIdFromBundleId:(id)id;
- (id)_combinedLaunchCountForBundleId:(id)id;
- (id)_computeCategoriesWithRetries:(unint64_t)retries;
- (id)_genreIdFromBundleId:(id)id remoteBundleIDMappings:(id)mappings;
- (id)_getEnterpriseCategoriesForApps:(id)apps;
- (id)_getInstallDateForUnhiddenApp:(id)app;
- (id)_getMDMOrgName;
- (id)_getManagedAppIDs;
- (id)_issuingOrganizationForEnterpriseAppBundleID:(id)d isMDM:(BOOL)m;
- (id)_mdmEnterpriseCategoriesForApps:(id)apps;
- (id)_reorderedHiddenApps:(id)apps;
- (id)_screenTimeIdFromBundleId:(id)id;
- (id)_sortCategories:(id)categories;
- (id)_totalCombinedLaunchCountsForCategory:(id)category;
- (id)_totalLaunchCountsForCategory:(id)category;
- (id)_totalLibraryLaunchCountsForCategory:(id)category;
- (id)description;
- (id)filterBlockWithInstallDates:(id)dates;
- (id)positionScreenTimeOtherAtTheEndOfCategories:(id)categories;
- (void)_createHomeScreenServiceIfNecessary;
- (void)_ensureCategoryConsistency;
- (void)_handleManagedAppsChangedNotification;
- (void)_handleManagedAppsOrgInfoChangedNotification;
- (void)_initCategories;
- (void)_postHiddenAppsUpdateNotificationWithReason:(id)reason;
- (void)_postPredictedAppsAndRecentsUpdateNotificationWithReason:(id)reason;
- (void)_postProcessCategories:(id)categories withReply:(id)reply;
- (void)_postUpdateNotificationWithReason:(id)reason;
- (void)_registerForManagedAppsChangedNotification;
- (void)_registerForManagedAppsOrgInfoChangedNotification;
- (void)_reorderAndHideDupesForAppsInCategory:(id)category;
- (void)_splitEnterpriseCategoryWithAppsInCategory:(id)category appsByCategoryName:(id)name isMDMAppCategory:(BOOL)appCategory;
- (void)_updateAppClipSinceDate:(id)date installDates:(id)dates;
- (void)_updateAppLaunchCounts;
- (void)_updateCategoriesForDownweightedAppSet:(id)set;
- (void)_updateCategoriesForInstalledApps:(id)apps;
- (void)_updateCategoriesForRemovedApps:(id)apps uninstalled:(BOOL)uninstalled hidden:(BOOL)hidden;
- (void)_updateCategoriesForUnhiddenApps:(id)apps;
- (void)_updateCategoriesWithRetries:(unint64_t)retries;
- (void)_updateHiddenAppsPodWithNotification:(id)notification;
- (void)_updateMDMAndEnterpriseCategories;
- (void)_updateMDMCategoryName;
- (void)_updateMDMStatus;
- (void)_updateMissingInstalledApps;
- (void)_updateRecents;
- (void)_updateRecentsForAppClipUsageEvent:(id)event;
- (void)_updateRecentsForInstalledApps:(id)apps;
- (void)_updateRecentsForUnhiddenApps:(id)apps;
- (void)_updateScreenTimeMappingsForAppBundleIds:(id)ids withRetries:(unint64_t)retries;
- (void)appLaunchDatesWithReply:(id)reply;
- (void)appLaunchInformationWithReply:(id)reply;
- (void)categoriesWithReply:(id)reply;
- (void)categoryLaunchInformationWithReply:(id)reply;
- (void)dealloc;
- (void)postPredictedAppsAndRecentsUpdateNotificationWithReason:(id)reason;
- (void)requestNotificationWhenCategoriesAreReady;
- (void)setCategories:(id)categories;
- (void)setUp;
- (void)topAppsWithMaxNumberOfResults:(unint64_t)results reply:(id)reply;
- (void)updateCacheWithActivity:(id)activity completionHandler:(id)handler;
- (void)updateRecents;
@end

@implementation ATXAppDirectoryOrderingProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ATXAppDirectoryOrderingProvider sharedInstance];
  }

  v3 = sharedInstance_provider;

  return v3;
}

- (void)updateRecents
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATXAppDirectoryOrderingProvider_updateRecents__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __48__ATXAppDirectoryOrderingProvider_updateRecents__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRecents];
  v2 = *(a1 + 32);

  return [v2 _postPredictedAppsAndRecentsUpdateNotificationWithReason:@"Recents update requested"];
}

- (void)_updateRecents
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createHomeScreenServiceIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_sbsHomeScreenService)
  {
    atx_sharedInstance = [MEMORY[0x277D66AB8] atx_sharedInstance];
    sbsHomeScreenService = self->_sbsHomeScreenService;
    self->_sbsHomeScreenService = atx_sharedInstance;

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)_writeRecentsToDisk
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [objc_opt_class() _reorderedRecentApps:self->_recentApps];
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Writing recents pod with:\n%@", &v8, 0xCu);
  }

  v5 = [(ATXAppDirectoryOrderingProvider *)self _writeToDisk:v3 cache:self->_recentsCache logIdentifier:@"recent apps"];
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __49__ATXAppDirectoryOrderingProvider_sharedInstance__block_invoke()
{
  v0 = [ATXAppDirectoryOrderingProvider alloc];
  v17 = +[_ATXAppInfoManager sharedInstance];
  v1 = objc_alloc(MEMORY[0x277CEBC68]);
  v23 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXAppDirectoryCache"];
  v22 = __atxlog_handle_app_library();
  v2 = [v1 initWithCacheFilePath:v23 loggingHandle:v22 debugName:@"App Library categories cache"];
  v19 = +[ATXAppPredictionBlacklist sharedInstance];
  v3 = objc_alloc(MEMORY[0x277CEBC68]);
  v21 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:*MEMORY[0x277CEBA68]];
  v20 = __atxlog_handle_app_library();
  v16 = [v3 initWithCacheFilePath:v21 loggingHandle:v20 debugName:@"App Library recents cache"];
  v4 = objc_alloc(MEMORY[0x277CEBC68]);
  v18 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:*MEMORY[0x277CEBA20]];
  v5 = __atxlog_handle_app_library();
  v6 = [v4 initWithCacheFilePath:v18 loggingHandle:v5 debugName:@"App Library hidden apps cache"];
  v7 = objc_opt_new();
  v8 = +[_ATXAppIconState sharedInstance];
  v9 = objc_opt_new();
  v10 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v11 = objc_opt_new();
  v12 = [(ATXAppDirectoryOrderingProvider *)v0 initWithAppInfoManager:v17 cache:v2 blacklist:v19 recentsCache:v16 hiddenAppsCache:v6 appClipDataProvider:v7 appIconState:v8 appClipChangeListener:v9 histogramManager:v10 appProtectionInfoProvider:v11];
  v13 = sharedInstance_provider;
  sharedInstance_provider = v12;

  v14 = sharedInstance_provider;

  return [v14 setUp];
}

- (ATXAppDirectoryOrderingProvider)initWithAppInfoManager:(id)manager cache:(id)cache blacklist:(id)blacklist recentsCache:(id)recentsCache hiddenAppsCache:(id)appsCache appClipDataProvider:(id)provider appIconState:(id)state appClipChangeListener:(id)self0 histogramManager:(id)self1 appProtectionInfoProvider:(id)self2
{
  managerCopy = manager;
  cacheCopy = cache;
  cacheCopy2 = cache;
  blacklistCopy = blacklist;
  blacklistCopy2 = blacklist;
  recentsCacheCopy = recentsCache;
  recentsCacheCopy2 = recentsCache;
  appsCacheCopy = appsCache;
  appsCacheCopy2 = appsCache;
  v21 = managerCopy;
  v72 = appsCacheCopy2;
  providerCopy = provider;
  stateCopy = state;
  listenerCopy = listener;
  histogramManagerCopy = histogramManager;
  infoProviderCopy = infoProvider;
  v95.receiver = self;
  v95.super_class = ATXAppDirectoryOrderingProvider;
  v22 = [(ATXAppDirectoryOrderingProvider *)&v95 init];
  if (v22)
  {
    v75 = blacklistCopy2;
    v61 = cacheCopy2;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    uTF8String = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(uTF8String, v26);
    queue = v22->_queue;
    v22->_queue = v27;

    objc_storeStrong(&v22->_infoManager, manager);
    v29 = objc_opt_new();
    installNotification = v22->_installNotification;
    v22->_installNotification = v29;

    v31 = objc_opt_new();
    uninstallNotification = v22->_uninstallNotification;
    v22->_uninstallNotification = v31;

    v33 = objc_opt_new();
    offloadNotification = v22->_offloadNotification;
    v22->_offloadNotification = v33;

    v35 = objc_opt_new();
    installingNotification = v22->_installingNotification;
    v22->_installingNotification = v35;

    v37 = objc_opt_new();
    hiddenAppNotification = v22->_hiddenAppNotification;
    v22->_hiddenAppNotification = v37;

    v39 = objc_opt_new();
    unhiddenAppNotification = v22->_unhiddenAppNotification;
    v22->_unhiddenAppNotification = v39;

    objc_storeStrong(&v22->_cache, cacheCopy);
    objc_storeStrong(&v22->_recentsCache, recentsCacheCopy);
    objc_storeStrong(&v22->_hiddenAppsCache, appsCacheCopy);
    objc_storeStrong(&v22->_appClipDataProvider, provider);
    objc_storeStrong(&v22->_appIconState, state);
    objc_storeStrong(&v22->_appLaunchHistogramManager, histogramManager);
    objc_storeStrong(&v22->_appClipChangeListener, listener);
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastUpdatePostTime = v22->_lastUpdatePostTime;
    v22->_lastUpdatePostTime = distantPast;

    v43 = objc_alloc(MEMORY[0x277CBEBD0]);
    v44 = [v43 initWithSuiteName:*MEMORY[0x277CEBD00]];
    atxDefaults = v22->_atxDefaults;
    v22->_atxDefaults = v44;

    objc_storeStrong(&v22->_appProtectionInfoProvider, infoProvider);
    [(ATXAppDirectoryOrderingProvider *)v22 _registerForManagedAppsOrgInfoChangedNotification];
    [(ATXAppDirectoryOrderingProvider *)v22 _registerForManagedAppsChangedNotification];
    objc_initWeak(&location, v22);
    v46 = v22->_installNotification;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke;
    v92[3] = &unk_278597FF8;
    objc_copyWeak(&v93, &location);
    [(_ATXInternalInstallNotification *)v46 registerForNotificationsWithInstallBlock:v92];
    v47 = v22->_unhiddenAppNotification;
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_93;
    v90[3] = &unk_278598020;
    objc_copyWeak(&v91, &location);
    [(ATXInternalUnLockedOrUnHiddenAppNotification *)v47 registerForNotificationsWithUnLockedOrUnHiddenAppBlock:v90];
    v48 = v22->_installingNotification;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_99;
    v88[3] = &unk_278597FF8;
    objc_copyWeak(&v89, &location);
    [(ATXInternalAppsInstallStartNotification *)v48 registerForNotificationsWithInstallStartBlock:v88];
    v49 = v22->_uninstallNotification;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_104;
    v86[3] = &unk_278596DA0;
    objc_copyWeak(&v87, &location);
    [(_ATXInternalUninstallNotification *)v49 registerForNotificationsWithUninstallBlock:v86];
    v50 = v22->_hiddenAppNotification;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_107;
    v84[3] = &unk_278598048;
    objc_copyWeak(&v85, &location);
    [(ATXInternalLockedOrHiddenAppNotification *)v50 registerForNotificationsWithLockedOrHiddenAppBlock:v84];
    v51 = v22->_offloadNotification;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_113;
    v82[3] = &unk_278596DA0;
    objc_copyWeak(&v83, &location);
    [(ATXInternalOffloadAppsNotification *)v51 registerForNotificationWithOffloadBlock:v82];
    appClipChangeListener = v22->_appClipChangeListener;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_115;
    v80[3] = &unk_278598070;
    objc_copyWeak(&v81, &location);
    [(ATXAppClipUsageDuetContextUpdateListener *)appClipChangeListener startListeningWithCallback:v80 clientId:@"ATXAppDirectoryOrderingProvider"];
    v53 = v22->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_3;
    handler[3] = &unk_278598098;
    objc_copyWeak(&v79, &location);
    notify_register_dispatch("com.apple.suggestions.settingsChanged", &v22->_settingsChangedToken, v53, handler);
    if (v75)
    {
      objc_storeStrong(&v22->_blacklist, blacklistCopy);
      disabledBundleIds = [(ATXAppPredictionBlacklist *)v22->_blacklist disabledBundleIds];
      blacklistedBundleIds = v22->_blacklistedBundleIds;
      v22->_blacklistedBundleIds = disabledBundleIds;

      blacklist = v22->_blacklist;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_126;
      v76[3] = &unk_2785977B0;
      objc_copyWeak(&v77, &location);
      [(ATXAppPredictionBlacklist *)blacklist registerPrefsChangeHandler:v76];
      objc_destroyWeak(&v77);
    }

    else
    {
      v57 = objc_opt_new();
      v58 = v22->_blacklistedBundleIds;
      v22->_blacklistedBundleIds = v57;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, updateCache, @"com.apple.Proactive.UpdateAppLibraryCache", 0, CFNotificationSuspensionBehaviorDrop);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&v81);
    objc_destroyWeak(&v83);
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v87);
    objc_destroyWeak(&v89);
    objc_destroyWeak(&v91);
    objc_destroyWeak(&v93);
    objc_destroyWeak(&location);
    cacheCopy2 = v61;
    blacklistCopy2 = v75;
  }

  return v22;
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 count])
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2;
    v6[3] = &unk_278596C10;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ATXBackupService isBackupRestore];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) allKeys];
    v8[0] = 67109378;
    v8[1] = v2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Install finish notification received; isRestore=%{BOOL}d %@", v8, 0x12u);
  }

  if (!v2)
  {
    [*(a1 + 40) _updateRecentsForInstalledApps:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) allKeys];
  [v5 _updateCategoriesForInstalledApps:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_93(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 unHiddenApps];

  v6 = [v5 allObjects];

  if (WeakRetained && [v6 count])
  {
    v7 = WeakRetained[3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_94;
    v8[3] = &unk_278596C10;
    v9 = WeakRetained;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

uint64_t __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_94(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Unhidden app notification received", v4, 2u);
  }

  [*(a1 + 32) _updateRecentsForUnhiddenApps:*(a1 + 40)];
  [*(a1 + 32) _updateCategoriesForUnhiddenApps:*(a1 + 40)];
  return [*(a1 + 32) _updateHiddenAppsPodWithNotification:@"App un-hidden"];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 count])
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_100;
    v6[3] = &unk_278596C10;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_100(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = +[ATXBackupService isBackupRestore];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Install start notification received; isRestore=%{BOOL}d", v5, 8u);
  }

  if (!v2)
  {
    [*(a1 + 32) _updateRecentsForInstalledApps:*(a1 + 40)];
    [*(a1 + 32) _postUpdateNotificationWithReason:@"App install initiated"];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 count])
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_105;
    v6[3] = &unk_278596C10;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_105(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Uninstall notification received", v7, 2u);
  }

  v3 = *(*(a1 + 32) + 144);
  v4 = [*(a1 + 40) allObjects];
  [v3 removeObjectsForKeys:v4];

  [*(a1 + 32) _writeRecentsToDisk];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) allObjects];
  [v5 _updateCategoriesForUninstalledApps:v6];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 hiddenApps];

  v6 = [v5 allObjects];

  if (WeakRetained && [v6 count])
  {
    v7 = WeakRetained[3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_108;
    v8[3] = &unk_278596C10;
    v9 = v6;
    v10 = WeakRetained;
    dispatch_async(v7, v8);
  }
}

uint64_t __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_108(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Hidden app notification received", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 40) + 144) removeObjectForKey:{*(*(&v10 + 1) + 8 * v7++), v10}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _writeRecentsToDisk];
  [*(a1 + 40) _updateCategoriesForHiddenApps:*(a1 + 32)];
  result = [*(a1 + 40) _updateHiddenAppsPodWithNotification:@"App hidden"];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 count])
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_114;
    v6[3] = &unk_278596C10;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_114(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Offload notification received", v4, 2u);
  }

  return [*(a1 + 32) _updateCategoriesForDownweightedAppSet:*(a1 + 40)];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_115(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_116;
    v7[3] = &unk_278596C10;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_3_cold_1();
    }

    [WeakRetained _postPredictedAppsAndRecentsUpdateNotificationWithReason:@"Suggestions Settings Changed"];
  }
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_126(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_127;
    block[3] = &unk_278596BB8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

uint64_t __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_2_127(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Blacklist update notification received", v7, 2u);
  }

  v3 = [*(*(a1 + 32) + 128) disabledBundleIds];
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = v3;

  return [*(a1 + 32) _updateCategoriesForDownweightedAppSet:*(*(a1 + 32) + 136)];
}

- (void)setUp
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATXAppDirectoryOrderingProvider_setUp__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __40__ATXAppDirectoryOrderingProvider_setUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initCategories];
  [*(a1 + 32) _updateRecents];
  v2 = *(a1 + 32);

  return [v2 _updateHiddenAppsPodWithNotification:@"Hidden apps pod initialized"];
}

- (void)updateCacheWithActivity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  if ([activityCopy didDefer])
  {
    v8 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Deferring XPC update", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ATXAppDirectoryOrderingProvider_updateCacheWithActivity_completionHandler___block_invoke;
    block[3] = &unk_2785980C0;
    v11 = activityCopy;
    selfCopy = self;
    v13 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __77__ATXAppDirectoryOrderingProvider_updateCacheWithActivity_completionHandler___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  if ([*(a1 + 32) didDefer])
  {
    v3 = __atxlog_handle_app_library();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 0;
    v4 = &v10;
    goto LABEL_13;
  }

  [*(a1 + 40) _updateAppLaunchCounts];
  if ([*(a1 + 32) didDefer])
  {
    v3 = __atxlog_handle_app_library();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v9 = 0;
    v4 = &v9;
    goto LABEL_13;
  }

  [*(a1 + 40) _updateRecents];
  if ([*(a1 + 32) didDefer])
  {
    v3 = __atxlog_handle_app_library();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v8 = 0;
    v4 = &v8;
    goto LABEL_13;
  }

  [*(a1 + 40) _updateCategoriesWithRetries:2];
  if ([*(a1 + 32) didDefer])
  {
    v3 = __atxlog_handle_app_library();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = 0;
    v4 = &v7;
LABEL_13:
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Deferring XPC update", v4, 2u);
LABEL_14:

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5);
    }

    goto LABEL_16;
  }

  [*(a1 + 40) _updateHiddenAppsPodWithNotification:@"Hidden apps pod updated"];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

LABEL_16:
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ATXAppDirectoryOrderingProvider_description__block_invoke;
  v6[3] = &unk_2785980E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = &stru_2839A6058;
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__ATXAppDirectoryOrderingProvider_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_postUpdateNotificationWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = @"Unknown";
  if (reason)
  {
    reasonCopy = reason;
  }

  v5 = reasonCopy;
  v6 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: posted category update notification with reason %@", &v10, 0xCu);
  }

  v7 = [MEMORY[0x277CBEAA8] now];
  lastUpdatePostTime = self->_lastUpdatePostTime;
  self->_lastUpdatePostTime = v7;

  [(ATXAppDirectoryOrderingProvider *)self _createHomeScreenServiceIfNecessary];
  [(SBSHomeScreenService *)self->_sbsHomeScreenService requestAppLibraryUpdateWithReason:v5 completionHandler:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)postPredictedAppsAndRecentsUpdateNotificationWithReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__ATXAppDirectoryOrderingProvider_postPredictedAppsAndRecentsUpdateNotificationWithReason___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(queue, v7);
}

- (void)_postPredictedAppsAndRecentsUpdateNotificationWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = @"Unknown";
  if (reason)
  {
    reasonCopy = reason;
  }

  v5 = reasonCopy;
  v6 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: posted predicted/recents update notification with reason %@", &v8, 0xCu);
  }

  [(ATXAppDirectoryOrderingProvider *)self _createHomeScreenServiceIfNecessary];
  [(SBSHomeScreenService *)self->_sbsHomeScreenService requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:v5 completionHandler:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_postHiddenAppsUpdateNotificationWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = @"Unknown";
  if (reason)
  {
    reasonCopy = reason;
  }

  v5 = reasonCopy;
  v6 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: posted hidden apps update notification with reason %@", &v8, 0xCu);
  }

  [(ATXAppDirectoryOrderingProvider *)self _createHomeScreenServiceIfNecessary];
  [(SBSHomeScreenService *)self->_sbsHomeScreenService requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:v5 completionHandler:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  settingsChangedToken = self->_settingsChangedToken;
  if (settingsChangedToken)
  {
    notify_cancel(settingsChangedToken);
  }

  v4.receiver = self;
  v4.super_class = ATXAppDirectoryOrderingProvider;
  [(ATXAppDirectoryOrderingProvider *)&v4 dealloc];
}

- (BOOL)_readCategoriesFromDisk
{
  v32 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 initWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v12 = [(ATXGenericFileBasedCache *)self->_cache readSecureCodedObjectWithMaxValidAge:v11 allowableClasses:0 error:604800.0];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [v13 objectForKeyedSubscript:@"version"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = [v13 objectForKeyedSubscript:@"version"];
        unsignedIntegerValue = [v16 unsignedIntegerValue];

        v18 = unsignedIntegerValue == 11;
        if (unsignedIntegerValue != 11)
        {
          v25 = __atxlog_handle_app_library();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v13 objectForKeyedSubscript:@"version"];
            *buf = 138412546;
            v29 = v27;
            v30 = 2048;
            v31 = 11;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Cache version %@ doesn't match current version %lu", buf, 0x16u);
          }

LABEL_18:

          goto LABEL_14;
        }

        v19 = [v13 objectForKeyedSubscript:@"categories"];
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();

        if (v20)
        {
          v21 = [v13 objectForKeyedSubscript:@"categories"];
          [(ATXAppDirectoryOrderingProvider *)self setCategories:v21];

          if ([(NSArray *)self->_categories count])
          {
            v25 = __atxlog_handle_app_library();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [(NSArray *)self->_categories count];
              *buf = 134217984;
              v29 = v22;
              _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Read from disk succeeded, got %lu categories", buf, 0xCu);
            }

            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      v13 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryOrderingProvider _readCategoriesFromDisk];
      }
    }

    v18 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v18 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_writeToDisk:(id)disk cache:(id)cache logIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  cacheCopy = cache;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0;
  if (diskCopy && cacheCopy)
  {
    if ([cacheCopy storeSecureCodedObject:diskCopy error:0])
    {
      v12 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = identifierCopy;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Write %@ to disk succeeded", &v15, 0xCu);
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_writeCategoriesToDisk
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"categories";
  categories = self->_categories;
  v4 = categories;
  if (!categories)
  {
    v4 = objc_opt_new();
  }

  v10[1] = @"version";
  v11[0] = v4;
  if (self->_currentCacheDueForRefresh)
  {
    v5 = &unk_283A552F8;
  }

  else
  {
    v5 = &unk_283A55310;
  }

  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!categories)
  {
  }

  v7 = [(ATXAppDirectoryOrderingProvider *)self _writeToDisk:v6 cache:self->_cache logIdentifier:@"categories"];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)_reorderedRecentApps:(id)apps
{
  v46 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  context = objc_autoreleasePoolPush();
  allKeys = [appsCopy allKeys];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __56__ATXAppDirectoryOrderingProvider__reorderedRecentApps___block_invoke;
  v41[3] = &unk_278598110;
  v4 = appsCopy;
  v42 = v4;
  v25 = [allKeys sortedArrayUsingComparator:v41];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:2.0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__ATXAppDirectoryOrderingProvider__reorderedRecentApps___block_invoke_2;
  v32[3] = &unk_278598138;
  v27 = v4;
  v33 = v27;
  v24 = v6;
  v34 = v24;
  v22 = v5;
  v35 = v22;
  v36 = &v37;
  [v25 enumerateObjectsUsingBlock:v32];
  v7 = v38[3];
  if (v7 == [v25 count])
  {
    v8 = v25;
  }

  else
  {
    v8 = [v25 subarrayWithRange:{0, v38[3]}];
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v12)
  {
    v13 = *v29;
    v14 = *MEMORY[0x277CEBA60];
    v15 = *MEMORY[0x277CEBA70];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v44[0] = *(*(&v28 + 1) + 8 * i);
        v43[0] = v14;
        v43[1] = v15;
        v17 = [v27 objectForKeyedSubscript:?];
        v44[1] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

        [v10 addObject:v18];
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v12);
  }

  v19 = [v10 copy];
  _Block_object_dispose(&v37, 8);

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __56__ATXAppDirectoryOrderingProvider__reorderedRecentApps___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v9 = [v8 compare:v7];
  if (!v9)
  {
    v9 = [v5 compare:v6];
  }

  return v9;
}

void __56__ATXAppDirectoryOrderingProvider__reorderedRecentApps___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v7 = [v6 compare:*(a1 + 40)];

  if (v7 == 1)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
    if ([v8 compare:*(a1 + 48)] != -1)
    {

LABEL_5:
      ++*(*(*(a1 + 56) + 8) + 24);
      goto LABEL_7;
    }

    v9 = *(*(*(a1 + 56) + 8) + 24);

    if (v9 < 8)
    {
      goto LABEL_5;
    }
  }

  *a4 = 1;
LABEL_7:
}

- (id)_reorderedHiddenApps:(id)apps
{
  queue = self->_queue;
  appsCopy = apps;
  dispatch_assert_queue_V2(queue);
  _appBundleIDLaunchCountComparator = [(ATXAppDirectoryOrderingProvider *)self _appBundleIDLaunchCountComparator];
  v7 = [appsCopy sortedArrayUsingComparator:_appBundleIDLaunchCountComparator];

  return v7;
}

- (BOOL)_writeHiddenAppsToDisk:(id)disk
{
  v13 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  diskCopy = disk;
  dispatch_assert_queue_V2(queue);
  v6 = [(ATXAppDirectoryOrderingProvider *)self _reorderedHiddenApps:diskCopy];

  v7 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Writing hidden apps pod with:\n%@", &v11, 0xCu);
  }

  v8 = [(ATXAppDirectoryOrderingProvider *)self _writeToDisk:v6 cache:self->_hiddenAppsCache logIdentifier:@"hidden apps"];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_initCategories
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(ATXAppDirectoryOrderingProvider *)self _readCategoriesFromDisk]&& ![(ATXAppDirectoryOrderingProvider *)self _shouldInvalidateCachedCategoriesForDemoMode])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_categories;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([MEMORY[0x277CEB350] isCategoryScreenTime:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "categoryID", v10)}])
          {

            [(ATXAppDirectoryOrderingProvider *)self _ensureCategoryConsistency];
            goto LABEL_16;
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(ATXAppDirectoryOrderingProvider *)self _updateCategories];
LABEL_16:
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = *MEMORY[0x277D85DE8];

    [(ATXAppDirectoryOrderingProvider *)self _updateCategories];
  }
}

- (BOOL)_shouldInvalidateCachedCategoriesForDemoMode
{
  v20 = *MEMORY[0x277D85DE8];
  if (([objc_opt_class() isStoreDemoMode] & 1) != 0 || -[ATXAppDirectoryOrderingProvider isMarketingDemoMode](self, "isMarketingDemoMode"))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_categories;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 categoryID] == 1 || objc_msgSend(v8, "categoryID") == 6)
          {
            v9 = 1;
            goto LABEL_15;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
        v9 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  v10 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v9;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: should invalidate cached categories for demo mode: %{BOOL}u", buf, 8u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)positionScreenTimeOtherAtTheEndOfCategories:(id)categories
{
  v20 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v4 = [categoriesCopy mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 categoryID] == 1008)
        {
          v12 = v11;

          [v4 removeObject:v12];
          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);

    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setCategories:(id)categories
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_categories != categories)
  {
    v4 = [(ATXAppDirectoryOrderingProvider *)self positionScreenTimeOtherAtTheEndOfCategories:?];
    categories = self->_categories;
    self->_categories = v4;

    v6 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Setting categories", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_categories;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = __atxlog_handle_app_library();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 localizedStringForCategoryID:{objc_msgSend(v12, "categoryID")}];
            appIdentities = [v12 appIdentities];
            v16 = [appIdentities count];
            appIdentities2 = [v12 appIdentities];
            *buf = 138543874;
            v24 = v14;
            v25 = 2048;
            v26 = v16;
            v27 = 2112;
            v28 = appIdentities2;
            _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: >>> Category %{public}@, app count: %ld, apps: %@", buf, 0x20u);
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v9);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateCategoriesWithRetries:(unint64_t)retries
{
  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Recategorizing from scratch", v8, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(ATXAppDirectoryOrderingProvider *)self _updateMDMStatus];
  v6 = [(ATXAppDirectoryOrderingProvider *)self _computeCategoriesWithRetries:retries];
  v7 = [(ATXAppDirectoryOrderingProvider *)self _sortCategories:v6];
  [(ATXAppDirectoryOrderingProvider *)self setCategories:v7];

  [(ATXAppDirectoryOrderingProvider *)self _writeCategoriesToDisk];
  [(ATXAppDirectoryOrderingProvider *)self _postUpdateNotificationWithReason:@"Full recategorization requested"];
}

- (id)_categoryChangesDictionaryForChangedApps:(id)apps
{
  v38 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = appsCopy;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v25)
  {
    v24 = *v31;
    *&v6 = 138543362;
    v22 = v6;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [(ATXAppDirectoryOrderingProvider *)self _genreIdFromBundleId:v8 remoteBundleIDMappings:0, v22];
        if ([v9 unsignedIntegerValue] != 1008)
        {
          while (([MEMORY[0x277CEB350] shouldCategoryNeverMergeWithParent:{objc_msgSend(v9, "unsignedIntegerValue")}] & 1) == 0)
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v10 = self->_categories;
            v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v27;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v27 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  categoryID = [*(*(&v26 + 1) + 8 * j) categoryID];
                  if (categoryID == [v9 unsignedIntegerValue])
                  {

                    goto LABEL_21;
                  }
                }

                v12 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            v16 = __atxlog_handle_app_library();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v35 = v9;
              _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Didn't find category %{public}@ in existing categories, trying parent category", buf, 0xCu);
            }

            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB350], "parentCategoryForCategory:", objc_msgSend(v9, "unsignedIntegerValue"))}];

            v9 = v17;
            if ([v17 unsignedIntegerValue] == 1008)
            {
              goto LABEL_22;
            }
          }
        }

LABEL_21:
        v17 = v9;
LABEL_22:
        v18 = [v5 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [v5 objectForKeyedSubscript:v17];
          [v19 addObject:v8];
        }

        else
        {
          v19 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
          [v5 setObject:v19 forKeyedSubscript:v17];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v25);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_updateRecentsForInstalledApps:(id)apps
{
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_queue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__ATXAppDirectoryOrderingProvider__updateRecentsForInstalledApps___block_invoke;
  v8[3] = &unk_278598160;
  v8[4] = self;
  v8[5] = &v9;
  [appsCopy enumerateKeysAndObjectsUsingBlock:v8];
  if (*(v10 + 24) == 1)
  {
    v5 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Starting to update recents cache after installation notification", v7, 2u);
    }

    [(ATXAppDirectoryOrderingProvider *)self _writeRecentsToDisk];
  }

  else
  {
    v6 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: No recents pod change", v7, 2u);
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __66__ATXAppDirectoryOrderingProvider__updateRecentsForInstalledApps___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:v7];
  if (v6)
  {
  }

  else if ([*(a1 + 32) _shouldConsiderAppForRecents:v7])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [*(*(a1 + 32) + 144) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)_updateRecentsForUnhiddenApps:(id)apps
{
  v23 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = appsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [(NSMutableDictionary *)self->_recentApps objectForKeyedSubscript:v11];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        if (![(ATXAppDirectoryOrderingProvider *)self _shouldConsiderAppForRecents:v11])
        {
          continue;
        }

        v13 = [(ATXAppDirectoryOrderingProvider *)self _getInstallDateForUnhiddenApp:v11];
        [(NSMutableDictionary *)self->_recentApps setObject:v13 forKeyedSubscript:v11];
        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if (v8)
  {
    v14 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Starting to update recents cache after unhidden app notification", v17, 2u);
    }

    [(ATXAppDirectoryOrderingProvider *)self _writeRecentsToDisk];
    goto LABEL_21;
  }

LABEL_18:
  v15 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: No recents pod change", v17, 2u);
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateCategoriesForInstalledApps:(id)apps
{
  v103 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  [(ATXAppDirectoryOrderingProvider *)self _updateMDMStatus];
  v5 = objc_opt_new();
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = appsCopy;
  v6 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v94;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v94 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v93 + 1) + 8 * i);
        if ([(ATXAppDirectoryOrderingProvider *)self _shouldConsiderAppForCategories:v10])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v69 = [(ATXAppDirectoryOrderingProvider *)self _categoryChangesDictionaryForChangedApps:v5];
    allKeys = [v69 allKeys];
    v67 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v62 = self->_categories;
    v61 = v5;
    v66 = [(NSArray *)v62 countByEnumeratingWithState:&v89 objects:v101 count:16];
    if (!v66)
    {
      goto LABEL_53;
    }

    v64 = *v90;
    while (1)
    {
      for (j = 0; j != v66; ++j)
      {
        if (*v90 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v12 = *(*(&v89 + 1) + 8 * j);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "categoryID")}];
        if ([allKeys containsObject:v13])
        {
        }

        else
        {
          categoryID = [v12 categoryID];

          if (categoryID != 1008)
          {
            [v67 addObject:v12];
            continue;
          }
        }

        v68 = j;
        appIdentities = [v12 appIdentities];
        bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
        v17 = [bundleIDsFromIdentities mutableCopy];

        if ([v12 categoryID] == 1008)
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v18 = v69;
          v19 = [v18 countByEnumeratingWithState:&v85 objects:v100 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v86;
            do
            {
              for (k = 0; k != v20; ++k)
              {
                if (*v86 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v85 + 1) + 8 * k);
                if ([v23 unsignedIntegerValue] != 1008)
                {
                  v24 = [v18 objectForKeyedSubscript:v23];
                  [v17 removeObjectsInArray:v24];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v85 objects:v100 count:16];
            }

            while (v20);
          }
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "categoryID")}];
        v26 = [v69 objectForKeyedSubscript:v25];

        v71 = v26;
        v27 = [v26 countByEnumeratingWithState:&v81 objects:v99 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v82;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v82 != v29)
              {
                objc_enumerationMutation(v71);
              }

              v31 = *(*(&v81 + 1) + 8 * m);
              if ([v12 categoryID] == 1)
              {
                v32 = [(ATXAppDirectoryOrderingProvider *)selfCopy _issuingOrganizationForEnterpriseAppBundleID:v31 isMDM:0];
                localizedName = [v12 localizedName];
                v34 = 0;
                if (!localizedName)
                {
                  v34 = [v32 isEqualToString:@"kATXEnterprise"];
                }

                localizedName2 = [v12 localizedName];
                v36 = [localizedName2 isEqualToString:v32];

                if (((v34 & 1) != 0 || v36) && ([v17 containsObject:v31] & 1) == 0)
                {
                  [v17 addObject:v31];
                }
              }

              else if (([v17 containsObject:v31] & 1) == 0)
              {
                [v17 addObject:v31];
              }
            }

            v28 = [v71 countByEnumeratingWithState:&v81 objects:v99 count:16];
          }

          while (v28);
        }

        if ([v12 categoryID] == 1)
        {
          v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "categoryID")}];
          v38 = [v69 objectForKeyedSubscript:v37];
          [v38 removeObjectsInArray:v17];
        }

        [v12 updateAppBundleIDs:v17];
        [v67 addObject:v12];

        j = v68;
      }

      v66 = [(NSArray *)v62 countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (!v66)
      {
LABEL_53:

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v72 = allKeys;
        v39 = [v72 countByEnumeratingWithState:&v77 objects:v98 count:16];
        if (!v39)
        {
          goto LABEL_77;
        }

        v40 = v39;
        v41 = *v78;
        while (1)
        {
          for (n = 0; n != v40; ++n)
          {
            if (*v78 != v41)
            {
              objc_enumerationMutation(v72);
            }

            v43 = *(*(&v77 + 1) + 8 * n);
            if ([v43 unsignedIntegerValue] == 1)
            {
              v44 = [v69 objectForKeyedSubscript:v43];
              v45 = [v44 count];

              if (!v45)
              {
                continue;
              }

              v46 = [v69 objectForKeyedSubscript:v43];
              v47 = [(ATXAppDirectoryOrderingProvider *)selfCopy _getEnterpriseCategoriesForApps:v46];
              [v67 addObjectsFromArray:v47];
            }

            else
            {
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v46 = selfCopy->_categories;
              v48 = [(NSArray *)v46 countByEnumeratingWithState:&v73 objects:v97 count:16];
              if (v48)
              {
                v49 = v48;
                v50 = *v74;
LABEL_63:
                v51 = 0;
                while (1)
                {
                  if (*v74 != v50)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v52 = *(*(&v73 + 1) + 8 * v51);
                  unsignedIntegerValue = [v43 unsignedIntegerValue];
                  if (unsignedIntegerValue == [v52 categoryID])
                  {
                    break;
                  }

                  if (v49 == ++v51)
                  {
                    v49 = [(NSArray *)v46 countByEnumeratingWithState:&v73 objects:v97 count:16];
                    if (v49)
                    {
                      goto LABEL_63;
                    }

                    goto LABEL_69;
                  }
                }
              }

              else
              {
LABEL_69:

                if ([v43 unsignedIntegerValue] == 6)
                {
                  v54 = [v69 objectForKeyedSubscript:v43];
                  v55 = [v54 copy];
                  v46 = [(ATXAppDirectoryOrderingProvider *)selfCopy _mdmEnterpriseCategoriesForApps:v55];
                }

                else
                {
                  v56 = objc_alloc(MEMORY[0x277CEB350]);
                  unsignedIntegerValue2 = [v43 unsignedIntegerValue];
                  v54 = [v69 objectForKeyedSubscript:v43];
                  v55 = [v54 copy];
                  appIdentitiesFromBundleIDs = [v55 appIdentitiesFromBundleIDs];
                  v46 = [v56 initWithCategoryID:unsignedIntegerValue2 appIdentities:appIdentitiesFromBundleIDs];
                }

                if (v46)
                {
                  [v67 addObject:v46];
                }
              }
            }
          }

          v40 = [v72 countByEnumeratingWithState:&v77 objects:v98 count:16];
          if (!v40)
          {
LABEL_77:

            v59 = [v67 copy];
            [(ATXAppDirectoryOrderingProvider *)selfCopy setCategories:v59];

            [(ATXAppDirectoryOrderingProvider *)selfCopy _writeCategoriesToDisk];
            [(ATXAppDirectoryOrderingProvider *)selfCopy _postUpdateNotificationWithReason:@"App installed"];

            v5 = v61;
            goto LABEL_78;
          }
        }
      }
    }
  }

LABEL_78:

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_updateCategoriesForUnhiddenApps:(id)apps
{
  v64 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_queue);
  [(ATXAppDirectoryOrderingProvider *)self _updateMDMStatus];
  [(ATXAppDirectoryOrderingProvider *)self _updateScreenTimeMappingsForAppBundleIds:appsCopy withRetries:2];
  v45 = objc_opt_new();
  v44 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = appsCopy;
  v6 = [v5 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [(ATXAppDirectoryOrderingProvider *)self _genreIdFromBundleId:v10 remoteBundleIDMappings:0];
        [v44 setObject:v12 forKeyedSubscript:v10];

        v13 = [(ATXAppDirectoryOrderingProvider *)self _screenTimeIdFromBundleId:v10];
        [v45 setObject:v13 forKeyedSubscript:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v7);
  }

  v14 = [(NSArray *)self->_categories mutableCopy];
  v15 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v42 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v42)
  {
    v41 = *v51;
    v16 = 0x277CEB000uLL;
    v46 = v14;
    v40 = v15;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        v19 = [ATXAppDirectoryHierarchyNode effectiveCategoryIDForBundleID:v18 withScreenTimeMappings:v45 iTunesMappings:v44];
        if (v19 != 1008 && ([*(v16 + 848) shouldCategoryNeverMergeWithParent:v19] & 1) == 0)
        {
          v19 = [*(v16 + 848) parentCategoryForCategory:v19];
        }

        if (![v14 count])
        {
          goto LABEL_28;
        }

        v43 = j;
        v20 = 0;
        v21 = 0;
        v47 = v19;
        v48 = v18;
        do
        {
          v22 = [v14 objectAtIndexedSubscript:v21];
          if ([v22 categoryID] == v19)
          {
            v23 = MEMORY[0x277CBEB18];
            appIdentities = [v22 appIdentities];
            bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
            v26 = [v23 arrayWithArray:bundleIDsFromIdentities];

            if (([MEMORY[0x277CEB3B8] isOffloadedForBundle:v18] & 1) != 0 || -[NSSet containsObject:](self->_blacklistedBundleIds, "containsObject:", v18))
            {
              v27 = __atxlog_handle_app_library();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v59 = "[ATXAppDirectoryOrderingProvider _updateCategoriesForUnhiddenApps:]";
                v60 = 2112;
                v61 = v18;
                _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%s: Attempted to add un-hidden app: %@, but app is blacklisted or offloaded", buf, 0x16u);
              }
            }

            else
            {
              [v26 addObject:v18];
            }

            v28 = objc_alloc(*(v16 + 848));
            categoryID = [v22 categoryID];
            [(ATXAppDirectoryOrderingProvider *)self _appBundleIDLaunchCountComparator];
            v31 = v30 = self;
            [v26 sortedArrayUsingComparator:v31];
            v32 = v49 = v26;
            appIdentitiesFromBundleIDs = [v32 appIdentitiesFromBundleIDs];
            [v22 localizedName];
            v35 = v34 = v16;
            v36 = [v28 initWithCategoryID:categoryID appIdentitites:appIdentitiesFromBundleIDs localizedName:v35];

            v16 = v34;
            self = v30;
            v14 = v46;
            [v46 replaceObjectAtIndex:v21 withObject:v36];

            v20 = 1;
            v19 = v47;
            v18 = v48;
          }

          ++v21;
        }

        while (v21 < [v14 count]);
        v15 = v40;
        j = v43;
        if ((v20 & 1) == 0)
        {
LABEL_28:
          [v15 addObject:v18];
        }
      }

      v42 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v42);
  }

  v37 = [v14 copy];
  [(ATXAppDirectoryOrderingProvider *)self setCategories:v37];

  [(ATXAppDirectoryOrderingProvider *)self _writeCategoriesToDisk];
  [(ATXAppDirectoryOrderingProvider *)self _postUpdateNotificationWithReason:@"App un-hidden"];
  if ([v15 count])
  {
    [(ATXAppDirectoryOrderingProvider *)self _updateCategoriesForInstalledApps:v15];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_updateCategoriesForRemovedApps:(id)apps uninstalled:(BOOL)uninstalled hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v33 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSArray *)self->_categories mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v10 = MEMORY[0x277CBEB18];
      appIdentities = [v9 appIdentities];
      bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
      v13 = [v10 arrayWithArray:bundleIDsFromIdentities];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = appsCopy;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v13 removeObject:*(*(&v28 + 1) + 8 * i)];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      v19 = objc_alloc(MEMORY[0x277CEB350]);
      categoryID = [v9 categoryID];
      appIdentitiesFromBundleIDs = [v13 appIdentitiesFromBundleIDs];
      localizedName = [v9 localizedName];
      v23 = [v19 initWithCategoryID:categoryID appIdentitites:appIdentitiesFromBundleIDs localizedName:localizedName];

      [v7 replaceObjectAtIndex:v8 withObject:v23];
      ++v8;
    }

    while (v8 < [v7 count]);
  }

  v24 = [v7 copy];
  [(ATXAppDirectoryOrderingProvider *)self setCategories:v24];

  [(ATXAppDirectoryOrderingProvider *)self _writeCategoriesToDisk];
  if (hiddenCopy)
  {
    v25 = @"App hidden";
  }

  else
  {
    v25 = @"App uninstalled";
  }

  [(ATXAppDirectoryOrderingProvider *)self _postUpdateNotificationWithReason:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateCategoriesForDownweightedAppSet:(id)set
{
  v35 = *MEMORY[0x277D85DE8];
  setCopy = set;
  dispatch_assert_queue_V2(self->_queue);
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [setCopy description];
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Updating for downweighted apps: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_categories;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    obj = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = objc_opt_new();
        appIdentities = [v11 appIdentities];
        bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __74__ATXAppDirectoryOrderingProvider__updateCategoriesForDownweightedAppSet___block_invoke;
        v25[3] = &unk_278598188;
        v26 = setCopy;
        v15 = v12;
        v27 = v15;
        [bundleIDsFromIdentities enumerateObjectsUsingBlock:v25];

        if ([v15 count])
        {
          appIdentities2 = [v11 appIdentities];
          bundleIDsFromIdentities2 = [appIdentities2 bundleIDsFromIdentities];
          v18 = [bundleIDsFromIdentities2 mutableCopy];

          v8 |= [(ATXAppDirectoryOrderingProvider *)self _shiftAppIndices:v15 category:v18];
          [v11 updateAppBundleIDs:v18];
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);

    if (v8)
    {
      v19 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: There're differences. Refreshing cache for downeighted apps", buf, 2u);
      }

      [(ATXAppDirectoryOrderingProvider *)self _writeCategoriesToDisk];
      [(ATXAppDirectoryOrderingProvider *)self _postUpdateNotificationWithReason:@"Apps offloaded or disallowed changed"];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v20 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: There's no handled downweighted apps", buf, 2u);
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __74__ATXAppDirectoryOrderingProvider__updateCategoriesForDownweightedAppSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (void)_updateHiddenAppsPodWithNotification:(id)notification
{
  queue = self->_queue;
  notificationCopy = notification;
  dispatch_assert_queue_V2(queue);
  hiddenBundleIDs = [(ATXAppProtectionInfoProvider *)self->_appProtectionInfoProvider hiddenBundleIDs];
  v6 = [hiddenBundleIDs mutableCopy];
  [(ATXAppDirectoryOrderingProvider *)self _writeHiddenAppsToDisk:v6];

  [(ATXAppDirectoryOrderingProvider *)self _postHiddenAppsUpdateNotificationWithReason:notificationCopy];
}

- (BOOL)_shouldConsiderAppForRecents:(id)recents
{
  v9 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  if ([MEMORY[0x277CEB3B8] isOffloadedForBundle:recentsCopy])
  {
    self = __atxlog_handle_app_library();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = recentsCopy;
      _os_log_impl(&dword_2263AA000, &self->super, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Ignoring offloaded app for recents: %@", &v7, 0xCu);
    }

    LOBYTE(self) = 0;
  }

  else
  {
    LODWORD(self) = [(ATXAppProtectionInfoProvider *)self->_appProtectionInfoProvider bundleIdIsHiddenByUserPreference:recentsCopy]^ 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)_bundleIDIsPresentInLibraryCategories:(id)categories remoteBundleID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_categories;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        appIdentities = [*(*(&v18 + 1) + 8 * i) appIdentities];
        bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

        if ([bundleIDsFromIdentities containsObject:categoriesCopy] & 1) != 0 || dCopy && (objc_msgSend(bundleIDsFromIdentities, "containsObject:", dCopy))
        {

          v15 = 1;
          goto LABEL_14;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_bundleIDIsPresentInLibraryRecents:(id)recents remoteBundleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  recentsCopy = recents;
  dispatch_assert_queue_V2(queue);
  v9 = [(NSMutableDictionary *)self->_recentApps objectForKeyedSubscript:recentsCopy];

  if (v9)
  {
    v10 = 1;
  }

  else if (dCopy)
  {
    v11 = [(NSMutableDictionary *)self->_recentApps objectForKeyedSubscript:dCopy];
    v10 = v11 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_getInstallDateForUnhiddenApp:(id)app
{
  v13 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [MEMORY[0x277CEB3B8] registrationDateForBundle:appCopy];
  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 2112;
    v12 = appCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: LS install date: %{public}@ for unhidden app: %@", &v9, 0x16u);
  }

  if (!v4)
  {
    v6 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXAppDirectoryOrderingProvider _getInstallDateForUnhiddenApp:];
    }

    v4 = objc_opt_new();
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)filterBlockWithInstallDates:(id)dates
{
  datesCopy = dates;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__ATXAppDirectoryOrderingProvider_filterBlockWithInstallDates___block_invoke;
  aBlock[3] = &unk_2785981B0;
  v8 = datesCopy;
  v4 = datesCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

BOOL __63__ATXAppDirectoryOrderingProvider_filterBlockWithInstallDates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 webAppBundleID];
    if (v5)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

      v7 = v6 == 0;
    }

    else
    {
      v8 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __63__ATXAppDirectoryOrderingProvider_filterBlockWithInstallDates___block_invoke_cold_1();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateAppClipSinceDate:(id)date installDates:(id)dates
{
  datesCopy = dates;
  appClipDataProvider = self->_appClipDataProvider;
  v8 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v10 = [v8 now];
  v11 = [(ATXAppDirectoryOrderingProvider *)self filterBlockWithInstallDates:datesCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__ATXAppDirectoryOrderingProvider__updateAppClipSinceDate_installDates___block_invoke;
  v13[3] = &unk_2785981D8;
  v14 = datesCopy;
  v12 = datesCopy;
  [(ATXAppClipUsageStream *)appClipDataProvider enumerateAppClipUsageEventsFromStartDate:dateCopy endDate:v10 filterBlock:v11 limit:1000 ascending:0 block:v13];
}

void __72__ATXAppDirectoryOrderingProvider__updateAppClipSinceDate_installDates___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 launchDate];

  if (v3)
  {
    v4 = [v7 launchDate];
    v5 = *(a1 + 32);
    v6 = [v7 webAppBundleID];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

- (void)_updateRecentsForAppClipUsageEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  webClipBundleId = [eventCopy webClipBundleId];
  if (webClipBundleId)
  {
    launchDate = [eventCopy launchDate];
    if (launchDate)
    {
      [(NSMutableDictionary *)self->_recentApps setObject:launchDate forKeyedSubscript:webClipBundleId];
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      [(NSMutableDictionary *)self->_recentApps setObject:v8 forKeyedSubscript:webClipBundleId];
    }

    [(ATXAppDirectoryOrderingProvider *)self _writeRecentsToDisk];
  }

  else
  {
    v7 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAppDirectoryOrderingProvider _updateRecentsForAppClipUsageEvent:];
    }
  }
}

- (void)_ensureCategoryConsistency
{
  v41 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  allAppsKnownToSpringBoard = [(_ATXAppIconState *)self->_appIconState allAppsKnownToSpringBoard];
  v4 = [allAppsKnownToSpringBoard mutableCopy];

  if (v4)
  {
    hiddenBundleIDs = [(ATXAppProtectionInfoProvider *)self->_appProtectionInfoProvider hiddenBundleIDs];
    [v4 removeObjectsInArray:hiddenBundleIDs];

    v26 = v4;
    v6 = [MEMORY[0x277CBEB58] setWithArray:v4];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    v7 = self->_categories;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          appIdentities = [v12 appIdentities];
          bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

          v15 = [bundleIDsFromIdentities countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v28;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v28 != v17)
                {
                  objc_enumerationMutation(bundleIDsFromIdentities);
                }

                v19 = *(*(&v27 + 1) + 8 * j);
                if ([v6 containsObject:v19])
                {
                  [v6 removeObject:v19];
                }
              }

              v16 = [bundleIDsFromIdentities countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v16);
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v9);
    }

    v4 = v26;
    if ([v6 count])
    {
      v20 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v6 count];
        allObjects = [v6 allObjects];
        *buf = 134218242;
        v36 = v21;
        v37 = 2112;
        v38 = allObjects;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Recategorizing %lu missed apps: %@", buf, 0x16u);
      }

      allObjects2 = [v6 allObjects];
      [(ATXAppDirectoryOrderingProvider *)selfCopy _updateCategoriesForInstalledApps:allObjects2];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_categoryIdFromBundleId:(id)id
{
  queue = self->_queue;
  idCopy = id;
  dispatch_assert_queue_V2(queue);
  v6 = [(ATXAppDirectoryOrderingProvider *)self _screenTimeIdFromBundleId:idCopy];

  return v6;
}

- (id)_genreIdFromBundleId:(id)id remoteBundleIDMappings:(id)mappings
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  hardcodedAppCategoryMappings = self->_hardcodedAppCategoryMappings;
  if (!hardcodedAppCategoryMappings)
  {
    v7 = +[ATXAppDirectoryOverrideList iTunesOverridesFromMobileAsset];
    v8 = self->_hardcodedAppCategoryMappings;
    self->_hardcodedAppCategoryMappings = v7;

    hardcodedAppCategoryMappings = self->_hardcodedAppCategoryMappings;
  }

  v9 = ATXBundleIdForRemoteBundleId();
  v10 = [(NSDictionary *)hardcodedAppCategoryMappings objectForKeyedSubscript:v9];

  if (v10)
  {
    genreId = v10;
    v12 = genreId;
    goto LABEL_29;
  }

  v13 = [MEMORY[0x277CEB3B8] recordForBundleId:idCopy];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

  if (([v13 isArcadeApp] & 1) == 0)
  {
    iTunesMetadata = [v14 iTunesMetadata];

    if (iTunesMetadata)
    {
      v16 = MEMORY[0x277CCABB0];
      iTunesMetadata2 = [v14 iTunesMetadata];
      v18 = [v16 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata2, "genreIdentifier")}];

      goto LABEL_11;
    }

LABEL_10:
    v18 = 0;
LABEL_11:
    v19 = [(_ATXAppInfoManager *)self->_infoManager appInfoForBundleId:idCopy];
    if ([v19 isEnterpriseApp])
    {
      v20 = [(NSSet *)self->_managedAppIDs containsObject:idCopy];
      v21 = [(ATXAppDirectoryOrderingProvider *)self _issuingOrganizationForEnterpriseAppBundleID:idCopy isMDM:v20];
      if (![v21 isEqualToString:@"Apple Inc."])
      {
        v24 = &unk_283A55358;
        if (v20)
        {
          v24 = &unk_283A55340;
        }

        v12 = v24;

        genreId = v18;
        goto LABEL_27;
      }

      v22 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ATXAppDirectoryOrderingProvider _genreIdFromBundleId:remoteBundleIDMappings:];
      }
    }

    if ([v18 integerValue])
    {
      v23 = v18;
    }

    else
    {
      genreId = [v19 genreId];

      if (![genreId integerValue])
      {
        v25 = __atxlog_handle_app_library();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = idCopy;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: no app info or genre ID for: %@", &v28, 0xCu);
        }

        v12 = &unk_283A55370;
        goto LABEL_27;
      }

      v23 = genreId;
    }

    genreId = v23;
    v12 = v23;
LABEL_27:

    goto LABEL_28;
  }

  genreId = 0;
  v12 = &unk_283A55328;
LABEL_28:

LABEL_29:
  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_screenTimeIdFromBundleId:(id)id
{
  v51 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = idCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Proactive is trying to categorize %@", buf, 0xCu);
  }

  hardcodedAppCategoryScreenTimeMappings = self->_hardcodedAppCategoryScreenTimeMappings;
  if (!hardcodedAppCategoryScreenTimeMappings)
  {
    v7 = +[ATXAppDirectoryOverrideList ScreenTimeOverridesFromMobileAsset];
    v8 = self->_hardcodedAppCategoryScreenTimeMappings;
    self->_hardcodedAppCategoryScreenTimeMappings = v7;

    hardcodedAppCategoryScreenTimeMappings = self->_hardcodedAppCategoryScreenTimeMappings;
  }

  v9 = ATXBundleIdForRemoteBundleId();
  v10 = [(NSDictionary *)hardcodedAppCategoryScreenTimeMappings objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = idCopy;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Providing a hardcoded value for %@", buf, 0xCu);
    }

    v12 = v10;
    goto LABEL_41;
  }

  if ([MEMORY[0x277CEB3B8] isArcadeAppForBundle:idCopy])
  {
    v12 = &unk_283A55328;
    goto LABEL_41;
  }

  if (([objc_opt_class() isStoreDemoMode] & 1) != 0 || -[ATXAppDirectoryOrderingProvider isMarketingDemoMode](self, "isMarketingDemoMode"))
  {
    v13 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Ignore Enterprise categories due to product demo mode", buf, 2u);
    }

    goto LABEL_15;
  }

  v13 = [(_ATXAppInfoManager *)self->_infoManager appInfoForBundleId:idCopy];
  if ((-[NSObject isEnterpriseApp](v13, "isEnterpriseApp") & 1) != 0 || [MEMORY[0x277CEB3B8] isEnterpriseAppForBundle:idCopy])
  {
    v27 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      isEnterpriseApp = [v13 isEnterpriseApp];
      *buf = 138412546;
      *&buf[4] = idCopy;
      *&buf[12] = 1024;
      *&buf[14] = isEnterpriseApp;
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Got %@ as enterprise. isEnterpriseFromDB: %{BOOL}u", buf, 0x12u);
    }

    if ([(NSSet *)self->_managedAppIDs containsObject:idCopy])
    {
      v29 = [(ATXAppDirectoryOrderingProvider *)self _issuingOrganizationForEnterpriseAppBundleID:idCopy isMDM:1];
      v30 = [v29 isEqualToString:@"Apple Inc."];

      if ((v30 & 1) == 0)
      {
        v12 = &unk_283A55340;
LABEL_45:

        goto LABEL_41;
      }
    }

    else
    {
      v31 = [(ATXAppDirectoryOrderingProvider *)self _issuingOrganizationForEnterpriseAppBundleID:idCopy isMDM:0];
      v32 = [v31 isEqualToString:@"Apple Inc."];

      if (!v32)
      {
        v12 = &unk_283A55358;
        goto LABEL_45;
      }
    }

    v33 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      [ATXAppDirectoryOrderingProvider _genreIdFromBundleId:remoteBundleIDMappings:];
    }
  }

LABEL_15:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__8;
  v49 = __Block_byref_object_dispose__8;
  v50 = 0;
  v14 = [(NSDictionary *)self->_appScreenTimeCategoryMappings objectForKeyedSubscript:idCopy];
  v15 = v14 == 0;

  if (v15)
  {
    v19 = dispatch_semaphore_create(0);
    *&v44 = 0;
    *(&v44 + 1) = &v44;
    v45 = 0x2020000000;
    v46 = 1;
    v20 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 138412290;
      v43 = idCopy;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Requesting CTCategory for app: %@", v42, 0xCu);
    }

    v21 = MEMORY[0x277CF9658];
    v22 = ATXBundleIdForRemoteBundleId();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __61__ATXAppDirectoryOrderingProvider__screenTimeIdFromBundleId___block_invoke;
    v37[3] = &unk_278598200;
    v40 = &v44;
    v23 = idCopy;
    v38 = v23;
    v41 = buf;
    v24 = v19;
    v39 = v24;
    [v21 categoryForBundleID:v22 withCompletionHandler:v37];

    v18 = v24;
    v25 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v18, v25);

    if (!*(*&buf[8] + 40))
    {
      if (*(*(&v44 + 1) + 24) == 1)
      {
        v26 = __atxlog_handle_app_library();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          [ATXAppDirectoryOrderingProvider _screenTimeIdFromBundleId:];
        }
      }

      else
      {
        v26 = __atxlog_handle_app_library();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 138412290;
          v43 = v23;
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: CTCategories provided nil when requesting categorization for bundle %@", v42, 0xCu);
        }
      }

      v34 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = &unk_283A55388;
    }

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v16 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v44) = 138412290;
      *(&v44 + 4) = idCopy;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Using a cached CTCategory response rather than re-requesting for %@", &v44, 0xCu);
    }

    v17 = [(NSDictionary *)self->_appScreenTimeCategoryMappings objectForKeyedSubscript:idCopy];
    v18 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v17;
  }

  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_41:
  v35 = *MEMORY[0x277D85DE8];

  return v12;
}

void __61__ATXAppDirectoryOrderingProvider__screenTimeIdFromBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  if (v6)
  {
    v7 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__ATXAppDirectoryOrderingProvider__screenTimeIdFromBundleId___block_invoke_cold_1();
    }
  }

  if (v5)
  {
    v8 = [v5 identifier];
    v9 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Got CTCategory: %@ for app: %@", &v16, 0x16u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB350], "screenTimeCategoryIDForCategoryIdentifier:", v8)}];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v8 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Got CTCategory: nil for app: %@", &v16, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateAppLaunchCounts
{
  v42 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  allAppsKnownToSpringBoard = [(_ATXAppIconState *)self->_appIconState allAppsKnownToSpringBoard];
  if (allAppsKnownToSpringBoard)
  {
    v28 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:0];
    v29 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = allAppsKnownToSpringBoard;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = MEMORY[0x277CCABB0];
          v40 = *(*(&v34 + 1) + 8 * i);
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          [v28 totalLaunchesForBundleIds:v10];
          v11 = [v9 numberWithDouble:?];
          [v29 addObject:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v6);
    }

    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v4];
    appLaunchCounts = self->_appLaunchCounts;
    self->_appLaunchCounts = v12;

    selfCopy = self;
    v14 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:93];
    v15 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = MEMORY[0x277CCABB0];
          v38 = *(*(&v30 + 1) + 8 * j);
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v14 totalLaunchesForBundleIds:v22];
          v23 = [v21 numberWithDouble:?];
          [v15 addObject:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v18);
    }

    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v16];
    libraryAppLaunchCounts = selfCopy->_libraryAppLaunchCounts;
    selfCopy->_libraryAppLaunchCounts = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_combinedLaunchCountForBundleId:(id)id
{
  queue = self->_queue;
  idCopy = id;
  dispatch_assert_queue_V2(queue);
  v6 = MEMORY[0x277CCABB0];
  v7 = [(NSDictionary *)self->_appLaunchCounts objectForKeyedSubscript:idCopy];
  [v7 doubleValue];
  v9 = v8;
  v10 = [(NSDictionary *)self->_libraryAppLaunchCounts objectForKeyedSubscript:idCopy];

  [v10 doubleValue];
  v12 = [v6 numberWithDouble:v9 + v11 * 10.0];

  return v12;
}

- (id)_totalLaunchCountsForCategory:(id)category
{
  v22 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  dispatch_assert_queue_V2(self->_queue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  appIdentities = [categoryCopy appIdentities];
  bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

  v7 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(bundleIDsFromIdentities);
        }

        v12 = [(NSDictionary *)self->_appLaunchCounts objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        [v12 doubleValue];
        v10 = v10 + v13;
      }

      v8 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_totalLibraryLaunchCountsForCategory:(id)category
{
  v22 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  dispatch_assert_queue_V2(self->_queue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  appIdentities = [categoryCopy appIdentities];
  bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

  v7 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(bundleIDsFromIdentities);
        }

        v12 = [(NSDictionary *)self->_libraryAppLaunchCounts objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        [v12 doubleValue];
        v10 = v10 + v13;
      }

      v8 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_totalCombinedLaunchCountsForCategory:(id)category
{
  v22 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  dispatch_assert_queue_V2(self->_queue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  appIdentities = [categoryCopy appIdentities];
  bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];

  v7 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(bundleIDsFromIdentities);
        }

        v12 = [(ATXAppDirectoryOrderingProvider *)self _combinedLaunchCountForBundleId:*(*(&v17 + 1) + 8 * i)];
        [v12 doubleValue];
        v10 = v10 + v13;
      }

      v8 = [bundleIDsFromIdentities countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_updateMissingInstalledApps
{
  v46 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Starting to update missing installed apps", buf, 2u);
  }

  v4 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Starting to update missing installed apps", buf, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = +[_ATXAppInstallMonitor newPreInstalledAppSet];
  allAppsWithInstallDate = [(_ATXAppInfoManager *)self->_infoManager allAppsWithInstallDate];
  v8 = [allAppsWithInstallDate mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  allAppsKnownToSpringBoard = [(_ATXAppIconState *)self->_appIconState allAppsKnownToSpringBoard];
  v13 = allAppsKnownToSpringBoard;
  v14 = MEMORY[0x277CBEBF8];
  if (allAppsKnownToSpringBoard)
  {
    v14 = allAppsKnownToSpringBoard;
  }

  v15 = v14;

  v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v15];
  v17 = [_ATXAppInstallMonitor removeIntersectionBetweenSet:v16 set:v11];
  v18 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v16;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Found missing installed apps:\n%@", buf, 0xCu);
  }

  v19 = __atxlog_handle_app_install();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v16;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Found missing installed apps:\n%@", buf, 0xCu);
  }

  buf[0] = 0;
  v20 = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"luckMigration", *MEMORY[0x277CEBD00], buf);
  if (!AppBooleanValue || [v16 count])
  {
    v38 = v11;
    allObjects = [v16 allObjects];
    v23 = [_ATXAppInstallMonitor appInfoDictWithBackDate:0 assetData:0 newPreInstalledAppSet:v6 isFromNotification:0 newApps:allObjects];

    if (!AppBooleanValue)
    {
      v34 = v20;
      v35 = v15;
      v37 = v5;
      date = [MEMORY[0x277CBEAA8] date];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v36 = v6;
      v25 = v6;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * i);
            infoManager = self->_infoManager;
            [date timeIntervalSinceReferenceDate];
            [(_ATXAppInfoManager *)infoManager updateInstallDateForBundleID:v30 timestamp:?];
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v27);
      }

      v32 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v34];
      [v32 setBool:1 forKey:@"luckMigration"];

      v6 = v36;
      v5 = v37;
      v15 = v35;
    }

    [(_ATXAppInfoManager *)self->_infoManager addInstallForBundleInfoMap:v23];

    v11 = v38;
  }

  objc_autoreleasePoolPop(v5);
  v33 = *MEMORY[0x277D85DE8];
}

- (id)_categoryComparator
{
  dispatch_assert_queue_V2(self->_queue);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__ATXAppDirectoryOrderingProvider__categoryComparator__block_invoke;
  aBlock[3] = &unk_278598228;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);

  return v3;
}

uint64_t __54__ATXAppDirectoryOrderingProvider__categoryComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _totalCombinedLaunchCountsForCategory:v6];
  v8 = [*(a1 + 32) _totalCombinedLaunchCountsForCategory:v5];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v10 = [v5 categoryID];
    if (v10 <= [v6 categoryID])
    {
      v11 = [v5 categoryID];
      if (v11 >= [v6 categoryID])
      {
        v9 = 0;
      }

      else
      {
        v9 = -1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)_appBundleIDTotalLaunchComparator
{
  dispatch_assert_queue_V2(self->_queue);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__ATXAppDirectoryOrderingProvider__appBundleIDTotalLaunchComparator__block_invoke;
  aBlock[3] = &unk_278598110;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);

  return v3;
}

uint64_t __68__ATXAppDirectoryOrderingProvider__appBundleIDTotalLaunchComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _combinedLaunchCountForBundleId:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_283A55370;
  }

  v10 = v9;

  v11 = [*(a1 + 32) _combinedLaunchCountForBundleId:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &unk_283A55370;
  }

  v14 = v13;

  v15 = [v14 compare:v10];
  if (!v15)
  {
    v15 = [v5 compare:v6 options:1];
  }

  return v15;
}

- (id)_appBundleIDRecencyComparatorForLastLaunchDates:(id)dates
{
  datesCopy = dates;
  dispatch_assert_queue_V2(self->_queue);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__ATXAppDirectoryOrderingProvider__appBundleIDRecencyComparatorForLastLaunchDates___block_invoke;
  aBlock[3] = &unk_278598110;
  v9 = datesCopy;
  v5 = datesCopy;
  v6 = _Block_copy(aBlock);

  return v6;
}

uint64_t __83__ATXAppDirectoryOrderingProvider__appBundleIDRecencyComparatorForLastLaunchDates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v9 = [v5 compare:v6 options:1];
  }

  return v9;
}

- (id)_appBundleIDLaunchCountComparator
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_appLaunchCounts)
  {
    [(ATXAppDirectoryOrderingProvider *)self _updateAppLaunchCounts];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__ATXAppDirectoryOrderingProvider__appBundleIDLaunchCountComparator__block_invoke;
  aBlock[3] = &unk_278598110;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);

  return v3;
}

uint64_t __68__ATXAppDirectoryOrderingProvider__appBundleIDLaunchCountComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_283A55370;
  }

  v10 = v9;

  v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &unk_283A55370;
  }

  v14 = v13;

  v15 = [v14 compare:v10];
  if (!v15)
  {
    v15 = [v5 compare:v6 options:1];
  }

  return v15;
}

- (void)_updateScreenTimeMappingsForAppBundleIds:(id)ids withRetries:(unint64_t)retries
{
  v62 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  context = objc_autoreleasePoolPush();
  val = self;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = idsCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Requesting CTCategories for apps %@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CF9658];
  v10 = *MEMORY[0x277CF9640];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke;
  v49[3] = &unk_278598250;
  v52 = &v53;
  v11 = dictionary;
  v50 = v11;
  group = v7;
  v51 = group;
  [v9 categoryForBundleIdentifiers:idsCopy platform:v10 withCompletionHandler:v49];
  v12 = dispatch_time(0, 20000000000);
  dispatch_group_wait(group, v12);
  if (*(v54 + 24) == 1)
  {
    v13 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXAppDirectoryOrderingProvider _updateScreenTimeMappingsForAppBundleIds:withRetries:];
    }
  }

  v14 = v11;
  objc_sync_enter(v14);
  v42 = [v14 copy];
  objc_sync_exit(v14);
  v37 = v14;

  if ((v54[3] & 1) != 0 || ![v42 count])
  {
    v29 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [ATXAppDirectoryOrderingProvider _updateScreenTimeMappingsForAppBundleIds:withRetries:];
    }

    if (retries)
    {
      objc_initWeak(buf, val);
      v30 = MEMORY[0x277CEBCE8];
      v31 = [MEMORY[0x277CBEAA8] now];
      v32 = [v31 dateByAddingTimeInterval:1200.0];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke_211;
      v47[3] = &unk_2785982A0;
      objc_copyWeak(v48, buf);
      v48[1] = retries;
      v33 = [v30 fireAtDate:v32 block:v47];
      currentTimer = val->_currentTimer;
      val->_currentTimer = v33;

      objc_destroyWeak(v48);
      objc_destroyWeak(buf);
    }

    else
    {
      v35 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [ATXAppDirectoryOrderingProvider _updateScreenTimeMappingsForAppBundleIds:withRetries:];
      }
    }
  }

  else
  {
    v15 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v42;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Retrieved categories: %@", buf, 0xCu);
    }

    allKeys = [v42 allKeys];
    v17 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = allKeys;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v61 count:16];
    if (v19)
    {
      v20 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v43 + 1) + 8 * i);
          v23 = [v42 objectForKeyedSubscript:v22];
          identifier = [v23 identifier];

          v25 = __atxlog_handle_app_library();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = identifier;
            v59 = 2112;
            v60 = v22;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Got CTCategory: %@ for app: %@", buf, 0x16u);
          }

          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CEB350], "screenTimeCategoryIDForCategoryIdentifier:", identifier)}];
          [v17 addObject:v26];
        }

        v19 = [v18 countByEnumeratingWithState:&v43 objects:v61 count:16];
      }

      while (v19);
    }

    v27 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v17 forKeys:v18];
    appScreenTimeCategoryMappings = val->_appScreenTimeCategoryMappings;
    val->_appScreenTimeCategoryMappings = v27;

    val->_currentCacheDueForRefresh = 0;
  }

  _Block_object_dispose(&v53, 8);
  objc_autoreleasePoolPop(context);

  v36 = *MEMORY[0x277D85DE8];
}

void __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    [*(a1 + 32) addEntriesFromDictionary:v5];
  }

  objc_sync_exit(v7);

  if (v6)
  {
    v8 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke_211(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Retrying category retrieval...", buf, 2u);
    }

    *(WeakRetained + 272) = 1;
    v4 = *(WeakRetained + 3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke_212;
    v6[3] = &unk_278598278;
    v5 = *(a1 + 40);
    v6[4] = WeakRetained;
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

- (void)_updateMDMStatus
{
  dispatch_assert_queue_V2(self->_queue);
  _getManagedAppIDs = [(ATXAppDirectoryOrderingProvider *)self _getManagedAppIDs];
  managedAppIDs = self->_managedAppIDs;
  self->_managedAppIDs = _getManagedAppIDs;

  _getMDMOrgName = [(ATXAppDirectoryOrderingProvider *)self _getMDMOrgName];
  managingOrganizationName = self->_managingOrganizationName;
  self->_managingOrganizationName = _getMDMOrgName;

  MEMORY[0x2821F96F8]();
}

- (id)_getManagedAppIDs
{
  v2 = MEMORY[0x277CBEB98];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];
  v5 = [v2 setWithArray:managedAppIDs];

  return v5;
}

- (id)_getMDMOrgName
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managingOrganizationInformation = [mEMORY[0x277D262A0] managingOrganizationInformation];
  v4 = [managingOrganizationInformation objectForKeyedSubscript:*MEMORY[0x277D26360]];

  return v4;
}

- (void)_updateMDMAndEnterpriseCategories
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_splitEnterpriseCategoryWithAppsInCategory:(id)category appsByCategoryName:(id)name isMDMAppCategory:(BOOL)appCategory
{
  appCategoryCopy = appCategory;
  v33 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  nameCopy = name;
  v10 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __114__ATXAppDirectoryOrderingProvider__splitEnterpriseCategoryWithAppsInCategory_appsByCategoryName_isMDMAppCategory___block_invoke;
  v29[3] = &unk_2785982C8;
  v31 = appCategoryCopy;
  v29[4] = self;
  v11 = v10;
  v30 = v11;
  [categoryCopy enumerateObjectsUsingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v11;
  v24 = categoryCopy;
  v12 = [categoryCopy objectsAtIndexes:v11];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [(ATXAppDirectoryOrderingProvider *)self _issuingOrganizationForEnterpriseAppBundleID:v17 isMDM:!appCategoryCopy];
        v19 = [nameCopy objectForKeyedSubscript:v18];

        if (!v19)
        {
          v20 = objc_opt_new();
          [nameCopy setObject:v20 forKeyedSubscript:v18];
        }

        v21 = [nameCopy objectForKeyedSubscript:v18];
        [v21 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v14);
  }

  [v24 removeObjectsAtIndexes:v23];
  v22 = *MEMORY[0x277D85DE8];
}

void __114__ATXAppDirectoryOrderingProvider__splitEnterpriseCategoryWithAppsInCategory_appsByCategoryName_isMDMAppCategory___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = v5;
  if ([*(*(a1 + 32) + 216) containsObject:?] != v6)
  {
    [*(a1 + 40) addIndex:a3];
  }
}

- (void)_updateMDMCategoryName
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _getMDMOrgName = [(ATXAppDirectoryOrderingProvider *)self _getMDMOrgName];
  managingOrganizationName = self->_managingOrganizationName;
  self->_managingOrganizationName = _getMDMOrgName;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_categories;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 categoryID] == 6)
        {
          localizedName = [v10 localizedName];
          v14 = [localizedName isEqualToString:self->_managingOrganizationName];

          v15 = __atxlog_handle_app_library();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v16)
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = 138412290;
              v29 = v18;
              _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%@: MDM enterprise category name doesn't need any change", buf, 0xCu);
            }
          }

          else
          {
            if (v16)
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              localizedName2 = [v10 localizedName];
              v22 = self->_managingOrganizationName;
              *buf = 138412802;
              v29 = v20;
              v30 = 2112;
              v31 = localizedName2;
              v32 = 2112;
              v33 = v22;
              _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%@: MDM enterprise category updates its name from %@ to %@", buf, 0x20u);
            }

            [v10 updateCategoryLocalizedNameWithName:self->_managingOrganizationName];
            [(ATXAppDirectoryOrderingProvider *)self _writeCategoriesToDisk];
            [(ATXAppDirectoryOrderingProvider *)self _postUpdateNotificationWithReason:@"MDM category name changed"];
          }

          goto LABEL_18;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138412290;
    v29 = v12;
    _os_log_impl(&dword_2263AA000, &v5->super, OS_LOG_TYPE_DEFAULT, "%@: Found NO MDM enterprise category changes", buf, 0xCu);
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_issuingOrganizationForEnterpriseAppBundleID:(id)d isMDM:(BOOL)m
{
  mCopy = m;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (mCopy)
  {
    managingOrganizationName = self->_managingOrganizationName;
    if (!managingOrganizationName)
    {
      managingOrganizationName = @"kATXMDM";
    }

    v8 = managingOrganizationName;
  }

  else if ([MEMORY[0x277CEB3B8] isBetaAppForBundle:dCopy])
  {
    v8 = @"TestFlight";
  }

  else
  {
    v9 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ATXAppDirectoryOrderingProvider _issuingOrganizationForEnterpriseAppBundleID:isMDM:];
    }

    v8 = @"kATXEnterprise";
    if (([MEMORY[0x277CEB3B8] isUPPValidatedForBundle:dCopy] & 1) == 0)
    {
      v10 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ATXAppDirectoryOrderingProvider _issuingOrganizationForEnterpriseAppBundleID:isMDM:];
      }

      v11 = ATXBundleIdForRemoteBundleId();
      v12 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v11 allowPlaceholder:1 error:0];
      signerOrganization = [v12 signerOrganization];

      if (signerOrganization)
      {
        v14 = signerOrganization;
      }

      else
      {
        v14 = @"kATXEnterprise";
      }

      v8 = v14;
    }
  }

  return v8;
}

- (id)_mdmEnterpriseCategoriesForApps:(id)apps
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ATXAppDirectoryOrderingProvider *)self _groupEnterpriseAppsByIssuerWithBundleIDs:apps isMDM:1];
  if ([v3 count] >= 2)
  {
    v4 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppDirectoryOrderingProvider *)v3 _mdmEnterpriseCategoriesForApps:v4];
    }
  }

  memset(v15, 0, sizeof(v15));
  v5 = v3;
  if ([v5 countByEnumeratingWithState:v15 objects:v16 count:16])
  {
    v6 = **(&v15[0] + 1);
    v7 = [v5 objectForKeyedSubscript:{**(&v15[0] + 1), *&v15[0]}];
    v8 = [v7 copy];

    LODWORD(v7) = [v6 isEqualToString:@"kATXMDM"];
    v9 = objc_alloc(MEMORY[0x277CEB350]);
    appIdentitiesFromBundleIDs = [v8 appIdentitiesFromBundleIDs];
    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    v12 = [v9 initWithCategoryID:6 appIdentitites:appIdentitiesFromBundleIDs localizedName:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_getEnterpriseCategoriesForApps:(id)apps
{
  v26 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = objc_opt_new();
  v20 = appsCopy;
  v6 = [(ATXAppDirectoryOrderingProvider *)self _groupEnterpriseAppsByIssuerWithBundleIDs:appsCopy isMDM:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 copy];

        LODWORD(v12) = [v11 isEqualToString:@"kATXEnterprise"];
        v14 = objc_alloc(MEMORY[0x277CEB350]);
        appIdentitiesFromBundleIDs = [v13 appIdentitiesFromBundleIDs];
        if (v12)
        {
          v16 = 0;
        }

        else
        {
          v16 = v11;
        }

        v17 = [v14 initWithCategoryID:1 appIdentitites:appIdentitiesFromBundleIDs localizedName:v16];

        [v5 addObject:v17];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_shiftAppIndices:(id)indices category:(id)category
{
  indicesCopy = indices;
  categoryCopy = category;
  v7 = [indicesCopy count];
  if (v7)
  {
    v8 = [categoryCopy objectsAtIndexes:indicesCopy];
    [categoryCopy removeObjectsAtIndexes:indicesCopy];
    [categoryCopy addObjectsFromArray:v8];
  }

  return v7 != 0;
}

- (void)_reorderAndHideDupesForAppsInCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __73__ATXAppDirectoryOrderingProvider__reorderAndHideDupesForAppsInCategory___block_invoke;
  v14 = &unk_2785982F0;
  selfCopy = self;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [categoryCopy enumerateObjectsUsingBlock:&v11];
  [(ATXAppDirectoryOrderingProvider *)self _shiftAppIndices:v10 category:categoryCopy, v11, v12, v13, v14, selfCopy];
  [(ATXAppDirectoryOrderingProvider *)self _shiftAppIndices:v8 category:categoryCopy];
  [(ATXAppDirectoryOrderingProvider *)self _shiftAppIndices:v9 category:categoryCopy];
}

void __73__ATXAppDirectoryOrderingProvider__reorderAndHideDupesForAppsInCategory___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (a3)
  {
    v6 = [*(*(a1 + 32) + 208) containsObject:v5];
    v5 = v10;
    if (v6)
    {
      v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v10];
      [v7 doubleValue];
      v9 = v8;

      v5 = v10;
      if (v9 < 5.0)
      {
        [*(a1 + 40) addIndex:a3];
        v5 = v10;
      }
    }
  }

  if ([MEMORY[0x277CEB3B8] isOffloadedForBundle:v5])
  {
    [*(a1 + 48) addIndex:a3];
  }

  if ([*(*(a1 + 32) + 136) containsObject:v10])
  {
    [*(a1 + 56) addIndex:a3];
  }
}

- (id)_computeCategoriesWithRetries:(unint64_t)retries
{
  v103 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  appLaunchCounts = self->_appLaunchCounts;
  if (!appLaunchCounts)
  {
    [(ATXAppDirectoryOrderingProvider *)self _updateAppLaunchCounts];
    appLaunchCounts = self->_appLaunchCounts;
  }

  allKeys = [(NSDictionary *)appLaunchCounts allKeys];
  v7 = [allKeys mutableCopy];

  hiddenBundleIDs = [(ATXAppProtectionInfoProvider *)self->_appProtectionInfoProvider hiddenBundleIDs];
  v9 = hiddenBundleIDs;
  if (hiddenBundleIDs)
  {
    v10 = hiddenBundleIDs;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  [v7 removeObjectsInArray:v10];

  [(ATXAppDirectoryOrderingProvider *)self _updateScreenTimeMappingsForAppBundleIds:v7 withRetries:retries];
  v11 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppDirectoryOrderingProvider _computeCategoriesWithRetries:?];
  }

  v12 = objc_opt_new();
  v81 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v95 objects:v102 count:16];
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v96;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v96 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v95 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [(ATXAppDirectoryOrderingProvider *)self _genreIdFromBundleId:v18 remoteBundleIDMappings:0];
        [v81 setObject:v20 forKeyedSubscript:v18];

        v21 = [(ATXAppDirectoryOrderingProvider *)self _screenTimeIdFromBundleId:v18];
        [v12 setObject:v21 forKeyedSubscript:v18];

        objc_autoreleasePoolPop(v19);
      }

      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    v22 = [ATXAppDirectoryHierarchyNode dynamicCategoriesForAppBundleIDs:v13 screenTimeMappings:v12 iTunesMappings:v81];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v92;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v92 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v23 objectForKeyedSubscript:*(*(&v91 + 1) + 8 * j)];
        _appBundleIDTotalLaunchComparator = [(ATXAppDirectoryOrderingProvider *)self _appBundleIDTotalLaunchComparator];
        [v28 sortUsingComparator:_appBundleIDTotalLaunchComparator];
      }

      v25 = [v23 countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v25);
  }

  v78 = v12;

  nonFolderAppSetOnPages = [(_ATXAppIconState *)self->_appIconState nonFolderAppSetOnPages];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_ATXAppIconState getFirstVisiblePageIndex](self->_appIconState, "getFirstVisiblePageIndex")}];
  v32 = [nonFolderAppSetOnPages objectForKeyedSubscript:v31];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = objc_opt_new();
  }

  v75 = v34;

  v35 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppDirectoryOrderingProvider _computeCategoriesWithRetries:?];
  }

  allDockedApps = [(_ATXAppIconState *)self->_appIconState allDockedApps];
  v37 = allDockedApps;
  v38 = v78;
  if (allDockedApps)
  {
    v39 = allDockedApps;
  }

  else
  {
    v39 = objc_opt_new();
  }

  v40 = v39;

  v74 = v40;
  v41 = [v75 setByAddingObjectsFromSet:v40];
  homescreenAppsToDedupeAgainst = self->_homescreenAppsToDedupeAgainst;
  self->_homescreenAppsToDedupeAgainst = v41;

  v43 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppDirectoryOrderingProvider _computeCategoriesWithRetries:?];
  }

  v44 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v45 = v23;
  v82 = [v45 countByEnumeratingWithState:&v87 objects:v100 count:16];
  if (v82)
  {
    v46 = *v88;
    v76 = *v88;
    v77 = v45;
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*v88 != v46)
        {
          objc_enumerationMutation(v45);
        }

        v48 = *(*(&v87 + 1) + 8 * k);
        if ([v48 unsignedIntegerValue] == 1)
        {
          v49 = [v45 objectForKeyedSubscript:v48];
          v50 = [(ATXAppDirectoryOrderingProvider *)self _getEnterpriseCategoriesForApps:v49];

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          appIdentitiesFromBundleIDs = v50;
          v52 = [appIdentitiesFromBundleIDs countByEnumeratingWithState:&v83 objects:v99 count:16];
          if (v52)
          {
            v53 = v52;
            v80 = k;
            v54 = *v84;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v84 != v54)
                {
                  objc_enumerationMutation(appIdentitiesFromBundleIDs);
                }

                v56 = *(*(&v83 + 1) + 8 * m);
                appIdentities = [v56 appIdentities];
                bundleIDsFromIdentities = [appIdentities bundleIDsFromIdentities];
                v59 = [bundleIDsFromIdentities mutableCopy];

                [(ATXAppDirectoryOrderingProvider *)self _reorderAndHideDupesForAppsInCategory:v59];
                [v56 updateAppBundleIDs:v59];
                [v44 addObject:v56];
              }

              v53 = [appIdentitiesFromBundleIDs countByEnumeratingWithState:&v83 objects:v99 count:16];
            }

            while (v53);
            v60 = appIdentitiesFromBundleIDs;
            v45 = v77;
            v38 = v78;
            v46 = v76;
            k = v80;
          }

          else
          {
            v60 = appIdentitiesFromBundleIDs;
          }
        }

        else
        {
          unsignedIntegerValue = [v48 unsignedIntegerValue];
          v62 = [v45 objectForKeyedSubscript:v48];
          if (unsignedIntegerValue == 6)
          {
            v60 = [(ATXAppDirectoryOrderingProvider *)self _mdmEnterpriseCategoriesForApps:v62];

            if (!v60)
            {
              goto LABEL_55;
            }

            appIdentities2 = [v60 appIdentities];
            [appIdentities2 bundleIDsFromIdentities];
            v65 = v64 = k;
            appIdentitiesFromBundleIDs = [v65 mutableCopy];

            k = v64;
            [(ATXAppDirectoryOrderingProvider *)self _reorderAndHideDupesForAppsInCategory:appIdentitiesFromBundleIDs];
            [v60 updateAppBundleIDs:appIdentitiesFromBundleIDs];
            [v44 addObject:v60];
          }

          else
          {
            [(ATXAppDirectoryOrderingProvider *)self _reorderAndHideDupesForAppsInCategory:v62];

            v66 = [v45 objectForKeyedSubscript:v48];
            v60 = [v66 copy];

            v67 = objc_alloc(MEMORY[0x277CEB350]);
            v68 = k;
            unsignedIntegerValue2 = [v48 unsignedIntegerValue];
            appIdentitiesFromBundleIDs = [v60 appIdentitiesFromBundleIDs];
            v70 = unsignedIntegerValue2;
            k = v68;
            v71 = [v67 initWithCategoryID:v70 appIdentities:appIdentitiesFromBundleIDs];
            [v44 addObject:v71];
          }
        }

LABEL_55:
      }

      v82 = [v45 countByEnumeratingWithState:&v87 objects:v100 count:16];
    }

    while (v82);
  }

  v72 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)_sortCategories:(id)categories
{
  queue = self->_queue;
  categoriesCopy = categories;
  dispatch_assert_queue_V2(queue);
  if (!self->_appLaunchCounts)
  {
    [(ATXAppDirectoryOrderingProvider *)self _updateAppLaunchCounts];
  }

  _categoryComparator = [(ATXAppDirectoryOrderingProvider *)self _categoryComparator];
  v7 = [categoriesCopy sortedArrayUsingComparator:_categoryComparator];

  return v7;
}

- (void)_postProcessCategories:(id)categories withReply:(id)reply
{
  v45 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_queue);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = categoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v8)
  {

    v11 = 0;
    v10 = 0;
LABEL_28:
    v29 = replyCopy;
    (*(replyCopy + 2))(replyCopy, v7, 0);
    goto LABEL_29;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v40;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v39 + 1) + 8 * i);
      if ([v14 categoryID] == 6014 || objc_msgSend(v14, "categoryID") == 1000)
      {
        v15 = v14;

        v11 = v15;
      }

      if ([v14 categoryID] == 2)
      {
        v16 = v14;

        v10 = v16;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v9);

  if (!v11 || !v10)
  {
    goto LABEL_28;
  }

  v34 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v33 = *v36;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        if ([v20 categoryID] == 6014 || objc_msgSend(v20, "categoryID") == 1000)
        {
          v21 = objc_alloc(MEMORY[0x277CEB350]);
          v22 = v7;
          categoryID = [v20 categoryID];
          appIdentities = [v20 appIdentities];
          appIdentities2 = [v10 appIdentities];
          v26 = [appIdentities arrayByAddingObjectsFromArray:appIdentities2];
          v27 = categoryID;
          v7 = v22;
          v28 = [v21 initWithCategoryID:v27 appIdentities:v26];
          [v34 addObject:v28];
        }

        else
        {
          [v34 addObject:v20];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v18);
  }

  v29 = replyCopy;
  (*(replyCopy + 2))(replyCopy, v34, 0);

LABEL_29:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)categoriesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Scheduling categorization processing on the server's queue", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ATXAppDirectoryOrderingProvider_categoriesWithReply___block_invoke;
  v8[3] = &unk_2785968C8;
  v8[4] = self;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(self->_queue, v7);
}

void __55__ATXAppDirectoryOrderingProvider_categoriesWithReply___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Will process categorization from server", buf, 2u);
  }

  [*(a1 + 32) _postProcessCategories:*(*(a1 + 32) + 280) withReply:*(a1 + 40)];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Did process categorization from server", v4, 2u);
  }
}

- (void)topAppsWithMaxNumberOfResults:(unint64_t)results reply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ATXAppDirectoryOrderingProvider_topAppsWithMaxNumberOfResults_reply___block_invoke;
  block[3] = &unk_278598318;
  v10 = replyCopy;
  resultsCopy = results;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(queue, block);
}

void __71__ATXAppDirectoryOrderingProvider_topAppsWithMaxNumberOfResults_reply___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x277CEB400] clientForConsumerType:15];
    v4 = a1[4];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[4] + 32);
  }

  if (a1[6] >= 0x7FFFFFFFuLL)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = a1[6];
  }

  v10 = [v2 appPredictionsForConsumerSubType:35 limit:v6];
  v7 = [v10 error];

  v8 = a1[5];
  if (v7)
  {
    v9 = [v10 error];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v9 = [v10 predictedApps];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)appLaunchDatesWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXAppDirectoryOrderingProvider_appLaunchDatesWithReply___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __59__ATXAppDirectoryOrderingProvider_appLaunchDatesWithReply___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) allApps];
  v3 = [v2 allObjects];

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [*(*(a1 + 32) + 40) lastLaunchDateForBundleId:{v10, v15}];
        if (v12)
        {
          [v4 setObject:v12 forKeyedSubscript:v10];
        }

        else
        {
          v13 = [MEMORY[0x277CBEAA8] distantPast];
          [v4 setObject:v13 forKeyedSubscript:v10];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestNotificationWhenCategoriesAreReady
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ATXAppDirectoryOrderingProvider_requestNotificationWhenCategoriesAreReady__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __76__ATXAppDirectoryOrderingProvider_requestNotificationWhenCategoriesAreReady__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 248) timeIntervalSinceNow];
  v3 = v2;
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryOrderingProvider: Last update interval %f", &v6, 0xCu);
  }

  if (v3 < -10.0)
  {
    [*(a1 + 32) _postUpdateNotificationWithReason:@"Defaults requested earlier - real categorization warmup complete"];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForManagedAppsOrgInfoChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleManagedAppsOrgInfoChangedNotification name:*MEMORY[0x277D26128] object:0];
}

- (void)_registerForManagedAppsChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleManagedAppsChangedNotification name:*MEMORY[0x277D26120] object:0];
}

- (void)_handleManagedAppsOrgInfoChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@: MCManagingOrgInfo changed, refresh enterprise category name", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__ATXAppDirectoryOrderingProvider__handleManagedAppsOrgInfoChangedNotification__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleManagedAppsChangedNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@: Managed apps changed, refresh enterprise category name", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ATXAppDirectoryOrderingProvider__handleManagedAppsChangedNotification__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)appLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ATXAppDirectoryOrderingProvider_appLaunchInformationWithReply___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __65__ATXAppDirectoryOrderingProvider_appLaunchInformationWithReply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    [v2 _updateAppLaunchCounts];
  }

  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
        [v10 floatValue];
        v12 = v11;

        v13 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v9];
        [v13 floatValue];
        v15 = v14;

        v16 = [*(a1 + 32) _combinedLaunchCountForBundleId:v9];
        [v16 floatValue];
        v18 = v17;

        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"General Launch Counts: %f, Library Launch Counts: %f, Weighted Total Launch Counts: %f", v12, v15, v18];
        [v3 addObject:v19];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v20 = MEMORY[0x277CBEAC0];
  v21 = *(a1 + 40);
  v22 = [*(*(a1 + 32) + 8) allKeys];
  v23 = [v20 dictionaryWithObjects:v3 forKeys:v22];
  (*(v21 + 16))(v21, v23, 0);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)categoryLaunchInformationWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ATXAppDirectoryOrderingProvider_categoryLaunchInformationWithReply___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __70__ATXAppDirectoryOrderingProvider_categoryLaunchInformationWithReply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    [v2 _updateAppLaunchCounts];
  }

  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(*(a1 + 32) + 280);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "categoryID")}];
        [v3 addObject:v10];

        v11 = [*(a1 + 32) _totalLaunchCountsForCategory:v9];
        [v11 floatValue];
        v13 = v12;

        v14 = [*(a1 + 32) _totalLibraryLaunchCountsForCategory:v9];
        [v14 floatValue];
        v16 = v15;

        v17 = v13;
        v18 = v16;
        v19 = v17 + v18 * 10.0;
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"General Launch Counts: %f, Library Launch Counts: %f, Weighted Total Launch Counts: %f", *&v17, *&v18, v19];
        [v4 addObject:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v21 = *(a1 + 40);
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3];
  (*(v21 + 16))(v21, v22, 0);

  v23 = *MEMORY[0x277D85DE8];
}

void __201__ATXAppDirectoryOrderingProvider_initWithAppInfoManager_cache_blacklist_recentsCache_hiddenAppsCache_appClipDataProvider_appIconState_appClipChangeListener_histogramManager_appProtectionInfoProvider___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getInstallDateForUnhiddenApp:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__ATXAppDirectoryOrderingProvider_filterBlockWithInstallDates___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateRecentsForAppClipUsageEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_genreIdFromBundleId:remoteBundleIDMappings:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_screenTimeIdFromBundleId:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__ATXAppDirectoryOrderingProvider__screenTimeIdFromBundleId___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXAppDirectoryOrderingProvider: Error when trying to request screen time categories for apps. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_updateScreenTimeMappingsForAppBundleIds:withRetries:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateScreenTimeMappingsForAppBundleIds:withRetries:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateScreenTimeMappingsForAppBundleIds:withRetries:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__ATXAppDirectoryOrderingProvider__updateScreenTimeMappingsForAppBundleIds_withRetries___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXAppDirectoryOrderingProvider: Error requesting screen time categories. Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_issuingOrganizationForEnterpriseAppBundleID:isMDM:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_issuingOrganizationForEnterpriseAppBundleID:isMDM:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_mdmEnterpriseCategoriesForApps:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Number of MDM categories should only be 1 while current is: %lu", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_computeCategoriesWithRetries:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 192), "getFirstVisiblePageIndex")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_computeCategoriesWithRetries:(id *)a1 .cold.2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a1, "getFirstVisiblePageIndex")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_computeCategoriesWithRetries:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end