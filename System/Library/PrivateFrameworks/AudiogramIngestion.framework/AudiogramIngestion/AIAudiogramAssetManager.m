@interface AIAudiogramAssetManager
- (AIAudiogramAssetManager)initWithDelegate:(id)a3;
- (AIAudiogramAssetManagerDelegate)delegate;
- (void)_refreshAssetsByForceUpdatingCatalog:(BOOL)a3;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetDidUpdateWithError:(id)a3;
@end

@implementation AIAudiogramAssetManager

- (AIAudiogramAssetManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AIAudiogramAssetManager;
  v5 = [(AIAudiogramAssetManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramAssetManager *)v5 setDelegate:v4];
    v7 = [MEMORY[0x277CE6680] policy];
    v8 = [MEMORY[0x277CE6668] assetControllerWithPolicy:v7 qosClass:25];
    [(AIAudiogramAssetManager *)v6 setAssetController:v8];

    v9 = [(AIAudiogramAssetManager *)v6 assetController];
    [v9 setUserInitiated:1];

    v10 = [(AIAudiogramAssetManager *)v6 assetController];
    [v10 addObserver:v6];
  }

  return v6;
}

- (void)_refreshAssetsByForceUpdatingCatalog:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getAXSettingsClass_softClass;
  v13 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXSettingsClass_block_invoke;
    v15 = &unk_278CEC150;
    v16 = &v10;
    __getAXSettingsClass_block_invoke(buf);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 sharedInstance];
  [v7 setAudiogramIngestionLastModelAccess:CFAbsoluteTimeGetCurrent()];

  if (v3)
  {
    [(AIAudiogramAssetManager *)self setDidForceCatalogRefresh:1];
  }

  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v3;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Initiating refresh with catalog force update %d", buf, 0x12u);
  }

  v9 = [(AIAudiogramAssetManager *)self assetController];
  [v9 refreshAssetsByForceUpdatingCatalog:v3 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)assetDidUpdateWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Asset Did Update:\n%@", &v13, 0x16u);
  }

  v7 = [(AIAudiogramAssetManager *)self delegate];
  v8 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  v9 = [v8 localURL];
  v10 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  v11 = [v10 properties];
  v12 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  [v7 modelDidUpdate:v9 assetProperties:v11 assetVersion:objc_msgSend(v12 withError:{"contentVersion"), v4}];
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7 && [v11 count])
  {
    v13 = [v11 lastObject];
    v14 = AXLogAudiogram();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = self;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_24179B000, v14, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Refreshed Assets:\n%@", buf, 0x16u);
    }

    if ([v13 isInstalled])
    {
      v15 = AXLogAudiogram();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = self;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_24179B000, v15, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Newest asset already installed:\n%@", buf, 0x16u);
      }

      [(AIAudiogramAssetManager *)self setLatestDownloadedAsset:v13];
    }

    else
    {
      v16 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
      if (!v16 || (v17 = v16, v18 = [v13 contentVersion], -[AIAudiogramAssetManager latestDownloadedAsset](self, "latestDownloadedAsset"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "contentVersion"), v19, v17, v18 > v20))
      {
        v21 = [(AIAudiogramAssetManager *)self assetController];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __89__AIAudiogramAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
        v25[3] = &unk_278CED138;
        v25[4] = self;
        v26 = v11;
        v27 = v12;
        [v21 downloadAssets:v26 successStartBlock:v25];

LABEL_24:
        goto LABEL_25;
      }

      v23 = AXLogAudiogram();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
        *buf = 138412546;
        v29 = self;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_24179B000, v23, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Latest asset up to date - keeping:\n%@", buf, 0x16u);
      }
    }

    [(AIAudiogramAssetManager *)self assetDidUpdateWithError:0];
    goto LABEL_24;
  }

  if (!v12)
  {
    if ([v11 count])
    {
      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"Audiogram model download error" description:@"No assets found"];
      if (![(AIAudiogramAssetManager *)self didForceCatalogRefresh])
      {
        [(AIAudiogramAssetManager *)self _refreshAssetsByForceUpdatingCatalog:1];
      }
    }
  }

  v22 = AXLogAudiogram();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_error_impl(&dword_24179B000, v22, OS_LOG_TYPE_ERROR, "[%@]: Audiogram Ingestion Model loading: Error refresing assets %@:\n%@", buf, 0x20u);
  }

  [(AIAudiogramAssetManager *)self assetDidUpdateWithError:v12];
LABEL_25:
}

void __89__AIAudiogramAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = AXLogAudiogram();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Downloading Assets:\n%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__AIAudiogramAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(a1, v5);
  }
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = AXLogAudiogram();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Downloaded Asset:\n%@", &v14, 0x16u);
    }

    [(AIAudiogramAssetManager *)self setLatestDownloadedAsset:v10];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramAssetManager assetController:v11 didFinishDownloadingAsset:v13 wasSuccessful:? error:? hasRemainingDownloads:?];
    }
  }

  [(AIAudiogramAssetManager *)self assetDidUpdateWithError:v11];
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v9 = a7;
  v27 = *MEMORY[0x277D85DE8];
  v13 = AXLogAudiogram();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138413314;
    v18 = self;
    v19 = 2048;
    v20 = a5;
    v21 = 2048;
    v22 = a6;
    v23 = 1024;
    v24 = v9;
    v25 = 2048;
    v26 = a8;
    _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model progress %lli %lli %d %f", &v17, 0x30u);
  }

  if (a6 < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a5 / a6;
  }

  v15 = [(AIAudiogramAssetManager *)self delegate];
  *&v16 = v14;
  [v15 modelDownloadProgressDidUpdate:v16];
}

- (AIAudiogramAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __89__AIAudiogramAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_24179B000, a2, OS_LOG_TYPE_ERROR, "[%@]: Audiogram Ingestion Model loading: Error starting asset download:\n%@", &v4, 0x16u);
}

- (void)assetController:(os_log_t)log didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24179B000, log, OS_LOG_TYPE_ERROR, "[%@]: Audiogram Ingestion Model loading: Download failed:\n%@", &v3, 0x16u);
}

@end