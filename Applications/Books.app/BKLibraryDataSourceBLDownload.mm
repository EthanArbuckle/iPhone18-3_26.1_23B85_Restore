@interface BKLibraryDataSourceBLDownload
- (BKLibraryDataSourceBLDownload)init;
- (BKLibraryDataSourcePlistWriting)iTunesSyncedBooksPlistCleaner;
- (BKLibraryManager)libraryManager;
- (id)_createDownloadStatusForReportingAsset:(id)a3 downloadingAsset:(id)a4;
- (id)_reportingAssetsForDownloadingAsset:(id)a3 includeUntrackedParent:(BOOL)a4;
- (id)_updateDownloadingAssetAndCreateDownloadStatuses:(id)a3 from:(id)a4;
- (id)_updateDownloadingAssets:(id)a3;
- (void)_addReportingItemToCoverCache:(id)a3;
- (void)_performBlockOnAllAssetsForAssetID:(id)a3 block:(id)a4;
- (void)_removeReportingItemFromCoverCache:(id)a3;
- (void)_reportAudiobookDownloadProgress:(id)a3;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)cancelDownloadForAssetID:(id)a3;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)downloadQueue:(id)a3 downloadStates:(id)a4 didCompleteWithError:(id)a5;
- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)p_checkForInactiveQueue;
- (void)pauseDownloadForAssetID:(id)a3;
- (void)reloadDownloadQueue;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)restartDownloadForAssetID:(id)a3;
- (void)resumeDownloadForAssetID:(id)a3;
- (void)togglePausedForAssetID:(id)a3 orTemporaryAssetID:(id)a4;
- (void)updateDownloadStatus;
@end

@implementation BKLibraryDataSourceBLDownload

- (BKLibraryDataSourceBLDownload)init
{
  kdebug_trace();
  v13.receiver = self;
  v13.super_class = BKLibraryDataSourceBLDownload;
  v3 = [(BKLibraryDataSourceBLDownload *)&v13 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.BKLibraryDataSourceBLDownload.dispatchQueue", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = +[BLDownloadQueue sharedInstance];
    [v7 addObserver:v3];

    v8 = objc_opt_new();
    downloadingAssets = v3->_downloadingAssets;
    v3->_downloadingAssets = v8;

    v10 = objc_opt_new();
    assetsWithDownloadingChildAssets = v3->_assetsWithDownloadingChildAssets;
    v3->_assetsWithDownloadingChildAssets = v10;
  }

  kdebug_trace();
  return v3;
}

- (void)dealloc
{
  v3 = +[BLDownloadQueue sharedInstance];
  [v3 removeObserver:self];

  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = 0;

  downloadingAssets = self->_downloadingAssets;
  self->_downloadingAssets = 0;

  assetsWithDownloadingChildAssets = self->_assetsWithDownloadingChildAssets;
  self->_assetsWithDownloadingChildAssets = 0;

  v7.receiver = self;
  v7.super_class = BKLibraryDataSourceBLDownload;
  [(BKLibraryDataSourceBLDownload *)&v7 dealloc];
}

- (void)p_checkForInactiveQueue
{
  v3 = dispatch_time(0, 5000000000);
  v4 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A07E0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (id)_updateDownloadingAssets:(id)a3
{
  v4 = a3;
  v5 = [v4 bk_assetIdentifier];
  if (![v5 length])
  {
    goto LABEL_34;
  }

  v6 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v55 = v7;
    v56 = v5;
    v8 = [(BKLibraryDataSourceBLDownload *)self _reportingAssetsForDownloadingAsset:v7];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v57 + 1) + 8 * i);
          v14 = [v13 title];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 author];

            if (v16)
            {
              continue;
            }
          }

          if ([v13 updateMetadata:v4])
          {
            v17 = BCBookDownloadLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v13 identifier];
              *buf = 138543362;
              v65 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "download metadata updated identifier=%{public}@", buf, 0xCu);
            }

            v19 = [(BKLibraryDataSourceBLDownload *)self libraryManager];
            v61 = v13;
            v20 = [NSArray arrayWithObjects:&v61 count:1];
            [v19 libraryDataSource:self updatedAssets:v20];

            [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v10);
    }

    v21 = v55;
    v5 = v56;
    goto LABEL_35;
  }

  if ([v4 isAudiobook])
  {
    v22 = [v4 storePlaylistID];
    v23 = [v22 longLongValue];

    if (!v23)
    {
LABEL_34:
      v21 = 0;
      goto LABEL_35;
    }
  }

  v24 = [BKBLDownloadAsset alloc];
  v25 = [(BKLibraryDataSourceBLDownload *)self identifier];
  v21 = [(BKBLDownloadAsset *)v24 initWithBLDownloadStatus:v4 dataSourceIdentifier:v25 isParent:0];

  v26 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  [v26 setObject:v21 forKeyedSubscript:v5];

  v27 = BCBookDownloadLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(BKBLDownloadAsset *)v21 identifier];
    *buf = 138412290;
    v65 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "download new asset=%@", buf, 0xCu);
  }

  v29 = [v4 storePlaylistID];
  v30 = [v29 longLongValue];

  if (!v30)
  {
    goto LABEL_33;
  }

  v31 = [v4 storePlaylistID];
  v32 = [v31 stringValue];

  v33 = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
  v34 = [v33 objectForKeyedSubscript:v32];

  if (!v34)
  {
    v35 = [BKBLDownloadAsset alloc];
    v36 = [(BKLibraryDataSourceBLDownload *)self identifier];
    v34 = [(BKBLDownloadAsset *)v35 initWithBLDownloadStatus:v4 dataSourceIdentifier:v36 isParent:1];

    v37 = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
    [v37 setObject:v34 forKeyedSubscript:v32];

    v38 = BCBookDownloadLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(BKBLDownloadAsset *)v34 identifier];
      *buf = 138412290;
      v65 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "created parent=%@ for tracking", buf, 0xCu);
    }
  }

  v40 = [v4 isAudiobook];
  v41 = v40;
  if (v40)
  {
    v42 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
    [v42 setObject:v34 forKeyedSubscript:v32];

    v43 = BCBookDownloadLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(BKBLDownloadAsset *)v34 identifier];
      *buf = 138412290;
      v65 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "download new parent=%@", buf, 0xCu);
    }

    v45 = [(BKLibraryDataSourceBLDownload *)self libraryManager];
    v68 = v34;
    v46 = [NSArray arrayWithObjects:&v68 count:1];
    [v45 libraryDataSource:self addedAssets:v46];

    [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v34];
  }

  v47 = BCBookDownloadLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [(BKBLDownloadAsset *)v34 identifier];
    [(BKBLDownloadAsset *)v21 identifier];
    v49 = v21;
    v51 = v50 = v5;
    *buf = 138412546;
    v65 = v48;
    v66 = 2112;
    v67 = v51;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "set parent=%@ for child=%@", buf, 0x16u);

    v5 = v50;
    v21 = v49;
  }

  [(BKBLDownloadAsset *)v34 addChild:v21];
  if ((v41 & 1) == 0)
  {
LABEL_33:
    v52 = [(BKLibraryDataSourceBLDownload *)self libraryManager];
    v63 = v21;
    v53 = [NSArray arrayWithObjects:&v63 count:1];
    [v52 libraryDataSource:self addedAssets:v53];

    [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v21];
  }

LABEL_35:

  return v21;
}

- (void)_addReportingItemToCoverCache:(id)a3
{
  v3 = a3;
  v4 = [v3 thumbnailImageURL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    v6 = +[BCCacheManager defaultCacheManager];
    v7 = [v3 identifier];
    v15 = v7;
    v16 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v6 addURLs:v8 priority:5 quality:201 expiresAfter:10];
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v3 storeID];

  if (v9)
  {
    v10 = BCBookDownloadLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 storeID];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding fallback store ID to cover cache: %@", buf, 0xCu);
    }

    v6 = +[BCCacheManager defaultCacheManager];
    v7 = [v3 storeID];
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [v6 addProductProfileIDs:v8 priority:5];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_removeReportingItemFromCoverCache:(id)a3
{
  v3 = a3;
  v4 = [v3 thumbnailImageURL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    v6 = +[BCCacheManager defaultCacheManager];
    v7 = [v3 identifier];
    v9 = v7;
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v6 removeURLs:v8 priority:3 quality:201];
  }
}

- (id)_reportingAssetsForDownloadingAsset:(id)a3 includeUntrackedParent:(BOOL)a4
{
  v6 = a3;
  v7 = [[NSMutableArray alloc] initWithCapacity:2];
  v8 = [v6 parent];
  v9 = [v8 identifier];

  if (v9)
  {
    if (a4 || (-[BKLibraryDataSourceBLDownload downloadingAssets](self, "downloadingAssets"), v10 = objc_claimAutoreleasedReturnValue(), [v8 identifier], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
    {
      [v7 addObject:v8];
    }
  }

  if (([v6 isAudiobook] & 1) == 0)
  {
    [v7 addObject:v6];
  }

  return v7;
}

- (id)_updateDownloadingAssetAndCreateDownloadStatuses:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:2];
  v9 = [(BKLibraryDataSourceBLDownload *)self _reportingAssetsForDownloadingAsset:v6 includeUntrackedParent:1];
  if ([v9 count])
  {
    if (v7)
    {
      [v6 setDownloadStatus:v7];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(BKLibraryDataSourceBLDownload *)self _createDownloadStatusForReportingAsset:*(*(&v18 + 1) + 8 * i) downloadingAsset:v6, v18];
          [v8 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = [v6 parent];
  [(BKLibraryDataSourceBLDownload *)self _reportAudiobookDownloadProgress:v16];

  return v8;
}

- (id)_createDownloadStatusForReportingAsset:(id)a3 downloadingAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 identifier];

    if (v8)
    {
      v9 = [v6 identifier];
      v10 = [v6 bytesDownloaded];
      v11 = [v6 bytesTotal];
      v12 = [v6 children];
      v13 = [v12 count];

      v14 = [v6 activeChildren];
      v15 = [v14 count];

      [v6 progress];
      if (v16 >= 0.05)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.05;
      }

      v18 = [v6 downloadState];
      v19 = BCBookDownloadLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v18 > 4)
      {
        if (v18 <= 6)
        {
          if (v18 == 5)
          {
            if (v20)
            {
              v33 = 138543618;
              v34 = v9;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f DOWNLOADED", &v33, 0x16u);
            }

            v18 = 5;
          }

          else
          {
            if (v20)
            {
              v33 = 138543618;
              v34 = v9;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f PAUSED", &v33, 0x16u);
            }

            v18 = 6;
          }

          goto LABEL_40;
        }

        if (v18 == 7)
        {
          if (v20)
          {
            v33 = 138543618;
            v34 = v9;
            v35 = 2048;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f FAILED", &v33, 0x16u);
          }

          v18 = 7;
          goto LABEL_40;
        }

        if (v18 == 8)
        {
          if (v20)
          {
            v33 = 138543618;
            v34 = v9;
            v35 = 2048;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f CANCELED", &v33, 0x16u);
          }

          v18 = 8;
          goto LABEL_40;
        }

LABEL_27:
        if (v20)
        {
          v33 = 138543874;
          v34 = v9;
          v35 = 2048;
          v36 = v17;
          v37 = 1024;
          LODWORD(v38) = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f state=%d (unexpected)", &v33, 0x1Cu);
        }

        goto LABEL_40;
      }

      switch(v18)
      {
        case 2:
          if (!v20)
          {
            goto LABEL_39;
          }

          v33 = 138543618;
          v34 = v9;
          v35 = 2048;
          v36 = v17;
          v22 = "download status: asset=%{public}@ progress=%f REQUESTED";
          break;
        case 3:
          if (!v20)
          {
            goto LABEL_39;
          }

          v33 = 138543618;
          v34 = v9;
          v35 = 2048;
          v36 = v17;
          v22 = "download status: asset=%{public}@ progress=%f WAITING";
          break;
        case 4:
          if (v20)
          {
            v33 = 138544642;
            v34 = v9;
            v35 = 2048;
            v36 = v17;
            v37 = 2048;
            v38 = v10;
            v39 = 2048;
            v40 = v11;
            v41 = 2048;
            v42 = v13;
            v43 = 2048;
            v44 = v15;
            v22 = "download status: asset=%{public}@ progress=%f bytes=%lld/%lld children=%lu active=%lu";
            v23 = v19;
            v24 = 62;
LABEL_38:
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v33, v24);
          }

LABEL_39:
          v18 = 4;
LABEL_40:

          if ([v6 isParent] && (-[BKLibraryDataSourceBLDownload downloadingAssets](self, "downloadingAssets"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v25, !v27))
          {
            v32 = [BKLibraryDownloadStatus alloc];
            v29 = [v6 identifier];
            v30 = [v32 initWithAssetID:v29 supplementalContentState:v18 progressValue:objc_msgSend(v6 timeRemaining:"secondsRemaining") bytesDownloaded:objc_msgSend(v6 fileSize:{"bytesDownloaded"), objc_msgSend(v6, "bytesTotal"), v17}];
          }

          else
          {
            v28 = [BKLibraryDownloadStatus alloc];
            v29 = [v6 identifier];
            v30 = [v28 initWithAssetID:v29 state:v18 progressValue:objc_msgSend(v6 timeRemaining:"secondsRemaining") bytesDownloaded:objc_msgSend(v6 fileSize:{"bytesDownloaded"), objc_msgSend(v6, "bytesTotal"), v17}];
          }

          v21 = v30;

          goto LABEL_44;
        default:
          goto LABEL_27;
      }

      v23 = v19;
      v24 = 22;
      goto LABEL_38;
    }
  }

  v9 = BCBookDownloadLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100792F20(v7, v6, v9);
  }

  v21 = 0;
LABEL_44:

  return v21;
}

- (void)_reportAudiobookDownloadProgress:(id)a3
{
  v4 = a3;
  if ([v4 isParent])
  {
    v5 = objc_alloc_init(BSUIAudioBookDownloadProgress);
    v6 = [v4 identifier];
    [v5 setAssetIdentifier:v6];

    [v4 progress];
    v7 = [NSNumber numberWithFloat:?];
    [v5 setProgress:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = BSUIAudioBookDownloadStatusNotification;
    v11 = BSUIAudioBookDownloadProgressKey;
    v12 = v5;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v8 postNotificationName:v9 object:self userInfo:v10];
  }
}

- (void)_performBlockOnAllAssetsForAssetID:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v9 = [v8 objectForKeyedSubscript:v6];
  if (v9)
  {
    v10 = v9;

LABEL_4:
    v12 = [v10 parent];

    if (v12)
    {
      v13 = [v10 parent];

      v10 = v13;
    }

    v14 = [v10 children];
    v15 = [v14 count];

    if (v15)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = [v10 activeChildren];
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          v20 = 0;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v7[2](v7, *(*(&v28 + 1) + 8 * v20));
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }
    }

    else if ([v10 active])
    {
      (v7)[2](v7, v10);
    }

    goto LABEL_20;
  }

  v11 = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
  v10 = [v11 objectForKeyedSubscript:v6];

  if (v10)
  {
    goto LABEL_4;
  }

  v21 = BCBookDownloadLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100792FE4(v6, v21, v22, v23, v24, v25, v26, v27);
  }

  v10 = 0;
LABEL_20:
}

- (void)updateDownloadStatus
{
  v3 = BCBookDownloadLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100793050(v3);
  }

  v4 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A1F84;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (void)pauseDownloadForAssetID:(id)a3
{
  v4 = a3;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pauseDownloadForAssetID:%@", buf, 0xCu);
  }

  v6 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A22B8;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)resumeDownloadForAssetID:(id)a3
{
  v4 = a3;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resumeDownloadForAssetID:%@", buf, 0xCu);
  }

  v6 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A25A8;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
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

  v6 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A2898;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)restartDownloadForAssetID:(id)a3
{
  v3 = BCBookDownloadLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not implemented - what does this mean?  Cancel followed by a start?", v4, 2u);
  }
}

- (void)togglePausedForAssetID:(id)a3 orTemporaryAssetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCBookDownloadLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "togglePausedForAssetID:%@ orTemporaryAssetID:%@", buf, 0x16u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  if (v10)
  {
    v11 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A2C2C;
    v12[3] = &unk_100A03440;
    v12[4] = self;
    v13 = v10;
    dispatch_async(v11, v12);
  }
}

- (void)downloadQueue:(id)a3 downloadStatesDidChange:(id)a4
{
  v5 = a4;
  v6 = BCBookDownloadLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] downloadQueue:downloadStatesDidChange: %@", buf, 0xCu);
  }

  v7 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A3238;
  v9[3] = &unk_100A03440;
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
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] didCompleteWithError: %@", buf, 0xCu);
  }

  v10 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A36FC;
  v12[3] = &unk_100A03440;
  v13 = v7;
  v14 = self;
  v11 = v7;
  dispatch_async(v10, v12);
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A473C;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = +[NSMutableArray array];
  v9 = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A49D4;
  v13[3] = &unk_100A04FE8;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(v9, v13);
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [a3 permanentOrTemporaryAssetID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A4CEC;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 permanentOrTemporaryAssetID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A4E98;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

- (void)reloadDownloadQueue
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  if (v5 - self->_lastDownloadQueueReload <= 14400.0)
  {
    v7 = BCBookDownloadLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suppressing reloadFromServer due to time clamp", v8, 2u);
    }
  }

  else
  {
    self->_lastDownloadQueueReload = v5;
    v6 = BCBookDownloadLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggering reloadFromServer", buf, 2u);
    }

    v7 = +[BLDownloadQueue sharedInstance];
    [v7 reloadFromServerWithCompletion:&stru_100A0A240];
  }
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BKLibraryDataSourcePlistWriting)iTunesSyncedBooksPlistCleaner
{
  WeakRetained = objc_loadWeakRetained(&self->_iTunesSyncedBooksPlistCleaner);

  return WeakRetained;
}

@end