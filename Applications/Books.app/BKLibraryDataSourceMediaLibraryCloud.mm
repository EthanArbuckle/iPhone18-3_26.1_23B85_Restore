@interface BKLibraryDataSourceMediaLibraryCloud
+ (id)cloudAudiobooksDataSource;
- (BKLibraryDataSourceMediaLibraryCloud)initWithIdentifier:(id)identifier;
- (BKLibraryManager)libraryManager;
- (void)_addAssetIDsToCacheManager:(id)manager;
- (void)_purchaseSucceeded:(id)succeeded;
- (void)_removeAssetIDsFromCacheManager:(id)manager;
- (void)accountControllerDidAttemptToRedeemCode:(id)code;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)fetchReadyPurchaseItemStoreIDs:(id)ds completion:(id)completion;
- (void)mediaLibraryCacheAddedBookletAssets:(id)assets removedBookletAssets:(id)bookletAssets;
- (void)mediaLibraryCacheAddedCloudAssets:(id)assets updatedCloudAssets:(id)cloudAssets removedCloudAssets:(id)removedCloudAssets;
- (void)mediaLibraryCacheRequestsReload:(id)reload;
- (void)mostRecentPurchaseDate:(id)date;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)updatePurchaseItemsWithCompletion:(id)completion;
@end

@implementation BKLibraryDataSourceMediaLibraryCloud

+ (id)cloudAudiobooksDataSource
{
  v2 = [[BKLibraryDataSourceMediaLibraryCloud alloc] initWithIdentifier:@"com.apple.ibooks.datasource.audiobooks.cloud"];

  return v2;
}

- (BKLibraryDataSourceMediaLibraryCloud)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kdebug_trace();
  v5 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100790580(identifierCopy, v5);
  }

  v14.receiver = self;
  v14.super_class = BKLibraryDataSourceMediaLibraryCloud;
  v6 = [(BKLibraryDataSourceMediaLibraryCloud *)&v14 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    dataSourceIdentifier = v6->_dataSourceIdentifier;
    v6->_dataSourceIdentifier = v7;

    v9 = +[BKMediaLibraryCache sharedCache];
    mediaLibraryCache = v6->_mediaLibraryCache;
    v6->_mediaLibraryCache = v9;

    [(BKMediaLibraryCache *)v6->_mediaLibraryCache addObserver:v6];
    v11 = +[JSAAccountController sharedController];
    [v11 addObserver:v6];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_purchaseSucceeded:" name:BLDownloadQueuePurchaseSucceededNotification object:0];
  }

  kdebug_trace();

  return v6;
}

- (void)dealloc
{
  v3 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1007929F0();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BLDownloadQueuePurchaseSucceededNotification object:0];

  v5.receiver = self;
  v5.super_class = BKLibraryDataSourceMediaLibraryCloud;
  [(BKLibraryDataSourceMediaLibraryCloud *)&v5 dealloc];
}

- (void)mostRecentPurchaseDate:(id)date
{
  dateCopy = date;
  +[BCStopWatch stopwatch];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193F20;
  v7[3] = &unk_100A05E40;
  v8 = v7[4] = self;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = v8;
  [(BKLibraryDataSourceMediaLibraryCloud *)self fetchAssetIDsWithCompletion:v7];
}

- (void)mediaLibraryCacheRequestsReload:(id)reload
{
  reloadCopy = reload;
  libraryManager = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
  [libraryManager reloadDataSource:self completion:reloadCopy];
}

- (void)mediaLibraryCacheAddedCloudAssets:(id)assets updatedCloudAssets:(id)cloudAssets removedCloudAssets:(id)removedCloudAssets
{
  assetsCopy = assets;
  cloudAssetsCopy = cloudAssets;
  removedCloudAssetsCopy = removedCloudAssets;
  v11 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v19 = [assetsCopy count];
    v20 = 2048;
    v21 = [removedCloudAssetsCopy count];
    v22 = 2048;
    v23 = [cloudAssetsCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cloud library changed adding %lu, removing %lu, updating %lu audiobooks.", &v18, 0x20u);
  }

  if ([removedCloudAssetsCopy count])
  {
    libraryManager = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [libraryManager libraryDataSource:self removedAssets:removedCloudAssetsCopy];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _removeAssetIDsFromCacheManager:removedCloudAssetsCopy];
  }

  if ([assetsCopy count])
  {
    libraryManager2 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [libraryManager2 libraryDataSource:self addedAssets:assetsCopy];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _addAssetIDsToCacheManager:assetsCopy];
  }

  if ([cloudAssetsCopy count])
  {
    v14 = +[BCCacheManager defaultCacheManager];
    v15 = [cloudAssetsCopy valueForKey:@"assetID"];
    v16 = [NSSet setWithArray:v15];
    [v14 incrementVersionForIdentifiers:v16];

    libraryManager3 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [libraryManager3 libraryDataSource:self updatedAssets:cloudAssetsCopy];
  }
}

- (void)mediaLibraryCacheAddedBookletAssets:(id)assets removedBookletAssets:(id)bookletAssets
{
  assetsCopy = assets;
  bookletAssetsCopy = bookletAssets;
  v8 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = [assetsCopy count];
    v13 = 2048;
    v14 = [bookletAssetsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud library changed adding %lu, removing %lu booklets.", &v11, 0x16u);
  }

  if ([bookletAssetsCopy count])
  {
    libraryManager = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [libraryManager libraryDataSource:self removedAssets:bookletAssetsCopy];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _removeAssetIDsFromCacheManager:bookletAssetsCopy];
  }

  if ([assetsCopy count])
  {
    libraryManager2 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [libraryManager2 libraryDataSource:self addedAssets:assetsCopy];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _addAssetIDsToCacheManager:assetsCopy];
  }
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [mediaLibraryCache fetchAssetIDsOfType:1 includeBooklets:1 completion:completionCopy];
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001947D4;
  v10[3] = &unk_100A05E68;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [mediaLibraryCache fetchAssetsWithIDs:dsCopy type:1 includeBooklets:1 completion:v10];
}

- (void)fetchAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [mediaLibraryCache fetchAssetsOfType:1 includeBooklets:1 completion:completionCopy];
}

- (void)_addAssetIDsToCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = managerCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        assetID = [v11 assetID];
        if (assetID)
        {
          [v11 assetID];
        }

        else
        {
          [v11 temporaryAssetID];
        }
        v13 = ;

        v14 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v13 dataSourceID:self->_dataSourceIdentifier];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 addURLs:v5 priority:3 quality:202 expiresAfter:0];
  }
}

- (void)_removeAssetIDsFromCacheManager:(id)manager
{
  managerCopy = manager;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = managerCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        assetID = [v11 assetID];
        if (assetID)
        {
          [v11 assetID];
        }

        else
        {
          [v11 temporaryAssetID];
        }
        v13 = ;

        v14 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v13 dataSourceID:self->_dataSourceIdentifier];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 removeURLs:v5 priority:3 quality:202];
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [mediaLibraryCache bookCoverForLibraryAssetProperties:propertiesCopy type:1 completion:completionCopy];
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  v11 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100792A30();
  }

  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100194E70;
  v16[3] = &unk_100A09CE8;
  v17 = assetCopy;
  selfCopy = self;
  v19 = optionsCopy;
  v20 = completionCopy;
  v13 = optionsCopy;
  v14 = completionCopy;
  v15 = assetCopy;
  [mediaLibraryCache assetForLibraryAsset:v15 type:1 completion:v16];
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  mediaLibraryCache = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [mediaLibraryCache assetForLibraryAsset:assetCopy type:1 completion:completionCopy];
}

- (void)_purchaseSucceeded:(id)succeeded
{
  userInfo = [succeeded userInfo];
  v4 = userInfo;
  if (userInfo)
  {
    v5 = [userInfo objectForKeyedSubscript:BLDownloadQueuePropertyIsPurchase];
    objc_opt_class();
    v6 = BUDynamicCast();
    if ([v6 BOOLValue])
    {
      objc_opt_class();
      v7 = [v4 objectForKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];
      v8 = BUDynamicCast();
      v9 = v8;
      v10 = &off_100A43710;
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = BKLibraryDataSourceMediaLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Purchased completed, updating media library jalisco with adamId %@", &v14, 0xCu);
      }

      v13 = +[MPCloudController sharedCloudController];
      [v13 updateJaliscoMediaLibraryWithReason:1 completionHandler:&stru_100A09D08];
    }
  }

  else
  {
    v5 = BKLibraryItemStateProviderLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100792AFC();
    }
  }
}

- (void)accountControllerDidAttemptToRedeemCode:(id)code
{
  v3 = +[MPCloudController sharedCloudController];
  [v3 updateJaliscoMediaLibraryWithReason:1 completionHandler:&stru_100A09D28];
}

- (void)fetchReadyPurchaseItemStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v6 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = BUStoreIdFromObject();
        if (v13)
        {
          v14 = [NSNumber numberWithUnsignedLongLong:v13];
          [v6 addObject:v14];
        }

        else
        {
          v14 = BKLibraryDataSourceMediaLibraryLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 141558274;
            v24 = 1752392040;
            v25 = 2112;
            v26 = v12;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "fetchReadyPurchaseItemStoreIDs - Failed to parse '%{mask.hash}@'", buf, 0x16u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100195A94;
  v17[3] = &unk_100A09D50;
  v18 = completionCopy;
  v15 = completionCopy;
  [BKMusicLibraryUtilities storeIDsWithNonEmptyPurchasedToken:v6 completion:v17];
}

- (void)updatePurchaseItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MPCloudController sharedCloudController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100195CA8;
  v6[3] = &unk_100A03CA0;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 updateJaliscoMediaLibraryWithReason:1 completionHandler:v6];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end