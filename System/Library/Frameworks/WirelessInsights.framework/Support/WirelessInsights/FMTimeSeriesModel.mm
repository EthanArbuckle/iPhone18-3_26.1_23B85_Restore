@interface FMTimeSeriesModel
- (FMCoreLocationController)fmCoreLocationController;
- (FMTimeSeriesModel)initWithFMCoreData:(id)data locationController:(id)controller;
- (id)trimEventsAndCopyForState:(id)state basedOnTimestamp:(unint64_t)timestamp;
- (void)_handleCellMonitorUpdate:(id)update info:(id)info;
- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload;
- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status;
- (void)_handleSignalStrengthChanged:(id)changed bars:(id)bars;
- (void)_initializeStateForContext:(id)context atTime:(id)time;
- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state;
- (void)addEvent:(id)event toState:(id)state;
- (void)dealloc;
- (void)endAnomaly:(id)anomaly forState:(id)state;
- (void)handleCongestionInfoForGCI:(id)i andSubsId:(unsigned int)id isCongested:(BOOL)congested;
- (void)maybeFetchPredictionsForAllStatesAtTime:(id)time;
- (void)maybeFetchPredictionsForState:(id)state atTime:(id)time;
- (void)removeActivePredictionsOlderThanThresholdFromState:(id)state atCurrentTimestamp:(unint64_t)timestamp;
- (void)removeEventsOutsideTimeWindowFromState:(id)state basedOnTimestamp:(unint64_t)timestamp;
- (void)sendDataCollectionTelemetryForAnomaly:(id)anomaly atCurrentTime:(id)time atCurrentTimestamp:(unint64_t)timestamp;
- (void)sendDataCollectionTelemetryForEvent:(id)event atCurrentTime:(id)time atCurrentTimestamp:(unint64_t)timestamp;
- (void)startAnomaly:(id)anomaly forState:(id)state;
- (void)storeAndSendTelemetryForFinishedPrediction:(id)prediction;
- (void)updatedActivePredictions:(NSArray *)predictions completionHandler:(id)handler;
- (void)updatedCongestionState:(BOOL)state;
- (void)visit:(id)visit started:(BOOL)started;
@end

@implementation FMTimeSeriesModel

- (FMTimeSeriesModel)initWithFMCoreData:(id)data locationController:(id)controller
{
  dataCopy = data;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = FMTimeSeriesModel;
  v8 = [(FMModel *)&v19 initWithFMCoreData:dataCopy withQueueName:"com.apple.wirelessinsightsd.FederatedMobility.FMTimeSeriesModel"];
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

    objc_storeWeak(&v9->_fmCoreLocationController, controllerCopy);
    [controllerCopy addDelegate:v10];
    fmCoreTelephonyController = [(FMModel *)v10 fmCoreTelephonyController];
    -[FMTimeSeriesModel setIsAirplaneModeActive:](v10, "setIsAirplaneModeActive:", [fmCoreTelephonyController isAirplaneModeActive]);

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FD048();
    }

    fmCoreTelephonyController2 = [(FMModel *)v10 fmCoreTelephonyController];
    getSubscriptionContextsInUse = [fmCoreTelephonyController2 getSubscriptionContextsInUse];
    [(FMModel *)v10 populateSubscriptionContextsInUse:getSubscriptionContextsInUse];

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

- (void)_initializeStateForContext:(id)context atTime:(id)time
{
  contextCopy = context;
  timeCopy = time;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    plmn = [contextCopy plmn];
    sub_1001FD0F4(uuid, plmn, &v19);
  }

  plmn2 = [contextCopy plmn];
  v11 = plmn2 == 0;

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
    uuid2 = [contextCopy uuid];
    subscriptionID = [contextCopy subscriptionID];
    plmn3 = [contextCopy plmn];
    v16 = [(FMTimeSeriesContextState *)v12 initWithStartTime:timeCopy contextUUID:uuid2 subscriptionID:subscriptionID homePLMN:plmn3];

    if (v16)
    {
      contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
      uuid3 = [contextCopy uuid];
      [contextUUIDToStateMap setObject:v16 forKey:uuid3];
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FD154();
    }
  }
}

- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state
{
  contextCopy = context;
  timeCopy = time;
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [contextCopy uuid];
    objc_claimAutoreleasedReturnValue();
    sub_1001FD23C();
  }

  subscriptionID = [stateCopy subscriptionID];
  subscriptionID2 = [contextCopy subscriptionID];
  if ([subscriptionID isEqualToNumber:subscriptionID2])
  {
    homePLMN = [stateCopy homePLMN];
    plmn = [contextCopy plmn];
    v15 = [homePLMN isEqualToString:plmn];

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(FMTimeSeriesModel *)self _initializeStateForContext:contextCopy atTime:timeCopy];
LABEL_8:
}

- (void)_handleCellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  if (infoCopy)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    v9 = [contextUUIDToStateMap objectForKey:updateCopy];

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
    v26 = [WISTelephonyUtils getServingCellInfoFromArray:infoCopy];
    subscriptionID = [v9 subscriptionID];
    v28 = 0;
    v11 = [FMCoreTelephonyController cellInfoToFMServingCell:v26 atTime:v27 inSlot:subscriptionID error:&v28];
    v12 = v28;

    if (v12 || !v11)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        localizedDescription = [v12 localizedDescription];
        sub_1001FD300(updateCopy, localizedDescription, buf);
      }

      goto LABEL_20;
    }

    cellChanges = [v9 cellChanges];
    lastObject = [cellChanges lastObject];
    toCell = [lastObject toCell];

    if (toCell && [toCell isEqual:v11])
    {
      timestamp = [v11 timestamp];
      [toCell updateTimestampTo:timestamp];
    }

    else
    {
      cellChanges2 = [v9 cellChanges];
      v19 = [[FMCellChange alloc] initWithTime:v27 andTimestamp:v25 andCell:v11];
      [cellChanges2 addObject:v19];

      if (!toCell)
      {
LABEL_19:

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }

      cellChanges3 = [v9 cellChanges];
      [FMUtil removeFirstElementsForCapacity:2 fromArray:cellChanges3];

      v21 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = updateCopy;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Cell Monitor Update for context %@: %@", buf, 0x16u);
      }

      v22 = [FMTSEventCellChanged alloc];
      timestamp = [toCell gci];
      v23 = [v11 gci];
      v24 = [(FMTSEventCellChanged *)v22 initWithTimestamp:v25 fromCellGCI:timestamp toCellGCI:v23];
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

- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if (statusCopy)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    v9 = [contextUUIDToStateMap objectForKey:changedCopy];

    v10 = os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v10)
      {
        sub_1001FD438();
      }

      curRegistrationState = [v9 curRegistrationState];
      [v9 setCurRegistrationState:statusCopy];
      if (curRegistrationState && ([curRegistrationState isEqualToString:statusCopy] & 1) == 0)
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
          if ([WISTelephonyUtils isRegistrationDisplayStatusInService:curRegistrationState]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:statusCopy])
          {
            v14 = [FMTSAnomalyOutOfService alloc];
            curLocation = [(FMTimeSeriesModel *)self curLocation];
            v16 = [(FMTimeSeriesModel *)self trimEventsAndCopyForState:v9 basedOnTimestamp:v12];
            v17 = [(FMTSAnomaly *)v14 initWithTime:v21 timestamp:v12 location:curLocation events:v16];

            [(FMTimeSeriesModel *)self startAnomaly:v17 forState:v9];
            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              [v9 subscriptionID];
              objc_claimAutoreleasedReturnValue();
              sub_1001FD4B8();
            }

            activeAnomalies = [v9 activeAnomalies];
            [activeAnomalies removeObjectForKey:&off_1002BEDF0];
          }

          if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:curRegistrationState]&& [WISTelephonyUtils isRegistrationDisplayStatusInService:statusCopy])
          {
            activeAnomalies2 = [v9 activeAnomalies];
            v20 = [activeAnomalies2 objectForKey:&off_1002BEE08];

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
      v23 = changedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Received nil display status change for context %@", buf, 0xCu);
    }
  }
}

- (void)_handleSignalStrengthChanged:(id)changed bars:(id)bars
{
  changedCopy = changed;
  barsCopy = bars;
  if (barsCopy)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    v9 = [contextUUIDToStateMap objectForKey:changedCopy];

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
    curSignalStrengthBars = [v9 curSignalStrengthBars];
    [v9 setCurSignalStrengthBars:barsCopy];
    if (!curSignalStrengthBars || ([curSignalStrengthBars isEqualToNumber:barsCopy] & 1) != 0)
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

    if ([curSignalStrengthBars intValue] < 2 || objc_msgSend(barsCopy, "intValue") > 1)
    {
      if ([curSignalStrengthBars intValue] > 1 || objc_msgSend(barsCopy, "intValue") < 2)
      {
        goto LABEL_20;
      }

      activeAnomalies = [v9 activeAnomalies];
      v16 = [activeAnomalies objectForKey:&off_1002BEDF0];

      if (v16)
      {
        [(FMTSAnomaly *)v16 endAtTimestamp:v10];
        [(FMTimeSeriesModel *)self endAnomaly:v16 forState:v9];
      }
    }

    else
    {
      v13 = [FMTSAnomalyLowSignalStrength alloc];
      curLocation = [(FMTimeSeriesModel *)self curLocation];
      v15 = [(FMTimeSeriesModel *)self trimEventsAndCopyForState:v9 basedOnTimestamp:v10];
      v16 = [(FMTSAnomaly *)v13 initWithTime:v11 timestamp:v10 location:curLocation events:v15];

      [(FMTimeSeriesModel *)self startAnomaly:v16 forState:v9];
    }

LABEL_20:
    v18 = [[FMTSEventSignalStrengthChanged alloc] initWithTimestamp:v10 fromBars:curSignalStrengthBars toBars:barsCopy];
    [(FMTimeSeriesModel *)self addEvent:v18 toState:v9];

    goto LABEL_21;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD698();
  }

LABEL_23:
}

- (void)handleCongestionInfoForGCI:(id)i andSubsId:(unsigned int)id isCongested:(BOOL)congested
{
  iCopy = i;
  contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003EF44;
  v11[3] = &unk_1002ABE40;
  idCopy = id;
  v10 = iCopy;
  v12 = v10;
  selfCopy = self;
  congestedCopy = congested;
  [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload
{
  metricCopy = metric;
  payloadCopy = payload;
  if (payloadCopy)
  {
    v8 = [FMBasebandMetricsController extractFMCellMapCongestionMetricFrom:payloadCopy];
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
      subscriptionID = [v8 subscriptionID];
      -[FMTimeSeriesModel handleCongestionInfoForGCI:andSubsId:isCongested:](self, "handleCongestionInfoForGCI:andSubsId:isCongested:", v10, [subscriptionID unsignedIntValue], objc_msgSend(v8, "isCongested"));
    }

    else
    {
      v10 = [FMBasebandMetricsController extractFMCongestionMetricFrom:payloadCopy];
      v13 = *(qword_1002DBE98 + 136);
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Received congestion metric: %@", &v15, 0xCu);
        }

        v10Gci = [v10 gci];
        -[FMTimeSeriesModel handleCongestionInfoForGCI:andSubsId:isCongested:](self, "handleCongestionInfoForGCI:andSubsId:isCongested:", v10Gci, [v10 subsId], objc_msgSend(v10, "isCongested"));
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
      v16 = metricCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMTimeSeriesModel]:#N Received null metric: %@", &v15, 0xCu);
    }
  }
}

- (id)trimEventsAndCopyForState:(id)state basedOnTimestamp:(unint64_t)timestamp
{
  stateCopy = state;
  [(FMTimeSeriesModel *)self removeEventsOutsideTimeWindowFromState:stateCopy basedOnTimestamp:timestamp];
  events = [stateCopy events];
  v8 = [events copy];

  return v8;
}

- (void)visit:(id)visit started:(BOOL)started
{
  visitCopy = visit;
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003F800;
  v10[3] = &unk_1002ABE68;
  startedCopy = started;
  v13 = v7;
  v9 = visitCopy;
  v11 = v9;
  selfCopy = self;
  [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v10];
}

- (void)addEvent:(id)event toState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  v8 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    subscriptionID = [stateCopy subscriptionID];
    v12 = 138412546;
    v13 = subscriptionID;
    v14 = 2112;
    v15 = eventCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "FederatedMobility[FMTimeSeriesModel]:#I Adding event to state %@: %@", &v12, 0x16u);
  }

  events = [stateCopy events];
  [events addObject:eventCopy];

  -[FMTimeSeriesModel removeEventsOutsideTimeWindowFromState:basedOnTimestamp:](self, "removeEventsOutsideTimeWindowFromState:basedOnTimestamp:", stateCopy, [eventCopy timestamp]);
  [stateCopy setEventsLastChangedTimestamp:{objc_msgSend(eventCopy, "timestamp")}];
  v11 = +[NSDate now];
  [(FMTimeSeriesModel *)self maybeFetchPredictionsForState:stateCopy atTime:v11];
}

- (void)startAnomaly:(id)anomaly forState:(id)state
{
  anomalyCopy = anomaly;
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD85C();
  }

  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy type]);
  activeAnomalies = [stateCopy activeAnomalies];
  v8 = [activeAnomalies objectForKey:v6];
  v9 = v8 == 0;

  if (v9)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    events = [anomalyCopy events];
    v11 = [events countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(events);
          }

          [*(*(&v29 + 1) + 8 * i) incrementUsedInAnomalyCount];
        }

        v11 = [events countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    activePredictions = [stateCopy activePredictions];
    v15 = [activePredictions countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v26;
      predictedStartTimestamp = -1;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(activePredictions);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          predictedAnomalyType = [v20 predictedAnomalyType];
          if (predictedAnomalyType == [anomalyCopy type] && (objc_msgSend(v20, "didAnomalyHappen") & 1) == 0 && objc_msgSend(v20, "predictedStartTimestamp") < predictedStartTimestamp)
          {
            predictedStartTimestamp = [v20 predictedStartTimestamp];
            v22 = v20;

            v16 = v22;
          }
        }

        v15 = [activePredictions countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);

      if (v16)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1001FD93C();
        }

        [v16 predictedAnomalyStartedAtTimestamp:{objc_msgSend(anomalyCopy, "startTimestamp")}];
      }
    }

    else
    {

      v16 = 0;
    }

    activeAnomalies2 = [stateCopy activeAnomalies];
    [activeAnomalies2 setObject:anomalyCopy forKey:v6];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD8CC();
  }
}

- (void)endAnomaly:(id)anomaly forState:(id)state
{
  anomalyCopy = anomaly;
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FD9AC();
  }

  v36 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy type]);
  activeAnomalies = [stateCopy activeAnomalies];
  [activeAnomalies removeObjectForKey:v36];

  fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
  contextUUID = [stateCopy contextUUID];
  v11 = [fmCoreTelephonyController isDataContextUuid:contextUUID];

  if (v11)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    activePredictions = [stateCopy activePredictions];
    v13 = [activePredictions countByEnumeratingWithState:&v39 objects:v46 count:16];
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
            objc_enumerationMutation(activePredictions);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          predictedAnomalyType = [v17 predictedAnomalyType];
          if (predictedAnomalyType == [anomalyCopy type] && objc_msgSend(v17, "didAnomalyHappen"))
          {
            v19 = v17;

            v14 = v19;
          }
        }

        v13 = [activePredictions countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v13);

      if (v14)
      {
        activePredictions2 = [stateCopy activePredictions];
        [activePredictions2 removeObjectIdenticalTo:v14];

        [v14 predictedAnomalyEndedAtTimestamp:{objc_msgSend(anomalyCopy, "endTimestamp")}];
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

    duration = [anomalyCopy duration];
    v24 = +[FMConfiguration sharedInstance];
    v25 = [v24 FMTSAnomalyStoringMinDurationSeconds] > duration;

    if (v25)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDAA0(v45, [anomalyCopy duration]);
      }
    }

    else
    {
      v26 = +[NSDate now];
      -[FMTimeSeriesModel sendDataCollectionTelemetryForAnomaly:atCurrentTime:atCurrentTimestamp:](self, "sendDataCollectionTelemetryForAnomaly:atCurrentTime:atCurrentTimestamp:", anomalyCopy, v26, [anomalyCopy endTimestamp]);

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDA58([(FMTimeSeriesModel *)self isLocationAuthorized], v45);
      }

      if ([(FMTimeSeriesModel *)self isLocationAuthorized])
      {
        fmCoreData = [(FMModel *)self fmCoreData];
        homePLMN = [stateCopy homePLMN];
        [fmCoreData storeAnomaly:anomalyCopy forHomePLMN:homePLMN];
      }

      v43[0] = @"anomaly_type";
      v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy type]);
      v44[0] = v29;
      v43[1] = @"duration";
      v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy duration]);
      v44[1] = v30;
      v43[2] = @"num_events";
      events = [anomalyCopy events];
      v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [events count]);
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
    activePredictions3 = [stateCopy activePredictions];
    [activePredictions3 removeAllObjects];

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FDA1C();
    }
  }
}

- (void)removeEventsOutsideTimeWindowFromState:(id)state basedOnTimestamp:(unint64_t)timestamp
{
  stateCopy = state;
  v7 = +[FMConfiguration sharedInstance];
  v8 = 1000000000 * [v7 FMTSWindowSizeInDatabaseSeconds];

  v9 = timestamp >= v8;
  v10 = timestamp - v8;
  if (v9)
  {
    events = [stateCopy events];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100040858;
    v28[3] = &unk_1002ABE88;
    v28[4] = v10;
    v12 = [events indexesOfObjectsPassingTest:v28];

    fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
    contextUUID = [stateCopy contextUUID];
    v15 = [fmCoreTelephonyController isDataContextUuid:contextUUID];

    if (v15)
    {
      v16 = +[NSDate now];
      v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      events2 = [stateCopy events];
      v19 = [events2 objectsAtIndexes:v12];

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

    events3 = [stateCopy events];
    [events3 removeObjectsAtIndexes:v12];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDAE4();
  }
}

- (void)maybeFetchPredictionsForState:(id)state atTime:(id)time
{
  stateCopy = state;
  timeCopy = time;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDB20();
  }

  fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
  contextUUID = [stateCopy contextUUID];
  v8 = [fmCoreTelephonyController isDataContextUuid:contextUUID];

  if (v8)
  {
    v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    lastPredictionsTimestamp = [stateCopy lastPredictionsTimestamp];
    if (lastPredictionsTimestamp <= [stateCopy eventsLastChangedTimestamp])
    {
      lastPredictionsTimestamp2 = [stateCopy lastPredictionsTimestamp];
      v12 = +[FMConfiguration sharedInstance];
      v36 = v9;
      v13 = (v9 - lastPredictionsTimestamp2) / 0x3B9ACA00;
      v14 = v13 < [v12 FMTSPredictionMinTimeBetweenPredictionsSeconds];

      if (v14)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          [stateCopy homePLMN];
          objc_claimAutoreleasedReturnValue();
          sub_1001FDC4C();
        }
      }

      else
      {
        [(FMTimeSeriesModel *)self removeEventsOutsideTimeWindowFromState:stateCopy basedOnTimestamp:v36];
        fmCoreData = [(FMModel *)self fmCoreData];
        homePLMN = [stateCopy homePLMN];
        events = [stateCopy events];
        v18 = [events copy];
        v35 = [fmCoreData getAnomalyPredictionsForHomePLMN:homePLMN andEvents:v18 atCurrentTimestamp:v36 atCurrentTime:timeCopy timeSinceLastFetch:v13];

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
                  activePredictions = [stateCopy activePredictions];
                  v26 = j < [activePredictions count];

                  if (!v26)
                  {
                    break;
                  }

                  activePredictions2 = [stateCopy activePredictions];
                  v28 = [activePredictions2 objectAtIndexedSubscript:j];
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

                    activePredictions3 = [stateCopy activePredictions];
                    [activePredictions3 removeObjectAtIndex:j];

                    break;
                  }
                }
              }

              v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v19);
          }

          activePredictions4 = [stateCopy activePredictions];
          [activePredictions4 addObjectsFromArray:obj];

          [stateCopy setMostRecentPredictions:obj];
          [stateCopy setLastPredictionsTimestamp:v36];
          [(FMTimeSeriesModel *)self removeActivePredictionsOlderThanThresholdFromState:stateCopy atCurrentTimestamp:v36];
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_1001FDBA8();
          }

          activePredictions5 = [stateCopy activePredictions];
          v34 = [activePredictions5 copy];
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
      [stateCopy homePLMN];
      objc_claimAutoreleasedReturnValue();
      sub_1001FDC98();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [stateCopy homePLMN];
    objc_claimAutoreleasedReturnValue();
    sub_1001FDB5C();
  }
}

- (void)maybeFetchPredictionsForAllStatesAtTime:(id)time
{
  timeCopy = time;
  contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040FA0;
  v7[3] = &unk_1002ABED0;
  v7[4] = self;
  v6 = timeCopy;
  v8 = v6;
  [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)removeActivePredictionsOlderThanThresholdFromState:(id)state atCurrentTimestamp:(unint64_t)timestamp
{
  stateCopy = state;
  v7 = +[FMConfiguration sharedInstance];
  v8 = 1000000000 * [v7 FMTSWindowSizeMaxTimeUntilPredictedAnomalySeconds];

  v9 = timestamp - v8;
  if (timestamp >= v8)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    activePredictions = [stateCopy activePredictions];
    v12 = [activePredictions countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(activePredictions);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 predictedStartTimestamp] < v9)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [activePredictions countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          activePredictions2 = [stateCopy activePredictions];
          [activePredictions2 removeObjectIdenticalTo:v20];

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

- (void)storeAndSendTelemetryForFinishedPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = predictionCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Finished prediction: %@", buf, 0xCu);
    v5 = *(qword_1002DBE98 + 136);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001FDD20([(FMTimeSeriesModel *)self isLocationAuthorized], buf);
  }

  if ([(FMTimeSeriesModel *)self isLocationAuthorized])
  {
    fmCoreData = [(FMModel *)self fmCoreData];
    [fmCoreData storePrediction:predictionCopy];
  }

  if ([predictionCopy didAnomalyHappen])
  {
    predictedDuration = [predictionCopy predictedDuration];
    actualDuration = [predictionCopy actualDuration];
    predictedDuration2 = [predictionCopy predictedDuration];
    actualDuration2 = [predictionCopy actualDuration];
    predictedDuration3 = [predictionCopy predictedDuration];
    actualDuration3 = [predictionCopy actualDuration];
    predictedTimeUntilAnomaly = [predictionCopy predictedTimeUntilAnomaly];
    v12 = predictedDuration - actualDuration;
    v13 = fabs((predictedDuration2 - actualDuration2)) / ((actualDuration3 + predictedDuration3) / 2) * 100.0;
    v14 = predictedTimeUntilAnomaly - [predictionCopy actualTimeUntilAnomaly];
    v15 = fabs(([predictionCopy predictedTimeUntilAnomaly] - objc_msgSend(predictionCopy, "actualTimeUntilAnomaly"))) / ((objc_msgSend(predictionCopy, "actualTimeUntilAnomaly") + objc_msgSend(predictionCopy, "predictedTimeUntilAnomaly")) / 2) * 100.0;
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
  v16 = predictionCopy;
  v20 = v16;
  v23 = v12;
  v24 = v14;
  v21 = v13;
  v22 = v15;
  sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesPerPredictionStats", v19);
}

- (void)sendDataCollectionTelemetryForEvent:(id)event atCurrentTime:(id)time atCurrentTimestamp:(unint64_t)timestamp
{
  eventCopy = event;
  timeCopy = time;
  v9 = +[FMConfiguration sharedInstance];
  fMTSEnableDataCollection = [v9 FMTSEnableDataCollection];

  if (fMTSEnableDataCollection)
  {
    if ([eventCopy type] != 3 && objc_msgSend(eventCopy, "type") != 4)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FDDA4();
      }

      v11 = +[FMUtil dateFromTimestamp:andCurrentTimestamp:andCurrentTime:](FMUtil, "dateFromTimestamp:andCurrentTimestamp:andCurrentTime:", [eventCopy timestamp], timestamp, timeCopy);
      if (v11)
      {
        detailsAsDict = [eventCopy detailsAsDict];
        v13 = [FMUtil JSONStringFromDict:detailsAsDict];

        if (v13)
        {
          v22[0] = @"timestamp";
          [v11 timeIntervalSince1970];
          v15 = [NSNumber numberWithLong:v14];
          v23[0] = v15;
          v22[1] = @"type";
          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [eventCopy type]);
          v23[1] = v16;
          v23[2] = v13;
          v22[2] = @"details";
          v22[3] = @"anomalies_count";
          v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventCopy usedInAnomalyCount]);
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

- (void)sendDataCollectionTelemetryForAnomaly:(id)anomaly atCurrentTime:(id)time atCurrentTimestamp:(unint64_t)timestamp
{
  anomalyCopy = anomaly;
  timeCopy = time;
  v7 = +[FMConfiguration sharedInstance];
  LOBYTE(time) = [v7 FMTSEnableDataCollection];

  v8 = os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG);
  if (time)
  {
    if (v8)
    {
      sub_1001FDEB8();
    }

    if ([anomalyCopy hasEnded])
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      startTime = [anomalyCopy startTime];
      v10 = [NSNumber numberWithShort:[FMUtil getTimeOfDayFromDate:startTime]];
      [v34 setObject:v10 forKeyedSubscript:@"timeOfDay"];

      startTime2 = [anomalyCopy startTime];
      v12 = [NSNumber numberWithShort:[FMUtil getDayOfWeekFromDate:startTime2]];
      [v34 setObject:v12 forKeyedSubscript:@"dayOfWeek"];

      v33 = [FMUtil JSONStringFromDict:v34];
      if (v33)
      {
        v36 = objc_alloc_init(NSMutableArray);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        events = [anomalyCopy events];
        v14 = [events countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v14)
        {
          v15 = *v43;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(events);
              }

              v17 = *(*(&v42 + 1) + 8 * i);
              if ([v17 type] != 3 && objc_msgSend(v17, "type") != 4)
              {
                v18 = +[FMUtil dateFromTimestamp:andCurrentTimestamp:andCurrentTime:](FMUtil, "dateFromTimestamp:andCurrentTimestamp:andCurrentTime:", [v17 timestamp], timestamp, timeCopy);
                if (v18)
                {
                  v48[0] = @"type";
                  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 type]);
                  v49[0] = v19;
                  v48[1] = @"details";
                  detailsAsDict = [v17 detailsAsDict];
                  v49[1] = detailsAsDict;
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

            v14 = [events countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v14);
        }

        v25 = [FMUtil JSONStringFromArray:v36];
        if (v25)
        {
          v46[0] = @"start_timestamp";
          startTime3 = [anomalyCopy startTime];
          [startTime3 timeIntervalSince1970];
          v28 = [NSNumber numberWithLong:v27];
          v47[0] = v28;
          v46[1] = @"type";
          v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy type]);
          v47[1] = v29;
          v47[2] = v33;
          v46[2] = @"details";
          v46[3] = @"events";
          v47[3] = v25;
          v46[4] = @"duration";
          v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [anomalyCopy duration]);
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

- (void)updatedActivePredictions:(NSArray *)predictions completionHandler:(id)handler
{
  v7 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = predictions;
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
  predictionsCopy = predictions;
  selfCopy = self;
  sub_1001D5BAC(0, 0, v10, &unk_10024D4B0, v15);
}

- (void)updatedCongestionState:(BOOL)state
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
  *(v9 + 32) = state;
  sub_1001C47C0(0, 0, v7, &unk_10024D480, v9);
}

@end