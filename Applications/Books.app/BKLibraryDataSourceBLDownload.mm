@interface BKLibraryDataSourceBLDownload
- (BKLibraryDataSourceBLDownload)init;
- (BKLibraryDataSourcePlistWriting)iTunesSyncedBooksPlistCleaner;
- (BKLibraryManager)libraryManager;
- (id)_createDownloadStatusForReportingAsset:(id)asset downloadingAsset:(id)downloadingAsset;
- (id)_reportingAssetsForDownloadingAsset:(id)asset includeUntrackedParent:(BOOL)parent;
- (id)_updateDownloadingAssetAndCreateDownloadStatuses:(id)statuses from:(id)from;
- (id)_updateDownloadingAssets:(id)assets;
- (void)_addReportingItemToCoverCache:(id)cache;
- (void)_performBlockOnAllAssetsForAssetID:(id)d block:(id)block;
- (void)_removeReportingItemFromCoverCache:(id)cache;
- (void)_reportAudiobookDownloadProgress:(id)progress;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)cancelDownloadForAssetID:(id)d;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)p_checkForInactiveQueue;
- (void)pauseDownloadForAssetID:(id)d;
- (void)reloadDownloadQueue;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)restartDownloadForAssetID:(id)d;
- (void)resumeDownloadForAssetID:(id)d;
- (void)togglePausedForAssetID:(id)d orTemporaryAssetID:(id)iD;
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
  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A07E0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, dispatchQueue, block);
}

- (id)_updateDownloadingAssets:(id)assets
{
  assetsCopy = assets;
  bk_assetIdentifier = [assetsCopy bk_assetIdentifier];
  if (![bk_assetIdentifier length])
  {
    goto LABEL_34;
  }

  downloadingAssets = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v7 = [downloadingAssets objectForKeyedSubscript:bk_assetIdentifier];

  if (v7)
  {
    v55 = v7;
    v56 = bk_assetIdentifier;
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
          title = [v13 title];
          if (title)
          {
            v15 = title;
            author = [v13 author];

            if (author)
            {
              continue;
            }
          }

          if ([v13 updateMetadata:assetsCopy])
          {
            v17 = BCBookDownloadLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v13 identifier];
              *buf = 138543362;
              v65 = identifier;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "download metadata updated identifier=%{public}@", buf, 0xCu);
            }

            libraryManager = [(BKLibraryDataSourceBLDownload *)self libraryManager];
            v61 = v13;
            v20 = [NSArray arrayWithObjects:&v61 count:1];
            [libraryManager libraryDataSource:self updatedAssets:v20];

            [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v10);
    }

    v21 = v55;
    bk_assetIdentifier = v56;
    goto LABEL_35;
  }

  if ([assetsCopy isAudiobook])
  {
    storePlaylistID = [assetsCopy storePlaylistID];
    longLongValue = [storePlaylistID longLongValue];

    if (!longLongValue)
    {
LABEL_34:
      v21 = 0;
      goto LABEL_35;
    }
  }

  v24 = [BKBLDownloadAsset alloc];
  identifier2 = [(BKLibraryDataSourceBLDownload *)self identifier];
  v21 = [(BKBLDownloadAsset *)v24 initWithBLDownloadStatus:assetsCopy dataSourceIdentifier:identifier2 isParent:0];

  downloadingAssets2 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  [downloadingAssets2 setObject:v21 forKeyedSubscript:bk_assetIdentifier];

  v27 = BCBookDownloadLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [(BKBLDownloadAsset *)v21 identifier];
    *buf = 138412290;
    v65 = identifier3;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "download new asset=%@", buf, 0xCu);
  }

  storePlaylistID2 = [assetsCopy storePlaylistID];
  longLongValue2 = [storePlaylistID2 longLongValue];

  if (!longLongValue2)
  {
    goto LABEL_33;
  }

  storePlaylistID3 = [assetsCopy storePlaylistID];
  stringValue = [storePlaylistID3 stringValue];

  assetsWithDownloadingChildAssets = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
  v34 = [assetsWithDownloadingChildAssets objectForKeyedSubscript:stringValue];

  if (!v34)
  {
    v35 = [BKBLDownloadAsset alloc];
    identifier4 = [(BKLibraryDataSourceBLDownload *)self identifier];
    v34 = [(BKBLDownloadAsset *)v35 initWithBLDownloadStatus:assetsCopy dataSourceIdentifier:identifier4 isParent:1];

    assetsWithDownloadingChildAssets2 = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
    [assetsWithDownloadingChildAssets2 setObject:v34 forKeyedSubscript:stringValue];

    v38 = BCBookDownloadLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [(BKBLDownloadAsset *)v34 identifier];
      *buf = 138412290;
      v65 = identifier5;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "created parent=%@ for tracking", buf, 0xCu);
    }
  }

  isAudiobook = [assetsCopy isAudiobook];
  v41 = isAudiobook;
  if (isAudiobook)
  {
    downloadingAssets3 = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
    [downloadingAssets3 setObject:v34 forKeyedSubscript:stringValue];

    v43 = BCBookDownloadLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      identifier6 = [(BKBLDownloadAsset *)v34 identifier];
      *buf = 138412290;
      v65 = identifier6;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "download new parent=%@", buf, 0xCu);
    }

    libraryManager2 = [(BKLibraryDataSourceBLDownload *)self libraryManager];
    v68 = v34;
    v46 = [NSArray arrayWithObjects:&v68 count:1];
    [libraryManager2 libraryDataSource:self addedAssets:v46];

    [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v34];
  }

  v47 = BCBookDownloadLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    identifier7 = [(BKBLDownloadAsset *)v34 identifier];
    [(BKBLDownloadAsset *)v21 identifier];
    v49 = v21;
    v51 = v50 = bk_assetIdentifier;
    *buf = 138412546;
    v65 = identifier7;
    v66 = 2112;
    v67 = v51;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "set parent=%@ for child=%@", buf, 0x16u);

    bk_assetIdentifier = v50;
    v21 = v49;
  }

  [(BKBLDownloadAsset *)v34 addChild:v21];
  if ((v41 & 1) == 0)
  {
LABEL_33:
    libraryManager3 = [(BKLibraryDataSourceBLDownload *)self libraryManager];
    v63 = v21;
    v53 = [NSArray arrayWithObjects:&v63 count:1];
    [libraryManager3 libraryDataSource:self addedAssets:v53];

    [(BKLibraryDataSourceBLDownload *)self _addReportingItemToCoverCache:v21];
  }

LABEL_35:

  return v21;
}

- (void)_addReportingItemToCoverCache:(id)cache
{
  cacheCopy = cache;
  thumbnailImageURL = [cacheCopy thumbnailImageURL];
  absoluteString = [thumbnailImageURL absoluteString];

  if (absoluteString)
  {
    v6 = +[BCCacheManager defaultCacheManager];
    identifier = [cacheCopy identifier];
    v15 = identifier;
    v16 = absoluteString;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v6 addURLs:v8 priority:5 quality:201 expiresAfter:10];
LABEL_7:

    goto LABEL_8;
  }

  storeID = [cacheCopy storeID];

  if (storeID)
  {
    v10 = BCBookDownloadLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      storeID2 = [cacheCopy storeID];
      *buf = 138412290;
      v14 = storeID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding fallback store ID to cover cache: %@", buf, 0xCu);
    }

    v6 = +[BCCacheManager defaultCacheManager];
    identifier = [cacheCopy storeID];
    v12 = identifier;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [v6 addProductProfileIDs:v8 priority:5];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_removeReportingItemFromCoverCache:(id)cache
{
  cacheCopy = cache;
  thumbnailImageURL = [cacheCopy thumbnailImageURL];
  absoluteString = [thumbnailImageURL absoluteString];

  if (absoluteString)
  {
    v6 = +[BCCacheManager defaultCacheManager];
    identifier = [cacheCopy identifier];
    v9 = identifier;
    v10 = absoluteString;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v6 removeURLs:v8 priority:3 quality:201];
  }
}

- (id)_reportingAssetsForDownloadingAsset:(id)asset includeUntrackedParent:(BOOL)parent
{
  assetCopy = asset;
  v7 = [[NSMutableArray alloc] initWithCapacity:2];
  parent = [assetCopy parent];
  identifier = [parent identifier];

  if (identifier)
  {
    if (parent || (-[BKLibraryDataSourceBLDownload downloadingAssets](self, "downloadingAssets"), v10 = objc_claimAutoreleasedReturnValue(), [parent identifier], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
    {
      [v7 addObject:parent];
    }
  }

  if (([assetCopy isAudiobook] & 1) == 0)
  {
    [v7 addObject:assetCopy];
  }

  return v7;
}

- (id)_updateDownloadingAssetAndCreateDownloadStatuses:(id)statuses from:(id)from
{
  statusesCopy = statuses;
  fromCopy = from;
  v8 = [[NSMutableArray alloc] initWithCapacity:2];
  v9 = [(BKLibraryDataSourceBLDownload *)self _reportingAssetsForDownloadingAsset:statusesCopy includeUntrackedParent:1];
  if ([v9 count])
  {
    if (fromCopy)
    {
      [statusesCopy setDownloadStatus:fromCopy];
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

          v15 = [(BKLibraryDataSourceBLDownload *)self _createDownloadStatusForReportingAsset:*(*(&v18 + 1) + 8 * i) downloadingAsset:statusesCopy, v18];
          [v8 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  parent = [statusesCopy parent];
  [(BKLibraryDataSourceBLDownload *)self _reportAudiobookDownloadProgress:parent];

  return v8;
}

- (id)_createDownloadStatusForReportingAsset:(id)asset downloadingAsset:(id)downloadingAsset
{
  assetCopy = asset;
  downloadingAssetCopy = downloadingAsset;
  if (assetCopy)
  {
    identifier = [assetCopy identifier];

    if (identifier)
    {
      identifier2 = [assetCopy identifier];
      bytesDownloaded = [assetCopy bytesDownloaded];
      bytesTotal = [assetCopy bytesTotal];
      children = [assetCopy children];
      v13 = [children count];

      activeChildren = [assetCopy activeChildren];
      v15 = [activeChildren count];

      [assetCopy progress];
      if (v16 >= 0.05)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.05;
      }

      downloadState = [assetCopy downloadState];
      v19 = BCBookDownloadLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (downloadState > 4)
      {
        if (downloadState <= 6)
        {
          if (downloadState == 5)
          {
            if (v20)
            {
              v33 = 138543618;
              v34 = identifier2;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f DOWNLOADED", &v33, 0x16u);
            }

            downloadState = 5;
          }

          else
          {
            if (v20)
            {
              v33 = 138543618;
              v34 = identifier2;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f PAUSED", &v33, 0x16u);
            }

            downloadState = 6;
          }

          goto LABEL_40;
        }

        if (downloadState == 7)
        {
          if (v20)
          {
            v33 = 138543618;
            v34 = identifier2;
            v35 = 2048;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f FAILED", &v33, 0x16u);
          }

          downloadState = 7;
          goto LABEL_40;
        }

        if (downloadState == 8)
        {
          if (v20)
          {
            v33 = 138543618;
            v34 = identifier2;
            v35 = 2048;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f CANCELED", &v33, 0x16u);
          }

          downloadState = 8;
          goto LABEL_40;
        }

LABEL_27:
        if (v20)
        {
          v33 = 138543874;
          v34 = identifier2;
          v35 = 2048;
          v36 = v17;
          v37 = 1024;
          LODWORD(v38) = downloadState;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "download status: asset=%{public}@ progress=%f state=%d (unexpected)", &v33, 0x1Cu);
        }

        goto LABEL_40;
      }

      switch(downloadState)
      {
        case 2:
          if (!v20)
          {
            goto LABEL_39;
          }

          v33 = 138543618;
          v34 = identifier2;
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
          v34 = identifier2;
          v35 = 2048;
          v36 = v17;
          v22 = "download status: asset=%{public}@ progress=%f WAITING";
          break;
        case 4:
          if (v20)
          {
            v33 = 138544642;
            v34 = identifier2;
            v35 = 2048;
            v36 = v17;
            v37 = 2048;
            v38 = bytesDownloaded;
            v39 = 2048;
            v40 = bytesTotal;
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
          downloadState = 4;
LABEL_40:

          if ([assetCopy isParent] && (-[BKLibraryDataSourceBLDownload downloadingAssets](self, "downloadingAssets"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v25, !v27))
          {
            v32 = [BKLibraryDownloadStatus alloc];
            identifier3 = [assetCopy identifier];
            v30 = [v32 initWithAssetID:identifier3 supplementalContentState:downloadState progressValue:objc_msgSend(assetCopy timeRemaining:"secondsRemaining") bytesDownloaded:objc_msgSend(assetCopy fileSize:{"bytesDownloaded"), objc_msgSend(assetCopy, "bytesTotal"), v17}];
          }

          else
          {
            v28 = [BKLibraryDownloadStatus alloc];
            identifier3 = [assetCopy identifier];
            v30 = [v28 initWithAssetID:identifier3 state:downloadState progressValue:objc_msgSend(assetCopy timeRemaining:"secondsRemaining") bytesDownloaded:objc_msgSend(assetCopy fileSize:{"bytesDownloaded"), objc_msgSend(assetCopy, "bytesTotal"), v17}];
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

  identifier2 = BCBookDownloadLog();
  if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
  {
    sub_100792F20(downloadingAssetCopy, assetCopy, identifier2);
  }

  v21 = 0;
LABEL_44:

  return v21;
}

- (void)_reportAudiobookDownloadProgress:(id)progress
{
  progressCopy = progress;
  if ([progressCopy isParent])
  {
    v5 = objc_alloc_init(BSUIAudioBookDownloadProgress);
    identifier = [progressCopy identifier];
    [v5 setAssetIdentifier:identifier];

    [progressCopy progress];
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

- (void)_performBlockOnAllAssetsForAssetID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  downloadingAssets = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v9 = [downloadingAssets objectForKeyedSubscript:dCopy];
  if (v9)
  {
    v10 = v9;

LABEL_4:
    parent = [v10 parent];

    if (parent)
    {
      parent2 = [v10 parent];

      v10 = parent2;
    }

    children = [v10 children];
    v15 = [children count];

    if (v15)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      activeChildren = [v10 activeChildren];
      v17 = [activeChildren countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(activeChildren);
            }

            blockCopy[2](blockCopy, *(*(&v28 + 1) + 8 * v20));
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [activeChildren countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }
    }

    else if ([v10 active])
    {
      (blockCopy)[2](blockCopy, v10);
    }

    goto LABEL_20;
  }

  assetsWithDownloadingChildAssets = [(BKLibraryDataSourceBLDownload *)self assetsWithDownloadingChildAssets];
  v10 = [assetsWithDownloadingChildAssets objectForKeyedSubscript:dCopy];

  if (v10)
  {
    goto LABEL_4;
  }

  v21 = BCBookDownloadLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_100792FE4(dCopy, v21, v22, v23, v24, v25, v26, v27);
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

  downloadingAssets = [(BKLibraryDataSourceBLDownload *)self downloadingAssets];
  v5 = [downloadingAssets count];

  if (v5)
  {
    dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A1F84;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)pauseDownloadForAssetID:(id)d
{
  dCopy = d;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pauseDownloadForAssetID:%@", buf, 0xCu);
  }

  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A22B8;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)resumeDownloadForAssetID:(id)d
{
  dCopy = d;
  v5 = BCBookDownloadLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resumeDownloadForAssetID:%@", buf, 0xCu);
  }

  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A25A8;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(dispatchQueue, v8);
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

  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A2898;
  v8[3] = &unk_100A03440;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)restartDownloadForAssetID:(id)d
{
  v3 = BCBookDownloadLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not implemented - what does this mean?  Cancel followed by a start?", v4, 2u);
  }
}

- (void)togglePausedForAssetID:(id)d orTemporaryAssetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = BCBookDownloadLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = dCopy;
    v16 = 2112;
    v17 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "togglePausedForAssetID:%@ orTemporaryAssetID:%@", buf, 0x16u);
  }

  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = iDCopy;
  }

  v10 = v9;
  if (v10)
  {
    dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A2C2C;
    v12[3] = &unk_100A03440;
    v12[4] = self;
    v13 = v10;
    dispatch_async(dispatchQueue, v12);
  }
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v6 = BCBookDownloadLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = changeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] downloadQueue:downloadStatesDidChange: %@", buf, 0xCu);
  }

  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A3238;
  v9[3] = &unk_100A03440;
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
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourceBLDownload] didCompleteWithError: %@", buf, 0xCu);
  }

  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A36FC;
  v12[3] = &unk_100A03440;
  v13 = statesCopy;
  selfCopy = self;
  v11 = statesCopy;
  dispatch_async(dispatchQueue, v12);
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A473C;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  kdebug_trace();
  v8 = +[NSMutableArray array];
  dispatchQueue = [(BKLibraryDataSourceBLDownload *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A49D4;
  v13[3] = &unk_100A04FE8;
  v14 = dsCopy;
  selfCopy = self;
  v16 = v8;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  v12 = dsCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  completionCopy = completion;
  permanentOrTemporaryAssetID = [asset permanentOrTemporaryAssetID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A4CEC;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v13 = permanentOrTemporaryAssetID;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = permanentOrTemporaryAssetID;
  dispatch_async(dispatchQueue, block);
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  permanentOrTemporaryAssetID = [asset permanentOrTemporaryAssetID];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A4E98;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v12 = permanentOrTemporaryAssetID;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = permanentOrTemporaryAssetID;
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