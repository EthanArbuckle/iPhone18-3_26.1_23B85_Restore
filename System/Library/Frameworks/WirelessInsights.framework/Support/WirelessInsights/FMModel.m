@interface FMModel
- (FMModel)initWithFMCoreData:(id)a3 withQueueName:(const char *)a4;
- (id)findContextUuidsToDelete:(id)a3;
- (void)_handleAirplaneModeActiveChanged:(BOOL)a3;
- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4;
- (void)_handleLocationAuthorizationUpdate:(BOOL)a3;
- (void)_handleLocationUpdate:(id)a3;
- (void)_handleRadioStateChanged:(id)a3;
- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3;
- (void)_handleSignalStrengthChanged:(id)a3 bars:(id)a4;
- (void)_handleVisitEnded:(id)a3;
- (void)_handleVisitStarted:(id)a3;
- (void)_initializeStateForContext:(id)a3 atTime:(id)a4;
- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5;
- (void)dealloc;
- (void)handleAirplaneModeActiveChanged:(BOOL)a3;
- (void)handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)handleIncomingMetric:(id)a3 withPayload:(id)a4;
- (void)handleLocationAuthorizationUpdate:(BOOL)a3;
- (void)handleLocationUpdate:(id)a3;
- (void)handleRadioStateChanged:(id)a3;
- (void)handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4;
- (void)handleRegulatoryDomainEstimateUpdate:(id)a3;
- (void)handleSignalStrengthChanged:(id)a3 bars:(id)a4;
- (void)handleVisitEnded:(id)a3;
- (void)handleVisitStarted:(id)a3;
- (void)populateSubscriptionContextsInUse:(id)a3;
@end

@implementation FMModel

- (FMModel)initWithFMCoreData:(id)a3 withQueueName:(const char *)a4
{
  v6 = a3;
  if (!v6)
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

  [(FMModel *)self set_queue:dispatch_queue_create(a4, 0)];
  if (![(FMModel *)self _queue]|| ([(FMModel *)self set_initialSyncGroup:dispatch_group_create()], ![(FMModel *)self _initialSyncGroup]))
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  [(FMModel *)self setFmCoreData:v6];
  v7 = objc_alloc_init(NSMutableDictionary);
  [(FMModel *)self setContextUUIDToStateMap:v7];

  v8 = [[FMCoreTelephonyController alloc] initWithFMModel:self];
  [(FMModel *)self setFmCoreTelephonyController:v8];

  v9 = [(FMModel *)self fmCoreTelephonyController];

  if (!v9)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100207010();
    }

    goto LABEL_13;
  }

  v10 = [[FMRegulatoryDomainController alloc] initWithFMModel:self];
  [(FMModel *)self setFmRegulatoryDomainController:v10];

  v11 = [(FMModel *)self fmRegulatoryDomainController];

  v12 = *(qword_1002DBE98 + 136);
  if (!v11)
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
  v13 = self;
LABEL_14:

  return v13;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100207078();
  }

  v3 = [(FMModel *)self fmCoreTelephonyController];
  [v3 removeAsDelegate];

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

- (void)populateSubscriptionContextsInUse:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _initialSyncGroup];
  v6 = [(FMModel *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C8E9C;
  v8[3] = &unk_1002AD7E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_async(v5, v6, v8);
}

- (void)_initializeStateForContext:(id)a3 atTime:(id)a4
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100207110();
  }

  [NSException raise:@"NotImplementedException" format:@"Base class does not implement this method"];
}

- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100207144();
  }

  [NSException raise:@"NotImplementedException" format:@"Base class does not implement this method"];
}

- (void)_handleAirplaneModeActiveChanged:(BOOL)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207178(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002071F0(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100207268(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleSignalStrengthChanged:(id)a3 bars:(id)a4
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002072E0(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)_handleRadioStateChanged:(id)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207358(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleAirplaneModeActiveChanged:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C945C;
  v3[3] = &unk_1002AF950;
  v3[4] = self;
  v4 = a3;
  dispatch_async([(FMModel *)self _queue], v3);
}

- (void)handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9550;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleCellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9644;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleSignalStrengthChanged:(id)a3 bars:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9738;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleRadioStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9804;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleLocationUpdate:(id)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002073D0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleLocationAuthorizationUpdate:(BOOL)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207448(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleVisitStarted:(id)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002074C0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_handleVisitEnded:(id)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100207538(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleLocationUpdate:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C99EC;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleLocationAuthorizationUpdate:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C9A7C;
  v3[3] = &unk_1002AF950;
  v3[4] = self;
  v4 = a3;
  dispatch_async([(FMModel *)self _queue], v3);
}

- (void)handleVisitStarted:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9B48;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleVisitEnded:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9C10;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3
{
  v3 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002075B0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)handleRegulatoryDomainEstimateUpdate:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9D20;
  v7[3] = &unk_1002AD7E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4
{
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100207628(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)handleIncomingMetric:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMModel *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9E58;
  block[3] = &unk_1002AD808;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)findContextUuidsToDelete:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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

        v10 = [*(*(&v22 + 1) + 8 * i) uuid];
        [v5 addObject:v10];
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
  v12 = [(FMModel *)self contextUUIDToStateMap];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  return v11;
}

@end