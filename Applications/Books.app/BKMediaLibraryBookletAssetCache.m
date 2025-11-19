@interface BKMediaLibraryBookletAssetCache
- (BKMediaLibraryBookletAssetCache)init;
- (id)allBookletAssetIDs;
- (id)allBookletAssets;
- (id)bookletAssetForAssetID:(id)a3;
- (id)bookletAssetsForParentAssetID:(id)a3;
- (id)popBookletAssetsForParentAssetID:(id)a3;
- (id)popBookletAssetsWithAssetIDs:(id)a3 forParentAssetID:(id)a4;
- (void)addBookletAsset:(id)a3;
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
  v2 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  v3 = [v2 allKeys];

  return v3;
}

- (id)allBookletAssets
{
  v2 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  v3 = [v2 allValues];

  return v3;
}

- (id)bookletAssetForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)bookletAssetsForParentAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v19 = v4;
  v6 = [v5 objectForKeyedSubscript:v4];

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
        v14 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
        v15 = [v14 objectForKeyedSubscript:v13];

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

- (void)addBookletAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
  v6 = [v4 storeID];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [v4 parentAsset];
  v8 = [v7 assetID];

  if (v8)
  {
    v9 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
    v10 = [v9 objectForKey:v8];

    if (v10)
    {
      v11 = [v4 storeID];
      [v10 addObject:v11];
    }

    else
    {
      v13 = [NSMutableSet alloc];
      v11 = [v4 storeID];
      v14 = [v13 initWithObjects:{v11, 0}];
      v15 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
      [v15 setObject:v14 forKeyedSubscript:v8];
    }
  }

  else
  {
    v12 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100789D94(v4, v12);
    }
  }
}

- (id)popBookletAssetsForParentAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 copy];

  v8 = [(BKMediaLibraryBookletAssetCache *)self popBookletAssetsWithAssetIDs:v7 forParentAssetID:v4];

  return v8;
}

- (id)popBookletAssetsWithAssetIDs:(id)a3 forParentAssetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
  v23 = v7;
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v6;
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
        v17 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
        v18 = [v17 objectForKeyedSubscript:v16];

        if (v18)
        {
          [v10 addObject:v18];
          v19 = [(BKMediaLibraryBookletAssetCache *)self bookletAssetIdToBookletAssetMapping];
          [v19 removeObjectForKey:v16];

          [v9 removeObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  if (![v9 count])
  {
    v20 = [(BKMediaLibraryBookletAssetCache *)self parentAssetIdToBookletAssetIdMapping];
    [v20 removeObjectForKey:v23];
  }

  v21 = [v10 copy];

  return v21;
}

@end