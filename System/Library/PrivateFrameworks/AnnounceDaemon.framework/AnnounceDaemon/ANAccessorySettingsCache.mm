@interface ANAccessorySettingsCache
- (ANAccessorySettingsCache)initWithAccessorySettingsDataSource:(id)a3;
- (id)_fetchSettingsForAccessory:(id)a3 useCache:(BOOL)a4;
- (id)settingsForAccessory:(id)a3;
- (void)_removeSettingsForAccessoryWithIdentifier:(id)a3;
- (void)_updateSettings:(id)a3 forAccessoryWithIdentifier:(id)a4;
- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5;
@end

@implementation ANAccessorySettingsCache

- (ANAccessorySettingsCache)initWithAccessorySettingsDataSource:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ANAccessorySettingsCache;
  v6 = [(ANAccessorySettingsCache *)&v16 init];
  if (v6)
  {
    v7 = ANLogWithCategory();
    log = v6->_log;
    v6->_log = v7;

    v9 = dispatch_queue_create("com.apple.announce.settingsCache", 0);
    settingsQueue = v6->_settingsQueue;
    v6->_settingsQueue = v9;

    v11 = objc_opt_new();
    cachedAccessorySettings = v6->_cachedAccessorySettings;
    v6->_cachedAccessorySettings = v11;

    v13 = objc_opt_new();
    lastAccessorySettingsFetch = v6->_lastAccessorySettingsFetch;
    v6->_lastAccessorySettingsFetch = v13;

    objc_storeStrong(&v6->_accessorySettingsDataSource, a3);
    [v5 setDelegate:v6];
  }

  return v6;
}

- (id)settingsForAccessory:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  objc_initWeak(&location, self);
  v5 = [(ANAccessorySettingsCache *)self settingsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ANAccessorySettingsCache_settingsForAccessory___block_invoke;
  block[3] = &unk_278C86750;
  objc_copyWeak(&v13, &location);
  v6 = v4;
  v11 = self;
  v12 = &v15;
  v10 = v6;
  dispatch_sync(v5, block);

  v7 = [(ANAccessorySettingsCache *)self _fetchSettingsForAccessory:v6 useCache:*(v16 + 24)];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __49__ANAccessorySettingsCache_settingsForAccessory___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained lastAccessorySettingsFetch];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [MEMORY[0x277CEAB80] sharedInstance];
  v7 = [v6 numberForDefault:*MEMORY[0x277CEA808]];
  [v7 doubleValue];
  v9 = v8;

  if (v5 && ([MEMORY[0x277CBEAA8] now], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceDate:", v5), v12 = v11, v10, v12 < v9))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v13 = [*(a1 + 40) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) name];
      v15 = [*(a1 + 32) uniqueIdentifier];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v16 = "WARNING: Using cached settings for accessory. Value may be stale. %@, %@";
LABEL_7:
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x16u);
    }
  }

  else
  {
    v13 = [*(a1 + 40) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) name];
      v15 = [*(a1 + 32) uniqueIdentifier];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v16 = "Settings need refresh for accessory %@, %@";
      goto LABEL_7;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(ANAccessorySettingsCache *)self settingsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__ANAccessorySettingsCache_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  block[3] = &unk_278C86778;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  objc_copyWeak(&v17, &location);
  dispatch_async(v11, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __117__ANAccessorySettingsCache_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Received Settings Updates for Accessory Identifier %@: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateSettings:*(a1 + 48) forAccessoryWithIdentifier:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_fetchSettingsForAccessory:(id)a3 useCache:(BOOL)a4
{
  v4 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = @"Settings";
  if (v4)
  {
    v8 = @"Cached Settings";
  }

  v9 = v8;
  v10 = [(ANAccessorySettingsCache *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 name];
    v12 = [v6 uniqueIdentifier];
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v55 = v12;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Fetching %{public}@ for Accessory %@, %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__0;
  v56 = __Block_byref_object_dispose__0;
  v57 = 0;
  objc_initWeak(&location, self);
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke;
  aBlock[3] = &unk_278C867F0;
  objc_copyWeak(&v44, &location);
  aBlock[4] = self;
  v14 = v9;
  v40 = v14;
  v15 = v6;
  v41 = v15;
  v43 = buf;
  v16 = v13;
  v42 = v16;
  v17 = _Block_copy(aBlock);
  [(ANAccessorySettingsCache *)self accessorySettingsDataSource];
  if (v4)
    v18 = {;
    v19 = [v15 home];
    v20 = [v19 uniqueIdentifier];
    v21 = [v15 uniqueIdentifier];
    v53 = @"root.announce.enabled";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v18 fetchCachedAccessorySettingsWithHomeIdentifier:v20 accessoryIdentifier:v21 keyPaths:v22 completionHandler:v17];
  }

  else
    v18 = {;
    v19 = [v15 home];
    v20 = [v19 uniqueIdentifier];
    v21 = [v15 uniqueIdentifier];
    v52 = @"root.announce.enabled";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v18 fetchAccessorySettingsWithHomeIdentifier:v20 accessoryIdentifier:v21 keyPaths:v22 completionHandler:v17];
  }

  v23 = [MEMORY[0x277CEAB80] sharedInstance];
  v24 = [v23 numberForDefault:*MEMORY[0x277CEA800]];
  [v24 doubleValue];
  v26 = v25;

  v27 = dispatch_time(0, (v26 * 1000000000.0));
  if (dispatch_group_wait(v16, v27))
  {
    v28 = [(ANAccessorySettingsCache *)self log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = [v15 name];
      v34 = [v15 uniqueIdentifier];
      *v46 = 138543874;
      v47 = v14;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_error_impl(&dword_23F525000, v28, OS_LOG_TYPE_ERROR, "Timed-out waiting for Accessory %{public}@ for %@, %@", v46, 0x20u);
    }

    v29 = [(ANAccessorySettingsCache *)self settingsQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_13;
    v35[3] = &unk_278C86818;
    objc_copyWeak(&v38, &location);
    v37 = buf;
    v36 = v15;
    dispatch_sync(v29, v35);

    objc_destroyWeak(&v38);
  }

  v30 = *(*&buf[8] + 40);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [*(a1 + 32) log];
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_cold_1(a1, v5, v9);
    }

    v10 = [WeakRetained settingsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_9;
    block[3] = &unk_278C867A0;
    v11 = *(a1 + 32);
    v30 = *(a1 + 64);
    block[4] = v11;
    block[5] = WeakRetained;
    v28 = *(a1 + 48);
    v29 = *(a1 + 56);
    dispatch_async(v10, block);

    v12 = v28;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) name];
      v15 = [*(a1 + 48) uniqueIdentifier];
      *buf = 138544130;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ for Accessory %@, %@: %@", buf, 0x2Au);
    }

    v16 = [WeakRetained settingsQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_10;
    v22[3] = &unk_278C867C8;
    v22[4] = WeakRetained;
    v23 = v6;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v24 = v17;
    v25 = v18;
    v21 = *(a1 + 56);
    v19 = v21;
    v26 = v21;
    dispatch_async(v16, v22);

    v12 = v23;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to use locally-cached settings", v9, 2u);
  }

  v3 = [*(a1 + 40) cachedAccessorySettings];
  v4 = [*(a1 + 48) uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 copy];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_group_leave(*(a1 + 56));
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uniqueIdentifier];
  [v2 _updateSettings:v3 forAccessoryWithIdentifier:v4];

  v5 = [*(a1 + 32) cachedAccessorySettings];
  v6 = [*(a1 + 48) uniqueIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 copy];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [*(a1 + 56) lastAccessorySettingsFetch];
  v13 = [*(a1 + 48) uniqueIdentifier];
  [v12 setObject:v11 forKeyedSubscript:v13];

  v14 = *(a1 + 64);

  dispatch_group_leave(v14);
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to use locally-cached settings", v10, 2u);
  }

  v4 = [WeakRetained cachedAccessorySettings];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 copy];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)_updateSettings:(id)a3 forAccessoryWithIdentifier:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
  v10 = [v9 objectForKeyedSubscript:v7];

  v23 = v10;
  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
    [v12 setObject:v11 forKeyedSubscript:v7];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
        v20 = [v19 objectForKeyedSubscript:v7];
        v21 = [v18 keyPath];
        [v20 setObject:v18 forKeyedSubscript:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_removeSettingsForAccessoryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ANAccessorySettingsCache *)self settingsQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAccessorySettingsCache *)self cachedAccessorySettings];
  [v6 setObject:0 forKeyedSubscript:v4];
}

void __64__ANAccessorySettingsCache__fetchSettingsForAccessory_useCache___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) name];
  v8 = [*(a1 + 48) uniqueIdentifier];
  v10 = 138544130;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&dword_23F525000, a3, OS_LOG_TYPE_ERROR, "Failed to retrieve %{public}@ for Accessory %@, %@: %@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

@end