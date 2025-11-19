@interface HDCurrentActivityCacheQueryServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDCurrentActivityCacheQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
- (void)_queue_stop;
- (void)activityCacheManager:(id)a3 changedTodayActivityCache:(id)a4;
@end

@implementation HDCurrentActivityCacheQueryServer

- (HDCurrentActivityCacheQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDCurrentActivityCacheQueryServer;
  v14 = [(HDCurrentActivityCacheQueryServer *)&v20 initWithUUID:v10 configuration:v11 client:v12 delegate:v13];
  if (v14)
  {
    v15 = [v11 statisticsIntervalComponents];
    statisticsIntervalComponents = v14->_statisticsIntervalComponents;
    v14->_statisticsIntervalComponents = v15;

    v17 = +[NSCalendar currentCalendar];
    calendar = v14->_calendar;
    v14->_calendar = v17;
  }

  return v14;
}

- (void)_queue_start
{
  if ([(HDCurrentActivityCacheQueryServer *)self shouldObserveActivityCache])
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
    [WeakRetained addActivityCacheObserver:self];
  }

  v4.receiver = self;
  v4.super_class = HDCurrentActivityCacheQueryServer;
  [(HDCurrentActivityCacheQueryServer *)&v4 _queue_start];
}

- (void)_queue_stop
{
  if ([(HDCurrentActivityCacheQueryServer *)self shouldObserveActivityCache])
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
    [WeakRetained removeActivityCacheObserver:self];
  }

  v4.receiver = self;
  v4.super_class = HDCurrentActivityCacheQueryServer;
  [(HDCurrentActivityCacheQueryServer *)&v4 _queue_stop];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 activityCacheInterface];

  if (v16)
  {
    v17 = +[HDActivityDemoDataStore shouldShowActivityDemoData];
    v18 = off_34370;
    if (!v17)
    {
      v18 = off_34378;
    }

    v19 = [objc_alloc(*v18) initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v20 = v19;
    if (v19)
    {
      objc_storeWeak(v19 + 4, v16);
    }
  }

  else
  {
    [NSError hk_assignError:a7 code:100 description:@"Activity cache manager is unavailable"];
    v20 = 0;
  }

  return v20;
}

- (void)activityCacheManager:(id)a3 changedTodayActivityCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDCurrentActivityCacheQueryServer *)self clientProxy];
  v9 = [v8 remoteObjectProxy];

  if (v9 && ([(HKActivityCache *)self->_lastActivityCache _isEqualToActivityCache:v7]& 1) == 0)
  {
    v10 = objc_alloc_init(HKCurrentActivityCacheQueryResult);
    [v10 setCurrentActivityCache:v7];
    v11 = [v7 cacheIndex];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_D184;
    v19 = &unk_34B38;
    v12 = v10;
    v20 = v12;
    v21 = self;
    [v6 accessStatisticsBuilderWithCacheIndex:v11 handler:&v16];
    v13 = [(HDCurrentActivityCacheQueryServer *)self queryUUID:v16];
    [v9 client_deliverQueryResult:v12 queryUUID:v13];

    v14 = [v7 copy];
    lastActivityCache = self->_lastActivityCache;
    self->_lastActivityCache = v14;
  }
}

@end