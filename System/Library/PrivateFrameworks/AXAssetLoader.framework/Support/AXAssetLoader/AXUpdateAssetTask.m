@interface AXUpdateAssetTask
- (AXUpdateAssetTask)initWithPolicy:(id)a3 context:(id)a4;
- (void)_housekeeping_op1_refreshAssets;
- (void)_housekeeping_op2_purgeAssets:(id)a3;
- (void)_housekeeping_op3_downloadAssets:(id)a3;
- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
@end

@implementation AXUpdateAssetTask

- (AXUpdateAssetTask)initWithPolicy:(id)a3 context:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006C60;
  v10[3] = &unk_100018960;
  v11 = a3;
  v9.receiver = self;
  v9.super_class = AXUpdateAssetTask;
  v6 = v11;
  v7 = [(AXManagedAssetTask *)&v9 initWithName:@"Update Assets" policy:v6 context:a4 block:v10];

  return v7;
}

- (void)_housekeeping_op1_refreshAssets
{
  v3 = [(AXUpdateAssetTask *)self _restorationState];
  v4 = [v3 hasCompletedRefreshingAssets];

  v5 = AXLogAssetDaemon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Restoration state: 'hasCompletedRefreshingAssets'. Moving on to next step", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v7 = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: About to refresh assets. Restoration: %@", buf, 0x16u);
    }

    v5 = [(AXManagedAssetTask *)self restorationState];
    v8 = +[AXAssetMetadataStore store];
    [v5 updatePhase:@"Refreshing Assets" saveToStore:v8];
  }

  objc_initWeak(buf, self);
  v9 = [(AXManagedAssetTask *)self assetController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F90;
  v10[3] = &unk_100018988;
  objc_copyWeak(&v11, buf);
  [v9 refreshAssetsByForceUpdatingCatalog:v4 ^ 1 updatingCatalogIfNeeded:v4 ^ 1 catalogRefreshOverrideTimeout:&off_1000193E0 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_housekeeping_op2_purgeAssets:(id)a3
{
  v23 = a3;
  val = self;
  v4 = [(AXUpdateAssetTask *)self _restorationState];
  v5 = [v4 hasCompletedPurgingAssets];

  if (v5)
  {
    v6 = AXLogAssetDaemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Restoration state: 'hasCompletedPurgingAssets'. Moving on to next step", buf, 0xCu);
    }

    [(AXUpdateAssetTask *)self _housekeeping_op3_downloadAssets:v23];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = AXLogAssetDaemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      v35 = self;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: About to purge installed assets. Restoration: %@", buf, 0x16u);
    }

    v9 = [(AXManagedAssetTask *)self restorationState];
    v10 = +[AXAssetMetadataStore store];
    [v9 updatePhase:@"Purging Assets" saveToStore:v10];

    v21 = [AXAsset installedAssets:v23];
    v11 = [(AXManagedAssetTask *)self policy];
    v22 = [v11 assetsToPurgeFromInstalledAssets:v21 withRefreshedAssets:v23];

    if ([v22 count])
    {
      v12 = AXLogAssetDaemon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = self;
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
              v35 = v17;
              v36 = 2112;
              v37 = val;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@:   %@", buf, 0x16u);
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v14);
      }

      v19 = [(AXManagedAssetTask *)val assetController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100007508;
      v25[3] = &unk_1000189B0;
      objc_copyWeak(&v27, &location);
      v26 = v23;
      [v19 purgeAssets:v13 completion:v25];

      objc_destroyWeak(&v27);
    }

    else
    {
      v20 = AXLogAssetDaemon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@: No assets found that need to be purged", buf, 0xCu);
      }

      [(AXUpdateAssetTask *)self _housekeeping_op3_downloadAssets:v23];
    }

    objc_destroyWeak(&location);
  }
}

- (void)_housekeeping_op3_downloadAssets:(id)a3
{
  v31 = a3;
  val = self;
  v4 = [(AXManagedAssetTask *)self policy];
  v5 = [v4 daemonShouldDownloadInBackgroundIfNeeded];

  v6 = AXLogAssetDaemon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(AXManagedAssetTask *)self restorationState];
      *buf = 138412546;
      v46 = self;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: About to kick off downloadable assets. Restoration: %@", buf, 0x16u);
    }

    v9 = [(AXManagedAssetTask *)self restorationState];
    v10 = +[AXAssetMetadataStore store];
    [v9 updatePhase:@"Downloading Assets" saveToStore:v10];

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
      v13 = v31;
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
              v46 = v17;
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

    v19 = [(AXManagedAssetTask *)val policy];
    v30 = [v19 assetsToDownloadFromRefreshedAssets:v31];

    v20 = [v30 count] == 0;
    v21 = AXLogAssetDaemon();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        v46 = val;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: No assets found that need to be downloaded", buf, 0xCu);
      }

      [(AXManagedAssetTask *)val _completeWithResult:0];
    }

    else
    {
      if (v22)
      {
        *buf = 138412290;
        v46 = val;
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
              v46 = v27;
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
      v29 = [(AXManagedAssetTask *)val assetController];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100007B28;
      v33[3] = &unk_1000189D8;
      objc_copyWeak(&v34, buf);
      [v29 downloadAssets:v23 successStartBlock:v33];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v46 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Honoring asset policy to not proceed with downloads", buf, 0xCu);
    }

    [(AXManagedAssetTask *)self _completeWithResult:0];
  }
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = AXLogAssetDaemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = self;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: didFinishRefreshingAssets. success:%ld error:%@", &v10, 0x20u);
  }
}

- (void)assetController:(id)a3 didFinishPurgingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = AXLogAssetDaemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = self;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: didFinishPurgingAssets. success:%ld error:%@", &v10, 0x20u);
  }
}

- (void)assetController:(id)a3 asset:(id)a4 downloadProgressTotalWritten:(int64_t)a5 totalExpected:(int64_t)a6 isStalled:(BOOL)a7 expectedTimeRemaining:(double)a8
{
  v8 = a7;
  v12 = a4;
  v13 = AXLogAssetDaemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413314;
    v15 = self;
    v16 = 2048;
    v17 = a5;
    v18 = 2048;
    v19 = a6;
    v20 = 2048;
    v21 = v8;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Asset D/L progress: %lld / %lld. stalled: %ld. asset: %@", &v14, 0x34u);
  }
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v8 = a5;
  v10 = a4;
  v11 = a6;
  v12 = AXLogAssetDaemon();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v13)
    {
      v17 = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v10;
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
    v18 = self;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v14 = "%@: Asset download failed: %@ - %@";
    v15 = v12;
    v16 = 32;
    goto LABEL_6;
  }
}

@end