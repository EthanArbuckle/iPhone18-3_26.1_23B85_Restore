@interface ActivitySummaryCache
+ (ActivitySummaryCache)sharedInstance;
- (ActivitySummaryCache)init;
- (id)objectForCacheIndex:(int64_t)index;
- (int64_t)earliestActivitySummaryIndex;
- (int64_t)latestActivitySummaryIndex;
- (int64_t)numberOfActivitySummaries;
- (void)loadDataIfNeeded;
- (void)removeObjectForCacheIndex:(int64_t)index;
- (void)setObject:(id)object forCacheIndex:(int64_t)index;
- (void)startActivitySummaryQuery;
@end

@implementation ActivitySummaryCache

- (void)loadDataIfNeeded
{
  if (!self->_query)
  {
    v7 = v2;
    v8 = v3;
    _HKInitializeLogging();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[FASC] Initialize and start activity summary query", v6, 2u);
    }

    [(ActivitySummaryCache *)self startActivitySummaryQuery];
  }
}

+ (ActivitySummaryCache)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010F0BC;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F9AC0 != -1)
  {
    dispatch_once(&qword_1008F9AC0, block);
  }

  v2 = qword_1008F9AC8;

  return v2;
}

- (void)setObject:(id)object forCacheIndex:(int64_t)index
{
  objectCopy = object;
  readWriteQueue = self->_readWriteQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EAC8;
  block[3] = &unk_10083C6E8;
  v10 = objectCopy;
  indexCopy = index;
  block[4] = self;
  v8 = objectCopy;
  dispatch_sync(readWriteQueue, block);
}

- (void)removeObjectForCacheIndex:(int64_t)index
{
  readWriteQueue = self->_readWriteQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EBE0;
  v4[3] = &unk_10083BFA0;
  v4[4] = self;
  v4[5] = index;
  dispatch_sync(readWriteQueue, v4);
}

- (id)objectForCacheIndex:(int64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10010ED34;
  v11 = sub_10010ED44;
  v12 = 0;
  readWriteQueue = self->_readWriteQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010ED4C;
  block[3] = &unk_10083C920;
  block[4] = self;
  block[5] = &v7;
  block[6] = index;
  dispatch_sync(readWriteQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int64_t)numberOfActivitySummaries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  readWriteQueue = self->_readWriteQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010EE78;
  v5[3] = &unk_10083C948;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)earliestActivitySummaryIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  readWriteQueue = self->_readWriteQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010EF5C;
  v5[3] = &unk_10083C948;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)latestActivitySummaryIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  readWriteQueue = self->_readWriteQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010F01C;
  v5[3] = &unk_10083C948;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(readWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ActivitySummaryCache)init
{
  v8.receiver = self;
  v8.super_class = ActivitySummaryCache;
  v2 = [(ActivitySummaryCache *)&v8 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    readWriteQueue = v2->_readWriteQueue;
    v2->_readWriteQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    cache = v2->_cache;
    v2->_cache = v5;
  }

  return v2;
}

- (void)startActivitySummaryQuery
{
  objc_initWeak(location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10010F474;
  v30[3] = &unk_10083AB78;
  objc_copyWeak(&v31, location);
  v3 = objc_retainBlock(v30);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10010F760;
  v28[3] = &unk_10083A710;
  objc_copyWeak(&v29, location);
  v4 = objc_retainBlock(v28);
  v5 = +[NSDate date];
  v6 = _HKActivityCacheDateComponentsFromCacheIndex();
  v7 = +[NSDate distantFuture];
  v8 = +[NSCalendar hk_gregorianCalendar];
  v9 = _HKActivityCacheDateComponentsFromDate();

  v10 = [HKQuery predicateForActivitySummariesBetweenStartDateComponents:v6 endDateComponents:v9];
  v11 = [HKActivitySummaryQuery alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10010F894;
  v24[3] = &unk_10083C970;
  v12 = v4;
  v26 = v12;
  v13 = v5;
  v25 = v13;
  v14 = v3;
  v27 = v14;
  v15 = [v11 initWithPredicate:v10 resultsHandler:v24];
  query = self->_query;
  self->_query = v15;

  v17 = self->_query;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10010FA3C;
  v21[3] = &unk_10083C998;
  v18 = v12;
  v22 = v18;
  v19 = v14;
  v23 = v19;
  [(HKActivitySummaryQuery *)v17 setUpdateHandler:v21];
  [(HKActivitySummaryQuery *)self->_query setShouldIncludeActivitySummaryPrivateProperties:1];
  [(HKActivitySummaryQuery *)self->_query setShouldIncludeActivitySummaryStatistics:0];
  [(HKActivitySummaryQuery *)self->_query setDebugIdentifier:@"ActivitySummaryCache.activitySummaryQuery"];
  healthStore = [objc_opt_class() healthStore];
  [healthStore executeQuery:self->_query];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

@end