@interface HDCurrentActivityCacheQueryServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDCurrentActivityCacheQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
- (void)_queue_stop;
- (void)activityCacheManager:(id)manager changedTodayActivityCache:(id)cache;
@end

@implementation HDCurrentActivityCacheQueryServer

- (HDCurrentActivityCacheQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HDCurrentActivityCacheQueryServer;
  v14 = [(HDCurrentActivityCacheQueryServer *)&v20 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  if (v14)
  {
    statisticsIntervalComponents = [configurationCopy statisticsIntervalComponents];
    statisticsIntervalComponents = v14->_statisticsIntervalComponents;
    v14->_statisticsIntervalComponents = statisticsIntervalComponents;

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

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  activityCacheInterface = [profile activityCacheInterface];

  if (activityCacheInterface)
  {
    v17 = +[HDActivityDemoDataStore shouldShowActivityDemoData];
    v18 = off_34370;
    if (!v17)
    {
      v18 = off_34378;
    }

    v19 = [objc_alloc(*v18) initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v20 = v19;
    if (v19)
    {
      objc_storeWeak(v19 + 4, activityCacheInterface);
    }
  }

  else
  {
    [NSError hk_assignError:error code:100 description:@"Activity cache manager is unavailable"];
    v20 = 0;
  }

  return v20;
}

- (void)activityCacheManager:(id)manager changedTodayActivityCache:(id)cache
{
  managerCopy = manager;
  cacheCopy = cache;
  clientProxy = [(HDCurrentActivityCacheQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  if (remoteObjectProxy && ([(HKActivityCache *)self->_lastActivityCache _isEqualToActivityCache:cacheCopy]& 1) == 0)
  {
    v10 = objc_alloc_init(HKCurrentActivityCacheQueryResult);
    [v10 setCurrentActivityCache:cacheCopy];
    cacheIndex = [cacheCopy cacheIndex];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_D184;
    v19 = &unk_34B38;
    v12 = v10;
    v20 = v12;
    selfCopy = self;
    [managerCopy accessStatisticsBuilderWithCacheIndex:cacheIndex handler:&v16];
    v13 = [(HDCurrentActivityCacheQueryServer *)self queryUUID:v16];
    [remoteObjectProxy client_deliverQueryResult:v12 queryUUID:v13];

    v14 = [cacheCopy copy];
    lastActivityCache = self->_lastActivityCache;
    self->_lastActivityCache = v14;
  }
}

@end