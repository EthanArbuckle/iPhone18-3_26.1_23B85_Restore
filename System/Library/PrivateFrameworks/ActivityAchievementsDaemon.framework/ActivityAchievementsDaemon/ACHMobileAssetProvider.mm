@interface ACHMobileAssetProvider
- (ACHMobileAssetProvider)init;
- (ACHMobileAssetProvider)initWithMobileAssetDownloadManager:(id)manager;
- (BOOL)_assetIsInstalled:(id)installed;
- (double)_downloadDelay;
- (id)_assetsGroupedByUniqueNameAndType:(id)type;
- (id)_compatibilityVersionQueryParameters;
- (int64_t)downloadedAssetDiskUsageInBytes;
- (int64_t)purgeAllDownloadedAssets;
- (void)_downloadAssets:(id)assets withCompletion:(id)completion;
- (void)_downloadDelay;
- (void)_downloadRemoteAssets:(id)assets installedAssets:(id)installedAssets;
- (void)_downloadRemoteCatalogAndAssets;
- (void)_fetchLocalAssetsWithCompletion:(id)completion;
- (void)_getCurrentAsssetAndOlderAssetsFromAssets:(id)assets completion:(id)completion;
- (void)_processAssets:(id)assets completion:(id)completion;
- (void)_removeAssets:(id)assets;
- (void)availableAssetsWithCompletion:(id)completion;
- (void)downloadRemoteCatalog;
@end

@implementation ACHMobileAssetProvider

- (ACHMobileAssetProvider)initWithMobileAssetDownloadManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ACHMobileAssetProvider;
  v6 = [(ACHMobileAssetProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mobileAssetDownloadManager, manager);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v8 initWithSuiteName:*MEMORY[0x277CE8C00]];
    nanoUserDefaults = v7->_nanoUserDefaults;
    v7->_nanoUserDefaults = v9;

    v7->_downloadDelayOverride = -1.0;
  }

  return v7;
}

- (ACHMobileAssetProvider)init
{
  v3 = objc_alloc(MEMORY[0x277CCDE00]);
  v4 = *MEMORY[0x277CE8D68];
  v5 = HKCreateSerialDispatchQueue();
  v6 = [v3 initWithMobileAssetTypeName:v4 queue:v5];

  [v6 setShouldAutoDownloadRemoteAssets:0];
  [v6 setMobileAssetDownloadCompletionHandler:&__block_literal_global_1];
  [v6 setErrorHandler:&__block_literal_global_300];
  v7 = [(ACHMobileAssetProvider *)self initWithMobileAssetDownloadManager:v6];

  return v7;
}

void __30__ACHMobileAssetProvider_init__block_invoke()
{
  v0 = ACHLogAssets();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__ACHMobileAssetProvider_init__block_invoke_cold_1(v0);
  }
}

void __30__ACHMobileAssetProvider_init__block_invoke_297(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ACHLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__ACHMobileAssetProvider_init__block_invoke_297_cold_1();
  }
}

- (void)availableAssetsWithCompletion:(id)completion
{
  [(ACHMobileAssetProvider *)self _fetchLocalAssetsWithCompletion:completion];

  [(ACHMobileAssetProvider *)self _downloadRemoteCatalogAndAssets];
}

- (int64_t)downloadedAssetDiskUsageInBytes
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  v4 = dispatch_semaphore_create(0);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke;
  v9[3] = &unk_278490A80;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke_cold_1();
    }
  }

  v21 = v6;
  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets for CacheDelete disk usage reporting", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = *MEMORY[0x277D28920];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if ([*(a1 + 32) _assetIsInstalled:v15])
        {
          v16 = [v15 attributes];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v17 longLongValue];

          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v27 = v18;
            v28 = 2112;
            v29 = v15;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Adding %ld bytes disk usage reporting for asset %@", buf, 0x16u);
          }

          *(*(*(a1 + 48) + 8) + 24) += v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v20 = *MEMORY[0x277D85DE8];
}

- (int64_t)purgeAllDownloadedAssets
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  v4 = dispatch_semaphore_create(0);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke;
  v9[3] = &unk_278490A80;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets for CacheDelete purging", buf, 0xCu);
  }

  v22 = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = *MEMORY[0x277D28920];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ([*(a1 + 32) _assetIsInstalled:v15])
        {
          v16 = [v15 attributes];
          v17 = [v16 objectForKeyedSubscript:v13];
          v18 = [v17 longLongValue];

          v19 = ACHLogAssets();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v30 = v15;
            v31 = 2048;
            v32 = v18;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Purging asset (%@) to reclaim %ld bytes of disk usage.", buf, 0x16u);
          }

          *(*(*(a1 + 48) + 8) + 24) += v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  v20 = [*(a1 + 32) mobileAssetDownloadManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302;
  v23[3] = &unk_278490AA8;
  v24 = *(a1 + 40);
  [v20 removeMobileAssets:v9 completion:v23];

  v21 = *MEMORY[0x277D85DE8];
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = ACHLogAssets();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Successfully purged assets for CacheDelete", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_assetIsInstalled:(id)installed
{
  installedCopy = installed;
  v4 = [installedCopy state] == 2 || objc_msgSend(installedCopy, "state") == 3 || objc_msgSend(installedCopy, "state") == 4;

  return v4;
}

- (void)_downloadRemoteCatalogAndAssets
{
  [(ACHMobileAssetProvider *)self _downloadDelay];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHMobileAssetProvider__downloadRemoteCatalogAndAssets__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (double)_downloadDelay
{
  v3 = arc4random_uniform(0xE10u);
  v4 = [(NSUserDefaults *)self->_nanoUserDefaults objectForKey:@"MobileAssetDownloadDelayOverride"];

  if (v4)
  {
    [(NSUserDefaults *)self->_nanoUserDefaults doubleForKey:@"MobileAssetDownloadDelayOverride"];
    downloadDelayOverride = v5;
  }

  else if (self->_downloadDelayOverride >= 0.0)
  {
    downloadDelayOverride = self->_downloadDelayOverride;
  }

  else
  {
    downloadDelayOverride = (v3 + 1);
  }

  v7 = ACHLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACHMobileAssetProvider *)v7 _downloadDelay];
  }

  return downloadDelayOverride;
}

- (void)_fetchLocalAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke;
  v8[3] = &unk_278490AF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:1 completion:v8];
}

void __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu local assets", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    [v9 addObjectsFromArray:v5];
  }

  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_306;
  v12[3] = &unk_278490AD0;
  v12[4] = v10;
  v13 = *(a1 + 40);
  [v10 _processAssets:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_306(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ACHLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218496;
    v13 = [v9 count];
    v14 = 2048;
    v15 = [v7 count];
    v16 = 2048;
    v17 = [v8 count];
    _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "%lu assets are installed, %lu assets are not downloaded, removing %lu old assets", &v12, 0x20u);
  }

  [*(a1 + 32) _removeAssets:v8];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)downloadRemoteCatalog
{
  _compatibilityVersionQueryParameters = [(ACHMobileAssetProvider *)self _compatibilityVersionQueryParameters];
  objc_initWeak(&location, self);
  mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke;
  v5[3] = &unk_278490B48;
  objc_copyWeak(&v6, &location);
  [mobileAssetDownloadManager fetchAssetsWithQueryParams:_compatibilityVersionQueryParameters onlyLocal:0 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ACHLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_cold_1();
    }
  }

  v8 = ACHLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v5 count];
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Query returned %lu remote assets", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    [v9 addObjectsFromArray:v5];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308;
  v12[3] = &unk_278490B20;
  objc_copyWeak(&v13, (a1 + 32));
  [WeakRetained _processAssets:v9 completion:v12];

  objc_destroyWeak(&v13);
  v11 = *MEMORY[0x277D85DE8];
}

void __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ACHLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v15 = [v7 count];
    v16 = 2048;
    v17 = [v8 count];
    v18 = 2048;
    v19 = [v9 count];
    _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Downloading %lu assets, removing %lu assets, %lu assets already installed", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAssets:v8];

  if ([v7 count])
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 _downloadRemoteAssets:v7 installedAssets:v9];
  }

  else
  {
    v12 = ACHLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_308_cold_1(v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_downloadRemoteAssets:(id)assets installedAssets:(id)installedAssets
{
  assetsCopy = assets;
  installedAssetsCopy = installedAssets;
  [(ACHMobileAssetProvider *)self _downloadDelay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke;
  block[3] = &unk_278490B98;
  block[4] = self;
  v14 = assetsCopy;
  v15 = installedAssetsCopy;
  v11 = installedAssetsCopy;
  v12 = assetsCopy;
  dispatch_after(v9, v10, block);
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2;
  v3[3] = &unk_278490B70;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _downloadAssets:v2 withCompletion:v3];
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) remoteDownloadCompleteCompletion];

  if (v7)
  {
    v8 = [*(a1 + 32) remoteDownloadCompleteCompletion];
    v8[2]();
  }

  v9 = ACHLogAssets();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_2(a1, v5);
  }
}

- (void)_downloadAssets:(id)assets withCompletion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  if ([assetsCopy count])
  {
    mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke;
    v10[3] = &unk_278490BC0;
    v11 = completionCopy;
    [mobileAssetDownloadManager downloadMobileAssets:assetsCopy completion:v10];
  }

  else
  {
    v9 = ACHLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACHMobileAssetProvider _downloadAssets:v9 withCompletion:?];
    }

    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
  }
}

void __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ACHLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke_cold_1(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_removeAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    mobileAssetDownloadManager = [(ACHMobileAssetProvider *)self mobileAssetDownloadManager];
    [mobileAssetDownloadManager removeMobileAssets:assetsCopy completion:&__block_literal_global_310];
  }
}

void __40__ACHMobileAssetProvider__removeAssets___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = ACHLogAssets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__ACHMobileAssetProvider__removeAssets___block_invoke_cold_1();
    }
  }
}

- (void)_processAssets:(id)assets completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  completionCopy = completion;
  selfCopy = self;
  v23 = [(ACHMobileAssetProvider *)self _assetsGroupedByUniqueNameAndType:assetsCopy];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v23 allKeys];
  v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v19 = *v43;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [v23 objectForKeyedSubscript:*(*(&v42 + 1) + 8 * i)];
        v36 = 0;
        v37 = &v36;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy__0;
        v40 = __Block_byref_object_dispose__0;
        v41 = 0;
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = __Block_byref_object_copy__0;
        v34 = __Block_byref_object_dispose__0;
        v35 = 0;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __52__ACHMobileAssetProvider__processAssets_completion___block_invoke;
        v29[3] = &unk_278490C08;
        v29[4] = &v36;
        v29[5] = &v30;
        [(ACHMobileAssetProvider *)selfCopy _getCurrentAsssetAndOlderAssetsFromAssets:v8 completion:v29];
        if ([v37[5] state] == 2)
        {
          v9 = v21;
        }

        else
        {
          v9 = v22;
        }

        [v9 addObject:v37[5]];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v31[5];
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v46 count:16];
        if (v11)
        {
          v12 = *v26;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v25 + 1) + 8 * j);
              if ([v14 state] == 2)
              {
                [v6 addObject:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v25 objects:v46 count:16];
          }

          while (v11);
        }

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(&v36, 8);
      }

      v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v24);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v22, v6, v21);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __52__ACHMobileAssetProvider__processAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_assetsGroupedByUniqueNameAndType:(id)type
{
  v26 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = typeCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v22;
    v7 = *MEMORY[0x277CE8D80];
    v8 = *MEMORY[0x277CE8D70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        attributes = [v10 attributes];
        v12 = [attributes objectForKeyedSubscript:v7];

        attributes2 = [v10 attributes];
        v14 = [attributes2 objectForKeyedSubscript:v8];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v12, v14];
        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_getCurrentAsssetAndOlderAssetsFromAssets:(id)assets completion:(id)completion
{
  completionCopy = completion;
  assetsCopy = assets;
  v6 = [assetsCopy sortedArrayUsingComparator:&__block_literal_global_319];
  v7 = [MEMORY[0x277CBEB58] setWithArray:assetsCopy];

  lastObject = [v6 lastObject];
  if (lastObject)
  {
    [v7 removeObject:lastObject];
  }

  if (completionCopy)
  {
    allObjects = [v7 allObjects];
    completionCopy[2](completionCopy, lastObject, allObjects);
  }
}

uint64_t __79__ACHMobileAssetProvider__getCurrentAsssetAndOlderAssetsFromAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 attributes];
  v7 = *MEMORY[0x277D288E8];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D288E8]];
  v9 = [v8 integerValue];

  v10 = [v4 attributes];
  v11 = [v10 objectForKeyedSubscript:v7];
  v12 = [v11 integerValue];

  v13 = [v5 attributes];
  v14 = *MEMORY[0x277D28900];
  v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D28900]];
  v16 = [v15 integerValue];

  v17 = [v4 attributes];
  v18 = [v17 objectForKeyedSubscript:v14];
  v19 = [v18 integerValue];

  v20 = [v5 attributes];

  v21 = *MEMORY[0x277D28918];
  v22 = [v20 objectForKeyedSubscript:*MEMORY[0x277D28918]];
  v23 = [v22 integerValue];

  v24 = [v4 attributes];

  v25 = [v24 objectForKeyedSubscript:v21];
  v26 = [v25 integerValue];

  if (v9 < v12)
  {
    return -1;
  }

  if (v9 > v12)
  {
    return 1;
  }

  if (v16 < v19)
  {
    return -1;
  }

  if (v16 > v19)
  {
    return 1;
  }

  if (v23 < v26)
  {
    return -1;
  }

  return v23 > v26;
}

- (id)_compatibilityVersionQueryParameters
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  for (i = 3; i != 9; ++i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    stringValue = [v4 stringValue];
    [v2 addObject:stringValue];
  }

  v9 = *MEMORY[0x277D288E8];
  v10[0] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __30__ACHMobileAssetProvider_init__block_invoke_297_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error with mobile assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ACHMobileAssetProvider_downloadedAssetDiskUsageInBytes__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error querying local assets for CacheDelete disk usage reporting: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error querying local assets for CacheDelete purging: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__ACHMobileAssetProvider_purgeAllDownloadedAssets__block_invoke_302_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error purging assets for CacheDelete: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_downloadDelay
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_221DDC000, log, OS_LOG_TYPE_DEBUG, "Mobile Assets download delay is %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__ACHMobileAssetProvider__fetchLocalAssetsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error querying local assets: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__ACHMobileAssetProvider_downloadRemoteCatalog__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error querying remote assets: %{public}@. Going ahead to attempt processing local assets", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error downloading assets: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__ACHMobileAssetProvider__downloadRemoteAssets_installedAssets___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) count];
  [a2 count];
  OUTLINED_FUNCTION_2(&dword_221DDC000, v3, v4, "Combining installed assets count %lu with downloaded assets count: %lu", v5, v6, v7, v8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

void __57__ACHMobileAssetProvider__downloadAssets_withCompletion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_221DDC000, v1, v2, "Received downloaded asset count %lu, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __40__ACHMobileAssetProvider__removeAssets___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error removing assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end