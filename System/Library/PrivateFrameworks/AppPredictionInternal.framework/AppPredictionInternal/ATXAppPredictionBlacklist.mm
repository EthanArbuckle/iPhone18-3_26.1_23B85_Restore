@interface ATXAppPredictionBlacklist
+ (ATXAppPredictionBlacklist)sharedInstance;
- (ATXAppPredictionBlacklist)init;
- (ATXAppPredictionBlacklist)initWithUserDefaults:(id)a3 globals:(id)a4;
- (id)disabledBundleIds;
- (int)registerPrefsChangeHandler:(id)a3;
- (void)_createBlacklistFromPreferencesDisabledApps;
- (void)_listenForUpdates;
- (void)_performMigrationsIfNeeded;
- (void)_resetBlacklistWithSet:(id)a3;
- (void)_updateBlacklist;
- (void)_updateBlacklistFromGlobalsBlacklistedApps;
- (void)dealloc;
- (void)deregisterPrefsChangeHandlerWithToken:(int)a3;
@end

@implementation ATXAppPredictionBlacklist

- (ATXAppPredictionBlacklist)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = +[_ATXGlobals sharedInstance];
  v6 = [(ATXAppPredictionBlacklist *)self initWithUserDefaults:v4 globals:v5];

  return v6;
}

- (ATXAppPredictionBlacklist)initWithUserDefaults:(id)a3 globals:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = ATXAppPredictionBlacklist;
  v9 = [(ATXAppPredictionBlacklist *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v9->_lock;
    v9->_lock = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);

    v16 = dispatch_queue_create("ATXAppPredictionBlacklist-notifications", v15);
    notificationQueue = v9->_notificationQueue;
    v9->_notificationQueue = v16;

    objc_storeStrong(&v9->_userDefaults, a3);
    objc_storeStrong(&v9->_globals, a4);
    [(ATXAppPredictionBlacklist *)v9 _performMigrationsIfNeeded];
    [(ATXAppPredictionBlacklist *)v9 _updateBlacklist];
    [(ATXAppPredictionBlacklist *)v9 _listenForUpdates];
  }

  return v9;
}

+ (ATXAppPredictionBlacklist)sharedInstance
{
  if (sharedInstance__pasOnceToken7_14 != -1)
  {
    +[ATXAppPredictionBlacklist sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_17;

  return v3;
}

void __43__ATXAppPredictionBlacklist_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_17;
  sharedInstance__pasExprOnceResult_17 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)dealloc
{
  if (self->_blacklistNotificationToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_blacklistNotificationToken];
  }

  v4.receiver = self;
  v4.super_class = ATXAppPredictionBlacklist;
  [(ATXAppPredictionBlacklist *)&v4 dealloc];
}

- (id)disabledBundleIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__46;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ATXAppPredictionBlacklist_disabledBundleIds__block_invoke;
  v5[3] = &unk_27859BFA0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __46__ATXAppPredictionBlacklist_disabledBundleIds__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (int)registerPrefsChangeHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ATXAppPredictionBlacklist_registerPrefsChangeHandler___block_invoke;
  v8[3] = &unk_27859BFC8;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LODWORD(lock) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __56__ATXAppPredictionBlacklist_registerPrefsChangeHandler___block_invoke(uint64_t a1, _DWORD *a2)
{
  v3 = a2[6];
  a2[6] = v3 + 1;
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = _Block_copy(v4);
  v6 = v5[2];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)deregisterPrefsChangeHandlerWithToken:(int)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__ATXAppPredictionBlacklist_deregisterPrefsChangeHandlerWithToken___block_invoke;
  v4[3] = &__block_descriptor_36_e32_v16__0__ATXGuardedAppBlacklist_8l;
  v5 = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

void __67__ATXAppPredictionBlacklist_deregisterPrefsChangeHandlerWithToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 setObject:0 forKeyedSubscript:v3];
}

- (void)_listenForUpdates
{
  objc_initWeak(&location, self);
  if (!self->_blacklistNotificationToken)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke;
    v6[3] = &unk_27859C010;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    v4 = [v3 addObserverForName:@"com.apple.spotlightui.prefschanged" object:0 queue:0 usingBlock:v6];
    blacklistNotificationToken = self->_blacklistNotificationToken;
    self->_blacklistNotificationToken = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_2;
    v5[3] = &unk_278596C10;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_2_cold_1(a1);
  }

  [*(a1 + 40) _updateBlacklist];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__46;
  v18 = __Block_byref_object_dispose__46;
  v19 = 0;
  v3 = *(*(a1 + 40) + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_50;
  v13[3] = &unk_27859BFA0;
  v13[4] = &v14;
  [v3 runWithLockAcquired:v13];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v15[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v5);
  }

  ATXUpdatePredictionsImmediatelyWithReason(13);
  _Block_object_dispose(&v14, 8);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_50(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) allValues];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_createBlacklistFromPreferencesDisabledApps
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__ATXAppPredictionBlacklist__createBlacklistFromPreferencesDisabledApps__block_invoke;
  v3[3] = &unk_27859C038;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __72__ATXAppPredictionBlacklist__createBlacklistFromPreferencesDisabledApps__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = *MEMORY[0x277CBF040];
  v6 = *MEMORY[0x277CBF010];
  v7 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [v4 initWithArray:v10];
  v12 = v3[1];
  v3[1] = v11;

  v13 = __atxlog_handle_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = v3[1];
    v29 = 138412546;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ - apps that cannot be suggested: %@", &v29, 0x16u);
  }

  v18 = __atxlog_handle_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXAppPredictionBlacklist__createBlacklistFromPreferencesDisabledApps__block_invoke_cold_1(a1);
  }

  v19 = __atxlog_handle_default();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = CFPreferencesCopyValue(@"SBSearchDisabledApps", @"com.apple.spotlightui", v5, v6);
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x277CBEA60] array];
    }

    v27 = v26;

    v28 = [MEMORY[0x277CBEB58] setWithArray:v27];

    v29 = 138412546;
    v30 = v23;
    v31 = 2112;
    v32 = v28;
    _os_log_debug_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEBUG, "%@ - apps that cannot show in search: %@", &v29, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateBlacklistFromGlobalsBlacklistedApps
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__ATXAppPredictionBlacklist__updateBlacklistFromGlobalsBlacklistedApps__block_invoke;
  v3[3] = &unk_27859C038;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __71__ATXAppPredictionBlacklist__updateBlacklistFromGlobalsBlacklistedApps__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [*(v5 + 40) blacklistedAppsForAppPredictions];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3[1] addObject:*(*(&v18 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v4;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = v3[1];
    *buf = 138412546;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%@ - updated suggest app blacklist: %@", buf, 0x16u);
  }

  v16 = __atxlog_handle_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __71__ATXAppPredictionBlacklist__updateBlacklistFromGlobalsBlacklistedApps__block_invoke_cold_1(v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateBlacklist
{
  [(ATXAppPredictionBlacklist *)self _createBlacklistFromPreferencesDisabledApps];

  [(ATXAppPredictionBlacklist *)self _updateBlacklistFromGlobalsBlacklistedApps];
}

- (void)_performMigrationsIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resetBlacklistWithSet:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATXAppPredictionBlacklist__resetBlacklistWithSet___block_invoke;
  v7[3] = &unk_27859C038;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __52__ATXAppPredictionBlacklist__resetBlacklistWithSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mutableCopy];
  v5 = v3[1];
  v3[1] = v4;
}

void __46__ATXAppPredictionBlacklist__listenForUpdates__block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__ATXAppPredictionBlacklist__createBlacklistFromPreferencesDisabledApps__block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = ATXAppsThatCannotShowContentInSearch();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __71__ATXAppPredictionBlacklist__updateBlacklistFromGlobalsBlacklistedApps__block_invoke_cold_1(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11 = [*(*a1 + 40) blacklistedAppsForAppPredictions];
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end