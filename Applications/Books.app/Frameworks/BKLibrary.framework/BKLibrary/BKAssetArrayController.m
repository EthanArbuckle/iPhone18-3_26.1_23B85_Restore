@interface BKAssetArrayController
- (BOOL)_filterAsset:(id)a3;
- (id)arrangeObjects:(id)a3;
@end

@implementation BKAssetArrayController

- (BOOL)_filterAsset:(id)a3
{
  filter = self->_filter;
  if (filter)
  {
    return filter[2](filter, a3);
  }

  else
  {
    return 1;
  }
}

- (id)arrangeObjects:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_filter)
  {
    v5 = +[NSMutableArray array];
    v6 = +[BKLibraryManager defaultManager];
    v7 = [v6 uiChildContext];
    v8 = [v6 libraryAssetsWithAssetIDsContainedInList:v4 tempAssetIDs:0 inManagedObjectContext:v7];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([(BKAssetArrayController *)self _filterAsset:v14, v17])
          {
            v15 = [v14 assetID];
            [v5 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end