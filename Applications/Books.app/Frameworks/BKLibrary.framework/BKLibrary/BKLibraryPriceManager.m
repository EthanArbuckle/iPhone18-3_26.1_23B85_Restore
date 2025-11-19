@interface BKLibraryPriceManager
- (BKLibraryManager)libraryManager;
- (BKLibraryPriceManager)initWithLibraryManager:(id)a3;
- (void)_callCompletionHandlers:(id)a3;
- (void)_fetchPricesForStoreAssetIDs;
- (void)_fetchPricesForStoreAssets:(id)a3 forGeneration:(unint64_t)a4;
- (void)_invalidate:(id)a3;
- (void)_notifyListeners:(id)a3;
- (void)addListener:(id)a3;
- (void)cancelForAssetID:(id)a3;
- (void)collectPricesForSeriesStoreIDs:(id)a3 isAudiobookSeries:(BOOL)a4;
- (void)dealloc;
- (void)fetchPriceForAssetID:(id)a3 completion:(id)a4;
- (void)invalidate:(id)a3;
- (void)removeListener:(id)a3;
- (void)testPriceForStoreID:(id)a3 completion:(id)a4;
@end

@implementation BKLibraryPriceManager

- (BKLibraryPriceManager)initWithLibraryManager:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BKLibraryPriceManager;
  v5 = [(BKLibraryPriceManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryManager, v4);
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

- (void)collectPricesForSeriesStoreIDs:(id)a3 isAudiobookSeries:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
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
        v15 = [(BKLibraryPriceManagerAsset *)v14 initWithType:v4 storeID:v13, v20];
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

  v17 = [(BKLibraryPriceManager *)self allStoreAssets];
  v18 = [(BKLibraryPriceManager *)self seriesAssets];
  [v17 addEntriesFromDictionary:v18];

  v19 = [(BKLibraryPriceManager *)self seriesAssets];
  [(BKLibraryPriceManager *)self _fetchPricesForStoreAssets:v19 forGeneration:[(BKLibraryPriceManager *)self generationCount]];
}

- (void)fetchPriceForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryPriceManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5D488;
  block[3] = &unk_D62F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)cancelForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5D880;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5D9A4;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5DAD0;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)invalidate:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5DC84;
  v7[3] = &unk_D5550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_invalidate:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self prices];
  [v5 removeAllObjects];

  v6 = [(BKLibraryPriceManager *)self allStoreAssets];
  [v6 removeAllObjects];

  [(BKLibraryPriceManager *)self _callCompletionHandlers:0];
  v7 = [(BKLibraryPriceManager *)self dispatchQueue];
  dispatch_suspend(v7);

  v8 = [(BKLibraryPriceManager *)self libraryManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5DD98;
  v10[3] = &unk_D71D8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 allUnownedStoreAssetIDs:v10];
}

- (void)_fetchPricesForStoreAssetIDs
{
  v3 = [(BKLibraryPriceManager *)self generationFetched];
  if (v3 != [(BKLibraryPriceManager *)self generationCount])
  {
    [(BKLibraryPriceManager *)self setGenerationFetched:[(BKLibraryPriceManager *)self generationCount]];
    v4 = [(BKLibraryPriceManager *)self allStoreAssets];
    [(BKLibraryPriceManager *)self _fetchPricesForStoreAssets:v4 forGeneration:[(BKLibraryPriceManager *)self generationCount]];
  }
}

- (void)_fetchPricesForStoreAssets:(id)a3 forGeneration:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v5 allValues];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = [v13 storeID];
        if (v14)
        {
          v16 = v7;
        }

        else
        {
          v16 = v6;
        }

        [v16 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  v22[5] = a4;
  [v17 fetchMixedAssetsWithBookIds:v6 audiobookIds:v7 relationships:0 views:0 additionalParameters:0 batchSize:0 metadata:v20 completionHandler:v22];
}

- (void)_notifyListeners:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryPriceManager *)self listeners];
  v6 = [v5 copy];

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

        v12 = [*(*(&v13 + 1) + 8 * v11) nonretainedObjectValue];
        if (objc_opt_respondsToSelector())
        {
          [v12 priceManager:self updatedPrices:v4];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callCompletionHandlers:(id)a3
{
  v23 = a3;
  v21 = self;
  v4 = [(BKLibraryPriceManager *)self completionHandlers];
  v5 = [v4 copy];

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
        v11 = [v23 objectForKeyedSubscript:v10];
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

        v19 = [(BKLibraryPriceManager *)v21 completionHandlers];
        [v19 removeObjectForKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)testPriceForStoreID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BKLibraryPriceManager *)self testQueue];
  v9 = dispatch_time(0, 15000000000);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5ECCC;
  v12[3] = &unk_D5DF0;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_after(v9, v8, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end