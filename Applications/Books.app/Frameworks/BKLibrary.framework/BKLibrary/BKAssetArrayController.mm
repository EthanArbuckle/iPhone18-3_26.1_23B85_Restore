@interface BKAssetArrayController
- (BOOL)_filterAsset:(id)asset;
- (id)arrangeObjects:(id)objects;
@end

@implementation BKAssetArrayController

- (BOOL)_filterAsset:(id)asset
{
  filter = self->_filter;
  if (filter)
  {
    return filter[2](filter, asset);
  }

  else
  {
    return 1;
  }
}

- (id)arrangeObjects:(id)objects
{
  objectsCopy = objects;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_filter)
  {
    v5 = +[NSMutableArray array];
    v6 = +[BKLibraryManager defaultManager];
    uiChildContext = [v6 uiChildContext];
    v8 = [v6 libraryAssetsWithAssetIDsContainedInList:objectsCopy tempAssetIDs:0 inManagedObjectContext:uiChildContext];

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
            assetID = [v14 assetID];
            [v5 addObject:assetID];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v5 = objectsCopy;
  }

  return v5;
}

@end