@interface AXUpdateAssetTask
- (AXUpdateAssetTask)initWithPolicy:(id)policy context:(id)context;
- (void)_housekeeping_op1_refreshAssets;
- (void)_housekeeping_op2_purgeAssets:(id)assets;
- (void)_housekeeping_op3_downloadAssets:(id)assets;
- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
@end

@implementation AXUpdateAssetTask

- (AXUpdateAssetTask)initWithPolicy:(id)policy context:(id)context
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006C60;
  v10[3] = &unk_100018960;
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = AXUpdateAssetTask;
  v6 = policyCopy;
  v7 = [(AXManagedAssetTask *)&v9 initWithName:@"Update Assets" policy:v6 context:context block:v10];

  return v7;
}

- (void)_housekeeping_op1_refreshAssets
{
  _restorationState = [(AXUpdateAssetTask *)self _restorationState];
  hasCompletedRefreshingAssets = [_restorationState hasCompletedRefreshingAssets];

  restorationState2 = AXLogAssetDaemon();
  v6 = os_log_type_enabled(restorationState2, OS_LOG_TYPE_DEFAULT);
  if (hasCompletedRefreshingAssets)
  {
    if (v6)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, restorationState2, OS_LOG_TYPE_DEFAULT, "%@: Restoration state: 'hasCompletedRefreshingAssets'. Moving on to next step", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      restorationState = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      selfCopy2 = self;
      v14 = 2112;
      v15 = restorationState;
      _os_log_impl(&_mh_execute_header, restorationState2, OS_LOG_TYPE_DEFAULT, "%@: About to refresh assets. Restoration: %@", buf, 0x16u);
    }

    restorationState2 = [(AXManagedAssetTask *)self restorationState];
    v8 = +[AXAssetMetadataStore store];
    [restorationState2 updatePhase:@"Refreshing Assets" saveToStore:v8];
  }

  objc_initWeak(buf, self);
  assetController = [(AXManagedAssetTask *)self assetController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F90;
  v10[3] = &unk_100018988;
  objc_copyWeak(&v11, buf);
  [assetController refreshAssetsByForceUpdatingCatalog:hasCompletedRefreshingAssets ^ 1 updatingCatalogIfNeeded:hasCompletedRefreshingAssets ^ 1 catalogRefreshOverrideTimeout:&off_1000193E0 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_housekeeping_op2_purgeAssets:(id)assets
{
  assetsCopy = assets;
  val = self;
  _restorationState = [(AXUpdateAssetTask *)self _restorationState];
  hasCompletedPurgingAssets = [_restorationState hasCompletedPurgingAssets];

  if (hasCompletedPurgingAssets)
  {
    v6 = AXLogAssetDaemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Restoration state: 'hasCompletedPurgingAssets'. Moving on to next step", buf, 0xCu);
    }

    [(AXUpdateAssetTask *)self _housekeeping_op3_downloadAssets:assetsCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = AXLogAssetDaemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      restorationState = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      selfCopy4 = self;
      v36 = 2112;
      v37 = restorationState;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: About to purge installed assets. Restoration: %@", buf, 0x16u);
    }

    restorationState2 = [(AXManagedAssetTask *)self restorationState];
    v10 = +[AXAssetMetadataStore store];
    [restorationState2 updatePhase:@"Purging Assets" saveToStore:v10];

    v21 = [AXAsset installedAssets:assetsCopy];
    policy = [(AXManagedAssetTask *)self policy];
    v22 = [policy assetsToPurgeFromInstalledAssets:v21 withRefreshedAssets:assetsCopy];

    if ([v22 count])
    {
      v12 = AXLogAssetDaemon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Assets that will be purged", buf, 0xCu);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v22;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = *v29;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            v18 = AXLogAssetDaemon();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy4 = v17;
              v36 = 2112;
              v37 = val;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@:   %@", buf, 0x16u);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v14);
      }

      assetController = [(AXManagedAssetTask *)val assetController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100007508;
      v25[3] = &unk_1000189B0;
      objc_copyWeak(&v27, &location);
      v26 = assetsCopy;
      [assetController purgeAssets:v13 completion:v25];

      objc_destroyWeak(&v27);
    }

    else
    {
      v20 = AXLogAssetDaemon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: No assets found that need to be purged", buf, 0xCu);
      }

      [(AXUpdateAssetTask *)self _housekeeping_op3_downloadAssets:assetsCopy];
    }

    objc_destroyWeak(&location);
  }
}

- (void)_housekeeping_op3_downloadAssets:(id)assets
{
  assetsCopy = assets;
  val = self;
  policy = [(AXManagedAssetTask *)self policy];
  daemonShouldDownloadInBackgroundIfNeeded = [policy daemonShouldDownloadInBackgroundIfNeeded];

  v6 = AXLogAssetDaemon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (daemonShouldDownloadInBackgroundIfNeeded)
  {
    if (v7)
    {
      restorationState = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      selfCopy2 = self;
      v47 = 2112;
      v48 = restorationState;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: About to kick off downloadable assets. Restoration: %@", buf, 0x16u);
    }

    restorationState2 = [(AXManagedAssetTask *)self restorationState];
    v10 = +[AXAssetMetadataStore store];
    [restorationState2 updatePhase:@"Downloading Assets" saveToStore:v10];

    v11 = AXLogAssetDaemon();
    LODWORD(v10) = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v12 = AXLogAssetDaemon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10000DF0C(v12);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = assetsCopy;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v14)
      {
        v15 = *v40;
        do
        {
          v16 = 0;
          do
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v39 + 1) + 8 * v16);
            v18 = AXLogAssetDaemon();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              selfCopy2 = v17;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "  %@", buf, 0xCu);
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v14);
      }
    }

    policy2 = [(AXManagedAssetTask *)val policy];
    v30 = [policy2 assetsToDownloadFromRefreshedAssets:assetsCopy];

    v20 = [v30 count] == 0;
    v21 = AXLogAssetDaemon();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        selfCopy2 = val;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: No assets found that need to be downloaded", buf, 0xCu);
      }

      [(AXManagedAssetTask *)val _completeWithResult:0];
    }

    else
    {
      if (v22)
      {
        *buf = 138412290;
        selfCopy2 = val;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Assets that will be downloaded", buf, 0xCu);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = v30;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v24)
      {
        v25 = *v36;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v35 + 1) + 8 * i);
            v28 = AXLogAssetDaemon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy2 = v27;
              v47 = 2112;
              v48 = val;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@:   %@", buf, 0x16u);
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v24);
      }

      objc_initWeak(buf, val);
      assetController = [(AXManagedAssetTask *)val assetController];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100007B28;
      v33[3] = &unk_1000189D8;
      objc_copyWeak(&v34, buf);
      [assetController downloadAssets:v23 successStartBlock:v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Honoring asset policy to not proceed with downloads", buf, 0xCu);
    }

    [(AXManagedAssetTask *)self _completeWithResult:0];
  }
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  errorCopy = error;
  v9 = AXLogAssetDaemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2048;
    v13 = successfulCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: didFinishRefreshingAssets. success:%ld error:%@", &v10, 0x20u);
  }
}

- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  errorCopy = error;
  v9 = AXLogAssetDaemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2048;
    v13 = successfulCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: didFinishPurgingAssets. success:%ld error:%@", &v10, 0x20u);
  }
}

- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  stalledCopy = stalled;
  assetCopy = asset;
  v13 = AXLogAssetDaemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413314;
    selfCopy = self;
    v16 = 2048;
    writtenCopy = written;
    v18 = 2048;
    expectedCopy = expected;
    v20 = 2048;
    v21 = stalledCopy;
    v22 = 2112;
    v23 = assetCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Asset D/L progress: %lld / %lld. stalled: %ld. asset: %@", &v14, 0x34u);
  }
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  successfulCopy = successful;
  assetCopy = asset;
  errorCopy = error;
  v12 = AXLogAssetDaemon();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (successfulCopy)
  {
    if (v13)
    {
      v17 = 138412546;
      selfCopy2 = self;
      v19 = 2112;
      v20 = assetCopy;
      v14 = "%@: Asset download finished: %@";
      v15 = v12;
      v16 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
    }
  }

  else if (v13)
  {
    v17 = 138412802;
    selfCopy2 = self;
    v19 = 2112;
    v20 = assetCopy;
    v21 = 2112;
    v22 = errorCopy;
    v14 = "%@: Asset download failed: %@ - %@";
    v15 = v12;
    v16 = 32;
    goto LABEL_6;
  }
}

@end