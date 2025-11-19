@interface AXSDVoiceTriggerAssetManager
- (AXSDVoiceTriggerAssetManager)initWithDelegate:(id)a3;
- (AXSDVoiceTriggerAssetManagerDelegate)delegate;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetDidUpdateWithError:(id)a3;
@end

@implementation AXSDVoiceTriggerAssetManager

- (AXSDVoiceTriggerAssetManager)initWithDelegate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AXSDVoiceTriggerAssetManager;
  v5 = [(AXSDVoiceTriggerAssetManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CE66B0] policy];
    assetPolicy = v6->_assetPolicy;
    v6->_assetPolicy = v7;

    v9 = MEMORY[0x277CE6668];
    v10 = [(AXSDVoiceTriggerAssetManager *)v6 assetPolicy];
    v11 = [v9 assetControllerWithPolicy:v10 qosClass:25];
    assetController = v6->_assetController;
    v6->_assetController = v11;

    [(AXAssetController *)v6->_assetController setUserInitiated:1];
    [(AXAssetController *)v6->_assetController addObserver:v6];
    v13 = AXLogSoundActions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading: Initiating refresh", &buf, 0xCu);
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v14 = getAXSettingsClass_softClass;
    v23 = getAXSettingsClass_softClass;
    if (!getAXSettingsClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v25 = __getAXSettingsClass_block_invoke;
      v26 = &unk_278BDCFE0;
      v27 = &v20;
      __getAXSettingsClass_block_invoke(&buf);
      v14 = v21[3];
    }

    v15 = v14;
    _Block_object_dispose(&v20, 8);
    v16 = [v14 sharedInstance];
    [v16 setSoundActionsLastModelAccess:CFAbsoluteTimeGetCurrent()];

    [(AXAssetController *)v6->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  if (v7)
  {
    v11 = [v9 lastObject];
    v12 = AXLogSoundActions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_23D62D000, v12, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Refreshed Assets:\n%@", buf, 0x16u);
    }

    if ([v11 isInstalled])
    {
      v13 = AXLogSoundActions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = self;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Newst asset already installed:\n%@", buf, 0x16u);
      }

      objc_storeStrong(&self->_latestDownloadedAsset, v11);
      [(AXSDVoiceTriggerAssetManager *)self assetDidUpdateWithError:0];
    }

    else if (self->_latestDownloadedAsset && (v14 = [v11 contentVersion], v14 <= [(AXAsset *)self->_latestDownloadedAsset contentVersion]))
    {
      v16 = AXLogSoundActions();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        latestDownloadedAsset = self->_latestDownloadedAsset;
        *buf = 138412546;
        v23 = self;
        v24 = 2112;
        v25 = latestDownloadedAsset;
        _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Latest asset up to date - keeping:\n%@", buf, 0x16u);
      }
    }

    else
    {
      assetController = self->_assetController;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
      v19[3] = &unk_278BDCFB8;
      v19[4] = self;
      v20 = v9;
      v21 = v10;
      [(AXAssetController *)assetController downloadAssets:v20 successStartBlock:v19];
    }
  }

  else
  {
    v11 = AXLogSoundActions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXSDVoiceTriggerAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = AXLogSoundActions();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloading Assets:\n%@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(a1, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = AXLogSoundActions();
  latestDownloadedAsset = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_23D62D000, latestDownloadedAsset, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloaded Asset:\n%@", &v16, 0x16u);
    }

    v14 = v10;
    latestDownloadedAsset = self->_latestDownloadedAsset;
    self->_latestDownloadedAsset = v14;
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AXSDVoiceTriggerAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
  }

  [(AXSDVoiceTriggerAssetManager *)self assetDidUpdateWithError:v11];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)assetDidUpdateWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogSoundActions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    latestDownloadedAsset = self->_latestDownloadedAsset;
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = latestDownloadedAsset;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Asset Did Update:\n%@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(AXAsset *)self->_latestDownloadedAsset localURL];
  [WeakRetained modelDidUpdate:v8 assetVersion:-[AXAsset contentVersion](self->_latestDownloadedAsset withError:{"contentVersion"), v4}];

  v9 = *MEMORY[0x277D85DE8];
}

- (AXSDVoiceTriggerAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)assetController:didFinishRefreshingAssets:wasSuccessful:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D62D000, v0, v1, "[%@]: Voice Trigger Model loading:  Error refresing assets:\n%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "[%@]: Voice Trigger Model loading:  Error starting asset download:\n%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23D62D000, v0, v1, "[%@]: Voice Trigger Model loading: Download failed:\n%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end