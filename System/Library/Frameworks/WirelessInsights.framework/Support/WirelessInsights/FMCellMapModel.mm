@interface FMCellMapModel
- (BOOL)predictionsEnabled;
- (FMCellMapModel)initWithFMCoreData:(id)data locationController:(id)controller andQueueName:(const char *)name;
- (void)_handleCellMonitorUpdate:(id)update info:(id)info;
- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload;
- (void)_handleRadioStateChanged:(id)changed;
- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)update;
- (void)_initializeStateForContext:(id)context atTime:(id)time;
- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state;
- (void)dealloc;
- (void)populateInsightCongestionCell:(InsightTypeCongestion_CongestionCell *)cell fromFMCellMapNode:(id)node;
- (void)resetPreviousInformationForState:(id)state;
- (void)sendPrediction:(id)prediction toBasebandForSubscriptionID:(id)d;
- (void)sendTelemetryForCongestionMetric:(id)metric;
- (void)sendTelemetryForPrediction:(id)prediction;
@end

@implementation FMCellMapModel

- (FMCellMapModel)initWithFMCoreData:(id)data locationController:(id)controller andQueueName:(const char *)name
{
  dataCopy = data;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = FMCellMapModel;
  v10 = [(FMModel *)&v23 initWithFMCoreData:dataCopy withQueueName:name];
  v11 = v10;
  if (v10)
  {
    [(FMCellMapModel *)v10 setIsCongestionPredictionEnabledInCurrentCountry:0];
    fmCoreTelephonyController = [(FMModel *)v11 fmCoreTelephonyController];
    -[FMCellMapModel setIsAirplaneModeActive:](v11, "setIsAirplaneModeActive:", [fmCoreTelephonyController isAirplaneModeActive]);

    [(FMCellMapModel *)v11 setRadioState:0];
    v13 = +[FMConfiguration sharedInstance];
    [v13 FMCellMapPredictionSendingEnabledLikelihood];
    v11->_shouldSendPredictions = [FMUtil randomlyTrueWithLikelihood:?];

    fmRegulatoryDomainController = [(FMModel *)v11 fmRegulatoryDomainController];
    getCurrentEstimates = [fmRegulatoryDomainController getCurrentEstimates];
    [(FMCellMapModel *)v11 _handleRegulatoryDomainEstimateUpdate:getCurrentEstimates];

    [(FMCellMapModel *)v11 setIsLocationAuthorized:0];
    [controllerCopy addDelegate:v11];
    v16 = [FMBasebandMetricsController alloc];
    v24[0] = @"com.apple.Telephony.testCongestionInfo";
    v24[1] = @"com.apple.Baseband.cellularCongestionInfo";
    v17 = [NSArray arrayWithObjects:v24 count:2];
    v18 = [(FMBasebandMetricsController *)v16 initWithFMModel:v11 withSubscribedMetrics:v17];
    [(FMCellMapModel *)v11 setFmBasebandMetricsController:v18];

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002044A4();
    }

    fmCoreTelephonyController2 = [(FMModel *)v11 fmCoreTelephonyController];
    getSubscriptionContextsInUse = [fmCoreTelephonyController2 getSubscriptionContextsInUse];
    [(FMModel *)v11 populateSubscriptionContextsInUse:getSubscriptionContextsInUse];

    v21 = v11;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1002044E0();
  }

  return v11;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020451C();
  }

  v3.receiver = self;
  v3.super_class = FMCellMapModel;
  [(FMModel *)&v3 dealloc];
}

- (void)_initializeStateForContext:(id)context atTime:(id)time
{
  contextCopy = context;
  timeCopy = time;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    sub_100204558(uuid, &v14);
  }

  v9 = [FMCellMapContextState alloc];
  subscriptionID = [contextCopy subscriptionID];
  v11 = [(FMCellMapContextState *)v9 initWithStartTime:timeCopy subscriptionID:subscriptionID];

  if (v11)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    uuid2 = [contextCopy uuid];
    [contextUUIDToStateMap setObject:v11 forKey:uuid2];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1002045AC();
  }
}

- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state
{
  contextCopy = context;
  timeCopy = time;
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    sub_10020461C(uuid, &v15);
  }

  subscriptionID = [stateCopy subscriptionID];
  subscriptionID2 = [contextCopy subscriptionID];
  v14 = [subscriptionID isEqualToNumber:subscriptionID2];

  if ((v14 & 1) == 0)
  {
    [(FMCellMapModel *)self _initializeStateForContext:contextCopy atTime:timeCopy];
  }
}

- (void)_handleCellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  if ([(FMCellMapModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (infoCopy)
    {
      contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
      v9 = [contextUUIDToStateMap objectForKey:updateCopy];

      if (v9)
      {
        v28 = [WISTelephonyUtils getServingCellInfoFromArray:infoCopy];
        v10 = [WISTelephonyUtils getGciFromCellInfo:"getGciFromCellInfo:error:" error:?];
        v29 = 0;
        lastGCI = [v9 lastGCI];
        if (!lastGCI || ([v9 lastGCI], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "isEqualToString:", v12), v12, lastGCI, (v13 & 1) == 0))
        {
          [v9 setLastGCI:v10];
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_100204670();
          }

          pastPredictions = [v9 pastPredictions];
          lastObject = [pastPredictions lastObject];

          if (lastObject)
          {
            nextCellGCI = [lastObject nextCellGCI];
            v17 = nextCellGCI == 0;

            if (v17)
            {
              [lastObject setNextCellGCI:v10];
            }
          }

          fmCoreData = [(FMModel *)self fmCoreData];
          v19 = [fmCoreData cellMapPredictionForGCI:v10];

          v20 = *(qword_1002DBE98 + 136);
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              sub_1002046E0();
            }

            pastPredictions2 = [v9 pastPredictions];
            [pastPredictions2 addObject:v19];

            pastPredictions3 = [v9 pastPredictions];
            [FMUtil removeFirstElementsForCapacity:3 fromArray:pastPredictions3];

            if ([(FMCellMapModel *)self predictionsEnabled])
            {
              subscriptionID = [v9 subscriptionID];
              [(FMCellMapModel *)self sendPrediction:v19 toBasebandForSubscriptionID:subscriptionID];
            }

            else
            {
              v24 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = +[FMConfiguration sharedInstance];
                fMCellMapSendPredictionsToBaseband = [v25 FMCellMapSendPredictionsToBaseband];
                shouldSendPredictions = [(FMCellMapModel *)self shouldSendPredictions];
                *buf = 67109376;
                LODWORD(v31[0]) = fMCellMapSendPredictionsToBaseband;
                WORD2(v31[0]) = 1024;
                *(v31 + 6) = shouldSendPredictions;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Not sending prediction to baseband: Disabled (FMCellMapSendPredictionsToBaseband: %{BOOL}d, shouldSendPredictions: %{BOOL}d)", buf, 0xEu);
              }
            }
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31[0] = v10;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I No prediction for GCI %@", buf, 0xCu);
            }

            [(FMCellMapModel *)self sendTelemetryForPrediction:0];
          }
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100204760();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002047D0();
    }
  }
}

- (void)_handleRadioStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    intValue = [changedCopy intValue];
    if ([(FMCellMapModel *)self radioState]!= intValue)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1002048B4();
      }

      [(FMCellMapModel *)self setRadioState:intValue];
      if (!intValue)
      {
        contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10009FB84;
        v8[3] = &unk_1002AEA98;
        v8[4] = self;
        [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v8];
      }
    }
  }
}

- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if (statusCopy)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    v9 = [contextUUIDToStateMap objectForKey:changedCopy];

    if (v9)
    {
      lastRegistrationState = [v9 lastRegistrationState];
      if (!lastRegistrationState || ([v9 lastRegistrationState], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", statusCopy), v11, lastRegistrationState, (v12 & 1) == 0))
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100204924();
        }

        [v9 setLastRegistrationState:statusCopy];
        if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:statusCopy])
        {
          [(FMCellMapModel *)self resetPreviousInformationForState:v9];
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002049A4();
    }
  }
}

- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload
{
  metricCopy = metric;
  payloadCopy = payload;
  if ([(FMCellMapModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (payloadCopy)
    {
      v8 = [FMBasebandMetricsController extractFMCellMapCongestionMetricFrom:payloadCopy];
      v9 = *(qword_1002DBE98 + 136);
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100204A14();
        }

        contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10009FF44;
        v16 = &unk_1002AEAC0;
        v11 = v8;
        v17 = v11;
        selfCopy = self;
        [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:&v13];

        [(FMCellMapModel *)self sendTelemetryForCongestionMetric:v11, v13, v14, v15, v16];
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100204A84();
      }
    }

    else
    {
      v12 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = metricCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCellMapModel]:#N Received null metric: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)update
{
  updateCopy = update;
  v5 = +[FMConfiguration sharedInstance];
  congestionPredictionEnabledCountries = [v5 congestionPredictionEnabledCountries];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A04A8;
  v10[3] = &unk_1002AB1C8;
  v7 = congestionPredictionEnabledCountries;
  v11 = v7;
  v8 = [updateCopy indexOfObjectPassingTest:v10];
  v9 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Congestion prediction enabled in current country: %{BOOL}d", buf, 8u);
  }

  [(FMCellMapModel *)self setIsCongestionPredictionEnabledInCurrentCountry:v8 != 0x7FFFFFFFFFFFFFFFLL];
}

- (void)resetPreviousInformationForState:(id)state
{
  stateCopy = state;
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    subscriptionID = [stateCopy subscriptionID];
    v7 = 138412290;
    v8 = subscriptionID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Resetting prev. information for subscription ID %@", &v7, 0xCu);
  }

  [stateCopy setLastGCI:0];
  [stateCopy setLastCellMapNodeObjectID:0];
  pastPredictions = [stateCopy pastPredictions];
  [pastPredictions removeAllObjects];
}

- (void)sendPrediction:(id)prediction toBasebandForSubscriptionID:(id)d
{
  predictionCopy = prediction;
  dCopy = d;
  v7 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    buf[0] = 138412546;
    *&buf[1] = dCopy;
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = predictionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Sending CellMap prediction to baseband (subscription ID %@): %@", buf, 0x16u);
  }

  operator new();
}

- (void)populateInsightCongestionCell:(InsightTypeCongestion_CongestionCell *)cell fromFMCellMapNode:(id)node
{
  nodeCopy = node;
  v5 = [nodeCopy rat];
  cell->var18[0] |= 1u;
  cell->var1 = v5;
  frequency = [nodeCopy frequency];
  cell->var18[0] |= 2u;
  cell->var2 = frequency;
  cellIdentity = [nodeCopy cellIdentity];
  cell->var18[0] |= 4u;
  cell->var3 = cellIdentity;
  v8 = [nodeCopy tac];
  cell->var18[0] |= 8u;
  cell->var4 = v8;
  v9 = [nodeCopy mnc];
  cell->var18[0] |= 0x10u;
  cell->var5 = v9;
  v10 = [nodeCopy mcc];
  cell->var18[0] |= 0x20u;
  cell->var6 = v10;
  band = [nodeCopy band];
  cell->var18[0] |= 0x80u;
  cell->var8 = band;
  v12 = [nodeCopy pci];
  cell->var18[0] |= 0x100u;
  cell->var9 = v12;
  dsDuration = [nodeCopy dsDuration];
  cell->var18[0] |= 0x200u;
  cell->var10 = dsDuration;
  totalDuration = [nodeCopy totalDuration];
  cell->var18[0] |= 0x400u;
  cell->var11 = totalDuration;
  dlCongestionCount = [nodeCopy dlCongestionCount];
  cell->var18[0] |= 0x800u;
  cell->var12 = dlCongestionCount;
  ulCongestionCount = [nodeCopy ulCongestionCount];
  cell->var18[0] |= 0x1000u;
  cell->var13 = ulCongestionCount;
  l1MitigationCount = [nodeCopy l1MitigationCount];
  cell->var18[0] |= 0x2000u;
  cell->var14 = l1MitigationCount;
  weight = [nodeCopy weight];
  cell->var18[0] |= 0x4000u;
  cell->var15 = weight;
  v19 = [nodeCopy scs];

  if (v19)
  {
    v20 = [nodeCopy scs];
    unsignedIntValue = [v20 unsignedIntValue];
    cell->var18[0] |= 0x8000u;
    cell->var16 = unsignedIntValue;
  }
}

- (void)sendTelemetryForPrediction:(id)prediction
{
  predictionCopy = prediction;
  v4 = predictionCopy;
  if (!predictionCopy)
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v18 = 0;
LABEL_11:
    v43[0] = @"hasPrediction";
    v32 = [NSNumber numberWithBool:v4 != 0];
    v44[0] = v32;
    v43[1] = @"numNeighborCells";
    if (v4)
    {
      neighborCells = [v4 neighborCells];
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [neighborCells count]);
    }

    else
    {
      v19 = +[NSNull null];
      neighborCells = v19;
    }

    v29 = v19;
    v44[1] = v19;
    v43[2] = @"numCongestedNeighborCells";
    v20 = v34;
    if (!v34)
    {
      v20 = +[NSNull null];
    }

    v44[2] = v20;
    v43[3] = @"hasCurrentCellBeenCongested";
    v21 = v18;
    if (!v18)
    {
      v21 = +[NSNull null];
    }

    v44[3] = v21;
    v43[4] = @"wasNextCellPredicted";
    v22 = v36;
    if (!v36)
    {
      v22 = +[NSNull null];
    }

    v44[4] = v22;
    v43[5] = @"wasNextCellPredictedUncongested";
    v23 = v38;
    if (!v38)
    {
      v23 = +[NSNull null];
    }

    v44[5] = v23;
    v43[6] = @"wasNextCellActuallyUncongested";
    v24 = v37;
    if (!v37)
    {
      v24 = +[NSNull null];
    }

    v44[6] = v24;
    v43[7] = @"didNextCellCongestionMatchPrediction";
    v25 = v35;
    if (!v35)
    {
      v25 = +[NSNull null];
    }

    v44[7] = v25;
    v43[8] = @"predictionsEnabled";
    v26 = [NSNumber numberWithBool:[(FMCellMapModel *)self predictionsEnabled]];
    v44[8] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:9];

    if (!v35)
    {
    }

    if (!v37)
    {
    }

    if (!v38)
    {
    }

    if (!v36)
    {
    }

    if (!v18)
    {
    }

    if (!v34)
    {
    }

    if (v4)
    {
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000A1754;
    v39[3] = &unk_1002AB460;
    v40 = v27;
    v28 = v27;
    sub_1000158DC(@"com.apple.Telephony.fedMobilityCellMapPredictionFetch", v39);

    goto LABEL_41;
  }

  nextCellGCI = [predictionCopy nextCellGCI];
  if (nextCellGCI)
  {
    nextCellCongestionMetric = [v4 nextCellCongestionMetric];

    if (nextCellCongestionMetric)
    {
      currentCell = [v4 currentCell];
      v8 = [NSNumber numberWithBool:[FMCoreData isFMCellMapNodeCongested:currentCell]];

      neighborCells2 = [v4 neighborCells];
      v10 = [neighborCells2 indexesOfObjectsPassingTest:&stru_1002AEB00];
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);

      neighborCells3 = [v4 neighborCells];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000A16D4;
      v41[3] = &unk_1002AEB28;
      v12 = v4;
      v42 = v12;
      v13 = [neighborCells3 indexOfObjectPassingTest:v41];

      0x7FFFFFFFFFFFFFFFLL = [NSNumber numberWithBool:v13 != 0x7FFFFFFFFFFFFFFFLL];
      nextCellCongestionMetric2 = [v12 nextCellCongestionMetric];
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = [NSNumber numberWithBool:[FMCoreData isFMCellMapCongestionMetricCongested:nextCellCongestionMetric2]^ 1];

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = 0;
        v38 = 0;
      }

      else
      {
        neighborCells4 = [v12 neighborCells];
        v17 = [neighborCells4 objectAtIndex:v13];
        v38 = [NSNumber numberWithBool:[FMCoreData isFMCellMapNodeCongested:v17]^ 1];

        v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v38 isEqualToNumber:v37]);
      }

      v18 = v8;
      goto LABEL_11;
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100204AFC();
  }

LABEL_41:
}

- (void)sendTelemetryForCongestionMetric:(id)metric
{
  metricCopy = metric;
  dlCongestionCount = [metricCopy dlCongestionCount];
  ulCongestionCount = [metricCopy ulCongestionCount];
  l1MitigationCount = [metricCopy l1MitigationCount];
  v7 = l1MitigationCount;
  if (dlCongestionCount && ulCongestionCount && l1MitigationCount)
  {
    v21[0] = @"rat";
    v17 = [metricCopy rat];
    v22[0] = v17;
    v21[1] = @"band";
    band = [metricCopy band];
    v22[1] = band;
    v21[2] = @"frequency";
    frequency = [metricCopy frequency];
    v22[2] = frequency;
    v21[3] = @"scs";
    v8 = [metricCopy scs];
    v9 = v8;
    if (!v8)
    {
      v9 = +[NSNull null];
    }

    v22[3] = v9;
    v21[4] = @"connDuration";
    connDuration = [metricCopy connDuration];
    v22[4] = connDuration;
    v21[5] = @"totalDuration";
    totalDuration = [metricCopy totalDuration];
    v22[5] = totalDuration;
    v22[6] = dlCongestionCount;
    v21[6] = @"dlCongestionCount";
    v21[7] = @"ulCongestionCount";
    v22[7] = ulCongestionCount;
    v22[8] = v7;
    v21[8] = @"l1MitigationCount";
    v21[9] = @"predictionsEnabled";
    v12 = [NSNumber numberWithBool:[(FMCellMapModel *)self predictionsEnabled]];
    v22[9] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:10];

    if (!v8)
    {
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A1B10;
    v19[3] = &unk_1002AB460;
    v20 = v13;
    v14 = v13;
    sub_1000158DC(@"com.apple.Telephony.fedMobilityCongestionCountStats", v19);
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100204B6C();
  }
}

- (BOOL)predictionsEnabled
{
  v3 = +[FMConfiguration sharedInstance];
  if ([v3 FMCellMapSendPredictionsToBaseband])
  {
    shouldSendPredictions = [(FMCellMapModel *)self shouldSendPredictions];
  }

  else
  {
    shouldSendPredictions = 0;
  }

  return shouldSendPredictions;
}

@end