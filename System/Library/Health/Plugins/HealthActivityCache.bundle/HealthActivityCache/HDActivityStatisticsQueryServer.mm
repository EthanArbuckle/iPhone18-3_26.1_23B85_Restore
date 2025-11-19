@interface HDActivityStatisticsQueryServer
- (HDActivityStatisticsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDActivityStatisticsQueryServer

- (HDActivityStatisticsQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v44.receiver = self;
  v44.super_class = HDActivityStatisticsQueryServer;
  v14 = [(HDActivityStatisticsQueryServer *)&v44 initWithUUID:v10 configuration:v11 client:v12 delegate:v13];
  if (v14)
  {
    v15 = [v12 profile];
    v16 = [v15 sourceManager];
    sourceManager = v14->_sourceManager;
    v14->_sourceManager = v16;

    v18 = [v11 startDate];
    startDate = v14->_startDate;
    v14->_startDate = v18;

    v20 = [v11 endDate];
    endDate = v14->_endDate;
    v14->_endDate = v20;

    v22 = [v11 moveIntervalComponents];
    moveIntervalComponents = v14->_moveIntervalComponents;
    v14->_moveIntervalComponents = v22;

    v24 = [v11 exerciseIntervalComponents];
    exerciseIntervalComponents = v14->_exerciseIntervalComponents;
    v14->_exerciseIntervalComponents = v24;

    v14->_deliversUpdates = [v11 shouldDeactivateAfterInitialResults] ^ 1;
    objc_initWeak(&location, v14);
    v26 = [_HKDelayedOperation alloc];
    v27 = [(HDActivityStatisticsQueryServer *)v14 queryQueue];
    [v11 updateInterval];
    v29 = v28;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1E724;
    v41[3] = &unk_348B0;
    objc_copyWeak(&v42, &location);
    v30 = [v26 initWithQueue:v27 delay:v41 block:v29];
    updateOperation = v14->_updateOperation;
    v14->_updateOperation = v30;

    v32 = [_HKDelayedOperation alloc];
    v33 = [(HDActivityStatisticsQueryServer *)v14 queryQueue];
    [v11 updateInterval];
    v35 = v34;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1E828;
    v39[3] = &unk_348B0;
    objc_copyWeak(&v40, &location);
    v36 = [v32 initWithQueue:v33 delay:v39 block:v35];
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