@interface BKMediaLibraryBookletAssetCache
- (BKMediaLibraryBookletAssetCache)init;
- (id)allBookletAssetIDs;
- (id)allBookletAssets;
- (id)bookletAssetForAssetID:(id)d;
- (id)bookletAssetsForParentAssetID:(id)d;
- (id)popBookletAssetsForParentAssetID:(id)d;
- (id)popBookletAssetsWithAssetIDs:(id)ds forParentAssetID:(id)d;
- (void)addBookletAsset:(id)asset;
@end

@implementation BKMediaLibraryBookletAssetCache

- (BKMediaLibraryBookletAssetCache)init
{
  v8.receiver = self;
  v8.super_class = BKMediaLibraryBookletAssetCache;
  v2 = [(BKMediaLibraryBookletAssetCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bookletAssetIdToBookletAssetMapping = v2->_bookletAssetIdToBookletAssetMapping;
    v2->_bookletAssetIdToBookletAssetMapping = v3;

    v5 = objc_opt_new();
    parentAssetIdToBookletAssetIdMapping = v2->_parentAssetIdToBookletAssetIdMapping;
    v2->_parentAssetIdToBookletAssetIdMapping = v5;
  }

  return v2;
}

- (id)allBookletAssetIDs
{
  bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  allKeys = [bookletAssetIdToBookletAssetMapping allKeys];

  return allKeys;
}

- (id)allBookletAssets
{
  bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  allValues = [bookletAssetIdToBookletAssetMapping allValues];

  return allValues;
}

- (id)bookletAssetForAssetID:(id)d
{
  dCopy = d;
  bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  v6 = [bookletAssetIdToBookletAssetMapping objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)bookletAssetsForParentAssetID:(id)d
{
  dCopy = d;
  parentAssetIdToBookletAssetIdMapping = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v19 = dCopy;
  v6 = [parentAssetIdToBookletAssetIdMapping objectForKeyedSubscript:dCopy];

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
        v15 = [bookletAssetIdToBookletAssetMapping objectForKeyedSubscript:v13];

        if (v15)
        {
          [v7 addObject:v15];
        }

        else
        {
          v16 = BKLibraryDataSourceMediaLibraryLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v13;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find a booklet with assetID %@", buf, 0xCu);
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];

  return v17;
}

- (void)addBookletAsset:(id)asset
{
  assetCopy = asset;
  bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  storeID = [assetCopy storeID];
  [bookletAssetIdToBookletAssetMapping setObject:assetCopy forKeyedSubscript:storeID];

  parentAsset = [assetCopy parentAsset];
  assetID = [parentAsset assetID];

  if (assetID)
  {
    parentAssetIdToBookletAssetIdMapping = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
    v10 = [parentAssetIdToBookletAssetIdMapping objectForKey:assetID];

    if (v10)
    {
      storeID2 = [assetCopy storeID];
      [v10 addObject:storeID2];
    }

    else
    {
      v13 = [NSMutableSet alloc];
      storeID2 = [assetCopy storeID];
      v14 = [v13 initWithObjects:{storeID2, 0}];
      parentAssetIdToBookletAssetIdMapping2 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
      [parentAssetIdToBookletAssetIdMapping2 setObject:v14 forKeyedSubscript:assetID];
    }
  }

  else
  {
    v12 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100789D94(assetCopy, v12);
    }
  }
}

- (id)popBookletAssetsForParentAssetID:(id)d
{
  dCopy = d;
  parentAssetIdToBookletAssetIdMapping = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v6 = [parentAssetIdToBookletAssetIdMapping objectForKeyedSubscript:dCopy];
  v7 = [v6 copy];

  v8 = [(BKMediaLibraryBookletAssetCache *)self popBookletAssetsWithAssetIDs:v7 forParentAssetID:dCopy];

  return v8;
}

- (id)popBookletAssetsWithAssetIDs:(id)ds forParentAssetID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  parentAssetIdToBookletAssetIdMapping = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v23 = dCopy;
  v9 = [parentAssetIdToBookletAssetIdMapping objectForKeyedSubscript:dCopy];

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        bookletAssetIdToBookletAssetMapping = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
        v18 = [bookletAssetIdToBookletAssetMapping objectForKeyedSubscript:v16];

        if (v18)
        {
          [v10 addObject:v18];
          bookletAssetIdToBookletAssetMapping2 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
          [bookletAssetIdToBookletAssetMapping2 removeObjectForKey:v16];

          [v9 removeObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  if (![v9 count])
  {
    parentAssetIdToBookletAssetIdMapping2 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
    [parentAssetIdToBookletAssetIdMapping2 removeObjectForKey:v23];
  }

  v21 = [v10 copy];

  return v21;
}

@end