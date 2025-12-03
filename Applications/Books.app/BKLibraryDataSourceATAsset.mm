@interface BKLibraryDataSourceATAsset
- (BKLibraryDataSourceATAsset)init;
- (BKLibraryManager)libraryManager;
- (BOOL)prioritizeImport:(id)import completion:(id)completion;
- (void)_syncDidFinish;
- (void)_syncDidStart;
- (void)airTrafficEnded;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)connection:(id)connection updatedAssets:(id)assets;
- (void)connection:(id)connection updatedProgress:(id)progress;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)fetchAssetsWithCompletion:(id)completion;
- (void)pushCoverForAssets:(id)assets;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
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

- (void)fetchAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(BKLibraryDataSourceATAsset *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBD60;
  v7[3] = &unk_100A03A58;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)pushCoverForAssets:(id)assets
{
  assetsCopy = assets;
  v4 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = assetsCopy;
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
        assetID = [v10 assetID];
        v12 = assetID;
        if (assetID)
        {
          temporaryAssetID = assetID;
        }

        else
        {
          temporaryAssetID = [v10 temporaryAssetID];
        }

        v14 = temporaryAssetID;

        atAsset = [v10 atAsset];
        icon = [atAsset icon];
        path = [icon path];

        if (v14 && [path length])
        {
          [v4 setObject:path forKeyedSubscript:v14];
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

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  if (!exhaustive)
  {
    v9 = BKATAssetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10079370C(v9);
    }
  }

  v10 = objc_retainBlock(completionCopy);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  temporaryAssetID = [asset temporaryAssetID];
  if (temporaryAssetID)
  {
    queue = [(BKLibraryDataSourceATAsset *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BC240;
    block[3] = &unk_100A049A0;
    block[4] = self;
    v12 = temporaryAssetID;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

- (BOOL)prioritizeImport:(id)import completion:(id)completion
{
  importCopy = import;
  completionCopy = completion;
  queue = [(BKLibraryDataSourceATAsset *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC3C8;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v13 = importCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = importCopy;
  dispatch_async(queue, block);

  return 1;
}

- (void)connection:(id)connection updatedProgress:(id)progress
{
  progressCopy = progress;
  v6 = [progressCopy objectForKeyedSubscript:@"Dataclass"];
  v7 = [(BKLibraryDataSourceATAsset *)self _supportsDataclass:v6 assetType:0];
  v8 = BKATAssetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100793750(progressCopy, v7, v8);
  }

  if ((v7 & 1) != 0 || [(BKLibraryDataSourceATAsset *)self isSyncing])
  {
    v9 = [progressCopy objectForKeyedSubscript:@"Enabled"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue != [(BKLibraryDataSourceATAsset *)self isSyncing])
    {
      [(BKLibraryDataSourceATAsset *)self setSyncing:bOOLValue];
      if (bOOLValue)
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

- (void)connection:(id)connection updatedAssets:(id)assets
{
  assetsCopy = assets;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [assetsCopy count]);
  v7 = BKATAssetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100793878(assetsCopy, v7);
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
  [assetsCopy enumerateObjectsUsingBlock:v33];
  if ([v14 isSubsetOfSet:v15])
  {
    [v14 minusSet:v15];
  }

  v17 = +[NSMutableSet set];
  v18 = +[NSMutableSet set];
  queue = [(BKLibraryDataSourceATAsset *)self queue];
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
  dispatch_sync(queue, v26);
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
  queue = [(BKLibraryDataSourceATAsset *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BD53C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end