@interface PPXBLDownloadController
+ (PPXBLDownloadController)sharedController;
- (PPXBLDownloadController)init;
- (id)_updateDownloadingAssets:(id)assets;
- (void)_performBlockOnAllAssetsForAssetID:(id)d block:(id)block;
- (void)cancelDownloadForAssetID:(id)d;
- (void)dealloc;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
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

- (void)cancelDownloadForAssetID:(id)d
{
  dCopy = d;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancelDownloadForAssetID:%@", buf, 0xCu);
  }

  dispatchQueue = [(PPXBLDownloadController *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000603C;
  v8[3] = &unk_100031528;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(dispatchQueue, v8);
}

- (id)_updateDownloadingAssets:(id)assets
{
  assetsCopy = assets;
  bk_assetIdentifier = [assetsCopy bk_assetIdentifier];
  if ([bk_assetIdentifier length])
  {
    downloadingAssets = [(PPXBLDownloadController *)self downloadingAssets];
    v7 = [downloadingAssets objectForKeyedSubscript:bk_assetIdentifier];

    if (!v7)
    {
      if ([assetsCopy isAudiobook] && (objc_msgSend(assetsCopy, "storePlaylistID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "longLongValue"), v9, !v10))
      {
        v7 = 0;
      }

      else
      {
        v7 = [[PPXBLDownloadAsset alloc] initWithBLDownloadStatus:assetsCopy isParent:0];
        downloadingAssets2 = [(PPXBLDownloadController *)self downloadingAssets];
        [downloadingAssets2 setObject:v7 forKeyedSubscript:bk_assetIdentifier];

        v12 = BCBookDownloadLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(PPXBLDownloadAsset *)v7 identifier];
          downloadID = [(PPXBLDownloadAsset *)v7 downloadID];
          v28 = 138412546;
          v29 = identifier;
          v30 = 2114;
          v31 = downloadID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "download new asset=%@, downloadID=%{public}@", &v28, 0x16u);
        }

        if ([assetsCopy isAudiobook])
        {
          storePlaylistID = [assetsCopy storePlaylistID];
          longLongValue = [storePlaylistID longLongValue];

          if (longLongValue)
          {
            storePlaylistID2 = [assetsCopy storePlaylistID];
            stringValue = [storePlaylistID2 stringValue];

            downloadingAssets3 = [(PPXBLDownloadController *)self downloadingAssets];
            v20 = [downloadingAssets3 objectForKeyedSubscript:stringValue];

            if (!v20)
            {
              v20 = [[PPXBLDownloadAsset alloc] initWithBLDownloadStatus:assetsCopy isParent:1];
              downloadingAssets4 = [(PPXBLDownloadController *)self downloadingAssets];
              [downloadingAssets4 setObject:v20 forKeyedSubscript:stringValue];

              v22 = BCBookDownloadLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [(PPXBLDownloadAsset *)v20 identifier];
                v28 = 138412290;
                v29 = identifier2;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "download new parent=%@", &v28, 0xCu);
              }
            }

            v24 = BCBookDownloadLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              identifier3 = [(PPXBLDownloadAsset *)v20 identifier];
              identifier4 = [(PPXBLDownloadAsset *)v7 identifier];
              downloadID2 = [(PPXBLDownloadAsset *)v7 downloadID];
              v28 = 138412802;
              v29 = identifier3;
              v30 = 2112;
              v31 = identifier4;
              v32 = 2114;
              v33 = downloadID2;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "set parent=%@ for child=%@, downloadID=%{public}@", &v28, 0x20u);
            }

            [(PPXBLDownloadAsset *)v20 addChild:v7];
          }
        }
      }
    }

    [(PPXBLDownloadAsset *)v7 setDownloadStatus:assetsCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_performBlockOnAllAssetsForAssetID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  downloadingAssets = [(PPXBLDownloadController *)self downloadingAssets];
  v9 = [downloadingAssets objectForKeyedSubscript:dCopy];

  if (v9)
  {
    parent = [v9 parent];

    if (parent)
    {
      parent2 = [v9 parent];

      v9 = parent2;
    }

    children = [v9 children];
    v13 = [children count];

    if (v13)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      children2 = [v9 children];
      v15 = [children2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(children2);
            }

            blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * v18));
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [children2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v16);
      }
    }

    else
    {
      (blockCopy)[2](blockCopy, v9);
    }
  }
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v6 = BCBookDownloadLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F3E4(changeCopy, v6);
  }

  dispatchQueue = [(PPXBLDownloadController *)self dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000067C0;
  v9[3] = &unk_100031528;
  v10 = changeCopy;
  selfCopy = self;
  v8 = changeCopy;
  dispatch_async(dispatchQueue, v9);
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  statesCopy = states;
  errorCopy = error;
  v9 = BCBookDownloadLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didCompleteWithError: %@", buf, 0xCu);
  }

  dispatchQueue = [(PPXBLDownloadController *)self dispatchQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000069FC;
  v12[3] = &unk_100031528;
  v13 = statesCopy;
  selfCopy = self;
  v11 = statesCopy;
  dispatch_async(dispatchQueue, v12);
}

@end