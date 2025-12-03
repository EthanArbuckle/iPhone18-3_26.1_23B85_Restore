@interface AFUIGuideCacheManager
+ (id)sharedManager;
- (AFUIGuideCacheManager)init;
- (BOOL)_shouldCheckForUpdateAtDate:(id)date lastAppUpdateTime:(id)time;
- (BOOL)shouldCheckForUpdateWithLastAppUpdateTime:(id)time;
- (NSNumber)cachedGuideTag;
- (SAGuidanceGuideSnippet)cachedGuideSnippet;
- (SAGuidanceSuggestedUtterances)cachedSuggestedUtterances;
- (id)_aceObjectDictionaryAtFilepath:(id)filepath;
- (id)_cachedGuideUpdate;
- (void)_checkGuideUpdateUsingAFClientLiteWithTag:(id)tag;
- (void)_clearCachedGuide;
- (void)_updateLastCheckedWithDate:(id)date;
- (void)checkGuideUpdate;
- (void)dealloc;
- (void)updateCacheWithGuideUpdate:(id)update completion:(id)completion;
- (void)updateLastCheckedDate;
@end

@implementation AFUIGuideCacheManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AFUIGuideCacheManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __38__AFUIGuideCacheManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AFUIGuideCacheManager)init
{
  v7.receiver = self;
  v7.super_class = AFUIGuideCacheManager;
  v2 = [(AFUIGuideCacheManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.siri.AFUIGuideCacheManager", MEMORY[0x277D85CD8]);
    cacheFileQueue = v2->_cacheFileQueue;
    v2->_cacheFileQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleKeyboardPreferencesChanged, @"AppleKeyboardsPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AppleKeyboardsPreferencesChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = AFUIGuideCacheManager;
  [(AFUIGuideCacheManager *)&v4 dealloc];
}

- (NSNumber)cachedGuideTag
{
  _cachedGuideUpdate = [(AFUIGuideCacheManager *)self _cachedGuideUpdate];
  guideTag = [_cachedGuideUpdate guideTag];

  return guideTag;
}

- (SAGuidanceGuideSnippet)cachedGuideSnippet
{
  _cachedGuideUpdate = [(AFUIGuideCacheManager *)self _cachedGuideUpdate];
  guideSnippet = [_cachedGuideUpdate guideSnippet];

  return guideSnippet;
}

- (SAGuidanceSuggestedUtterances)cachedSuggestedUtterances
{
  _cachedGuideUpdate = [(AFUIGuideCacheManager *)self _cachedGuideUpdate];
  suggestedUtterances = [_cachedGuideUpdate suggestedUtterances];

  return suggestedUtterances;
}

- (BOOL)shouldCheckForUpdateWithLastAppUpdateTime:(id)time
{
  v4 = MEMORY[0x277CBEAA8];
  timeCopy = time;
  date = [v4 date];
  LOBYTE(self) = [(AFUIGuideCacheManager *)self _shouldCheckForUpdateAtDate:date lastAppUpdateTime:timeCopy];

  return self;
}

- (void)updateLastCheckedDate
{
  date = [MEMORY[0x277CBEAA8] date];
  [(AFUIGuideCacheManager *)self _updateLastCheckedWithDate:date];
}

- (void)updateCacheWithGuideUpdate:(id)update completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[AFUIGuideCacheManager updateCacheWithGuideUpdate:completion:]";
    v18 = 2112;
    v19 = updateCopy;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  cacheFileQueue = self->_cacheFileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__AFUIGuideCacheManager_updateCacheWithGuideUpdate_completion___block_invoke;
  block[3] = &unk_278CD6380;
  v13 = updateCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = updateCopy;
  dispatch_barrier_async(cacheFileQueue, block);
}

void __63__AFUIGuideCacheManager_updateCacheWithGuideUpdate_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[AFUIGuideCacheManager updateCacheWithGuideUpdate:completion:]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #noisy entered _cacheFileQueue", buf, 0xCu);
  }

  v4 = [a1[4] dictionary];
  v20 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v20];
  v6 = v20;
  v7 = [a1[5] _pathForCachedGuideUpdate];
  if (v5)
  {
    v19 = v6;
    v8 = [v5 writeToFile:v7 options:1 error:&v19];
    v9 = v19;

    if (v8)
    {
      v10 = a1[5];
      v11 = v10[1];
      v10[1] = 0;

      v12 = 1;
    }

    else
    {
      v13 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        __63__AFUIGuideCacheManager_updateCacheWithGuideUpdate_completion___block_invoke_cold_1(v7, v9, v13);
      }

      v12 = 0;
    }

    v6 = v9;
  }

  else
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      __63__AFUIGuideCacheManager_updateCacheWithGuideUpdate_completion___block_invoke_cold_2();
    }

    v12 = 0;
  }

  if (a1[6])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AFUIGuideCacheManager_updateCacheWithGuideUpdate_completion___block_invoke_9;
    block[3] = &unk_278CD6358;
    v17 = a1[6];
    v18 = v12;
    v16 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[AFUIGuideCacheManager updateCacheWithGuideUpdate:completion:]_block_invoke_2";
    _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s #noisy exited _cacheFileQueue", buf, 0xCu);
  }
}

- (void)_clearCachedGuide
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[AFUIGuideCacheManager _clearCachedGuide]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  _pathForCachedGuideUpdate = [(AFUIGuideCacheManager *)self _pathForCachedGuideUpdate];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cacheFileQueue = self->_cacheFileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AFUIGuideCacheManager__clearCachedGuide__block_invoke;
  block[3] = &unk_278CD5A80;
  v10 = defaultManager;
  v11 = _pathForCachedGuideUpdate;
  selfCopy = self;
  v7 = _pathForCachedGuideUpdate;
  v8 = defaultManager;
  dispatch_barrier_async(cacheFileQueue, block);
}

void __42__AFUIGuideCacheManager__clearCachedGuide__block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[AFUIGuideCacheManager _clearCachedGuide]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #noisy entered _cacheFileQueue", buf, 0xCu);
  }

  v4 = a1[4];
  v5 = a1[5];
  v13 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      *buf = 136315650;
      v15 = "[AFUIGuideCacheManager _clearCachedGuide]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s Can't remove %@: %@", buf, 0x20u);
    }
  }

  v10 = a1[6];
  v11 = *(v10 + 8);
  *(v10 + 8) = 0;

  v12 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[AFUIGuideCacheManager _clearCachedGuide]_block_invoke";
    _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s #noisy exited _cacheFileQueue", buf, 0xCu);
  }
}

- (void)_checkGuideUpdateUsingAFClientLiteWithTag:(id)tag
{
  tagCopy = tag;
  if (!self->_isCheckingGuideUpdate)
  {
    self->_isCheckingGuideUpdate = 1;
    v5 = objc_alloc_init(MEMORY[0x277D47318]);
    [v5 setCurrentGuideTag:tagCopy];
    afui_guideCheckSupportedFeatures = [MEMORY[0x277D47318] afui_guideCheckSupportedFeatures];
    [v5 setSupportedFeatures:afui_guideCheckSupportedFeatures];

    v7 = objc_alloc_init(MEMORY[0x277CEF1D8]);
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke;
    v10[3] = &unk_278CD63C8;
    objc_copyWeak(&v11, &location);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_18;
    v8[3] = &unk_278CD62A0;
    objc_copyWeak(&v9, &location);
    [v7 handleCommand:v5 commandHandler:v10 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFUIGuideCacheManager _checkGuideUpdateUsingAFClientLiteWithTag:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s Handle guide update with command: %@", &v7, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained updateCacheWithGuideUpdate:v3 completion:&__block_literal_global_7];
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_cold_1();
  }
}

void __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_15(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AFUIGuideCacheManager _checkGuideUpdateUsingAFClientLiteWithTag:]_block_invoke";
      _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Guide update completed successfully", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_15_cold_1(v5);
  }
}

void __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_18(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (!a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__AFUIGuideCacheManager__checkGuideUpdateUsingAFClientLiteWithTag___block_invoke_18_cold_1();
      if (!WeakRetained)
      {
        goto LABEL_9;
      }
    }

    else if (!WeakRetained)
    {
      goto LABEL_9;
    }

LABEL_8:
    WeakRetained[24] = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[AFUIGuideCacheManager _checkGuideUpdateUsingAFClientLiteWithTag:]_block_invoke";
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_INFO, "%s Guide update succeeded", &v9, 0xCu);
  }

  [WeakRetained updateLastCheckedDate];
  if (WeakRetained)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)checkGuideUpdate
{
  cachedGuideTag = [(AFUIGuideCacheManager *)self cachedGuideTag];
  [(AFUIGuideCacheManager *)self _checkGuideUpdateUsingAFClientLiteWithTag:cachedGuideTag];
}

- (BOOL)_shouldCheckForUpdateAtDate:(id)date lastAppUpdateTime:(id)time
{
  dateCopy = date;
  timeCopy = time;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  _cachedGuideUpdate = [(AFUIGuideCacheManager *)self _cachedGuideUpdate];
  languageCode = [_cachedGuideUpdate languageCode];

  if (languageCode && (AFUIGetLanguageCode(), v10 = objc_claimAutoreleasedReturnValue(), v11 = [languageCode isEqualToString:v10], v10, (v11 & 1) != 0))
  {
    _pathForCachedGuideUpdate = [(AFUIGuideCacheManager *)self _pathForCachedGuideUpdate];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    cacheFileQueue = self->_cacheFileQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__AFUIGuideCacheManager__shouldCheckForUpdateAtDate_lastAppUpdateTime___block_invoke;
    block[3] = &unk_278CD63F0;
    v20 = defaultManager;
    v21 = _pathForCachedGuideUpdate;
    v22 = timeCopy;
    v24 = &v25;
    v23 = dateCopy;
    v15 = _pathForCachedGuideUpdate;
    v16 = defaultManager;
    dispatch_sync(cacheFileQueue, block);

    v17 = *(v26 + 24);
  }

  else
  {
    v17 = 1;
    *(v26 + 24) = 1;
  }

  _Block_object_dispose(&v25, 8);
  return v17 & 1;
}

void __71__AFUIGuideCacheManager__shouldCheckForUpdateAtDate_lastAppUpdateTime___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[AFUIGuideCacheManager _shouldCheckForUpdateAtDate:lastAppUpdateTime:]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #noisy entered _cacheFileQueue", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v14 = 0;
  v6 = [v5 attributesOfItemAtPath:v4 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [v6 objectForKey:*MEMORY[0x277CCA150]];
    v9 = [*(a1 + 48) dateByAddingTimeInterval:600.0];
    v10 = [v8 compare:v9];

    if (v10 == -1)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      v11 = *(a1 + 56);
      v12 = [v8 dateByAddingTimeInterval:86400.0];
      *(*(*(a1 + 64) + 8) + 24) = [v11 compare:v12] == 1;
    }
  }

  else
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      __71__AFUIGuideCacheManager__shouldCheckForUpdateAtDate_lastAppUpdateTime___block_invoke_cold_1();
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v13 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[AFUIGuideCacheManager _shouldCheckForUpdateAtDate:lastAppUpdateTime:]_block_invoke";
    _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s #noisy exited _cacheFileQueue", buf, 0xCu);
  }
}

- (void)_updateLastCheckedWithDate:(id)date
{
  dateCopy = date;
  _pathForCachedGuideUpdate = [(AFUIGuideCacheManager *)self _pathForCachedGuideUpdate];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cacheFileQueue = self->_cacheFileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AFUIGuideCacheManager__updateLastCheckedWithDate___block_invoke;
  block[3] = &unk_278CD5A80;
  v12 = dateCopy;
  v13 = defaultManager;
  v14 = _pathForCachedGuideUpdate;
  v8 = _pathForCachedGuideUpdate;
  v9 = defaultManager;
  v10 = dateCopy;
  dispatch_barrier_async(cacheFileQueue, block);
}

void __52__AFUIGuideCacheManager__updateLastCheckedWithDate___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[AFUIGuideCacheManager _updateLastCheckedWithDate:]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #noisy entered _cacheFileQueue", buf, 0xCu);
  }

  v4 = a1[4];
  v12 = *MEMORY[0x277CCA150];
  v13 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = a1[6];
  v7 = a1[5];
  v11 = 0;
  v8 = [v7 setAttributes:v5 ofItemAtPath:v6 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    __52__AFUIGuideCacheManager__updateLastCheckedWithDate___block_invoke_cold_1();
  }

  v10 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[AFUIGuideCacheManager _updateLastCheckedWithDate:]_block_invoke";
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #noisy exited _cacheFileQueue", buf, 0xCu);
  }
}

- (id)_cachedGuideUpdate
{
  v3 = AFUIGetLanguageCode(self, a2);
  cacheFileQueue = self->_cacheFileQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__AFUIGuideCacheManager__cachedGuideUpdate__block_invoke;
  v9[3] = &unk_278CD6418;
  v9[4] = self;
  v10 = v3;
  v5 = v3;
  dispatch_sync(cacheFileQueue, v9);
  cachedGuideUpdate = self->_cachedGuideUpdate;
  v7 = cachedGuideUpdate;

  return cachedGuideUpdate;
}

void __43__AFUIGuideCacheManager__cachedGuideUpdate__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[AFUIGuideCacheManager _cachedGuideUpdate]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #noisy entered _cacheFileQueue", &v16, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = v4[1];
  if (v5)
  {
    v6 = [v5 languageCode];
    v7 = [v6 isEqualToString:*(a1 + 40)];

    v4 = *(a1 + 32);
    if ((v7 & 1) == 0)
    {
      v8 = v4[1];
      v4[1] = 0;

      v4 = *(a1 + 32);
    }
  }

  if (!v4[1])
  {
    v9 = [v4 _pathForCachedGuideUpdate];
    v10 = [v4 _aceObjectDictionaryAtFilepath:v9];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277D47320]) initWithDictionary:v10];
      v12 = [v11 languageCode];
      if ([v12 isEqualToString:*(a1 + 40)])
      {
        objc_storeStrong((*(a1 + 32) + 8), v11);
      }

      else
      {
        v13 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v16 = 136315650;
          v17 = "[AFUIGuideCacheManager _cachedGuideUpdate]_block_invoke";
          v18 = 2112;
          v19 = v12;
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s Cached guide language code: %@ does not match current language code: %@, ignoring cache", &v16, 0x20u);
        }
      }
    }
  }

  v15 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[AFUIGuideCacheManager _cachedGuideUpdate]_block_invoke";
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s #noisy exited _cacheFileQueue", &v16, 0xCu);
  }
}

- (id)_aceObjectDictionaryAtFilepath:(id)filepath
{
  v17 = *MEMORY[0x277D85DE8];
  filepathCopy = filepath;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:filepathCopy];
  if (v4)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v10];
    v6 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v12 = "[AFUIGuideCacheManager _aceObjectDictionaryAtFilepath:]";
        v13 = 2112;
        v14 = filepathCopy;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s Can't load aceObject dictionary at: %@, %@", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUIGuideCacheManager _aceObjectDictionaryAtFilepath:];
    }

    v7 = 0;
  }

  return v7;
}

@end