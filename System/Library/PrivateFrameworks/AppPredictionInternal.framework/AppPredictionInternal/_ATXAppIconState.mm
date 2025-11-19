@interface _ATXAppIconState
+ (_ATXAppIconState)sharedInstance;
- (BOOL)appInFolderWithBundleId:(id)a3;
- (BOOL)appOnDockWithBundleId:(id)a3;
- (_ATXAppIconState)initWithHomeScreenConfigCache:(id)a3 sbsHomeScreenService:(id)a4;
- (id)allAppsKnownToSpringBoard;
- (id)allDockedApps;
- (id)allFolderApps;
- (id)allInstalledAppsKnownToSpringBoard;
- (id)nonFolderAppSetOnPages;
- (id)springboardPageNumbersWithAppPredictionPanels;
- (id)springboardPageNumbersWithSuggestionsWidgets;
- (int64_t)folderPageNumberForBundleId:(id)a3;
- (int64_t)springboardPageLocationForBundleId:(id)a3;
- (int64_t)springboardPageNumberForBundleId:(id)a3;
- (unint64_t)getFirstVisiblePageIndex;
- (unint64_t)numberOfApps;
- (unint64_t)numberOfFolders;
- (unint64_t)numberOfPages;
- (void)_reload;
@end

@implementation _ATXAppIconState

+ (_ATXAppIconState)sharedInstance
{
  if (sharedInstance__pasOnceToken7_18 != -1)
  {
    +[_ATXAppIconState sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_22;

  return v3;
}

- (id)allInstalledAppsKnownToSpringBoard
{
  v3 = objc_opt_new();
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54___ATXAppIconState_allInstalledAppsKnownToSpringBoard__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(syncQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)allAppsKnownToSpringBoard
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__53;
  v11 = __Block_byref_object_dispose__53;
  v12 = 0;
  syncQueue = self->_syncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45___ATXAppIconState_allAppsKnownToSpringBoard__block_invoke;
  v6[3] = &unk_2785980E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(syncQueue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_reload
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)springboardPageNumbersWithAppPredictionPanels
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__53;
  v10 = __Block_byref_object_dispose__53;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65___ATXAppIconState_springboardPageNumbersWithAppPredictionPanels__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)springboardPageNumbersWithSuggestionsWidgets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__53;
  v10 = __Block_byref_object_dispose__53;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64___ATXAppIconState_springboardPageNumbersWithSuggestionsWidgets__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_ATXAppIconState)initWithHomeScreenConfigCache:(id)a3 sbsHomeScreenService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = _ATXAppIconState;
  v9 = [(_ATXAppIconState *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeScreenConfigCache, a3);
    objc_storeStrong(&v10->_sbsHomeScreenService, a4);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    syncQueue = v10->_syncQueue;
    v10->_syncQueue = v15;

    [(_ATXAppIconState *)v10 _reload];
    objc_initWeak(&location, v10);
    v17 = objc_alloc(MEMORY[0x277D42628]);
    v18 = v10->_syncQueue;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke;
    v37[3] = &unk_2785977B0;
    objc_copyWeak(&v38, &location);
    v19 = [v17 initWithQueue:v18 operation:v37];
    coalescedReloadOperation = v10->_coalescedReloadOperation;
    v10->_coalescedReloadOperation = v19;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_48;
    aBlock[3] = &unk_278598098;
    objc_copyWeak(&v36, &location);
    v21 = _Block_copy(aBlock);
    notify_register_dispatch([*MEMORY[0x277CEB218] UTF8String], &v10->_homeScreenConfigCacheChangeDarwinNotificationObserver, v10->_syncQueue, v21);
    notify_register_dispatch([*MEMORY[0x277CEB2A0] UTF8String], &v10->_homeScreenTodayPageConfigCacheChangeDarwinNotificationObserver, v10->_syncQueue, v21);
    notify_register_dispatch([*MEMORY[0x277CEB200] UTF8String], &v10->_dockAppListChangeDarwinNotificationObserver, v10->_syncQueue, v21);
    v22 = objc_opt_new();
    installNotification = v10->_installNotification;
    v10->_installNotification = v22;

    v24 = v10->_installNotification;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_51;
    v33[3] = &unk_27859AE80;
    v25 = v21;
    v34 = v25;
    [(_ATXInternalInstallNotification *)v24 registerForNotificationsWithInstallBlock:v33];
    v26 = objc_opt_new();
    uninstallNotification = v10->_uninstallNotification;
    v10->_uninstallNotification = v26;

    v28 = v10->_uninstallNotification;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __71___ATXAppIconState_initWithHomeScreenConfigCache_sbsHomeScreenService___block_invoke_2;
    v31[3] = &unk_27859D440;
    v29 = v25;
    v32 = v29;
    [(_ATXInternalUninstallNotification *)v28 registerForNotificationsWithUninstallBlock:v31];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)allDockedApps
{
  v3 = objc_opt_new();
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33___ATXAppIconState_allDockedApps__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(syncQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)allFolderApps
{
  v3 = objc_opt_new();
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33___ATXAppIconState_allFolderApps__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(syncQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)appOnDockWithBundleId:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___ATXAppIconState_appOnDockWithBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

- (BOOL)appInFolderWithBundleId:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___ATXAppIconState_appInFolderWithBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

- (int64_t)springboardPageNumberForBundleId:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__53;
  v18 = __Block_byref_object_dispose__53;
  v19 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___ATXAppIconState_springboardPageNumberForBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v13 = &v14;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(syncQueue, block);
  v7 = [v15[5] indexPath];

  if (v7)
  {
    v8 = [v15[5] indexPath];
    v9 = [v8 indexAtPosition:0];
  }

  else
  {
    v9 = -1;
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (int64_t)springboardPageLocationForBundleId:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__53;
  v18 = __Block_byref_object_dispose__53;
  v19 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___ATXAppIconState_springboardPageLocationForBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v13 = &v14;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(syncQueue, block);
  v7 = [v15[5] indexPath];

  if (v7)
  {
    v8 = [v15[5] indexPath];
    v9 = [v8 indexAtPosition:1];
  }

  else
  {
    v9 = -1;
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (int64_t)folderPageNumberForBundleId:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__53;
  v20 = __Block_byref_object_dispose__53;
  v21 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48___ATXAppIconState_folderPageNumberForBundleId___block_invoke;
  block[3] = &unk_27859A8B0;
  v15 = &v16;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(syncQueue, block);
  v7 = v17[5];
  if (v7)
  {
    v8 = [v7 indexPath];
    v9 = [v8 length];

    if (v9 == 3)
    {
      v10 = [v17[5] indexPath];
      v11 = [v10 indexAtPosition:2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = -1;
  }

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (unint64_t)numberOfApps
{
  v2 = [(_ATXAppIconState *)self allInstalledAppsKnownToSpringBoard];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)numberOfFolders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35___ATXAppIconState_numberOfFolders__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)numberOfPages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___ATXAppIconState_numberOfPages__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)nonFolderAppSetOnPages
{
  v3 = objc_opt_new();
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42___ATXAppIconState_nonFolderAppSetOnPages__block_invoke;
  v9[3] = &unk_278596C10;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(syncQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

- (unint64_t)getFirstVisiblePageIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44___ATXAppIconState_getFirstVisiblePageIndex__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end