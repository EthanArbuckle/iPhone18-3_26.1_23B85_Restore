@interface BKLibraryBookshelfBooksDataSource
- (BCCloudAssetReviewManager)assetReviewManager;
- (BKLibraryBookshelfBooksDataSource)initWithSortModeProvider:(id)a3 isSeries:(BOOL)a4 providesReviewData:(BOOL)a5 providesProductInfoData:(BOOL)a6 productInfoFilter:(id)a7;
- (BKLibraryBookshelfBooksDataSourceDelegate)delegate;
- (BKLibraryBookshelfSortModeProviding)sortModeProvider;
- (BKLibraryManager)libraryManager;
- (id)assetReviewForAssetID:(id)a3;
- (id)assetReviewForAssetID:(id)a3 completion:(id)a4;
- (id)cachedResourceForAssetID:(id)a3;
- (id)currentCollection;
- (id)fetchRequest;
- (id)indexPathForRepresentedObject:(id)a3;
- (id)productInfoForAssetID:(id)a3;
- (id)representedObjectForIndexPath:(id)a3;
- (id)representedObjectsInSection:(unint64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)totalNumberOfItems;
- (void)_loadAndCacheResourcesForAssetIDs:(id)a3 audiobookAssetIDs:(id)a4 completionHandler:(id)a5;
- (void)_loadAssetData;
- (void)_loadAssetReviewData;
- (void)_loadProductInfoData;
- (void)_loadProductInfoData:(id)a3 completion:(id)a4;
- (void)_loadResourcesForAssetIDs:(NSArray *)a3 audiobookAssetIDs:(NSArray *)a4 completionHandler:(id)a5;
- (void)_mocWillSave:(id)a3;
- (void)_updateHasSeriesSequenceLabel;
- (void)clearChanges;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4;
- (void)reloadData;
- (void)resourceForAssetID:(id)a3 type:(int64_t)a4 completion:(id)a5;
@end

@implementation BKLibraryBookshelfBooksDataSource

- (BKLibraryBookshelfBooksDataSource)initWithSortModeProvider:(id)a3 isSeries:(BOOL)a4 providesReviewData:(BOOL)a5 providesProductInfoData:(BOOL)a6 productInfoFilter:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  kdebug_trace();
  v43.receiver = self;
  v43.super_class = BKLibraryBookshelfBooksDataSource;
  v14 = [(BKLibraryBookshelfBooksDataSource *)&v43 init];
  if (v14)
  {
    v15 = +[BKLibraryManager defaultManager];
    [(BKLibraryBookshelfBooksDataSource *)v14 setLibraryManager:v15];

    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 addObserver:v14 selector:"_BCCloudAssetReviewManagerChanged:" name:BCCloudAssetReviewManagerChanged object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v14 selector:"_mocWillSave:" name:NSManagedObjectContextWillSaveNotification object:0];

    objc_storeWeak(&v14->_sortModeProvider, v12);
    v14->_isSeries = a4;
    v14->_providesReviewData = v9;
    v14->_providesProductInfoData = v8;
    objc_storeStrong(&v14->_productInfoFilter, a7);
    if (v9 || v8)
    {
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("BKLibraryBookshelfBooksDataSource.extendedDataAccessQueue.queue", v18);
      extendedDataAccessQueue = v14->_extendedDataAccessQueue;
      v14->_extendedDataAccessQueue = v19;

      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create("BKLibraryBookshelfBooksDataSource.workerQueue.queue", v21);
      workerQueue = v14->_workerQueue;
      v14->_workerQueue = v22;
    }

    if (v9)
    {
      v24 = +[NSMutableDictionary dictionary];
      assetReviewData = v14->_assetReviewData;
      v14->_assetReviewData = v24;

      v26 = +[NSMutableSet set];
      checkedAssetIDs = v14->_checkedAssetIDs;
      v14->_checkedAssetIDs = v26;

      v28 = +[NSMutableSet set];
      checkedProductProfileIDs = v14->_checkedProductProfileIDs;
      v14->_checkedProductProfileIDs = v28;

      v30 = +[NSMutableSet set];
      checkedResourceIDs = v14->_checkedResourceIDs;
      v14->_checkedResourceIDs = v30;
    }

    if (v8)
    {
      v32 = [(BKLibraryBookshelfBooksDataSource *)v14 extendedDataAccessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015916C;
      block[3] = &unk_100A033C8;
      v42 = v14;
      dispatch_sync(v32, block);
    }

    v33 = [NSSet setWithObjects:@"expectedDate", @"isSample", @"state", @"purchasedAndLocalParent", @"seriesContainer", @"sequenceDisplayName", 0];
    [(BKLibraryBookshelfBooksDataSource *)v14 setPropertiesOfInterest:v33];

    objc_initWeak(&location, v14);
    v34 = [BUCoalescingCallBlock alloc];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001591D4;
    v38[3] = &unk_100A04820;
    objc_copyWeak(&v39, &location);
    v35 = [v34 initWithNotifyBlock:v38 blockDescription:@"BKLibraryBookshelfBooksDataSource"];
    coalescedReloadData = v14->_coalescedReloadData;
    v14->_coalescedReloadData = v35;

    [(BUCoalescingCallBlock *)v14->_coalescedReloadData setCoalescingDelay:0.4];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  kdebug_trace();

  return v14;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BCCloudAssetReviewManagerChanged object:0];

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfBooksDataSource;
  [(BKLibraryBookshelfBooksDataSource *)&v4 dealloc];
}

- (void)_mocWillSave:(id)a3
{
  v4 = a3;
  v27 = self;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v6 = [v5 fetchRequest];
  v7 = [v6 entityName];
  v8 = [v7 isEqualToString:@"BKCollectionMember"];

  if (v8)
  {
    v9 = [v4 object];
    [v9 updatedObjects];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v31 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v12 = v10;
    if (v11)
    {
      v13 = v11;
      v25 = v9;
      v26 = v4;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 entity];
          v18 = [v17 name];
          v19 = [v18 isEqualToString:@"BKLibraryAsset"];

          if (v19)
          {
            v20 = [v16 changedValues];
            v21 = [v20 allKeys];
            v22 = [NSSet setWithArray:v21];
            v23 = [(BKLibraryBookshelfBooksDataSource *)v27 propertiesOfInterest];
            v24 = [v22 intersectsSet:v23];

            if (v24)
            {

              v12 = [(BKLibraryBookshelfBooksDataSource *)v27 coalescedReloadData];
              [v12 signalWithCompletion:&stru_100A088C8];
              goto LABEL_13;
            }
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v12 = v10;
LABEL_13:
      v9 = v25;
      v4 = v26;
    }
  }
}

- (BCCloudAssetReviewManager)assetReviewManager
{
  assetReviewManager = self->_assetReviewManager;
  if (!assetReviewManager)
  {
    v4 = +[BCCloudAssetManager sharedManager];
    self->_assetReviewManager = [v4 assetReviewManager];

    assetReviewManager = self->_assetReviewManager;
  }

  return assetReviewManager;
}

- (void)_updateHasSeriesSequenceLabel
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v4 = [v3 fetchedObjects];

  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v6 = [v5 fetchRequest];
  v7 = [v6 entityName];
  v8 = [v7 isEqualToString:@"BKCollectionMember"];

  if (v8)
  {
    v9 = [v4 valueForKeyPath:@"asset"];

    v4 = v9;
  }

  self->_hasSeriesSequenceLabel = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v16 + 1) + 8 * i) sequenceDisplayName];

        if (v15)
        {
          self->_hasSeriesSequenceLabel = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_loadProductInfoData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    v8 = [(BKLibraryBookshelfBooksDataSource *)self workerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100159A74;
    v9[3] = &unk_100A08940;
    v10 = v6;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_loadProductInfoData
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v14 = [v3 fetchedObjects];

  v4 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];

  if (v4)
  {
    v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v6 = [v5 fetchRequest];
    v7 = [v6 entityName];
    v8 = [v7 isEqualToString:@"BKCollectionMember"];

    if (v8)
    {
      v9 = [v14 valueForKeyPath:@"asset"];

      v14 = v9;
    }

    v10 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];
    v11 = [v14 filteredArrayUsingPredicate:v10];

    v12 = v11;
  }

  else
  {
    v12 = v14;
  }

  v15 = v12;
  v13 = [v12 valueForKeyPath:@"assetID"];
  [(BKLibraryBookshelfBooksDataSource *)self _loadProductInfoData:v13 completion:0];
}

- (void)_loadAndCacheResourcesForAssetIDs:(id)a3 audiobookAssetIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015A10C;
  v12[3] = &unk_100A08968;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [(BKLibraryBookshelfBooksDataSource *)self _loadResourcesForAssetIDs:v8 audiobookAssetIDs:v9 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_loadAssetData
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v4 = [v3 fetchedObjects];

  v5 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];

  if (v5)
  {
    v6 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v7 = [v6 fetchRequest];
    v8 = [v7 entityName];
    v9 = [v8 isEqualToString:@"BKCollectionMember"];

    if (v9)
    {
      v10 = [v4 valueForKeyPath:@"asset"];

      v4 = v10;
    }

    v11 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];
    v12 = [v4 filteredArrayUsingPredicate:v11];

    v4 = v12;
  }

  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = [v19 assetID];
        v21 = [v19 isStoreAudiobook];
        v22 = [v21 BOOLValue];

        if (v22)
        {
          v23 = v13;
        }

        else
        {
          v23 = v14;
        }

        [v23 addObject:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10015A654;
  v24[3] = &unk_100A08990;
  objc_copyWeak(&v25, &location);
  [(BKLibraryBookshelfBooksDataSource *)self _loadAndCacheResourcesForAssetIDs:v14 audiobookAssetIDs:v13 completionHandler:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_loadAssetReviewData
{
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 activeStoreAccount];
  v5 = [v4 ams_DSID];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v8 = [v7 fetchedObjects];
    v9 = [v8 valueForKeyPath:@"assetID"];

    if ([v9 count])
    {
      v10 = +[NSMutableArray array];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [BCAssetReview assetReviewIDWithUserID:v6 assetID:*(*(&v21 + 1) + 8 * v14)];
            [v10 addObject:v15];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      objc_initWeak(&location, self);
      v16 = [(BKLibraryBookshelfBooksDataSource *)self assetReviewManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10015A984;
      v17[3] = &unk_100A089B8;
      objc_copyWeak(&v19, &location);
      v18 = v11;
      [v16 assetReviewsForAssetReviewIDs:v10 completion:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

- (void)reloadData
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];

  if (!v3)
  {
    v4 = [NSFetchedResultsController alloc];
    v5 = [(BKLibraryBookshelfBooksDataSource *)self fetchRequest];
    v6 = [(BKLibraryBookshelfBooksDataSource *)self libraryManager];
    v7 = [v6 uiChildContext];
    v8 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
    v9 = [v8 currentSortMode];
    v10 = [v9 sectionKeyPath];
    v11 = [v4 initWithFetchRequest:v5 managedObjectContext:v7 sectionNameKeyPath:v10 cacheName:0];
    [(BKLibraryBookshelfBooksDataSource *)self setFrc:v11];

    v12 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    [v12 setDelegate:self];

    v13 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    [v13 performFetch:0];

    if ([(BKLibraryBookshelfBooksDataSource *)self isSeries])
    {
      [(BKLibraryBookshelfBooksDataSource *)self _updateHasSeriesSequenceLabel];
    }

    if ([(BKLibraryBookshelfBooksDataSource *)self providesReviewData])
    {
      [(BKLibraryBookshelfBooksDataSource *)self _loadAssetReviewData];
    }

    if ([(BKLibraryBookshelfBooksDataSource *)self providesProductInfoData])
    {
      [(BKLibraryBookshelfBooksDataSource *)self _loadProductInfoData];

      [(BKLibraryBookshelfBooksDataSource *)self _loadAssetData];
    }
  }
}

- (id)productInfoForAssetID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100027450;
  v16 = sub_100027660;
  v17 = 0;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015AFBC;
  block[3] = &unk_100A04950;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)cachedResourceForAssetID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100027450;
  v16 = sub_100027660;
  v17 = 0;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015B19C;
  block[3] = &unk_100A04950;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)resourceForAssetID:(id)a3 type:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_100027450;
    v35 = sub_100027660;
    v36 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v10 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015B5B0;
    block[3] = &unk_100A06E68;
    v25 = &v31;
    block[4] = self;
    v11 = v8;
    v24 = v11;
    v26 = &v27;
    dispatch_sync(v10, block);

    if (v32[5] || (v28[3] & 1) != 0)
    {
      v12 = objc_retainBlock(v9);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12, v11, v32[5], 0);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      if (a4 == 1)
      {
        v37 = v11;
        v17 = [NSArray arrayWithObjects:&v37 count:1];
        v16 = &__NSArray0__struct;
      }

      else if (a4)
      {
        v17 = &__NSArray0__struct;
        v16 = &__NSArray0__struct;
      }

      else
      {
        v38 = v11;
        v16 = [NSArray arrayWithObjects:&v38 count:1];
        v17 = &__NSArray0__struct;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10015B66C;
      v18[3] = &unk_100A089E0;
      objc_copyWeak(&v21, &location);
      v20 = v9;
      v19 = v11;
      [(BKLibraryBookshelfBooksDataSource *)self _loadAndCacheResourcesForAssetIDs:v16 audiobookAssetIDs:v17 completionHandler:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v14 = objc_retainBlock(v9);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v8, 0, 0);
    }
  }
}

- (id)assetReviewForAssetID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100027450;
  v19 = sub_100027660;
  v20 = 0;
  v5 = +[BUAccountsProvider sharedProvider];
  v6 = [v5 activeStoreAccount];
  v7 = [v6 ams_DSID];
  v8 = [v7 stringValue];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015B8D8;
    block[3] = &unk_100A04950;
    v14 = &v15;
    block[4] = self;
    v13 = v4;
    dispatch_sync(v9, block);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)assetReviewForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100027450;
  v37 = sub_100027660;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = +[BUAccountsProvider sharedProvider];
  v9 = [v8 activeStoreAccount];
  v10 = [v9 ams_DSID];
  v11 = [v10 stringValue];

  if (v11)
  {
    v12 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015BC4C;
    block[3] = &unk_100A06E68;
    v27 = &v33;
    block[4] = self;
    v13 = v6;
    v26 = v13;
    v28 = &v29;
    dispatch_sync(v12, block);

    if (!v34[5] && (v30[3] & 1) == 0)
    {
      objc_initWeak(&location, self);
      v14 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10015BCE0;
      v19[3] = &unk_100A06FA0;
      objc_copyWeak(&v23, &location);
      v20 = v11;
      v21 = v13;
      v22 = v7;
      dispatch_async(v14, v19);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v15 = objc_retainBlock(v7);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }

  v17 = v34[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

- (id)currentCollection
{
  v2 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v3 = [v2 fetchedObjects];
  v4 = [v3 lastObject];

  v5 = [v4 collection];

  return v5;
}

- (int64_t)numberOfSections
{
  v2 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v3 = [v2 sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v5 = [v4 sections];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 numberOfObjects];

  return v7;
}

- (int64_t)totalNumberOfItems
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v3 = [v2 sections];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) numberOfObjects];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)representedObjectForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v6 = [v5 sections];

  v7 = [v4 section];
  if (v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
  }

  v9 = [v8 objects];
  v10 = [v4 item];
  if (v10 >= [v9 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  v12 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  v13 = [v12 currentSortMode];
  v14 = [v13 entityName];
  v15 = [v14 isEqualToString:@"BKLibraryAsset"];

  if (v15)
  {
    v16 = v11;
  }

  else
  {
    objc_opt_class();
    v17 = BUDynamicCast();
    v16 = [v17 asset];
  }

  return v16;
}

- (id)indexPathForRepresentedObject:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  v6 = [v5 currentSortMode];
  v7 = [v6 entityName];
  v8 = [v7 isEqualToString:@"BKLibraryAsset"];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v10 = [v9 indexPathForObject:v4];
  }

  else
  {
    v11 = [(BKLibraryBookshelfBooksDataSource *)self currentCollection];
    v9 = [NSPredicate predicateWithFormat:@"collection == %@", v11];

    v12 = [v4 collectionMembers];

    v13 = [v12 filteredSetUsingPredicate:v9];
    v4 = [v13 anyObject];

    v14 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v10 = [v14 indexPathForObject:v4];
  }

  return v10;
}

- (id)representedObjectsInSection:(unint64_t)a3
{
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v6 = [v5 sections];

  if ([v6 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  v8 = [v7 objects];
  if (v8 && (-[BKLibraryBookshelfBooksDataSource sortModeProvider](self, "sortModeProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 currentSortMode], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "entityName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"BKLibraryAsset"), v11, v10, v9, !v12))
  {
    v13 = [v8 mutableCopy];
    if ([v13 count])
    {
      v14 = 0;
      do
      {
        objc_opt_class();
        v15 = [v13 objectAtIndexedSubscript:v14];
        v16 = BUDynamicCast();

        v17 = [v16 asset];
        [v13 setObject:v17 atIndexedSubscript:v14];

        ++v14;
      }

      while (v14 < [v13 count]);
    }
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

- (id)fetchRequest
{
  v3 = [NSFetchRequest alloc];
  v4 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  v5 = [v4 currentSortMode];
  v6 = [v5 entityName];
  v7 = [v3 initWithEntityName:v6];

  v8 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  v9 = [v8 currentSortMode];
  v10 = [v9 predicate];
  [v7 setPredicate:v10];

  v11 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  v12 = [v11 currentSortMode];
  v13 = [v12 sortDescriptors];
  [v7 setSortDescriptors:v13];

  [v7 setFetchBatchSize:32];

  return v7;
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableIndexSet indexSet];
  [(BKLibraryBookshelfBooksDataSource *)self setInsertedSectionIndexes:v5];

  v6 = +[NSMutableIndexSet indexSet];
  [(BKLibraryBookshelfBooksDataSource *)self setDeletedSectionIndexes:v6];

  v7 = +[NSMutableArray array];
  [(BKLibraryBookshelfBooksDataSource *)self setDeletedItemIndexPaths:v7];

  v8 = +[NSMutableArray array];
  [(BKLibraryBookshelfBooksDataSource *)self setInsertedItemIndexPaths:v8];

  v9 = +[NSMutableArray array];
  [(BKLibraryBookshelfBooksDataSource *)self setUpdatedItemIndexPaths:v9];

  v10 = [v4 fetchedObjects];

  -[BKLibraryBookshelfBooksDataSource setNumItemsBeforeChange:](self, "setNumItemsBeforeChange:", [v10 count]);
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v28 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 > 2)
  {
    if (a6 != 3)
    {
      if (a6 != 4)
      {
        goto LABEL_19;
      }

      v15 = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
      if ([v15 containsIndex:{objc_msgSend(v13, "section")}])
      {
        goto LABEL_18;
      }

      v16 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
      if ([v16 containsObject:v13])
      {

LABEL_18:
        goto LABEL_19;
      }

      v26 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
      v27 = [v26 containsObject:v13];

      if (v27)
      {
        goto LABEL_19;
      }

      v19 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
      goto LABEL_16;
    }

    v21 = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    v22 = [v21 containsIndex:{objc_msgSend(v14, "section")}];

    if ((v22 & 1) == 0)
    {
      v23 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
      [v23 addObject:v14];
    }

LABEL_14:
    v24 = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    v25 = [v24 containsIndex:{objc_msgSend(v13, "section")}];

    if (v25)
    {
      goto LABEL_19;
    }

    v19 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
LABEL_16:
    v15 = v19;
    v20 = v13;
LABEL_17:
    [v19 addObject:v20];
    goto LABEL_18;
  }

  if (a6 == 1)
  {
    v17 = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    v18 = [v17 containsIndex:{objc_msgSend(v14, "section")}];

    if (v18)
    {
      goto LABEL_19;
    }

    v19 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    v15 = v19;
    v20 = v14;
    goto LABEL_17;
  }

  if (a6 == 2)
  {
    goto LABEL_14;
  }

LABEL_19:
}

- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 == 2)
  {
    v13 = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    [v13 addIndex:a5];

    v14 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          if ([v20 section] == a5)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v17);
    }

    v21 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    [v21 removeObjectsInArray:v14];

    [v14 removeAllObjects];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v29 + 1) + 8 * j);
          if ([v27 section] == a5)
          {
            [v14 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }

    v28 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    [v28 removeObjectsInArray:v14];
  }

  else if (a6 == 1)
  {
    v12 = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    [v12 addIndex:a5];
  }
}

- (void)clearChanges
{
  [(BKLibraryBookshelfBooksDataSource *)self setInsertedSectionIndexes:0];
  [(BKLibraryBookshelfBooksDataSource *)self setDeletedSectionIndexes:0];
  [(BKLibraryBookshelfBooksDataSource *)self setDeletedItemIndexPaths:0];
  [(BKLibraryBookshelfBooksDataSource *)self setInsertedItemIndexPaths:0];

  [(BKLibraryBookshelfBooksDataSource *)self setUpdatedItemIndexPaths:0];
}

- (void)controllerDidChangeContent:(id)a3
{
  v15 = a3;
  if (![(BKLibraryBookshelfBooksDataSource *)self suppressChangeNotification])
  {
    if ([(BKLibraryBookshelfBooksDataSource *)self numItemsBeforeChange])
    {
      v4 = [v15 fetchedObjects];
      v5 = [v4 count] == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = [(BKLibraryBookshelfBooksDataSource *)self delegate];
    v7 = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    v8 = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    v9 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    v10 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    v11 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    LOBYTE(v14) = v5;
    [v6 booksDataSource:self insertedSections:v7 deletedSections:v8 insertedItems:v9 deletedItems:v10 updatedItems:v11 mayHaveZeroObjects:v14];

    v12 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    v13 = [v12 count];

    if (v13)
    {
      [(BKLibraryBookshelfBooksDataSource *)self _loadProductInfoData];
    }
  }

  [(BKLibraryBookshelfBooksDataSource *)self clearChanges];
}

- (void)moveItemAtIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  v9 = [v8 fetchedObjects];
  v18 = [v9 mutableCopy];

  v10 = [v18 objectAtIndex:{objc_msgSend(v7, "row")}];
  v11 = [v7 row];

  [v18 removeObjectAtIndex:v11];
  v12 = [v6 row];

  [v18 insertObject:v10 atIndex:v12];
  if ([BKUserSortOrderManager resortDescendingSortKeyedObjects:v18])
  {
    v13 = +[BKLibraryManager defaultManager];
    v14 = [v13 uiChildContext];
    v15 = [v14 hasChanges];

    if (v15)
    {
      [(BKLibraryBookshelfBooksDataSource *)self setSuppressChangeNotification:1];
      v16 = [v13 uiChildContext];
      [v16 setSaveContext:2];

      v17 = [v13 uiChildContext];
      [v17 save:0];

      [(BKLibraryBookshelfBooksDataSource *)self setSuppressChangeNotification:0];
    }
  }
}

- (BKLibraryBookshelfBooksDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BKLibraryBookshelfSortModeProviding)sortModeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sortModeProvider);

  return WeakRetained;
}

- (void)_loadResourcesForAssetIDs:(NSArray *)a3 audiobookAssetIDs:(NSArray *)a4 completionHandler:(id)a5
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10082D8B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10081C0F0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end