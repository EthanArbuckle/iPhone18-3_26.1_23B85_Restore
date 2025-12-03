@interface ATXLockscreenBlacklist
+ (ATXLockscreenBlacklist)sharedInstance;
+ (id)appsLockedOrHiddenByAppProtection;
- (ATXLockscreenBlacklist)init;
- (BOOL)isPredictionGloballyDisabled;
- (id)blacklist;
- (void)dealloc;
- (void)init;
@end

@implementation ATXLockscreenBlacklist

- (ATXLockscreenBlacklist)init
{
  v26.receiver = self;
  v26.super_class = ATXLockscreenBlacklist;
  v2 = [(ATXLockscreenBlacklist *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__ATXLockscreenBlacklist_init__block_invoke;
    aBlock[3] = &unk_27859E948;
    objc_copyWeak(&v24, &location);
    v7 = v2;
    v23 = v7;
    v8 = _Block_copy(aBlock);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __30__ATXLockscreenBlacklist_init__block_invoke_33;
    v20[3] = &unk_27859E970;
    v10 = v8;
    v21 = v10;
    v11 = [defaultCenter addObserverForName:@"com.apple.duetexpertd.prefschanged" object:0 queue:0 usingBlock:v20];
    notificationCenterToken = v7->_notificationCenterToken;
    v7->_notificationCenterToken = v11;

    uTF8String = [@"com.apple.duetexpertd.prefschanged" UTF8String];
    v14 = dispatch_get_global_queue(9, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__ATXLockscreenBlacklist_init__block_invoke_2_35;
    handler[3] = &unk_27859E998;
    v15 = v10;
    v19 = v15;
    LODWORD(v7) = notify_register_dispatch(uTF8String, &v7->_libnotifyToken, v14, handler);

    if (v7)
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(ATXLockscreenBlacklist *)v16 init];
      }
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__ATXLockscreenBlacklist_init__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_145];
    v6 = __atxlog_handle_default();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 138412290;
        v16 = v10;
        v11 = "%@ - lockscreen blacklist update before daemon launch";
LABEL_7:
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);
      }
    }

    else if (v7)
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v10 = NSStringFromClass(v13);
      v15 = 138412290;
      v16 = v10;
      v11 = "%@ - lockscreen blacklist update";
      goto LABEL_7;
    }

    ATXUpdatePredictionsImmediatelyWithReason(15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __30__ATXLockscreenBlacklist_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2[1];
  a2[1] = 0;
  v3 = a2;

  v4 = v3[2];
  v3[2] = 0;
}

- (void)dealloc
{
  libnotifyToken = self->_libnotifyToken;
  if (libnotifyToken)
  {
    notify_cancel(libnotifyToken);
  }

  if (self->_notificationCenterToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_notificationCenterToken];
  }

  v5.receiver = self;
  v5.super_class = ATXLockscreenBlacklist;
  [(ATXLockscreenBlacklist *)&v5 dealloc];
}

+ (ATXLockscreenBlacklist)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATXLockscreenBlacklist_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken10 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken10, block);
  }

  v2 = sharedInstance__pasExprOnceResult_31;

  return v2;
}

void __40__ATXLockscreenBlacklist_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_31;
  sharedInstance__pasExprOnceResult_31 = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)blacklist
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__65;
  v12 = __Block_byref_object_dispose__65;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ATXLockscreenBlacklist_blacklist__block_invoke;
  v7[3] = &unk_27859E9C0;
  v7[4] = self;
  v7[5] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__ATXLockscreenBlacklist_blacklist__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }

  else
  {
    v5 = CFPreferencesCopyValue(@"LockscreenSuggestionsDisabledBundles", @"com.apple.duetexpertd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    v9 = [v8 mutableCopy];
    [v9 removeObject:@"com.apple.application"];
    [v9 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    if ([v8 containsObject:@"com.apple.DocumentsApp"])
    {
      [v9 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
      [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
      [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];

    v11 = +[_ATXGlobals sharedInstance];
    v12 = [v11 blacklistedAppsForLockscreenPredictions];
    v13 = [v10 setByAddingObjectsFromArray:v12];
    v14 = v3[1];
    v3[1] = v13;

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = v3[1];
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%@ read lockscreen action blacklist: %@", &v21, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[1]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPredictionGloballyDisabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXLockscreenBlacklist_isPredictionGloballyDisabled__block_invoke;
  v5[3] = &unk_27859E9C0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __54__ATXLockscreenBlacklist_isPredictionGloballyDisabled__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = CFPreferencesGetAppBooleanValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared", 0) != 0;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 40) + 8) + 24)];
    v6 = v3[2];
    v3[2] = v5;

    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(*(*(a1 + 40) + 8) + 24);
      v13 = 138412546;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - read lockscreen action global disabled: %d", &v13, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)appsLockedOrHiddenByAppProtection
{
  v2 = objc_opt_new();
  hiddenOrLockedBundleIDs = [v2 hiddenOrLockedBundleIDs];

  return hiddenOrLockedBundleIDs;
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.duetexpertd.prefschanged";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Failed to register notification callback for %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end