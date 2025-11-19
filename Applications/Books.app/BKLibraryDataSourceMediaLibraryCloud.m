@interface BKLibraryDataSourceMediaLibraryCloud
+ (id)cloudAudiobooksDataSource;
- (BKLibraryDataSourceMediaLibraryCloud)initWithIdentifier:(id)a3;
- (BKLibraryManager)libraryManager;
- (void)_addAssetIDsToCacheManager:(id)a3;
- (void)_purchaseSucceeded:(id)a3;
- (void)_removeAssetIDsFromCacheManager:(id)a3;
- (void)accountControllerDidAttemptToRedeemCode:(id)a3;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)fetchReadyPurchaseItemStoreIDs:(id)a3 completion:(id)a4;
- (void)mediaLibraryCacheAddedBookletAssets:(id)a3 removedBookletAssets:(id)a4;
- (void)mediaLibraryCacheAddedCloudAssets:(id)a3 updatedCloudAssets:(id)a4 removedCloudAssets:(id)a5;
- (void)mediaLibraryCacheRequestsReload:(id)a3;
- (void)mostRecentPurchaseDate:(id)a3;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)updatePurchaseItemsWithCompletion:(id)a3;
@end

@implementation BKLibraryDataSourceMediaLibraryCloud

+ (id)cloudAudiobooksDataSource
{
  v2 = [[BKLibraryDataSourceMediaLibraryCloud alloc] initWithIdentifier:@"com.apple.ibooks.datasource.audiobooks.cloud"];

  return v2;
}

- (BKLibraryDataSourceMediaLibraryCloud)initWithIdentifier:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100790580(v4, v5);
  }

  v14.receiver = self;
  v14.super_class = BKLibraryDataSourceMediaLibraryCloud;
  v6 = [(BKLibraryDataSourceMediaLibraryCloud *)&v14 init];
  if (v6)
  {
    v7 = [v4 copy];
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

- (void)mostRecentPurchaseDate:(id)a3
{
  v4 = a3;
  +[BCStopWatch stopwatch];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193F20;
  v7[3] = &unk_100A05E40;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [(BKLibraryDataSourceMediaLibraryCloud *)self fetchAssetIDsWithCompletion:v7];
}

- (void)mediaLibraryCacheRequestsReload:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
  [v5 reloadDataSource:self completion:v4];
}

- (void)mediaLibraryCacheAddedCloudAssets:(id)a3 updatedCloudAssets:(id)a4 removedCloudAssets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v19 = [v8 count];
    v20 = 2048;
    v21 = [v10 count];
    v22 = 2048;
    v23 = [v9 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cloud library changed adding %lu, removing %lu, updating %lu audiobooks.", &v18, 0x20u);
  }

  if ([v10 count])
  {
    v12 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [v12 libraryDataSource:self removedAssets:v10];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _removeAssetIDsFromCacheManager:v10];
  }

  if ([v8 count])
  {
    v13 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [v13 libraryDataSource:self addedAssets:v8];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _addAssetIDsToCacheManager:v8];
  }

  if ([v9 count])
  {
    v14 = +[BCCacheManager defaultCacheManager];
    v15 = [v9 valueForKey:@"assetID"];
    v16 = [NSSet setWithArray:v15];
    [v14 incrementVersionForIdentifiers:v16];

    v17 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [v17 libraryDataSource:self updatedAssets:v9];
  }
}

- (void)mediaLibraryCacheAddedBookletAssets:(id)a3 removedBookletAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = [v6 count];
    v13 = 2048;
    v14 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud library changed adding %lu, removing %lu booklets.", &v11, 0x16u);
  }

  if ([v7 count])
  {
    v9 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [v9 libraryDataSource:self removedAssets:v7];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _removeAssetIDsFromCacheManager:v7];
  }

  if ([v6 count])
  {
    v10 = [(BKLibraryDataSourceMediaLibraryCloud *)self libraryManager];
    [v10 libraryDataSource:self addedAssets:v6];

    [(BKLibraryDataSourceMediaLibraryCloud *)self _addAssetIDsToCacheManager:v6];
  }
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [v5 fetchAssetIDsOfType:1 includeBooklets:1 completion:v4];
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001947D4;
  v10[3] = &unk_100A05E68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchAssetsWithIDs:v7 type:1 includeBooklets:1 completion:v10];
}

- (void)fetchAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [v5 fetchAssetsOfType:1 includeBooklets:1 completion:v4];
}

- (void)_addAssetIDsToCacheManager:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [v11 assetID];
        if (v12)
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

- (void)_removeAssetIDsFromCacheManager:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [v11 assetID];
        if (v12)
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

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [v9 bookCoverForLibraryAssetProperties:v8 type:1 completion:v7];
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100792A30();
  }

  v12 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100194E70;
  v16[3] = &unk_100A09CE8;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  [v12 assetForLibraryAsset:v15 type:1 completion:v16];
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryDataSourceMediaLibraryCloud *)self mediaLibraryCache];
  [v8 assetForLibraryAsset:v7 type:1 completion:v6];
}

- (void)_purchaseSucceeded:(id)a3
{
  v3 = [a3 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:BLDownloadQueuePropertyIsPurchase];
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

- (void)accountControllerDidAttemptToRedeemCode:(id)a3
{
  v3 = +[MPCloudController sharedCloudController];
  [v3 updateJaliscoMediaLibraryWithReason:1 completionHandler:&stru_100A09D28];
}

- (void)fetchReadyPurchaseItemStoreIDs:(id)a3 completion:(id)a4
{
  v5 = a3;
  v16 = a4;
  v6 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
  v18 = v16;
  v15 = v16;
  [BKMusicLibraryUtilities storeIDsWithNonEmptyPurchasedToken:v6 completion:v17];
}

- (void)updatePurchaseItemsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MPCloudController sharedCloudController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100195CA8;
  v6[3] = &unk_100A03CA0;
  v7 = v3;
  v5 = v3;
  [v4 updateJaliscoMediaLibraryWithReason:1 completionHandler:v6];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end