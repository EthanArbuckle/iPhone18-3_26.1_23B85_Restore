@interface BKLibraryDataSourceATAsset
- (BKLibraryDataSourceATAsset)init;
- (BKLibraryManager)libraryManager;
- (BOOL)prioritizeImport:(id)a3 completion:(id)a4;
- (void)_syncDidFinish;
- (void)_syncDidStart;
- (void)airTrafficEnded;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)connection:(id)a3 updatedAssets:(id)a4;
- (void)connection:(id)a3 updatedProgress:(id)a4;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetsWithCompletion:(id)a3;
- (void)pushCoverForAssets:(id)a3;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSourceATAsset

- (BKLibraryDataSourceATAsset)init
{
  kdebug_trace();
  v17.receiver = self;
  v17.super_class = BKLibraryDataSourceATAsset;
  v3 = [(BKLibraryDataSourceATAsset *)&v17 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.ibooks.BKLibraryDataSourceATAssetQueue", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = objc_opt_new();
    atAssetIDs = v3->_atAssetIDs;
    v3->_atAssetIDs = v7;

    v9 = objc_opt_new();
    atAssetsInFlight = v3->_atAssetsInFlight;
    v3->_atAssetsInFlight = v9;

    v11 = objc_opt_new();
    connection = v3->_connection;
    v3->_connection = v11;

    [(ATConnection *)v3->_connection setDelegate:v3];
    v13 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016704;
    block[3] = &unk_100A033C8;
    v16 = v3;
    dispatch_async(v13, block);
  }

  kdebug_trace();
  return v3;
}

- (void)dealloc
{
  [(ATConnection *)self->_connection setDelegate:0];
  v3.receiver = self;
  v3.super_class = BKLibraryDataSourceATAsset;
  [(BKLibraryDataSourceATAsset *)&v3 dealloc];
}

- (void)fetchAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceATAsset *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBD60;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)pushCoverForAssets:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 assetID];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 temporaryAssetID];
        }

        v14 = v13;

        v15 = [v10 atAsset];
        v16 = [v15 icon];
        v17 = [v16 path];

        if (v14 && [v17 length])
        {
          [v4 setObject:v17 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v18 = +[BCCacheManager defaultCacheManager];
    [v18 addFilePaths:v4 priority:3 quality:206];
  }
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!a4)
  {
    v9 = BKATAssetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10079370C(v9);
    }
  }

  v10 = objc_retainBlock(v8);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
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
  v7 = [a3 temporaryAssetID];
  if (v7)
  {
    v8 = [(BKLibraryDataSourceATAsset *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BC240;
    block[3] = &unk_100A049A0;
    block[4] = self;
    v12 = v7;
    v13 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = objc_retainBlock(v6);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

- (BOOL)prioritizeImport:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryDataSourceATAsset *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC3C8;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  return 1;
}

- (void)connection:(id)a3 updatedProgress:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"Dataclass"];
  v7 = [(BKLibraryDataSourceATAsset *)self _supportsDataclass:v6 assetType:0];
  v8 = BKATAssetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100793750(v5, v7, v8);
  }

  if ((v7 & 1) != 0 || [(BKLibraryDataSourceATAsset *)self isSyncing])
  {
    v9 = [v5 objectForKeyedSubscript:@"Enabled"];
    v10 = [v9 BOOLValue];

    if (v10 != [(BKLibraryDataSourceATAsset *)self isSyncing])
    {
      [(BKLibraryDataSourceATAsset *)self setSyncing:v10];
      if (v10)
      {
        [(BKLibraryDataSourceATAsset *)self _syncDidStart];
      }

      else
      {
        [(BKLibraryDataSourceATAsset *)self _syncDidFinish];
      }
    }
  }
}

- (void)connection:(id)a3 updatedAssets:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v7 = BKATAssetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100793878(v5, v7);
  }

  v8 = +[NSMutableSet set];
  v9 = +[NSMutableSet set];
  v10 = +[NSMutableSet set];
  v11 = +[NSMutableSet set];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001BC884;
  v33[3] = &unk_100A0A950;
  v33[4] = self;
  v12 = v10;
  v34 = v12;
  v13 = v6;
  v35 = v13;
  v14 = v8;
  v36 = v14;
  v15 = v11;
  v37 = v15;
  v16 = v9;
  v38 = v16;
  [v5 enumerateObjectsUsingBlock:v33];
  if ([v14 isSubsetOfSet:v15])
  {
    [v14 minusSet:v15];
  }

  v17 = +[NSMutableSet set];
  v18 = +[NSMutableSet set];
  v19 = [(BKLibraryDataSourceATAsset *)self queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001BC9D8;
  v26[3] = &unk_100A0A9C8;
  v26[4] = self;
  v27 = v17;
  v28 = v16;
  v29 = v18;
  v30 = v14;
  v31 = v13;
  v32 = v12;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v18;
  v24 = v16;
  v25 = v17;
  dispatch_sync(v19, v26);
}

- (void)airTrafficEnded
{
  v3 = BKATAssetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceATAsset-airTrafficEnded: scheduling a plist reload", buf, 2u);
  }

  v4 = dispatch_time(0, 1500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD41C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_syncDidStart
{
  v2 = BKATAssetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100793990(v2);
  }
}

- (void)_syncDidFinish
{
  v3 = [(BKLibraryDataSourceATAsset *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD53C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end