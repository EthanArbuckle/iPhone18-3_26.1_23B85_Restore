@interface BKLibraryBookshelfBooksDataSource
- (BCCloudAssetReviewManager)assetReviewManager;
- (BKLibraryBookshelfBooksDataSource)initWithSortModeProvider:(id)provider isSeries:(BOOL)series providesReviewData:(BOOL)data providesProductInfoData:(BOOL)infoData productInfoFilter:(id)filter;
- (BKLibraryBookshelfBooksDataSourceDelegate)delegate;
- (BKLibraryBookshelfSortModeProviding)sortModeProvider;
- (BKLibraryManager)libraryManager;
- (id)assetReviewForAssetID:(id)d;
- (id)assetReviewForAssetID:(id)d completion:(id)completion;
- (id)cachedResourceForAssetID:(id)d;
- (id)currentCollection;
- (id)fetchRequest;
- (id)indexPathForRepresentedObject:(id)object;
- (id)productInfoForAssetID:(id)d;
- (id)representedObjectForIndexPath:(id)path;
- (id)representedObjectsInSection:(unint64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)totalNumberOfItems;
- (void)_loadAndCacheResourcesForAssetIDs:(id)ds audiobookAssetIDs:(id)iDs completionHandler:(id)handler;
- (void)_loadAssetData;
- (void)_loadAssetReviewData;
- (void)_loadProductInfoData;
- (void)_loadProductInfoData:(id)data completion:(id)completion;
- (void)_loadResourcesForAssetIDs:(NSArray *)ds audiobookAssetIDs:(NSArray *)iDs completionHandler:(id)handler;
- (void)_mocWillSave:(id)save;
- (void)_updateHasSeriesSequenceLabel;
- (void)clearChanges;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)reloadData;
- (void)resourceForAssetID:(id)d type:(int64_t)type completion:(id)completion;
@end

@implementation BKLibraryBookshelfBooksDataSource

- (BKLibraryBookshelfBooksDataSource)initWithSortModeProvider:(id)provider isSeries:(BOOL)series providesReviewData:(BOOL)data providesProductInfoData:(BOOL)infoData productInfoFilter:(id)filter
{
  infoDataCopy = infoData;
  dataCopy = data;
  providerCopy = provider;
  filterCopy = filter;
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

    objc_storeWeak(&v14->_sortModeProvider, providerCopy);
    v14->_isSeries = series;
    v14->_providesReviewData = dataCopy;
    v14->_providesProductInfoData = infoDataCopy;
    objc_storeStrong(&v14->_productInfoFilter, filter);
    if (dataCopy || infoDataCopy)
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

    if (dataCopy)
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

    if (infoDataCopy)
    {
      extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)v14 extendedDataAccessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015916C;
      block[3] = &unk_100A033C8;
      v42 = v14;
      dispatch_sync(extendedDataAccessQueue, block);
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

- (void)_mocWillSave:(id)save
{
  saveCopy = save;
  selfCopy = self;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  fetchRequest = [v5 fetchRequest];
  entityName = [fetchRequest entityName];
  v8 = [entityName isEqualToString:@"BKCollectionMember"];

  if (v8)
  {
    object = [saveCopy object];
    [object updatedObjects];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v31 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    coalescedReloadData = v10;
    if (v11)
    {
      v13 = v11;
      v25 = object;
      v26 = saveCopy;
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
          entity = [v16 entity];
          name = [entity name];
          v19 = [name isEqualToString:@"BKLibraryAsset"];

          if (v19)
          {
            changedValues = [v16 changedValues];
            allKeys = [changedValues allKeys];
            v22 = [NSSet setWithArray:allKeys];
            propertiesOfInterest = [(BKLibraryBookshelfBooksDataSource *)selfCopy propertiesOfInterest];
            v24 = [v22 intersectsSet:propertiesOfInterest];

            if (v24)
            {

              coalescedReloadData = [(BKLibraryBookshelfBooksDataSource *)selfCopy coalescedReloadData];
              [coalescedReloadData signalWithCompletion:&stru_100A088C8];
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

      coalescedReloadData = v10;
LABEL_13:
      object = v25;
      saveCopy = v26;
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
  fetchedObjects = [v3 fetchedObjects];

  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  fetchRequest = [v5 fetchRequest];
  entityName = [fetchRequest entityName];
  v8 = [entityName isEqualToString:@"BKCollectionMember"];

  if (v8)
  {
    v9 = [fetchedObjects valueForKeyPath:@"asset"];

    fetchedObjects = v9;
  }

  self->_hasSeriesSequenceLabel = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = fetchedObjects;
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

        sequenceDisplayName = [*(*(&v16 + 1) + 8 * i) sequenceDisplayName];

        if (sequenceDisplayName)
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

- (void)_loadProductInfoData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy count])
  {
    objc_initWeak(&location, self);
    workerQueue = [(BKLibraryBookshelfBooksDataSource *)self workerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100159A74;
    v9[3] = &unk_100A08940;
    v10 = dataCopy;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    dispatch_async(workerQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_loadProductInfoData
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  fetchedObjects = [v3 fetchedObjects];

  productInfoFilter = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];

  if (productInfoFilter)
  {
    v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    fetchRequest = [v5 fetchRequest];
    entityName = [fetchRequest entityName];
    v8 = [entityName isEqualToString:@"BKCollectionMember"];

    if (v8)
    {
      v9 = [fetchedObjects valueForKeyPath:@"asset"];

      fetchedObjects = v9;
    }

    productInfoFilter2 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];
    v11 = [fetchedObjects filteredArrayUsingPredicate:productInfoFilter2];

    v12 = v11;
  }

  else
  {
    v12 = fetchedObjects;
  }

  v15 = v12;
  v13 = [v12 valueForKeyPath:@"assetID"];
  [(BKLibraryBookshelfBooksDataSource *)self _loadProductInfoData:v13 completion:0];
}

- (void)_loadAndCacheResourcesForAssetIDs:(id)ds audiobookAssetIDs:(id)iDs completionHandler:(id)handler
{
  dsCopy = ds;
  iDsCopy = iDs;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015A10C;
  v12[3] = &unk_100A08968;
  objc_copyWeak(&v14, &location);
  v11 = handlerCopy;
  v13 = v11;
  [(BKLibraryBookshelfBooksDataSource *)self _loadResourcesForAssetIDs:dsCopy audiobookAssetIDs:iDsCopy completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_loadAssetData
{
  v3 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  fetchedObjects = [v3 fetchedObjects];

  productInfoFilter = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];

  if (productInfoFilter)
  {
    v6 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    fetchRequest = [v6 fetchRequest];
    entityName = [fetchRequest entityName];
    v9 = [entityName isEqualToString:@"BKCollectionMember"];

    if (v9)
    {
      v10 = [fetchedObjects valueForKeyPath:@"asset"];

      fetchedObjects = v10;
    }

    productInfoFilter2 = [(BKLibraryBookshelfBooksDataSource *)self productInfoFilter];
    v12 = [fetchedObjects filteredArrayUsingPredicate:productInfoFilter2];

    fetchedObjects = v12;
  }

  v13 = +[NSMutableArray array];
  v14 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = fetchedObjects;
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
        assetID = [v19 assetID];
        isStoreAudiobook = [v19 isStoreAudiobook];
        bOOLValue = [isStoreAudiobook BOOLValue];

        if (bOOLValue)
        {
          v23 = v13;
        }

        else
        {
          v23 = v14;
        }

        [v23 addObject:assetID];
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
  activeStoreAccount = [v3 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    v7 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    fetchedObjects = [v7 fetchedObjects];
    v9 = [fetchedObjects valueForKeyPath:@"assetID"];

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

            v15 = [BCAssetReview assetReviewIDWithUserID:stringValue assetID:*(*(&v21 + 1) + 8 * v14)];
            [v10 addObject:v15];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      objc_initWeak(&location, self);
      assetReviewManager = [(BKLibraryBookshelfBooksDataSource *)self assetReviewManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10015A984;
      v17[3] = &unk_100A089B8;
      objc_copyWeak(&v19, &location);
      v18 = v11;
      [assetReviewManager assetReviewsForAssetReviewIDs:v10 completion:v17];

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
    fetchRequest = [(BKLibraryBookshelfBooksDataSource *)self fetchRequest];
    libraryManager = [(BKLibraryBookshelfBooksDataSource *)self libraryManager];
    uiChildContext = [libraryManager uiChildContext];
    sortModeProvider = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
    currentSortMode = [sortModeProvider currentSortMode];
    sectionKeyPath = [currentSortMode sectionKeyPath];
    v11 = [v4 initWithFetchRequest:fetchRequest managedObjectContext:uiChildContext sectionNameKeyPath:sectionKeyPath cacheName:0];
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

- (id)productInfoForAssetID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100027450;
  v16 = sub_100027660;
  v17 = 0;
  extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015AFBC;
  block[3] = &unk_100A04950;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(extendedDataAccessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)cachedResourceForAssetID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100027450;
  v16 = sub_100027660;
  v17 = 0;
  extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015B19C;
  block[3] = &unk_100A04950;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(extendedDataAccessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)resourceForAssetID:(id)d type:(int64_t)type completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
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
    extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015B5B0;
    block[3] = &unk_100A06E68;
    v25 = &v31;
    block[4] = self;
    v11 = dCopy;
    v24 = v11;
    v26 = &v27;
    dispatch_sync(extendedDataAccessQueue, block);

    if (v32[5] || (v28[3] & 1) != 0)
    {
      v12 = objc_retainBlock(completionCopy);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12, v11, v32[5], 0);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      if (type == 1)
      {
        v37 = v11;
        v17 = [NSArray arrayWithObjects:&v37 count:1];
        v16 = &__NSArray0__struct;
      }

      else if (type)
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
      v20 = completionCopy;
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
    v14 = objc_retainBlock(completionCopy);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, dCopy, 0, 0);
    }
  }
}

- (id)assetReviewForAssetID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100027450;
  v19 = sub_100027660;
  v20 = 0;
  v5 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v5 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015B8D8;
    block[3] = &unk_100A04950;
    v14 = &v15;
    block[4] = self;
    v13 = dCopy;
    dispatch_sync(extendedDataAccessQueue, block);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)assetReviewForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
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
  activeStoreAccount = [v8 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    extendedDataAccessQueue = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015BC4C;
    block[3] = &unk_100A06E68;
    v27 = &v33;
    block[4] = self;
    v13 = dCopy;
    v26 = v13;
    v28 = &v29;
    dispatch_sync(extendedDataAccessQueue, block);

    if (!v34[5] && (v30[3] & 1) == 0)
    {
      objc_initWeak(&location, self);
      extendedDataAccessQueue2 = [(BKLibraryBookshelfBooksDataSource *)self extendedDataAccessQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10015BCE0;
      v19[3] = &unk_100A06FA0;
      objc_copyWeak(&v23, &location);
      v20 = stringValue;
      v21 = v13;
      v22 = completionCopy;
      dispatch_async(extendedDataAccessQueue2, v19);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v15 = objc_retainBlock(completionCopy);
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
  fetchedObjects = [v2 fetchedObjects];
  lastObject = [fetchedObjects lastObject];

  collection = [lastObject collection];

  return collection;
}

- (int64_t)numberOfSections
{
  v2 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  sections = [v2 sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v4 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  sections = [v4 sections];
  v6 = [sections objectAtIndexedSubscript:section];
  numberOfObjects = [v6 numberOfObjects];

  return numberOfObjects;
}

- (int64_t)totalNumberOfItems
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  sections = [v2 sections];

  v4 = [sections countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(sections);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) numberOfObjects];
      }

      v5 = [sections countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)representedObjectForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  sections = [v5 sections];

  section = [pathCopy section];
  if (section >= [sections count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  }

  objects = [v8 objects];
  item = [pathCopy item];
  if (item >= [objects count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [objects objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  sortModeProvider = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  currentSortMode = [sortModeProvider currentSortMode];
  entityName = [currentSortMode entityName];
  v15 = [entityName isEqualToString:@"BKLibraryAsset"];

  if (v15)
  {
    asset = v11;
  }

  else
  {
    objc_opt_class();
    v17 = BUDynamicCast();
    asset = [v17 asset];
  }

  return asset;
}

- (id)indexPathForRepresentedObject:(id)object
{
  objectCopy = object;
  sortModeProvider = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  currentSortMode = [sortModeProvider currentSortMode];
  entityName = [currentSortMode entityName];
  v8 = [entityName isEqualToString:@"BKLibraryAsset"];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v10 = [v9 indexPathForObject:objectCopy];
  }

  else
  {
    currentCollection = [(BKLibraryBookshelfBooksDataSource *)self currentCollection];
    v9 = [NSPredicate predicateWithFormat:@"collection == %@", currentCollection];

    collectionMembers = [objectCopy collectionMembers];

    v13 = [collectionMembers filteredSetUsingPredicate:v9];
    objectCopy = [v13 anyObject];

    v14 = [(BKLibraryBookshelfBooksDataSource *)self frc];
    v10 = [v14 indexPathForObject:objectCopy];
  }

  return v10;
}

- (id)representedObjectsInSection:(unint64_t)section
{
  v5 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  sections = [v5 sections];

  if ([sections count] <= section)
  {
    v7 = 0;
  }

  else
  {
    v7 = [sections objectAtIndexedSubscript:section];
  }

  objects = [v7 objects];
  if (objects && (-[BKLibraryBookshelfBooksDataSource sortModeProvider](self, "sortModeProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 currentSortMode], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "entityName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"BKLibraryAsset"), v11, v10, v9, !v12))
  {
    v13 = [objects mutableCopy];
    if ([v13 count])
    {
      v14 = 0;
      do
      {
        objc_opt_class();
        v15 = [v13 objectAtIndexedSubscript:v14];
        v16 = BUDynamicCast();

        asset = [v16 asset];
        [v13 setObject:asset atIndexedSubscript:v14];

        ++v14;
      }

      while (v14 < [v13 count]);
    }
  }

  else
  {
    v13 = objects;
  }

  return v13;
}

- (id)fetchRequest
{
  v3 = [NSFetchRequest alloc];
  sortModeProvider = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  currentSortMode = [sortModeProvider currentSortMode];
  entityName = [currentSortMode entityName];
  v7 = [v3 initWithEntityName:entityName];

  sortModeProvider2 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  currentSortMode2 = [sortModeProvider2 currentSortMode];
  predicate = [currentSortMode2 predicate];
  [v7 setPredicate:predicate];

  sortModeProvider3 = [(BKLibraryBookshelfBooksDataSource *)self sortModeProvider];
  currentSortMode3 = [sortModeProvider3 currentSortMode];
  sortDescriptors = [currentSortMode3 sortDescriptors];
  [v7 setSortDescriptors:sortDescriptors];

  [v7 setFetchBatchSize:32];

  return v7;
}

- (void)controllerWillChangeContent:(id)content
{
  contentCopy = content;
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

  fetchedObjects = [contentCopy fetchedObjects];

  -[BKLibraryBookshelfBooksDataSource setNumItemsBeforeChange:](self, "setNumItemsBeforeChange:", [fetchedObjects count]);
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_19;
      }

      deletedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
      if ([deletedSectionIndexes containsIndex:{objc_msgSend(pathCopy, "section")}])
      {
        goto LABEL_18;
      }

      deletedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
      if ([deletedItemIndexPaths containsObject:pathCopy])
      {

LABEL_18:
        goto LABEL_19;
      }

      updatedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
      v27 = [updatedItemIndexPaths containsObject:pathCopy];

      if (v27)
      {
        goto LABEL_19;
      }

      updatedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
      goto LABEL_16;
    }

    insertedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    v22 = [insertedSectionIndexes containsIndex:{objc_msgSend(indexPathCopy, "section")}];

    if ((v22 & 1) == 0)
    {
      insertedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
      [insertedItemIndexPaths addObject:indexPathCopy];
    }

LABEL_14:
    deletedSectionIndexes2 = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    v25 = [deletedSectionIndexes2 containsIndex:{objc_msgSend(pathCopy, "section")}];

    if (v25)
    {
      goto LABEL_19;
    }

    updatedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
LABEL_16:
    deletedSectionIndexes = updatedItemIndexPaths2;
    v20 = pathCopy;
LABEL_17:
    [updatedItemIndexPaths2 addObject:v20];
    goto LABEL_18;
  }

  if (type == 1)
  {
    insertedSectionIndexes2 = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    v18 = [insertedSectionIndexes2 containsIndex:{objc_msgSend(indexPathCopy, "section")}];

    if (v18)
    {
      goto LABEL_19;
    }

    updatedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    deletedSectionIndexes = updatedItemIndexPaths2;
    v20 = indexPathCopy;
    goto LABEL_17;
  }

  if (type == 2)
  {
    goto LABEL_14;
  }

LABEL_19:
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  controllerCopy = controller;
  sectionCopy = section;
  if (type == 2)
  {
    deletedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    [deletedSectionIndexes addIndex:index];

    v14 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    deletedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    v16 = [deletedItemIndexPaths countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(deletedItemIndexPaths);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          if ([v20 section] == index)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [deletedItemIndexPaths countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v17);
    }

    deletedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    [deletedItemIndexPaths2 removeObjectsInArray:v14];

    [v14 removeAllObjects];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    updatedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    v23 = [updatedItemIndexPaths countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(updatedItemIndexPaths);
          }

          v27 = *(*(&v29 + 1) + 8 * j);
          if ([v27 section] == index)
          {
            [v14 addObject:v27];
          }
        }

        v24 = [updatedItemIndexPaths countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }

    updatedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    [updatedItemIndexPaths2 removeObjectsInArray:v14];
  }

  else if (type == 1)
  {
    insertedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    [insertedSectionIndexes addIndex:index];
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

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  if (![(BKLibraryBookshelfBooksDataSource *)self suppressChangeNotification])
  {
    if ([(BKLibraryBookshelfBooksDataSource *)self numItemsBeforeChange])
    {
      fetchedObjects = [contentCopy fetchedObjects];
      v5 = [fetchedObjects count] == 0;
    }

    else
    {
      v5 = 1;
    }

    delegate = [(BKLibraryBookshelfBooksDataSource *)self delegate];
    insertedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self insertedSectionIndexes];
    deletedSectionIndexes = [(BKLibraryBookshelfBooksDataSource *)self deletedSectionIndexes];
    insertedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    deletedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self deletedItemIndexPaths];
    updatedItemIndexPaths = [(BKLibraryBookshelfBooksDataSource *)self updatedItemIndexPaths];
    LOBYTE(v14) = v5;
    [delegate booksDataSource:self insertedSections:insertedSectionIndexes deletedSections:deletedSectionIndexes insertedItems:insertedItemIndexPaths deletedItems:deletedItemIndexPaths updatedItems:updatedItemIndexPaths mayHaveZeroObjects:v14];

    insertedItemIndexPaths2 = [(BKLibraryBookshelfBooksDataSource *)self insertedItemIndexPaths];
    v13 = [insertedItemIndexPaths2 count];

    if (v13)
    {
      [(BKLibraryBookshelfBooksDataSource *)self _loadProductInfoData];
    }
  }

  [(BKLibraryBookshelfBooksDataSource *)self clearChanges];
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v8 = [(BKLibraryBookshelfBooksDataSource *)self frc];
  fetchedObjects = [v8 fetchedObjects];
  v18 = [fetchedObjects mutableCopy];

  v10 = [v18 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  v11 = [pathCopy row];

  [v18 removeObjectAtIndex:v11];
  v12 = [indexPathCopy row];

  [v18 insertObject:v10 atIndex:v12];
  if ([BKUserSortOrderManager resortDescendingSortKeyedObjects:v18])
  {
    v13 = +[BKLibraryManager defaultManager];
    uiChildContext = [v13 uiChildContext];
    hasChanges = [uiChildContext hasChanges];

    if (hasChanges)
    {
      [(BKLibraryBookshelfBooksDataSource *)self setSuppressChangeNotification:1];
      uiChildContext2 = [v13 uiChildContext];
      [uiChildContext2 setSaveContext:2];

      uiChildContext3 = [v13 uiChildContext];
      [uiChildContext3 save:0];

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

- (void)_loadResourcesForAssetIDs:(NSArray *)ds audiobookAssetIDs:(NSArray *)iDs completionHandler:(id)handler
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = iDs;
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
  dsCopy = ds;
  iDsCopy = iDs;
  selfCopy = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end