@interface BKLibraryPriceManager
- (BKLibraryManager)libraryManager;
- (BKLibraryPriceManager)initWithLibraryManager:(id)manager;
- (void)_callCompletionHandlers:(id)handlers;
- (void)_fetchPricesForStoreAssetIDs;
- (void)_fetchPricesForStoreAssets:(id)assets forGeneration:(unint64_t)generation;
- (void)_invalidate:(id)_invalidate;
- (void)_notifyListeners:(id)listeners;
- (void)addListener:(id)listener;
- (void)cancelForAssetID:(id)d;
- (void)collectPricesForSeriesStoreIDs:(id)ds isAudiobookSeries:(BOOL)series;
- (void)dealloc;
- (void)fetchPriceForAssetID:(id)d completion:(id)completion;
- (void)invalidate:(id)invalidate;
- (void)removeListener:(id)listener;
- (void)testPriceForStoreID:(id)d completion:(id)completion;
@end

@implementation BKLibraryPriceManager

- (BKLibraryPriceManager)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = BKLibraryPriceManager;
  v5 = [(BKLibraryPriceManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryManager, managerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("com.apple.iBooks.BKLibraryPriceManager.dispatchQueue", v8);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v9;

    v11 = objc_opt_new();
    prices = v6->_prices;
    v6->_prices = v11;

    v13 = objc_opt_new();
    completionHandlers = v6->_completionHandlers;
    v6->_completionHandlers = v13;

    v15 = objc_opt_new();
    listeners = v6->_listeners;
    v6->_listeners = v15;

    v17 = objc_opt_new();
    allStoreAssets = v6->_allStoreAssets;
    v6->_allStoreAssets = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("BCCloudAssetManager.testQueue", v19);
    testQueue = v6->_testQueue;
    v6->_testQueue = v20;

    *&v6->_generationCount = xmmword_A55E0;
    v22 = +[NSNotificationCenter defaultCenter];
    v23 = +[BKReachability sharedReachabilityForInternetConnection];
    [v22 addObserver:v6 selector:"_internetReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v23];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[BKReachability sharedReachabilityForInternetConnection];
  [v3 removeObserver:self name:@"kNetworkReachabilityChangedNotification" object:v4];

  v5.receiver = self;
  v5.super_class = BKLibraryPriceManager;
  [(BKLibraryPriceManager *)&v5 dealloc];
}

- (void)collectPricesForSeriesStoreIDs:(id)ds isAudiobookSeries:(BOOL)series
{
  seriesCopy = series;
  dsCopy = ds;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v14 = [BKLibraryPriceManagerAsset alloc];
        v15 = [(BKLibraryPriceManagerAsset *)v14 initWithType:seriesCopy storeID:v13, v20];
        [v7 setObject:v15 forKeyedSubscript:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  [(BKLibraryPriceManager *)self setSeriesAssets:v16];

  allStoreAssets = [(BKLibraryPriceManager *)self allStoreAssets];
  seriesAssets = [(BKLibraryPriceManager *)self seriesAssets];
  [allStoreAssets addEntriesFromDictionary:seriesAssets];

  seriesAssets2 = [(BKLibraryPriceManager *)self seriesAssets];
  [(BKLibraryPriceManager *)self _fetchPricesForStoreAssets:seriesAssets2 forGeneration:[(BKLibraryPriceManager *)self generationCount]];
}

- (void)fetchPriceForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5D488;
  block[3] = &unk_D62F8;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)cancelForAssetID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5D880;
  v7[3] = &unk_D5420;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5D9A4;
  v7[3] = &unk_D5420;
  v8 = listenerCopy;
  selfCopy = self;
  v6 = listenerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5DAD0;
  v7[3] = &unk_D5420;
  v8 = listenerCopy;
  selfCopy = self;
  v6 = listenerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)invalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5DC84;
  v7[3] = &unk_D5550;
  v7[4] = self;
  v8 = invalidateCopy;
  v6 = invalidateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_invalidate:(id)_invalidate
{
  _invalidateCopy = _invalidate;
  prices = [(BKLibraryPriceManager *)self prices];
  [prices removeAllObjects];

  allStoreAssets = [(BKLibraryPriceManager *)self allStoreAssets];
  [allStoreAssets removeAllObjects];

  [(BKLibraryPriceManager *)self _callCompletionHandlers:0];
  dispatchQueue = [(BKLibraryPriceManager *)self dispatchQueue];
  dispatch_suspend(dispatchQueue);

  libraryManager = [(BKLibraryPriceManager *)self libraryManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5DD98;
  v10[3] = &unk_D71D8;
  v10[4] = self;
  v11 = _invalidateCopy;
  v9 = _invalidateCopy;
  [libraryManager allUnownedStoreAssetIDs:v10];
}

- (void)_fetchPricesForStoreAssetIDs
{
  generationFetched = [(BKLibraryPriceManager *)self generationFetched];
  if (generationFetched != [(BKLibraryPriceManager *)self generationCount])
  {
    [(BKLibraryPriceManager *)self setGenerationFetched:[(BKLibraryPriceManager *)self generationCount]];
    allStoreAssets = [(BKLibraryPriceManager *)self allStoreAssets];
    [(BKLibraryPriceManager *)self _fetchPricesForStoreAssets:allStoreAssets forGeneration:[(BKLibraryPriceManager *)self generationCount]];
  }
}

- (void)_fetchPricesForStoreAssets:(id)assets forGeneration:(unint64_t)generation
{
  assetsCopy = assets;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [assetsCopy allValues];
  v9 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        type = [v13 type];
        storeID = [v13 storeID];
        if (type)
        {
          v16 = v7;
        }

        else
        {
          v16 = v6;
        }

        [v16 addObject:storeID];
      }

      v10 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = +[BCMBridgedCatalogService sharedInstance];
  v18 = [BFMRequestMetadata alloc];
  v19 = [NSString stringWithFormat:@"%s", "BKLibraryPriceManager.m"];
  v20 = [v18 initWithFileID:v19 line:319];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_5E3FC;
  v22[3] = &unk_D7200;
  v22[4] = self;
  v22[5] = generation;
  [v17 fetchMixedAssetsWithBookIds:v6 audiobookIds:v7 relationships:0 views:0 additionalParameters:0 batchSize:0 metadata:v20 completionHandler:v22];
}

- (void)_notifyListeners:(id)listeners
{
  listenersCopy = listeners;
  listeners = [(BKLibraryPriceManager *)self listeners];
  v6 = [listeners copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        nonretainedObjectValue = [*(*(&v13 + 1) + 8 * v11) nonretainedObjectValue];
        if (objc_opt_respondsToSelector())
        {
          [nonretainedObjectValue priceManager:self updatedPrices:listenersCopy];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callCompletionHandlers:(id)handlers
{
  handlersCopy = handlers;
  selfCopy = self;
  completionHandlers = [(BKLibraryPriceManager *)self completionHandlers];
  v5 = [completionHandlers copy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v5;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [handlersCopy objectForKeyedSubscript:v10];
        v12 = [v22 objectForKeyedSubscript:v10];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = objc_retainBlock(*(*(&v24 + 1) + 8 * j));
              v18 = v17;
              if (v17)
              {
                (*(v17 + 2))(v17, v10, v11);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        completionHandlers2 = [(BKLibraryPriceManager *)selfCopy completionHandlers];
        [completionHandlers2 removeObjectForKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)testPriceForStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  testQueue = [(BKLibraryPriceManager *)self testQueue];
  v9 = dispatch_time(0, 15000000000);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5ECCC;
  v12[3] = &unk_D5DF0;
  objc_copyWeak(&v15, &location);
  v13 = dCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  dispatch_after(v9, testQueue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end