@interface PPXBLDownloadController
+ (PPXBLDownloadController)sharedController;
- (PPXBLDownloadController)init;
- (id)_updateDownloadingAssets:(id)a3;
- (void)_performBlockOnAllAssetsForAssetID:(id)a3 block:(id)a4;
- (void)cancelDownloadForAssetID:(id)a3;
- (void)dealloc;
- (void)downloadQueue:(id)a3 downloadStates:(id)a4 didCompleteWithError:(id)a5;
- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation PPXBLDownloadController

+ (PPXBLDownloadController)sharedController
{
  if (qword_1000387B8[0] != -1)
  {
    sub_10001F3D0();
  }

  v3 = qword_1000387B0;

  return v3;
}

- (PPXBLDownloadController)init
{
  v10.receiver = self;
  v10.super_class = PPXBLDownloadController;
  v2 = [(PPXBLDownloadController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.PPXBLDownloadController.dispatchQueue", v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = objc_opt_new();
    downloadingAssets = v2->_downloadingAssets;
    v2->_downloadingAssets = v7;
  }

  return v2;
}

- (void)startObserving
{
  v3 = +[BLDownloadQueue sharedInstance];
  [v3 addObserver:self];
}

- (void)stopObserving
{
  v3 = +[BLDownloadQueue sharedInstance];
  [v3 removeObserver:self];
}

- (void)dealloc
{
  [(PPXBLDownloadController *)self stopObserving];
  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = 0;

  downloadingAssets = self->_downloadingAssets;
  self->_downloadingAssets = 0;

  v5.receiver = self;
  v5.super_class = PPXBLDownloadController;
  [(PPXBLDownloadController *)&v5 dealloc];
}

- (void)cancelDownloadForAssetID:(id)a3
{
  v4 = a3;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancelDownloadForAssetID:%@", buf, 0xCu);
  }

  v6 = [(PPXBLDownloadController *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000603C;
  v8[3] = &unk_100031528;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (id)_updateDownloadingAssets:(id)a3
{
  v4 = a3;
  v5 = [v4 bk_assetIdentifier];
  if ([v5 length])
  {
    v6 = [(PPXBLDownloadController *)self downloadingAssets];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      if ([v4 isAudiobook] && (objc_msgSend(v4, "storePlaylistID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "longLongValue"), v9, !v10))
      {
        v7 = 0;
      }

      else
      {
        v7 = [[PPXBLDownloadAsset alloc] initWithBLDownloadStatus:v4 isParent:0];
        v11 = [(PPXBLDownloadController *)self downloadingAssets];
        [v11 setObject:v7 forKeyedSubscript:v5];

        v12 = BCBookDownloadLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(PPXBLDownloadAsset *)v7 identifier];
          v14 = [(PPXBLDownloadAsset *)v7 downloadID];
          v28 = 138412546;
          v29 = v13;
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "download new asset=%@, downloadID=%{public}@", &v28, 0x16u);
        }

        if ([v4 isAudiobook])
        {
          v15 = [v4 storePlaylistID];
          v16 = [v15 longLongValue];

          if (v16)
          {
            v17 = [v4 storePlaylistID];
            v18 = [v17 stringValue];

            v19 = [(PPXBLDownloadController *)self downloadingAssets];
            v20 = [v19 objectForKeyedSubscript:v18];

            if (!v20)
            {
              v20 = [[PPXBLDownloadAsset alloc] initWithBLDownloadStatus:v4 isParent:1];
              v21 = [(PPXBLDownloadController *)self downloadingAssets];
              [v21 setObject:v20 forKeyedSubscript:v18];

              v22 = BCBookDownloadLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [(PPXBLDownloadAsset *)v20 identifier];
                v28 = 138412290;
                v29 = v23;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "download new parent=%@", &v28, 0xCu);
              }
            }

            v24 = BCBookDownloadLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(PPXBLDownloadAsset *)v20 identifier];
              v26 = [(PPXBLDownloadAsset *)v7 identifier];
              v27 = [(PPXBLDownloadAsset *)v7 downloadID];
              v28 = 138412802;
              v29 = v25;
              v30 = 2112;
              v31 = v26;
              v32 = 2114;
              v33 = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "set parent=%@ for child=%@, downloadID=%{public}@", &v28, 0x20u);
            }

            [(PPXBLDownloadAsset *)v20 addChild:v7];
          }
        }
      }
    }

    [(PPXBLDownloadAsset *)v7 setDownloadStatus:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_performBlockOnAllAssetsForAssetID:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PPXBLDownloadController *)self downloadingAssets];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [v9 parent];

    if (v10)
    {
      v11 = [v9 parent];

      v9 = v11;
    }

    v12 = [v9 children];
    v13 = [v12 count];

    if (v13)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = [v9 children];
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v20;
        do
        {
          v18 = 0;
          do
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v7[2](v7, *(*(&v19 + 1) + 8 * v18));
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v16);
      }
    }

    else
    {
      (v7)[2](v7, v9);
    }
  }
}

- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4
{
  v5 = a4;
  v6 = BCBookDownloadLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F3E4(v5, v6);
  }

  v7 = [(PPXBLDownloadController *)self dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000067C0;
  v9[3] = &unk_100031528;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)downloadQueue:(id)a3 downloadStates:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = BCBookDownloadLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didCompleteWithError: %@", buf, 0xCu);
  }

  v10 = [(PPXBLDownloadController *)self dispatchQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000069FC;
  v12[3] = &unk_100031528;
  v13 = v7;
  v14 = self;
  v11 = v7;
  dispatch_async(v10, v12);
}

@end