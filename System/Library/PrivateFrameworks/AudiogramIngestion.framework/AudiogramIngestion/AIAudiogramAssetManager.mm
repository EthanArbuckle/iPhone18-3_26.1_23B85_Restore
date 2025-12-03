@interface AIAudiogramAssetManager
- (AIAudiogramAssetManager)initWithDelegate:(id)delegate;
- (AIAudiogramAssetManagerDelegate)delegate;
- (void)_refreshAssetsByForceUpdatingCatalog:(BOOL)catalog;
- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetDidUpdateWithError:(id)error;
@end

@implementation AIAudiogramAssetManager

- (AIAudiogramAssetManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AIAudiogramAssetManager;
  v5 = [(AIAudiogramAssetManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramAssetManager *)v5 setDelegate:delegateCopy];
    policy = [MEMORY[0x277CE6680] policy];
    v8 = [MEMORY[0x277CE6668] assetControllerWithPolicy:policy qosClass:25];
    [(AIAudiogramAssetManager *)v6 setAssetController:v8];

    assetController = [(AIAudiogramAssetManager *)v6 assetController];
    [assetController setUserInitiated:1];

    assetController2 = [(AIAudiogramAssetManager *)v6 assetController];
    [assetController2 addObserver:v6];
  }

  return v6;
}

- (void)_refreshAssetsByForceUpdatingCatalog:(BOOL)catalog
{
  catalogCopy = catalog;
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
  sharedInstance = [v5 sharedInstance];
  [sharedInstance setAudiogramIngestionLastModelAccess:CFAbsoluteTimeGetCurrent()];

  if (catalogCopy)
  {
    [(AIAudiogramAssetManager *)self setDidForceCatalogRefresh:1];
  }

  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = catalogCopy;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Initiating refresh with catalog force update %d", buf, 0x12u);
  }

  assetController = [(AIAudiogramAssetManager *)self assetController];
  [assetController refreshAssetsByForceUpdatingCatalog:catalogCopy updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)assetDidUpdateWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    latestDownloadedAsset = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = latestDownloadedAsset;
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Asset Did Update:\n%@", &v13, 0x16u);
  }

  delegate = [(AIAudiogramAssetManager *)self delegate];
  latestDownloadedAsset2 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  localURL = [latestDownloadedAsset2 localURL];
  latestDownloadedAsset3 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  properties = [latestDownloadedAsset3 properties];
  latestDownloadedAsset4 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
  [delegate modelDidUpdate:localURL assetProperties:properties assetVersion:objc_msgSend(latestDownloadedAsset4 withError:{"contentVersion"), errorCopy}];
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  assetsCopy = assets;
  errorCopy = error;
  if (successfulCopy && [assetsCopy count])
  {
    lastObject = [assetsCopy lastObject];
    v14 = AXLogAudiogram();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy4 = self;
      v30 = 2112;
      v31 = assetsCopy;
      _os_log_impl(&dword_24179B000, v14, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Refreshed Assets:\n%@", buf, 0x16u);
    }

    if ([lastObject isInstalled])
    {
      v15 = AXLogAudiogram();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v30 = 2112;
        v31 = assetsCopy;
        _os_log_impl(&dword_24179B000, v15, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Newest asset already installed:\n%@", buf, 0x16u);
      }

      [(AIAudiogramAssetManager *)self setLatestDownloadedAsset:lastObject];
    }

    else
    {
      latestDownloadedAsset = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
      if (!latestDownloadedAsset || (v17 = latestDownloadedAsset, v18 = [lastObject contentVersion], -[AIAudiogramAssetManager latestDownloadedAsset](self, "latestDownloadedAsset"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "contentVersion"), v19, v17, v18 > v20))
      {
        assetController = [(AIAudiogramAssetManager *)self assetController];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __89__AIAudiogramAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
        v25[3] = &unk_278CED138;
        v25[4] = self;
        v26 = assetsCopy;
        v27 = errorCopy;
        [assetController downloadAssets:v26 successStartBlock:v25];

LABEL_24:
        goto LABEL_25;
      }

      v23 = AXLogAudiogram();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        latestDownloadedAsset2 = [(AIAudiogramAssetManager *)self latestDownloadedAsset];
        *buf = 138412546;
        selfCopy4 = self;
        v30 = 2112;
        v31 = latestDownloadedAsset2;
        _os_log_impl(&dword_24179B000, v23, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Latest asset up to date - keeping:\n%@", buf, 0x16u);
      }
    }

    [(AIAudiogramAssetManager *)self assetDidUpdateWithError:0];
    goto LABEL_24;
  }

  if (!errorCopy)
  {
    if ([assetsCopy count])
    {
      errorCopy = 0;
    }

    else
    {
      errorCopy = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"Audiogram model download error" description:@"No assets found"];
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
    selfCopy4 = self;
    v30 = 2112;
    v31 = assetsCopy;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_error_impl(&dword_24179B000, v22, OS_LOG_TYPE_ERROR, "[%@]: Audiogram Ingestion Model loading: Error refresing assets %@:\n%@", buf, 0x20u);
  }

  [(AIAudiogramAssetManager *)self assetDidUpdateWithError:errorCopy];
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

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  successfulCopy = successful;
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  errorCopy = error;
  v12 = AXLogAudiogram();
  v13 = v12;
  if (successfulCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = assetCopy;
      _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model loading: Downloaded Asset:\n%@", &v14, 0x16u);
    }

    [(AIAudiogramAssetManager *)self setLatestDownloadedAsset:assetCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramAssetManager assetController:errorCopy didFinishDownloadingAsset:v13 wasSuccessful:? error:? hasRemainingDownloads:?];
    }
  }

  [(AIAudiogramAssetManager *)self assetDidUpdateWithError:errorCopy];
}

- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  stalledCopy = stalled;
  v27 = *MEMORY[0x277D85DE8];
  v13 = AXLogAudiogram();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138413314;
    selfCopy = self;
    v19 = 2048;
    writtenCopy = written;
    v21 = 2048;
    expectedCopy = expected;
    v23 = 1024;
    v24 = stalledCopy;
    v25 = 2048;
    remainingCopy = remaining;
    _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "[%@]: Audiogram Ingestion Model progress %lli %lli %d %f", &v17, 0x30u);
  }

  if (expected < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = written / expected;
  }

  delegate = [(AIAudiogramAssetManager *)self delegate];
  *&v16 = v14;
  [delegate modelDownloadProgressDidUpdate:v16];
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