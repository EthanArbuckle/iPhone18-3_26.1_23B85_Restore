@interface BKLibraryDataSourceMediaLibraryLocal
+ (id)localAudiobooksDataSource;
- (BKLibraryDataSourceMediaLibraryLocal)initWithIdentifier:(id)a3;
- (BKLibraryManager)libraryManager;
- (void)_addAssetIDsToCacheManager:(id)a3;
- (void)_removeAssetIDsFromCacheManager:(id)a3;
- (void)assetAccountIdentifiersForAssetID:(id)a3 storeID:(id)a4 path:(id)a5 completion:(id)a6;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)mediaLibraryCacheAddedLocalAssets:(id)a3 updatedLocalAssets:(id)a4 removedLocalAssets:(id)a5;
- (void)mediaLibraryCacheRequestsReload:(id)a3;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSourceMediaLibraryLocal

+ (id)localAudiobooksDataSource
{
  v2 = [[BKLibraryDataSourceMediaLibraryLocal alloc] initWithIdentifier:@"com.apple.ibooks.datasource.audiobooks"];

  return v2;
}

- (BKLibraryDataSourceMediaLibraryLocal)initWithIdentifier:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100790580(v4, v5);
  }

  v12.receiver = self;
  v12.super_class = BKLibraryDataSourceMediaLibraryLocal;
  v6 = [(BKLibraryDataSourceMediaLibraryLocal *)&v12 init];
  if (v6)
  {
    v7 = [v4 copy];
    dataSourceIdentifier = v6->_dataSourceIdentifier;
    v6->_dataSourceIdentifier = v7;

    v9 = +[BKMediaLibraryCache sharedCache];
    mediaLibraryCache = v6->_mediaLibraryCache;
    v6->_mediaLibraryCache = v9;

    [(BKMediaLibraryCache *)v6->_mediaLibraryCache addObserver:v6];
  }

  kdebug_trace();

  return v6;
}

- (void)dealloc
{
  v3 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1007905F8(v3);
  }

  v4.receiver = self;
  v4.super_class = BKLibraryDataSourceMediaLibraryLocal;
  [(BKLibraryDataSourceMediaLibraryLocal *)&v4 dealloc];
}

- (void)mediaLibraryCacheRequestsReload:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
  [v5 reloadDataSource:self completion:v4];
}

- (void)mediaLibraryCacheAddedLocalAssets:(id)a3 updatedLocalAssets:(id)a4 removedLocalAssets:(id)a5
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
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local library changed adding %lu, removing %lu, updating %lu.", &v18, 0x20u);
  }

  if ([v10 count])
  {
    v12 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [v12 libraryDataSource:self removedAssets:v10];

    [(BKLibraryDataSourceMediaLibraryLocal *)self _removeAssetIDsFromCacheManager:v10];
  }

  if ([v8 count])
  {
    v13 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [v13 libraryDataSource:self addedAssets:v8];

    [(BKLibraryDataSourceMediaLibraryLocal *)self _addAssetIDsToCacheManager:v8];
  }

  if ([v9 count])
  {
    v14 = +[BCCacheManager defaultCacheManager];
    v15 = [v9 valueForKey:@"assetID"];
    v16 = [NSSet setWithArray:v15];
    [v14 incrementVersionForIdentifiers:v16];

    v17 = [(BKLibraryDataSourceMediaLibraryLocal *)self libraryManager];
    [v17 libraryDataSource:self updatedAssets:v9];
  }
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [v5 fetchAssetIDsOfType:0 completion:v4];
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011EA20;
  v10[3] = &unk_100A05E68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchAssetsWithIDs:v7 type:0 completion:v10];
}

- (void)fetchAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [v5 fetchAssetsOfType:0 completion:v4];
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
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v12 dataSourceID:self->_dataSourceIdentifier];
        v14 = [v11 assetID];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 addURLs:v5 priority:3 quality:206 expiresAfter:0];
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
        v13 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v12 dataSourceID:self->_dataSourceIdentifier];
        v14 = [v11 assetID];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = +[BCCacheManager defaultCacheManager];
    [v15 removeURLs:v5 priority:3 quality:206];
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [v9 bookCoverForLibraryAssetProperties:v8 type:0 completion:v7];
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v8 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleting %lu media library assets", buf, 0xCu);
  }

  v11 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011F054;
  v13[3] = &unk_100A07DF0;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 deleteAssets:v8 type:0 exhaustive:v6 completion:v13];
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryDataSourceMediaLibraryLocal *)self mediaLibraryCache];
  [v8 assetForLibraryAsset:v7 type:0 completion:v6];
}

- (void)assetAccountIdentifiersForAssetID:(id)a3 storeID:(id)a4 path:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a6;
  if ([v7 length])
  {
    v9 = +[MPMediaQuery bk_audiobooksQuery];
    if (v9 && [v7 length])
    {
      v10 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:MPMediaItemPropertyStorePlaylistID];
      v11 = [MPMediaPropertyPredicate predicateWithValue:v7 forProperty:MPMediaItemPropertyStoreID];
      v59[0] = v10;
      v59[1] = v11;
      v12 = [NSArray arrayWithObjects:v59 count:2];
      v13 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v12];
      [v9 addFilterPredicate:v13];

      [v9 setGroupingType:1];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v9 collections];
      v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v48)
      {
        v39 = v11;
        v40 = v10;
        v41 = v9;
        v42 = v8;
        v47 = *v54;
        v46 = MPMediaItemPropertyStoreAccountID;
        v45 = MPMediaItemPropertyStoreDownloaderAccountID;
        v44 = MPMediaItemPropertyStoreFamilyAccountID;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v54 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v16 = [v15 items];
            v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
LABEL_11:
              v20 = 0;
              while (1)
              {
                if (*v50 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v49 + 1) + 8 * v20);
                v22 = [v21 bk_storeID];
                v23 = [v22 stringValue];
                v24 = [v7 isEqualToString:v23];

                if (v24)
                {
                  break;
                }

                if (v18 == ++v20)
                {
                  v18 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
                  if (v18)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_17;
                }
              }

              objc_opt_class();
              v25 = [v21 valueForProperty:v46];
              v26 = BUDynamicCast();

              objc_opt_class();
              v27 = [v21 valueForProperty:v45];
              v28 = BUDynamicCast();

              objc_opt_class();
              v29 = [v21 valueForProperty:v44];
              v30 = BUDynamicCast();

              v31 = objc_opt_new();
              v32 = [v26 bkdsml_nonZeroString];
              [v31 setPurchasedDSID:v32];

              v33 = [v28 bkdsml_nonZeroString];
              [v31 setDownloadedDSID:v33];

              v34 = [v30 bkdsml_nonZeroString];
              [v31 setFamilyID:v34];

              if (v31)
              {
                goto LABEL_22;
              }
            }

            else
            {
LABEL_17:
            }
          }

          v48 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v48);
        v31 = 0;
LABEL_22:
        v9 = v41;
        v8 = v42;
        v11 = v39;
        v10 = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v37 = objc_retainBlock(v8);
    v38 = v37;
    if (v37)
    {
      (*(v37 + 2))(v37, v31, 0);
    }
  }

  else
  {
    v35 = objc_retainBlock(v8);
    v36 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35, 0, 0);
    }
  }
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end