@interface FMModel
- (FMModel)initWithFMCoreData:(id)data withQueueName:(const char *)name;
- (id)findContextUuidsToDelete:(id)delete;
- (void)_handleAirplaneModeActiveChanged:(BOOL)changed;
- (void)_handleCellMonitorUpdate:(id)update info:(id)info;
- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload;
- (void)_handleLocationAuthorizationUpdate:(BOOL)update;
- (void)_handleLocationUpdate:(id)update;
- (void)_handleRadioStateChanged:(id)changed;
- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)update;
- (void)_handleSignalStrengthChanged:(id)changed bars:(id)bars;
- (void)_handleVisitEnded:(id)ended;
- (void)_handleVisitStarted:(id)started;
- (void)_initializeStateForContext:(id)context atTime:(id)time;
- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state;
- (void)dealloc;
- (void)handleAirplaneModeActiveChanged:(BOOL)changed;
- (void)handleCellMonitorUpdate:(id)update info:(id)info;
- (void)handleIncomingMetric:(id)metric withPayload:(id)payload;
- (void)handleLocationAuthorizationUpdate:(BOOL)update;
- (void)handleLocationUpdate:(id)update;
- (void)handleRadioStateChanged:(id)changed;
- (void)handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status;
- (void)handleRegulatoryDomainEstimateUpdate:(id)update;
- (void)handleSignalStrengthChanged:(id)changed bars:(id)bars;
- (void)handleVisitEnded:(id)ended;
- (void)handleVisitStarted:(id)started;
- (void)populateSubscriptionContextsInUse:(id)use;
@end

@implementation FMModel

- (FMModel)initWithFMCoreData:(id)data withQueueName:(const char *)name
{
  dataCopy = data;
  if (!dataCopy)
  {
    goto LABEL_13;
  }

  v15.receiver = self;
  v15.super_class = FMModel;
  self = [(FMModel *)&v15 init];
  if (!self)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100207044();
    }

    self = 0;
    goto LABEL_13;
  }

  [(FMModel *)self set_queue:dispatch_queue_create(name, 0)];
  if (![(FMModel *)self _queue]|| ([(FMModel *)self set_initialSyncGroup:dispatch_group_create()], ![(FMModel *)self _initialSyncGroup]))
  {
LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  [(FMModel *)self setFmCoreData:dataCopy];
  v7 = objc_alloc_init(NSMutableDictionary);
  [(FMModel *)self setContextUUIDToStateMap:v7];

  v8 = [[FMCoreTelephonyController alloc] initWithFMModel:self];
  [(FMModel *)self setFmCoreTelephonyController:v8];

  fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];

  if (!fmCoreTelephonyController)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100207010();
    }

    goto LABEL_13;
  }

  v10 = [[FMRegulatoryDomainController alloc] initWithFMModel:self];
  [(FMModel *)self setFmRegulatoryDomainController:v10];

  fmRegulatoryDomainController = [(FMModel *)self fmRegulatoryDomainController];

  v12 = *(qword_1002DBE98 + 136);
  if (!fmRegulatoryDomainController)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100206FDC();
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100206F9C();
  }

  self = self;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100207078();
  }

  fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
  [fmCoreTelephonyController removeAsDelegate];

  if ([(FMModel *)self _queue])
  {
    dispatch_release([(FMModel *)self _queue]);
  }

  if ([(FMModel *)self _initialSyncGroup])
  {
    dispatch_release([(FMModel *)self _initialSyncGroup]);
  }

  v4.receiver = self;
  v4.super_class = FMModel;
  [(FMModel *)&v4 dealloc];
}

- (void)populateSubscriptionContextsInUse:(id)use
{
  useCopy = use;
  _initialSyncGroup = [(FMModel *)self _initialSyncGroup];
  _queue = [(FMModel *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C8E9C;
  v8[3] = &unk_1002AD7E0;
  v8[4] = self;
  v9 = useCopy;
  v7 = useCopy;
  dispatch_group_async(_initialSyncGroup, _queue, v8);
}

- (void)_initializeStateForContext:(id)context atTime:(id)time
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100207110();
  }

  [NSException raise:@"NotImplementedException" format:@"Base class does not implement this method"];
}

- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100207144();
  }

  [NSException raise:@"NotImplementedException" format:@"Base class does not implement this method"];
}

- (void)_handleAirplaneModeActiveChanged:(BOOL)changed
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207178(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002071F0(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleCellMonitorUpdate:(id)update info:(id)info
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100207268(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleSignalStrengthChanged:(id)changed bars:(id)bars
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002072E0(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleRadioStateChanged:(id)changed
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207358(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleAirplaneModeActiveChanged:(BOOL)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C945C;
  v3[3] = &unk_1002AF950;
  v3[4] = self;
  changedCopy = changed;
  dispatch_async([(FMModel *)self _queue], v3);
}

- (void)handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  _queue = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9550;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = changedCopy;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = changedCopy;
  dispatch_async(_queue, block);
}

- (void)handleCellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  _queue = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9644;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = updateCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = updateCopy;
  dispatch_async(_queue, block);
}

- (void)handleSignalStrengthChanged:(id)changed bars:(id)bars
{
  changedCopy = changed;
  barsCopy = bars;
  _queue = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9738;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = changedCopy;
  v13 = barsCopy;
  v9 = barsCopy;
  v10 = changedCopy;
  dispatch_async(_queue, block);
}

- (void)handleRadioStateChanged:(id)changed
{
  changedCopy = changed;
  _queue = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9804;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(_queue, v7);
}

- (void)_handleLocationUpdate:(id)update
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002073D0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleLocationAuthorizationUpdate:(BOOL)update
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207448(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleVisitStarted:(id)started
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002074C0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleVisitEnded:(id)ended
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207538(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleLocationUpdate:(id)update
{
  updateCopy = update;
  _queue = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C99EC;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(_queue, v7);
}

- (void)handleLocationAuthorizationUpdate:(BOOL)update
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C9A7C;
  v3[3] = &unk_1002AF950;
  v3[4] = self;
  updateCopy = update;
  dispatch_async([(FMModel *)self _queue], v3);
}

- (void)handleVisitStarted:(id)started
{
  startedCopy = started;
  _queue = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9B48;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_async(_queue, v7);
}

- (void)handleVisitEnded:(id)ended
{
  endedCopy = ended;
  _queue = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9C10;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = endedCopy;
  v6 = endedCopy;
  dispatch_async(_queue, v7);
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)update
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002075B0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleRegulatoryDomainEstimateUpdate:(id)update
{
  updateCopy = update;
  _queue = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9D20;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(_queue, v7);
}

- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100207628(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)handleIncomingMetric:(id)metric withPayload:(id)payload
{
  metricCopy = metric;
  payloadCopy = payload;
  _queue = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9E58;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = metricCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = metricCopy;
  dispatch_async(_queue, block);
}

- (id)findContextUuidsToDelete:(id)delete
{
  deleteCopy = delete;
  v5 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = deleteCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        uuid = [*(*(&v22 + 1) + 8 * i) uuid];
        [v5 addObject:uuid];
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
  v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(contextUUIDToStateMap);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  return v11;
}

@end