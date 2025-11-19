@interface FMTimeSeriesModel
- (FMCoreLocationController)fmCoreLocationController;
- (FMTimeSeriesModel)initWithFMCoreData:(id)a3 locationController:(id)a4;
- (id)trimEventsAndCopyForState:(id)a3 basedOnTimestamp:(unint64_t)a4;
- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4;
- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4;
- (void)_handleSignalStrengthChanged:(id)a3 bars:(id)a4;
- (void)_initializeStateForContext:(id)a3 atTime:(id)a4;
- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5;
- (void)addEvent:(id)a3 toState:(id)a4;
- (void)dealloc;
- (void)endAnomaly:(id)a3 forState:(id)a4;
- (void)handleCongestionInfoForGCI:(id)a3 andSubsId:(unsigned int)a4 isCongested:(BOOL)a5;
- (void)maybeFetchPredictionsForAllStatesAtTime:(id)a3;
- (void)maybeFetchPredictionsForState:(id)a3 atTime:(id)a4;
- (void)removeActivePredictionsOlderThanThresholdFromState:(id)a3 atCurrentTimestamp:(unint64_t)a4;
- (void)removeEventsOutsideTimeWindowFromState:(id)a3 basedOnTimestamp:(unint64_t)a4;
- (void)sendDataCollectionTelemetryForAnomaly:(id)a3 atCurrentTime:(id)a4 atCurrentTimestamp:(unint64_t)a5;
- (void)sendDataCollectionTelemetryForEvent:(id)a3 atCurrentTime:(id)a4 atCurrentTimestamp:(unint64_t)a5;
- (void)startAnomaly:(id)a3 forState:(id)a4;
- (void)storeAndSendTelemetryForFinishedPrediction:(id)a3;
- (void)updatedActivePredictions:(NSArray *)a3 completionHandler:(id)a4;
- (void)updatedCongestionState:(BOOL)a3;
- (void)visit:(id)a3 started:(BOOL)a4;
@end

@implementation FMTimeSeriesModel

- (FMTimeSeriesModel)initWithFMCoreData:(id)a3 locationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = FMTimeSeriesModel;
  v8 = [(FMModel *)&v19 initWithFMCoreData:v6 withQueueName:"com.apple.wirelessinsightsd.FederatedMobility.FMTimeSeriesModel"];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    [(FMTimeSeriesModel *)v8 setIsLocationAuthorized:0];
    v11 = [FMBasebandMetricsController alloc];
    v20[0] = @"com.apple.Telephony.testCongestionInfo";
    v20[1] = @"com.apple.Baseband.cellularCongestionInfo";
    v12 = [NSArray arrayWithObjects:v20 count:2];
    v13 = [(FMBasebandMetricsController *)v11 initWithFMModel:v10 withSubscribedMetrics:v12];
    [(FMTimeSeriesModel *)v10 setFmBasebandMetricsController:v13];

    objc_storeWeak(&v9->_fmCoreLocationController, v7);
    [v7 addDelegate:v10];
    v14 = [(FMModel *)v10 fmCoreTelephonyController];
    -[FMTimeSeriesModel setIsAirplaneModeActive:](v10, "setIsAirplaneModeActive:", [v14 isAirplaneModeActive]);

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FD048();
    }

    v15 = [(FMModel *)v10 fmCoreTelephonyController];
    v16 = [v15 getSubscriptionContextsInUse];
    [(FMModel *)v10 populateSubscriptionContextsInUse:v16];

    v17 = v10;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FD084();
  }

  return v10;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD0B8();
  }

  v3.receiver = self;
  v3.super_class = FMTimeSeriesModel;
  [(FMModel *)&v3 dealloc];
}

- (void)_initializeStateForContext:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 uuid];
    v9 = [v6 plmn];
    sub_1001FD0F4(v8, v9, &v19);
  }

  v10 = [v6 plmn];
  v11 = v10 == 0;

  if (v11)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FD1C8();
    }
  }

  else
  {
    v12 = [FMTimeSeriesContextState alloc];
    v13 = [v6 uuid];
    v14 = [v6 subscriptionID];
    v15 = [v6 plmn];
    v16 = [(FMTimeSeriesContextState *)v12 initWithStartTime:v7 contextUUID:v13 subscriptionID:v14 homePLMN:v15];

    if (v16)
    {
      v17 = [(FMModel *)self contextUUIDToStateMap];
      v18 = [v6 uuid];
      [v17 setObject:v16 forKey:v18];
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FD154();
    }
  }
}

- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v8 uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FD23C();
  }

  v11 = [v10 subscriptionID];
  v12 = [v8 subscriptionID];
  if ([v11 isEqualToNumber:v12])
  {
    v13 = [v10 homePLMN];
    v14 = [v8 plmn];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(FMTimeSeriesModel *)self _initializeStateForContext:v8 atTime:v9];
LABEL_8:
}

- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(FMModel *)self contextUUIDToStateMap];
    v9 = [v8 objectForKey:v6];

    if (!v9)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FD358();
      }

      goto LABEL_21;
    }

    v27 = +[NSDate now];
    v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v26 = [WISTelephonyUtils getServingCellInfoFromArray:v7];
    v10 = [v9 subscriptionID];
    v28 = 0;
    v11 = [FMCoreTelephonyController cellInfoToFMServingCell:v26 atTime:v27 inSlot:v10 error:&v28];
    v12 = v28;

    if (v12 || !v11)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        v17 = [v12 localizedDescription];
        sub_1001FD300(v6, v17, buf);
      }

      goto LABEL_20;
    }

    v13 = [v9 cellChanges];
    v14 = [v13 lastObject];
    v15 = [v14 toCell];

    if (v15 && [v15 isEqual:v11])
    {
      v16 = [v11 timestamp];
      [v15 updateTimestampTo:v16];
    }

    else
    {
      v18 = [v9 cellChanges];
      v19 = [[FMCellChange alloc] initWithTime:v27 andTimestamp:v25 andCell:v11];
      [v18 addObject:v19];

      if (!v15)
      {
LABEL_19:

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }

      v20 = [v9 cellChanges];
      [FMUtil removeFirstElementsForCapacity:2 fromArray:v20];

      v21 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Cell Monitor Update for context %@: %@", buf, 0x16u);
      }

      v22 = [FMTSEventCellChanged alloc];
      v16 = [v15 gci];
      v23 = [v11 gci];
      v24 = [(FMTSEventCellChanged *)v22 initWithTimestamp:v25 fromCellGCI:v16 toCellGCI:v23];
      [(FMTimeSeriesModel *)self addEvent:v24 toState:v9];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD3C8();
  }

LABEL_22:
}

- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(FMModel *)self contextUUIDToStateMap];
    v9 = [v8 objectForKey:v6];

    v10 = os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v10)
      {
        sub_1001FD438();
      }

      v11 = [v9 curRegistrationState];
      [v9 setCurRegistrationState:v7];
      if (v11 && ([v11 isEqualToString:v7] & 1) == 0)
      {
        v21 = +[NSDate now];
        v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        if ([(FMTimeSeriesModel *)self isAirplaneModeActive])
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_1001FD540();
          }
        }

        else
        {
          if ([WISTelephonyUtils isRegistrationDisplayStatusInService:v11]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v7])
          {
            v14 = [FMTSAnomalyOutOfService alloc];
            v15 = [(FMTimeSeriesModel *)self curLocation];
            v16 = [(FMTimeSeriesModel *)self trimEventsAndCopyForState:v9 basedOnTimestamp:v12];
            v17 = [(FMTSAnomaly *)v14 initWithTime:v21 timestamp:v12 location:v15 events:v16];

            [(FMTimeSeriesModel *)self startAnomaly:v17 forState:v9];
            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              [v9 subscriptionID];
              objc_claimAutoreleasedReturnValue();
              sub_1001FD4B8();
            }

            v18 = [v9 activeAnomalies];
            [v18 removeObjectForKey:&off_1002BEDF0];
          }

          if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v11]&& [WISTelephonyUtils isRegistrationDisplayStatusInService:v7])
          {
            v19 = [v9 activeAnomalies];
            v20 = [v19 objectForKey:&off_1002BEE08];

            if (v20)
            {
              [v20 endAtTimestamp:v12];
              [(FMTimeSeriesModel *)self endAnomaly:v20 forState:v9];
            }

            else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              sub_1001FD504();
            }
          }
        }
      }
    }

    else if (v10)
    {
      sub_1001FD57C();
    }
  }

  else
  {
    v13 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Received nil display status change for context %@", buf, 0xCu);
    }
  }
}

- (void)_handleSignalStrengthChanged:(id)a3 bars:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(FMModel *)self contextUUIDToStateMap];
    v9 = [v8 objectForKey:v6];

    if (!v9)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FD628();
      }

      goto LABEL_22;
    }

    v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v11 = +[NSDate now];
    v12 = [v9 curSignalStrengthBars];
    [v9 setCurSignalStrengthBars:v7];
    if (!v12 || ([v12 isEqualToNumber:v7] & 1) != 0)
    {
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    if ([(FMTimeSeriesModel *)self isAirplaneModeActive])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FD5EC();
      }

      goto LABEL_21;
    }

    if ([v12 intValue] < 2 || objc_msgSend(v7, "intValue") > 1)
    {
      if ([v12 intValue] > 1 || objc_msgSend(v7, "intValue") < 2)
      {
        goto LABEL_20;
      }

      v17 = [v9 activeAnomalies];
      v16 = [v17 objectForKey:&off_1002BEDF0];

      if (v16)
      {
        [(FMTSAnomaly *)v16 endAtTimestamp:v10];
        [(FMTimeSeriesModel *)self endAnomaly:v16 forState:v9];
      }
    }

    else
    {
      v13 = [FMTSAnomalyLowSignalStrength alloc];
      v14 = [(FMTimeSeriesModel *)self curLocation];
      v15 = [(FMTimeSeriesModel *)self trimEventsAndCopyForState:v9 basedOnTimestamp:v10];
      v16 = [(FMTSAnomaly *)v13 initWithTime:v11 timestamp:v10 location:v14 events:v15];

      [(FMTimeSeriesModel *)self startAnomaly:v16 forState:v9];
    }

LABEL_20:
    v18 = [[FMTSEventSignalStrengthChanged alloc] initWithTimestamp:v10 fromBars:v12 toBars:v7];
    [(FMTimeSeriesModel *)self addEvent:v18 toState:v9];

    goto LABEL_21;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD698();
  }

LABEL_23:
}

- (void)handleCongestionInfoForGCI:(id)a3 andSubsId:(unsigned int)a4 isCongested:(BOOL)a5
{
  v8 = a3;
  v9 = [(FMModel *)self contextUUIDToStateMap];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003EF44;
  v11[3] = &unk_1002ABE40;
  v14 = a4;
  v10 = v8;
  v12 = v10;
  v13 = self;
  v15 = a5;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [FMBasebandMetricsController extractFMCellMapCongestionMetricFrom:v7];
    if (v8)
    {
      v9 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Received cell map congestion metric: %@", &v15, 0xCu);
      }

      v10 = [v8 gci];
      v11 = [v8 subscriptionID];
      -[FMTimeSeriesModel handleCongestionInfoForGCI:andSubsId:isCongested:](self, "handleCongestionInfoForGCI:andSubsId:isCongested:", v10, [v11 unsignedIntValue], objc_msgSend(v8, "isCongested"));
    }

    else
    {
      v10 = [FMBasebandMetricsController extractFMCongestionMetricFrom:v7];
      v13 = *(qword_1002DBE98 + 136);
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Received congestion metric: %@", &v15, 0xCu);
        }

        v14 = [v10 gci];
        -[FMTimeSeriesModel handleCongestionInfoForGCI:andSubsId:isCongested:](self, "handleCongestionInfoForGCI:andSubsId:isCongested:", v14, [v10 subsId], objc_msgSend(v10, "isCongested"));
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001FD7B0();
      }
    }
  }

  else
  {
    v12 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMTimeSeriesModel]:#N Received null metric: %@", &v15, 0xCu);
    }
  }
}

- (id)trimEventsAndCopyForState:(id)a3 basedOnTimestamp:(unint64_t)a4
{
  v6 = a3;
  [(FMTimeSeriesModel *)self removeEventsOutsideTimeWindowFromState:v6 basedOnTimestamp:a4];
  v7 = [v6 events];
  v8 = [v7 copy];

  return v8;
}

- (void)visit:(id)a3 started:(BOOL)a4
{
  v6 = a3;
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = [(FMModel *)self contextUUIDToStateMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003F800;
  v10[3] = &unk_1002ABE68;
  v14 = a4;
  v13 = v7;
  v9 = v6;
  v11 = v9;
  v12 = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

- (void)addEvent:(id)a3 toState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 subscriptionID];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Adding event to state %@: %@", &v12, 0x16u);
  }

  v10 = [v7 events];
  [v10 addObject:v6];

  -[FMTimeSeriesModel removeEventsOutsideTimeWindowFromState:basedOnTimestamp:](self, "removeEventsOutsideTimeWindowFromState:basedOnTimestamp:", v7, [v6 timestamp]);
  [v7 setEventsLastChangedTimestamp:{objc_msgSend(v6, "timestamp")}];
  v11 = +[NSDate now];
  [(FMTimeSeriesModel *)self maybeFetchPredictionsForState:v7 atTime:v11];
}

- (void)startAnomaly:(id)a3 forState:(id)a4
{
  v5 = a3;
  v24 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD85C();
  }

  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 type]);
  v7 = [v24 activeAnomalies];
  v8 = [v7 objectForKey:v6];
  v9 = v8 == 0;

  if (v9)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [v5 events];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v29 + 1) + 8 * i) incrementUsedInAnomalyCount];
        }

        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v24 activePredictions];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v26;
      v18 = -1;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          v21 = [v20 predictedAnomalyType];
          if (v21 == [v5 type] && (objc_msgSend(v20, "didAnomalyHappen") & 1) == 0 && objc_msgSend(v20, "predictedStartTimestamp") < v18)
          {
            v18 = [v20 predictedStartTimestamp];
            v22 = v20;

            v16 = v22;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);

      if (v16)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FD93C();
        }

        [v16 predictedAnomalyStartedAtTimestamp:{objc_msgSend(v5, "startTimestamp")}];
      }
    }

    else
    {

      v16 = 0;
    }

    v23 = [v24 activeAnomalies];
    [v23 setObject:v5 forKey:v6];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD8CC();
  }
}

- (void)endAnomaly:(id)a3 forState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD9AC();
  }

  v36 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 type]);
  v8 = [v7 activeAnomalies];
  [v8 removeObjectForKey:v36];

  v9 = [(FMModel *)self fmCoreTelephonyController];
  v10 = [v7 contextUUID];
  v11 = [v9 isDataContextUuid:v10];

  if (v11)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = [v7 activePredictions];
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v40;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [v17 predictedAnomalyType];
          if (v18 == [v6 type] && objc_msgSend(v17, "didAnomalyHappen"))
          {
            v19 = v17;

            v14 = v19;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v13);

      if (v14)
      {
        v20 = [v7 activePredictions];
        [v20 removeObjectIdenticalTo:v14];

        [v14 predictedAnomalyEndedAtTimestamp:{objc_msgSend(v6, "endTimestamp")}];
        [(FMTimeSeriesModel *)self storeAndSendTelemetryForFinishedPrediction:v14];
        v21 = 1;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {

      v21 = 0;
      v14 = 0;
    }

    v23 = [v6 duration];
    v24 = +[FMConfiguration sharedInstance];
    v25 = [v24 FMTSAnomalyStoringMinDurationSeconds] > v23;

    if (v25)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDAA0(v45, [v6 duration]);
      }
    }

    else
    {
      v26 = +[NSDate now];
      -[FMTimeSeriesModel sendDataCollectionTelemetryForAnomaly:atCurrentTime:atCurrentTimestamp:](self, "sendDataCollectionTelemetryForAnomaly:atCurrentTime:atCurrentTimestamp:", v6, v26, [v6 endTimestamp]);

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDA58([(FMTimeSeriesModel *)self isLocationAuthorized], v45);
      }

      if ([(FMTimeSeriesModel *)self isLocationAuthorized])
      {
        v27 = [(FMModel *)self fmCoreData];
        v28 = [v7 homePLMN];
        [v27 storeAnomaly:v6 forHomePLMN:v28];
      }

      v43[0] = @"anomaly_type";
      v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 type]);
      v44[0] = v29;
      v43[1] = @"duration";
      v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 duration]);
      v44[1] = v30;
      v43[2] = @"num_events";
      v31 = [v6 events];
      v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count]);
      v44[2] = v32;
      v43[3] = @"was_anomaly_predicted";
      v33 = [NSNumber numberWithBool:v21];
      v44[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100040538;
      v37[3] = &unk_1002AB460;
      v38 = v34;
      v35 = v34;
      sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesPerAnomalyStats", v37);
    }
  }

  else
  {
    v22 = [v7 activePredictions];
    [v22 removeAllObjects];

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FDA1C();
    }
  }
}

- (void)removeEventsOutsideTimeWindowFromState:(id)a3 basedOnTimestamp:(unint64_t)a4
{
  v6 = a3;
  v7 = +[FMConfiguration sharedInstance];
  v8 = 1000000000 * [v7 FMTSWindowSizeInDatabaseSeconds];

  v9 = a4 >= v8;
  v10 = a4 - v8;
  if (v9)
  {
    v11 = [v6 events];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100040858;
    v28[3] = &unk_1002ABE88;
    v28[4] = v10;
    v12 = [v11 indexesOfObjectsPassingTest:v28];

    v13 = [(FMModel *)self fmCoreTelephonyController];
    v14 = [v6 contextUUID];
    v15 = [v13 isDataContextUuid:v14];

    if (v15)
    {
      v16 = +[NSDate now];
      v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = [v6 events];
      v19 = [v18 objectsAtIndexes:v12];

      v20 = [v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v20)
      {
        v21 = *v25;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [(FMTimeSeriesModel *)self sendDataCollectionTelemetryForEvent:*(*(&v24 + 1) + 8 * v22) atCurrentTime:v16 atCurrentTimestamp:v17];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v20);
      }
    }

    v23 = [v6 events];
    [v23 removeObjectsAtIndexes:v12];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDAE4();
  }
}

- (void)maybeFetchPredictionsForState:(id)a3 atTime:(id)a4
{
  v5 = a3;
  v37 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDB20();
  }

  v6 = [(FMModel *)self fmCoreTelephonyController];
  v7 = [v5 contextUUID];
  v8 = [v6 isDataContextUuid:v7];

  if (v8)
  {
    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v10 = [v5 lastPredictionsTimestamp];
    if (v10 <= [v5 eventsLastChangedTimestamp])
    {
      v11 = [v5 lastPredictionsTimestamp];
      v12 = +[FMConfiguration sharedInstance];
      v36 = v9;
      v13 = (v9 - v11) / 0x3B9ACA00;
      v14 = v13 < [v12 FMTSPredictionMinTimeBetweenPredictionsSeconds];

      if (v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          [v5 homePLMN];
          objc_claimAutoreleasedReturnValue();
          sub_1001FDC4C();
        }
      }

      else
      {
        [(FMTimeSeriesModel *)self removeEventsOutsideTimeWindowFromState:v5 basedOnTimestamp:v36];
        v15 = [(FMModel *)self fmCoreData];
        v16 = [v5 homePLMN];
        v17 = [v5 events];
        v18 = [v17 copy];
        v35 = [v15 getAnomalyPredictionsForHomePLMN:v16 andEvents:v18 atCurrentTimestamp:v36 atCurrentTime:v37 timeSinceLastFetch:v13];

        if (v35)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          obj = v35;
          v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v19)
          {
            v20 = *v41;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v41 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v40 + 1) + 8 * i);
                v23 = *(qword_1002DBE98 + 136);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v46 = v22;
                  _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Received new prediction: %@", buf, 0xCu);
                }

                for (j = 0; ; ++j)
                {
                  v25 = [v5 activePredictions];
                  v26 = j < [v25 count];

                  if (!v26)
                  {
                    break;
                  }

                  v27 = [v5 activePredictions];
                  v28 = [v27 objectAtIndexedSubscript:j];
                  v29 = [v28 isEqualToPrediction:v22];

                  if (v29)
                  {
                    v30 = *(qword_1002DBE98 + 136);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v46 = v22;
                      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Superseeding prediction for %@", buf, 0xCu);
                    }

                    v31 = [v5 activePredictions];
                    [v31 removeObjectAtIndex:j];

                    break;
                  }
                }
              }

              v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v19);
          }

          v32 = [v5 activePredictions];
          [v32 addObjectsFromArray:obj];

          [v5 setMostRecentPredictions:obj];
          [v5 setLastPredictionsTimestamp:v36];
          [(FMTimeSeriesModel *)self removeActivePredictionsOlderThanThresholdFromState:v5 atCurrentTimestamp:v36];
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_1001FDBA8();
          }

          v33 = [v5 activePredictions];
          v34 = [v33 copy];
          [(FMTimeSeriesModel *)self updatedActivePredictions:v34 completionHandler:&stru_1002ABEA8];
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_1001FDC18();
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      [v5 homePLMN];
      objc_claimAutoreleasedReturnValue();
      sub_1001FDC98();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v5 homePLMN];
    objc_claimAutoreleasedReturnValue();
    sub_1001FDB5C();
  }
}

- (void)maybeFetchPredictionsForAllStatesAtTime:(id)a3
{
  v4 = a3;
  v5 = [(FMModel *)self contextUUIDToStateMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040FA0;
  v7[3] = &unk_1002ABED0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)removeActivePredictionsOlderThanThresholdFromState:(id)a3 atCurrentTimestamp:(unint64_t)a4
{
  v6 = a3;
  v7 = +[FMConfiguration sharedInstance];
  v8 = 1000000000 * [v7 FMTSWindowSizeMaxTimeUntilPredictedAnomalySeconds];

  v9 = a4 - v8;
  if (a4 >= v8)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v6 activePredictions];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 predictedStartTimestamp] < v9)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v22 + 1) + 8 * j);
          v21 = [v6 activePredictions];
          [v21 removeObjectIdenticalTo:v20];

          [(FMTimeSeriesModel *)self storeAndSendTelemetryForFinishedPrediction:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDCE4();
  }
}

- (void)storeAndSendTelemetryForFinishedPrediction:(id)a3
{
  v4 = a3;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Finished prediction: %@", buf, 0xCu);
    v5 = *(qword_1002DBE98 + 136);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDD20([(FMTimeSeriesModel *)self isLocationAuthorized], buf);
  }

  if ([(FMTimeSeriesModel *)self isLocationAuthorized])
  {
    v6 = [(FMModel *)self fmCoreData];
    [v6 storePrediction:v4];
  }

  if ([v4 didAnomalyHappen])
  {
    v7 = [v4 predictedDuration];
    v18 = [v4 actualDuration];
    v17 = [v4 predictedDuration];
    v8 = [v4 actualDuration];
    v9 = [v4 predictedDuration];
    v10 = [v4 actualDuration];
    v11 = [v4 predictedTimeUntilAnomaly];
    v12 = v7 - v18;
    v13 = fabs((v17 - v8)) / ((v10 + v9) / 2) * 100.0;
    v14 = v11 - [v4 actualTimeUntilAnomaly];
    v15 = fabs(([v4 predictedTimeUntilAnomaly] - objc_msgSend(v4, "actualTimeUntilAnomaly"))) / ((objc_msgSend(v4, "actualTimeUntilAnomaly") + objc_msgSend(v4, "predictedTimeUntilAnomaly")) / 2) * 100.0;
  }

  else
  {
    v13 = -1.0;
    v12 = -1;
    v14 = -1;
    v15 = -1.0;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004154C;
  v19[3] = &unk_1002ABEF8;
  v16 = v4;
  v20 = v16;
  v23 = v12;
  v24 = v14;
  v21 = v13;
  v22 = v15;
  sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesPerPredictionStats", v19);
}

- (void)sendDataCollectionTelemetryForEvent:(id)a3 atCurrentTime:(id)a4 atCurrentTimestamp:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[FMConfiguration sharedInstance];
  v10 = [v9 FMTSEnableDataCollection];

  if (v10)
  {
    if ([v7 type] != 3 && objc_msgSend(v7, "type") != 4)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDDA4();
      }

      v11 = +[FMUtil dateFromTimestamp:andCurrentTimestamp:andCurrentTime:](FMUtil, "dateFromTimestamp:andCurrentTimestamp:andCurrentTime:", [v7 timestamp], a5, v8);
      if (v11)
      {
        v12 = [v7 detailsAsDict];
        v13 = [FMUtil JSONStringFromDict:v12];

        if (v13)
        {
          v22[0] = @"timestamp";
          [v11 timeIntervalSince1970];
          v15 = [NSNumber numberWithLong:v14];
          v23[0] = v15;
          v22[1] = @"type";
          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 type]);
          v23[1] = v16;
          v23[2] = v13;
          v22[2] = @"details";
          v22[3] = @"anomalies_count";
          v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 usedInAnomalyCount]);
          v23[3] = v17;
          v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100041FA4;
          v20[3] = &unk_1002AB460;
          v21 = v18;
          v19 = v18;
          sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesEvents", v20);
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_1001FDE14();
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FDE48();
      }
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDD68();
  }
}

- (void)sendDataCollectionTelemetryForAnomaly:(id)a3 atCurrentTime:(id)a4 atCurrentTimestamp:(unint64_t)a5
{
  v35 = a3;
  v37 = a4;
  v7 = +[FMConfiguration sharedInstance];
  LOBYTE(a4) = [v7 FMTSEnableDataCollection];

  v8 = os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG);
  if (a4)
  {
    if (v8)
    {
      sub_1001FDEB8();
    }

    if ([v35 hasEnded])
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v9 = [v35 startTime];
      v10 = [NSNumber numberWithShort:[FMUtil getTimeOfDayFromDate:v9]];
      [v34 setObject:v10 forKeyedSubscript:@"timeOfDay"];

      v11 = [v35 startTime];
      v12 = [NSNumber numberWithShort:[FMUtil getDayOfWeekFromDate:v11]];
      [v34 setObject:v12 forKeyedSubscript:@"dayOfWeek"];

      v33 = [FMUtil JSONStringFromDict:v34];
      if (v33)
      {
        v36 = objc_alloc_init(NSMutableArray);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v13 = [v35 events];
        v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v14)
        {
          v15 = *v43;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v42 + 1) + 8 * i);
              if ([v17 type] != 3 && objc_msgSend(v17, "type") != 4)
              {
                v18 = +[FMUtil dateFromTimestamp:andCurrentTimestamp:andCurrentTime:](FMUtil, "dateFromTimestamp:andCurrentTimestamp:andCurrentTime:", [v17 timestamp], a5, v37);
                if (v18)
                {
                  v48[0] = @"type";
                  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 type]);
                  v49[0] = v19;
                  v48[1] = @"details";
                  v20 = [v17 detailsAsDict];
                  v49[1] = v20;
                  v48[2] = @"timestamp";
                  [v18 timeIntervalSince1970];
                  v22 = [NSNumber numberWithLong:v21];
                  v49[2] = v22;
                  v23 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
                  [v36 addObject:v23];
                }

                else
                {
                  v24 = *(qword_1002DBE98 + 136);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001FDF5C(&buf, v41, v24);
                  }
                }
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v14);
        }

        v25 = [FMUtil JSONStringFromArray:v36];
        if (v25)
        {
          v46[0] = @"start_timestamp";
          v26 = [v35 startTime];
          [v26 timeIntervalSince1970];
          v28 = [NSNumber numberWithLong:v27];
          v47[0] = v28;
          v46[1] = @"type";
          v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v35 type]);
          v47[1] = v29;
          v47[2] = v33;
          v46[2] = @"details";
          v46[3] = @"events";
          v47[3] = v25;
          v46[4] = @"duration";
          v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v35 duration]);
          v47[4] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000426DC;
          v38[3] = &unk_1002AB460;
          v39 = v31;
          v32 = v31;
          sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesAnomalies", v38);
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_1001FDF9C();
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FDFD0();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FDF28();
    }
  }

  else if (v8)
  {
    sub_1001FDE7C();
  }
}

- (FMCoreLocationController)fmCoreLocationController
{
  WeakRetained = objc_loadWeakRetained(&self->_fmCoreLocationController);

  return WeakRetained;
}

- (void)updatedActivePredictions:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10024D490;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10024D4A0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1001D5BAC(0, 0, v10, &unk_10024D4B0, v15);
}

- (void)updatedCongestionState:(BOOL)a3
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a3;
  sub_1001C47C0(0, 0, v7, &unk_10024D480, v9);
}

@end