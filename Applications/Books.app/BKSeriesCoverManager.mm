@interface BKSeriesCoverManager
+ (id)sharedInstance;
- (BKSeriesCoverManager)init;
- (id)seriesIDContainingBook:(id)book;
- (void)_notifyWithChanges:(id)changes;
- (void)_rebuild;
- (void)addSeriesCoverObserver:(id)observer;
- (void)assetIDsAndOptionsForBooksInSeries:(id)series completion:(id)completion;
- (void)dealloc;
- (void)invalidateCacheForSeriesId:(id)id;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeSeriesCoverObserver:(id)observer;
- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed;
- (void)withBooksInSeries:(id)series performBlockAsync:(id)async;
@end

@implementation BKSeriesCoverManager

+ (id)sharedInstance
{
  if (qword_100AF7538 != -1)
  {
    sub_10078E068();
  }

  v3 = qword_100AF7530;

  return v3;
}

- (BKSeriesCoverManager)init
{
  v25.receiver = self;
  v25.super_class = BKSeriesCoverManager;
  v2 = [(BKSeriesCoverManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    assetIDsAndOptionsForBooksInSeriesCache = v3->_assetIDsAndOptionsForBooksInSeriesCache;
    v3->_assetIDsAndOptionsForBooksInSeriesCache = v4;

    map = v3->_map;
    v3->_map = 0;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("BCCoverCache.seriesCoverBooksSync", v7);
    sync = v3->_sync;
    v3->_sync = v8;

    v10 = dispatch_queue_create("BCCoverCache.seriesCoverBooksNotify", v7);
    notify = v3->_notify;
    v3->_notify = v10;

    v12 = objc_opt_new();
    changedSeriesIDs = v3->_changedSeriesIDs;
    v3->_changedSeriesIDs = v12;

    v14 = +[NSMapTable weakToStrongObjectsMapTable];
    observers = v3->_observers;
    v3->_observers = v14;

    v16 = [BCManagedObjectIDMonitor alloc];
    v17 = +[BKLibraryManager defaultManager];
    persistentStoreCoordinator = [v17 persistentStoreCoordinator];
    v19 = +[BKLibraryManager predicateForContainerLibraryAssets];
    v20 = [v16 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKLibraryAsset" predicate:v19 mapProperty:@"assetID" propertiesOfInterest:0 observer:v3];
    seriesMonitor = v3->_seriesMonitor;
    v3->_seriesMonitor = v20;

    v22 = +[BURestrictionsProvider sharedInstance];
    [v22 addObserver:v3];

    v23 = +[NSUserDefaults standardUserDefaults];
    [v23 addObserver:v3 forKeyPath:@"BKShowAllPurchases" options:1 context:off_100ACD858];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100ACD858 == context)
  {
    sync = self->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BDBB8;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(sync, block);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKSeriesCoverManager;
    [(BKSeriesCoverManager *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"BKShowAllPurchases" context:off_100ACD858];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  dispatch_sync(self->_sync, &stru_100A06600);
  map = self->_map;
  self->_map = 0;

  changedSeriesIDs = self->_changedSeriesIDs;
  self->_changedSeriesIDs = 0;

  observers = self->_observers;
  self->_observers = 0;

  v8.receiver = self;
  v8.super_class = BKSeriesCoverManager;
  [(BKSeriesCoverManager *)&v8 dealloc];
}

- (void)invalidateCacheForSeriesId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (idCopy)
  {
    sync = self->_sync;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BDDA4;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = idCopy;
    dispatch_async(sync, v7);
  }
}

- (void)_notifyWithChanges:(id)changes
{
  changesCopy = changes;
  sync = self->_sync;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BDE7C;
  v7[3] = &unk_100A03440;
  v8 = changesCopy;
  selfCopy = self;
  v6 = changesCopy;
  dispatch_async(sync, v7);
}

- (void)_rebuild
{
  map = self->_map;
  if (map)
  {
    v4 = [(NSDictionary *)map mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v6 = [(NSMutableSet *)self->_changedSeriesIDs copy];
  [(NSMutableSet *)self->_changedSeriesIDs removeAllObjects];
  if ([v6 count])
  {
    v7 = +[BKLibraryManager defaultManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BE0B4;
    v8[3] = &unk_100A06628;
    v9 = v6;
    v10 = v5;
    selfCopy = self;
    [v7 performBackgroundReadOnlyBlock:v8];
  }
}

- (void)assetIDsAndOptionsForBooksInSeries:(id)series completion:(id)completion
{
  seriesCopy = series;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100027344;
  v27 = sub_1000275E8;
  v28 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_1000BE784;
  v19 = &unk_100A05B18;
  selfCopy = self;
  v22 = &v23;
  v8 = seriesCopy;
  v21 = v8;
  v9 = v17;
  os_unfair_lock_lock(&self->_accessLock);
  v18(v9);
  os_unfair_lock_unlock(&self->_accessLock);

  if ([v24[5] count])
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v24[5]);
    }
  }

  else
  {
    v12 = +[BKLibraryManager defaultManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BE7FC;
    v13[3] = &unk_100A04C28;
    v14 = v8;
    selfCopy2 = self;
    v16 = completionCopy;
    [v12 performBlockOnWorkerQueue:v13];

    v11 = v14;
  }

  _Block_object_dispose(&v23, 8);
}

- (id)seriesIDContainingBook:(id)book
{
  bookCopy = book;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100027344;
  v15 = sub_1000275E8;
  v16 = 0;
  v4 = +[BKLibraryManager defaultManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BEE7C;
  v8[3] = &unk_100A06650;
  v5 = bookCopy;
  v9 = v5;
  v10 = &v11;
  [v4 performNamed:@"seriesIDContainingBook" workerQueueBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)withBooksInSeries:(id)series performBlockAsync:(id)async
{
  seriesCopy = series;
  asyncCopy = async;
  sync = self->_sync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BF0D8;
  block[3] = &unk_100A049A0;
  block[4] = self;
  v12 = seriesCopy;
  v13 = asyncCopy;
  v9 = asyncCopy;
  v10 = seriesCopy;
  dispatch_async(sync, block);
}

- (void)addSeriesCoverObserver:(id)observer
{
  observerCopy = observer;
  notify = self->_notify;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BF404;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(notify, v7);
}

- (void)removeSeriesCoverObserver:(id)observer
{
  observerCopy = observer;
  notify = self->_notify;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BF504;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(notify, v7);
}

- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BF59C;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  os_unfair_lock_lock(&self->_accessLock);
  sub_1000BF59C(v4);
  os_unfair_lock_unlock(&self->_accessLock);
}

@end