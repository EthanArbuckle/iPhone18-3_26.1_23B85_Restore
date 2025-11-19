@interface SoundActionsAssetsDownloadManager
+ (id)sharedInstance;
- (SoundActionsAssetsDownloadManager)init;
- (SoundActionsAssetsDownloadManagerDelegate)delegate;
- (void)_updateLatestAsset:(id)a3;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
@end

@implementation SoundActionsAssetsDownloadManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SoundActionsAssetsDownloadManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __51__SoundActionsAssetsDownloadManager_sharedInstance__block_invoke(id a1)
{
  v1 = objc_alloc_init(SoundActionsAssetsDownloadManager);
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;

  _objc_release_x1(v1, v2);
}

- (SoundActionsAssetsDownloadManager)init
{
  v8.receiver = self;
  v8.super_class = SoundActionsAssetsDownloadManager;
  v2 = [(SoundActionsAssetsDownloadManager *)&v8 init];
  if (v2)
  {
    v3 = +[AXVoiceTriggerAssetPolicy policy];
    assetPolicy = v2->_assetPolicy;
    v2->_assetPolicy = v3;

    v5 = [AXAssetController assetControllerWithPolicy:v2->_assetPolicy qosClass:25];
    assetController = v2->_assetController;
    v2->_assetController = v5;

    [(AXAssetController *)v2->_assetController setUserInitiated:1];
    [(AXAssetController *)v2->_assetController addObserver:v2];
  }

  return v2;
}

- (void)_updateLatestAsset:(id)a3
{
  [(SoundActionsAssetsDownloadManager *)self setLatestAsset:a3];
  v5 = [(SoundActionsAssetsDownloadManager *)self delegate];
  v4 = [(SoundActionsAssetsDownloadManager *)self latestAsset];
  [v5 latestAssetDidUpdate:v4];
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  if (v7)
  {
    v11 = [v9 lastObject];
    v12 = AXLogSoundActions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = self;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Refreshed Assets:\n%@", buf, 0x16u);
    }

    if ([v11 isInstalled])
    {
      v13 = AXLogSoundActions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = self;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Newest asset already installed:\n%@", buf, 0x16u);
      }

      [(SoundActionsAssetsDownloadManager *)self _updateLatestAsset:v11];
    }

    else
    {
      v14 = [(SoundActionsAssetsDownloadManager *)self latestAsset];
      if (v14 && (v15 = v14, v16 = -[NSObject contentVersion](v11, "contentVersion"), -[SoundActionsAssetsDownloadManager latestAsset](self, "latestAsset"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 contentVersion], v17, v15, v16 <= v18))
      {
        v22 = AXLogSoundActions();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [(SoundActionsAssetsDownloadManager *)self latestAsset];
          *buf = 138412546;
          v29 = self;
          v30 = 2112;
          v31 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Latest asset up to date - keeping:\n%@", buf, 0x16u);
        }
      }

      else
      {
        v27 = v11;
        v19 = [NSArray arrayWithObjects:&v27 count:1];
        assetController = self->_assetController;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = __99__SoundActionsAssetsDownloadManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
        v24[3] = &unk_257818;
        v24[4] = self;
        v25 = v19;
        v26 = v10;
        v21 = v19;
        [(AXAssetController *)assetController downloadAssets:v21 successStartBlock:v24];
      }
    }
  }

  else
  {
    v11 = AXLogSoundActions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SoundActionsAssetsDownloadManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }
}

void __99__SoundActionsAssetsDownloadManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v4 = AXLogSoundActions();
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
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloading Assets:\n%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__SoundActionsAssetsDownloadManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(a1, v5);
  }
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v10 = a4;
  v11 = a6;
  v12 = AXLogSoundActions();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloaded Asset:\n%@", &v14, 0x16u);
    }

    [(SoundActionsAssetsDownloadManager *)self _updateLatestAsset:v10];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SoundActionsAssetsDownloadManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
    }
  }
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v11 = a4;
  v12 = AXLogSoundActions();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v11;
    v17 = 2048;
    v18 = a5;
    v19 = 2048;
    v20 = a6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloading Asset:\n%@ %lld written, %lld expected.", &v13, 0x2Au);
  }
}

- (SoundActionsAssetsDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __99__SoundActionsAssetsDownloadManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[%@]: Voice Trigger Model loading:  Error starting asset download:\n%@", &v4, 0x16u);
}

@end