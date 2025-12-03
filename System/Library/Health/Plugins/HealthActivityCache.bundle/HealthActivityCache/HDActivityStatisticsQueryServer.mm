@interface HDActivityStatisticsQueryServer
- (HDActivityStatisticsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDActivityStatisticsQueryServer

- (HDActivityStatisticsQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = HDActivityStatisticsQueryServer;
  v14 = [(HDActivityStatisticsQueryServer *)&v44 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  if (v14)
  {
    profile = [clientCopy profile];
    sourceManager = [profile sourceManager];
    sourceManager = v14->_sourceManager;
    v14->_sourceManager = sourceManager;

    startDate = [configurationCopy startDate];
    startDate = v14->_startDate;
    v14->_startDate = startDate;

    endDate = [configurationCopy endDate];
    endDate = v14->_endDate;
    v14->_endDate = endDate;

    moveIntervalComponents = [configurationCopy moveIntervalComponents];
    moveIntervalComponents = v14->_moveIntervalComponents;
    v14->_moveIntervalComponents = moveIntervalComponents;

    exerciseIntervalComponents = [configurationCopy exerciseIntervalComponents];
    exerciseIntervalComponents = v14->_exerciseIntervalComponents;
    v14->_exerciseIntervalComponents = exerciseIntervalComponents;

    v14->_deliversUpdates = [configurationCopy shouldDeactivateAfterInitialResults] ^ 1;
    objc_initWeak(&location, v14);
    v26 = [_HKDelayedOperation alloc];
    queryQueue = [(HDActivityStatisticsQueryServer *)v14 queryQueue];
    [configurationCopy updateInterval];
    v29 = v28;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1E724;
    v41[3] = &unk_348B0;
    objc_copyWeak(&v42, &location);
    v30 = [v26 initWithQueue:queryQueue delay:v41 block:v29];
    updateOperation = v14->_updateOperation;
    v14->_updateOperation = v30;

    v32 = [_HKDelayedOperation alloc];
    queryQueue2 = [(HDActivityStatisticsQueryServer *)v14 queryQueue];
    [configurationCopy updateInterval];
    v35 = v34;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1E828;
    v39[3] = &unk_348B0;
    objc_copyWeak(&v40, &location);
    v36 = [v32 initWithQueue:queryQueue2 delay:v39 block:v35];
    resetOperation = v14->_resetOperation;
    v14->_resetOperation = v36;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)_queue_start
{
  v3.receiver = self;
  v3.super_class = HDActivityStatisticsQueryServer;
  [(HDActivityStatisticsQueryServer *)&v3 _queue_start];
  sub_1E780(self);
}

- (void)_queue_stop
{
  v2.receiver = self;
  v2.super_class = HDActivityStatisticsQueryServer;
  [(HDActivityStatisticsQueryServer *)&v2 _queue_stop];
}

@end