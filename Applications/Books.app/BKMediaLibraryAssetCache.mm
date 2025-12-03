@interface BKMediaLibraryAssetCache
- (BKMediaLibraryAssetCache)initWithDataSourceIdentifier:(id)identifier;
- (NSArray)cachedAssetIDs;
- (NSArray)cachedAssets;
- (id)assetFromAssetID:(id)d;
- (id)assetFromCacheID:(id)d;
- (id)assetsFromAssetIDs:(id)ds;
- (id)description;
- (id)mutableCacheIDSet;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)cacheAsset:(id)asset cacheID:(id)d;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchBookCoverForAssetProperties:(id)properties completion:(id)completion;
- (void)uncacheAllAssets;
- (void)uncacheAsset:(id)asset cacheID:(id)d;
@end

@implementation BKMediaLibraryAssetCache

- (void)uncacheAllAssets
{
  assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  [assetCacheByAssetID removeAllObjects];

  assetCacheByCacheID = [(BKMediaLibraryAssetCache *)self assetCacheByCacheID];
  [assetCacheByCacheID removeAllObjects];
}

- (id)mutableCacheIDSet
{
  assetCacheByCacheID = [(BKMediaLibraryAssetCache *)self assetCacheByCacheID];
  allKeys = [assetCacheByCacheID allKeys];
  v4 = [NSMutableSet setWithArray:allKeys];

  return v4;
}

- (BKMediaLibraryAssetCache)initWithDataSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BKMediaLibraryAssetCache;
  v5 = [(BKMediaLibraryAssetCache *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    dataSourceIdentifier = v5->_dataSourceIdentifier;
    v5->_dataSourceIdentifier = v6;

    v8 = objc_opt_new();
    assetCacheByAssetID = v5->_assetCacheByAssetID;
    v5->_assetCacheByAssetID = v8;

    v10 = objc_opt_new();
    assetCacheByCacheID = v5->_assetCacheByCacheID;
    v5->_assetCacheByCacheID = v10;
  }

  return v5;
}

- (NSArray)cachedAssets
{
  assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  allValues = [assetCacheByAssetID allValues];

  return allValues;
}

- (NSArray)cachedAssetIDs
{
  assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  allKeys = [assetCacheByAssetID allKeys];

  return allKeys;
}

- (id)assetFromCacheID:(id)d
{
  dCopy = d;
  assetCacheByCacheID = [(BKMediaLibraryAssetCache *)self assetCacheByCacheID];
  v6 = [assetCacheByCacheID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)assetFromAssetID:(id)d
{
  dCopy = d;
  assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  v6 = [assetCacheByAssetID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)assetsFromAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
        v13 = [assetCacheByAssetID objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)cacheAsset:(id)asset cacheID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  assetID = [assetCopy assetID];

  if (assetID)
  {
    assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
    assetID2 = [assetCopy assetID];
    [assetCacheByAssetID setObject:assetCopy forKeyedSubscript:assetID2];
  }

  assetCacheByCacheID = [(BKMediaLibraryAssetCache *)self assetCacheByCacheID];
  [assetCacheByCacheID setObject:assetCopy forKeyedSubscript:dCopy];
}

- (void)uncacheAsset:(id)asset cacheID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  assetID = [assetCopy assetID];

  if (assetID)
  {
    assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
    assetID2 = [assetCopy assetID];
    [assetCacheByAssetID setObject:0 forKeyedSubscript:assetID2];
  }

  assetCacheByCacheID = [(BKMediaLibraryAssetCache *)self assetCacheByCacheID];
  [assetCacheByCacheID setObject:0 forKeyedSubscript:dCopy];
}

- (void)fetchBookCoverForAssetProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  v7 = [properties objectForKey:@"assetID"];
  if ([v7 length])
  {
    v8 = [(BKMediaLibraryAssetCache *)self assetFromAssetID:v7];
    v9 = v8;
    if (v8)
    {
      representativeItem = [v8 representativeItem];
      artworkCatalog = [representativeItem artworkCatalog];

      if (artworkCatalog)
      {
        [artworkCatalog setFittingSize:{1.79769313e308, 1.79769313e308}];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10011C0E0;
        v29[3] = &unk_100A05BB8;
        v30 = v7;
        v31 = completionCopy;
        [artworkCatalog requestImageWithCompletion:v29];

        v12 = v30;
      }

      else
      {
        v21 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100790304(v7, v21, v22, v23, v24, v25, v26, v27);
        }

        v28 = objc_retainBlock(completionCopy);
        v12 = v28;
        if (v28)
        {
          (*(v28 + 2))(v28, 0, 0, 0);
        }
      }
    }

    else
    {
      v14 = BKLibraryDataSourceMediaLibraryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100790370(v7, v14, v15, v16, v17, v18, v19, v20);
      }

      artworkCatalog = objc_retainBlock(completionCopy);
      if (!artworkCatalog)
      {
        goto LABEL_16;
      }

      v12 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
      (artworkCatalog)[2](artworkCatalog, 0, 0, v12);
    }

LABEL_16:
    goto LABEL_17;
  }

  v13 = objc_retainBlock(completionCopy);
  v9 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 0, 0, 0);
  }

LABEL_17:
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  completionCopy = completion;
  assetsCopy = assets;
  v9 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10079044C(v9);
  }

  v10 = +[NSMutableArray array];
  v11 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [assetsCopy count]);
  +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [assetsCopy count]);
  v42 = _NSConcreteStackBlock;
  v43 = 3221225472;
  v44 = sub_10011C520;
  v45 = &unk_100A038A0;
  v12 = v46 = self;
  v47 = v12;
  v13 = v10;
  v48 = v13;
  v14 = v11;
  v49 = v14;
  [assetsCopy enumerateObjectsUsingBlock:&v42];

  if ([v13 count])
  {
    if ([v12 count])
    {
      v15 = +[MPMediaQuery bk_audiobooksQuery];
      [v15 setIgnoreSystemFilterPredicates:1];
      if (v15)
      {
        allObjects = [v12 allObjects];
        v17 = [MPMediaPropertyPredicate predicateWithValue:allObjects forProperty:MPMediaItemPropertyStorePlaylistID comparisonType:108];

        [v15 addFilterPredicate:v17];
        v18 = +[MPMediaLibrary defaultMediaLibrary];
        items = [v15 items];
        v20 = [v18 removeItems:items];

        v21 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_100790490(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    if ([v14 count])
    {
      v28 = +[MPMediaQuery bk_audiobooksQuery];
      [v28 setIgnoreSystemFilterPredicates:1];
      if (v28)
      {
        allObjects2 = [v14 allObjects];
        v30 = [MPMediaPropertyPredicate predicateWithValue:allObjects2 forProperty:MPMediaItemPropertyAlbumPersistentID comparisonType:108];

        [v28 addFilterPredicate:v30];
        v31 = +[MPMediaLibrary defaultMediaLibrary];
        items2 = [v28 items];
        v20 = [v31 removeItems:items2];

        v33 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_100790490(v20, v33, v34, v35, v36, v37, v38, v39);
        }
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v40 = objc_retainBlock(completionCopy);
  v41 = v40;
  if (v40)
  {
    (*(v40 + 2))(v40, v20, v13, 0);
  }
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if ([assetCopy length])
  {
    v8 = [(BKMediaLibraryAssetCache *)self assetFromAssetID:assetCopy];
    v9 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      representativeItem = [v8 representativeItem];
      v11 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];
      v14 = 138412802;
      v15 = assetCopy;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "assetForLibraryAsset:completion:, (asset.assetID = %@) calling completion with asset:%@, albumPersistentID: %@", &v14, 0x20u);
    }

    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v12[2](v12, v8, 0);
    }

    goto LABEL_10;
  }

  v13 = BKLibraryDataSourceMediaLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = assetCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "assetForLibraryAsset:completion:, (asset.assetID = %@) calling completion with nil asset", &v14, 0xCu);
  }

  v8 = objc_retainBlock(completionCopy);
  if (v8)
  {
    v12 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
    v8[2](v8, 0, v12);
LABEL_10:
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  dataSourceIdentifier = [(BKMediaLibraryAssetCache *)self dataSourceIdentifier];
  assetCacheByAssetID = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  allKeys = [assetCacheByAssetID allKeys];
  assetCacheByAssetID2 = [(BKMediaLibraryAssetCache *)self assetCacheByAssetID];
  allValues = [assetCacheByAssetID2 allValues];
  v10 = [NSString stringWithFormat:@"<%@(%p) dataSourceIdentifier=%@ cachedAssetIDs=%@ cachedAssets=%@>", v4, self, dataSourceIdentifier, allKeys, allValues];

  return v10;
}

@end