@interface FMCongestionModel
- (FMCongestionModel)initWithFMCoreData:(id)data locationController:(id)controller withQueueName:(const char *)name;
- (id)basebandSysModeFromCellMonitorRAT:(id)t;
- (id)sendPredictionsToBasebandForSubscriptionID:(id)d timesUntilCongestion:(id)congestion timesInCongestion:(id)inCongestion cells:(id)cells seenCount:(int)count;
- (unique_ptr<awd::metrics::InsightTypeCongestion_CongestionCell,)insightCellFromFMCongestionCell:(id)cell;
- (void)_handleCellMonitorUpdate:(id)update info:(id)info;
- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)update;
- (void)_initializeStateForContext:(id)context atTime:(id)time;
- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state;
- (void)dealloc;
- (void)handleUncongestedCell:(id)cell forState:(id)state;
- (void)sendCongestionPredictionEventWithCongestionArea:(id)area isDataContext:(BOOL)context;
- (void)sendCongestionPredictionEventWithPrediction:(id)prediction isDataContext:(BOOL)context;
- (void)sendFedMobilityPredictionEventWithPredictionCorrect:(BOOL)correct seenCount:(int)count;
- (void)sendQoEEventForCongestionCell:(id)cell;
- (void)sendRLGSPredictionEventForCell:(id)cell;
@end

@implementation FMCongestionModel

- (FMCongestionModel)initWithFMCoreData:(id)data locationController:(id)controller withQueueName:(const char *)name
{
  dataCopy = data;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = FMCongestionModel;
  v10 = [(FMModel *)&v21 initWithFMCoreData:dataCopy withQueueName:name];
  v11 = v10;
  if (v10)
  {
    fmRegulatoryDomainController = [(FMModel *)v10 fmRegulatoryDomainController];
    getCurrentEstimates = [fmRegulatoryDomainController getCurrentEstimates];
    [(FMCongestionModel *)v11 _handleRegulatoryDomainEstimateUpdate:getCurrentEstimates];

    [(FMCongestionModel *)v11 setIsLocationAuthorized:0];
    [controllerCopy addDelegate:v11];
    v14 = [FMBasebandMetricsController alloc];
    v22[0] = @"com.apple.Telephony.testCongestionInfo";
    v22[1] = @"com.apple.Baseband.cellularCongestionInfo";
    v15 = [NSArray arrayWithObjects:v22 count:2];
    v16 = [(FMBasebandMetricsController *)v14 initWithFMModel:v11 withSubscribedMetrics:v15];
    [(FMCongestionModel *)v11 setFmBasebandMetricsController:v16];

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FADD0();
    }

    fmCoreTelephonyController = [(FMModel *)v11 fmCoreTelephonyController];
    getSubscriptionContextsInUse = [fmCoreTelephonyController getSubscriptionContextsInUse];
    [(FMModel *)v11 populateSubscriptionContextsInUse:getSubscriptionContextsInUse];

    v19 = v11;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FAE0C();
  }

  return v11;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FAE48();
  }

  v3.receiver = self;
  v3.super_class = FMCongestionModel;
  [(FMModel *)&v3 dealloc];
}

- (void)_initializeStateForContext:(id)context atTime:(id)time
{
  contextCopy = context;
  timeCopy = time;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    sub_1001FAE84(uuid, &v14);
  }

  v9 = [FMCongestionContextState alloc];
  subscriptionID = [contextCopy subscriptionID];
  v11 = [(FMCongestionContextState *)v9 initWithStartTime:timeCopy subscriptionID:subscriptionID];

  if (v11)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    uuid2 = [contextCopy uuid];
    [contextUUIDToStateMap setObject:v11 forKey:uuid2];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FAED8();
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
    sub_1001FAF48(uuid, &v15);
  }

  subscriptionID = [stateCopy subscriptionID];
  subscriptionID2 = [contextCopy subscriptionID];
  v14 = [subscriptionID isEqualToNumber:subscriptionID2];

  if ((v14 & 1) == 0)
  {
    [(FMCongestionModel *)self _initializeStateForContext:contextCopy atTime:timeCopy];
  }
}

- (void)_handleCellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  if ([(FMCongestionModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (infoCopy)
    {
      contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
      v7 = [contextUUIDToStateMap objectForKey:updateCopy];

      v65 = v7;
      if (v7)
      {
        selfCopy = self;
        v63 = [WISTelephonyUtils getServingCellInfoFromArray:infoCopy];
        v8 = +[NSDate now];
        subscriptionID = [v7 subscriptionID];
        v79 = 0;
        v70 = [FMCoreTelephonyController cellInfoToFMCongestionCell:v63 atTime:v8 inSlot:subscriptionID error:&v79];
        v64 = v79;

        if (v64 || !v70)
        {
          v11 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            localizedDescription = [v64 localizedDescription];
            sub_1001FAF9C(updateCopy, localizedDescription, buf, v11);
          }
        }

        else
        {
          prevCells = [v65 prevCells];
          lastObject = [prevCells lastObject];

          if (lastObject && [lastObject isEqual:v70])
          {
            timestamp = [v70 timestamp];
            [lastObject setLastUpdatedTimestamp:?];
          }

          else
          {
            prevCells2 = [v65 prevCells];
            [prevCells2 addObject:v70];

            v14 = +[FMConfiguration sharedInstance];
            congestionPrevCellsInDatabase = [v14 congestionPrevCellsInDatabase];
            prevCells3 = [v65 prevCells];
            [FMUtil removeFirstElementsForCapacity:congestionPrevCellsInDatabase + 2 fromArray:prevCells3];

            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            congestionPredictions = [v65 congestionPredictions];
            v18 = [congestionPredictions countByEnumeratingWithState:&v75 objects:v82 count:16];
            if (v18)
            {
              v19 = *v76;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v76 != v19)
                  {
                    objc_enumerationMutation(congestionPredictions);
                  }

                  v21 = *(*(&v75 + 1) + 8 * i);
                  if (![v21 state])
                  {
                    timestamp2 = [v70 timestamp];
                    [v21 activateAtTime:timestamp2];
                  }
                }

                v18 = [congestionPredictions countByEnumeratingWithState:&v75 objects:v82 count:16];
              }

              while (v18);
            }

            timestamp = +[NSDate now];
            fmCoreData = [(FMModel *)selfCopy fmCoreData];
            subscriptionID2 = [v65 subscriptionID];
            prevCells4 = [v65 prevCells];
            v60 = [fmCoreData getCongestionPredictionsForSubscriptionID:subscriptionID2 andPrevCells:prevCells4 atTime:timestamp];

            if (v60 && [v60 count])
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
              {
                sub_1001FB004(v81, [v60 count]);
              }

              v26 = objc_alloc_init(NSMutableArray);
              v69 = objc_alloc_init(NSMutableArray);
              v27 = objc_alloc_init(NSMutableArray);
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              obj = v60;
              v28 = 0;
              v29 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (v29)
              {
                v30 = *v72;
                do
                {
                  for (j = 0; j != v29; j = j + 1)
                  {
                    if (*v72 != v30)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v32 = *(*(&v71 + 1) + 8 * j);
                    v33 = *(qword_1002DBE98 + 136);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v84 = v32;
                      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCongestionModel]:#D Received congestion prediction: %@", buf, 0xCu);
                    }

                    seenCount = [v32 seenCount];
                    predictedGoodCells = [v32 predictedGoodCells];
                    [v26 addObjectsFromArray:predictedGoodCells];

                    predictedBadCells = [v32 predictedBadCells];
                    [v26 addObjectsFromArray:predictedBadCells];

                    v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 predictedTimeUntilCongestion]);
                    [v69 addObject:v37];

                    v38 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 predictedTimeInCongestion]);
                    [v27 addObject:v38];

                    v28 = seenCount + v28;
                  }

                  v29 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
                }

                while (v29);
              }

              fmCoreTelephonyController = [(FMModel *)selfCopy fmCoreTelephonyController];
              v40 = [fmCoreTelephonyController isDataContextUuid:updateCopy];

              if (v40)
              {
                subscriptionID3 = [v65 subscriptionID];
                v42 = [(FMCongestionModel *)selfCopy sendPredictionsToBasebandForSubscriptionID:subscriptionID3 timesUntilCongestion:v69 timesInCongestion:v27 cells:v26 seenCount:v28];

                v43 = *(qword_1002DBE98 + 136);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v84 = v42;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I Combined prediction: %@", buf, 0xCu);
                }

                if (v42)
                {
                  congestionPredictions2 = [v65 congestionPredictions];
                  [congestionPredictions2 addObject:v42];
                }
              }

              else
              {
                v45 = *(qword_1002DBE98 + 136);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v84 = updateCopy;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I Context %@ is not the active data context, not sending predictions to baseband", buf, 0xCu);
                }
              }
            }

            v46 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v84 = updateCopy;
              v85 = 2112;
              v86 = v70;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I Cell Monitor Update for context %@: %@", buf, 0x16u);
            }

            if (([v70 canReceiveCongestionMetric] & 1) == 0)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
              {
                sub_1001FB048();
              }

              v47 = [FMCongestionMetric alloc];
              timestamp3 = [v70 timestamp];
              [timestamp3 timeIntervalSince1970];
              v50 = v49;
              v51 = [v70 gci];
              arfcnOrUarfcn = [v70 arfcnOrUarfcn];
              unsignedIntValue = [arfcnOrUarfcn unsignedIntValue];
              v54 = [v70 rat];
              v55 = [(FMCongestionModel *)selfCopy basebandSysModeFromCellMonitorRAT:v54];
              subscriptionID4 = [v70 subscriptionID];
              LODWORD(v58) = 0;
              HIDWORD(v58) = [subscriptionID4 unsignedIntValue];
              v57 = [FMCongestionMetric init:v47 gci:"init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:" arfnc:llround(v50 * 1000.0) ratType:v51 rsrp:unsignedIntValue rsrq:v55 sinr:0 dlBottleneckScoreInvalid:0 dlBottleneckScoreNo:0 dlBottleneckScoreLow:0 dlBottleneckScoreMedium:0 dlBottleneckScoreHigh:0 ulBottleneckScoreInvalid:0 ulBottleneckScoreNo:0 ulBottleneckScoreLow:0 ulBottleneckScoreMedium:100 ulBottleneckScoreHigh:v58 dataStallIndicatorAVS:? dataStallIndicatorUL:? isSubway:? qoeScore:? qoeDuration:? psPref:? subsId:?];
              [v70 setCongestionMetric:v57];

              [(FMCongestionModel *)selfCopy handleUncongestedCell:v70 forState:v65];
            }
          }
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FB0B8();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FB128();
    }
  }
}

- (void)handleUncongestedCell:(id)cell forState:(id)state
{
  cellCopy = cell;
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB198();
  }

  congestionMetric = [cellCopy congestionMetric];
  psPref = [congestionMetric psPref];
  congestionMetric2 = [cellCopy congestionMetric];
  selfCopy = self;
  subsId = [congestionMetric2 subsId];

  v35 = objc_alloc_init(NSMutableArray);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  congestionPredictions = [stateCopy congestionPredictions];
  v10 = [congestionPredictions countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v10)
  {
    v32 = 0;
    v11 = *v46;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(congestionPredictions);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        state = [v13 state];
        if (state == 1)
        {
          timestamp = [cellCopy timestamp];
          [v13 leftCongestionAtTime:timestamp];
        }

        else if (state != 2)
        {
          continue;
        }

        actualGoodCells = [v13 actualGoodCells];
        [actualGoodCells addObject:cellCopy];

        actualGoodCells2 = [v13 actualGoodCells];
        v18 = [actualGoodCells2 count];
        v19 = +[FMConfiguration sharedInstance];
        LOBYTE(v18) = v18 < [v19 congestionGoodCellsInDatabase];

        if ((v18 & 1) == 0)
        {
          [v35 addObject:v13];
          [v13 end];
          [(FMCongestionModel *)selfCopy sendCongestionPredictionEventWithPrediction:v13 isDataContext:psPref == subsId];
          v32 = 1;
        }
      }

      v10 = [congestionPredictions countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v10)
      {
        goto LABEL_18;
      }
    }
  }

  v32 = 0;
LABEL_18:

  congestionPredictions2 = [stateCopy congestionPredictions];
  [congestionPredictions2 removeObjectsInArray:v35];

  v21 = objc_alloc_init(NSMutableArray);
  v22 = objc_alloc_init(NSMutableArray);
  activeCongestionAreas = [stateCopy activeCongestionAreas];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10002544C;
  v41[3] = &unk_1002AB128;
  v24 = cellCopy;
  v42 = v24;
  v25 = v21;
  v43 = v25;
  v26 = v22;
  v44 = v26;
  [activeCongestionAreas enumerateObjectsUsingBlock:v41];

  activeCongestionAreas2 = [stateCopy activeCongestionAreas];
  [activeCongestionAreas2 removeObjectsInArray:v25];

  activeCongestionAreas3 = [stateCopy activeCongestionAreas];
  [activeCongestionAreas3 removeObjectsInArray:v26];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100025590;
  v36[3] = &unk_1002AB150;
  isLocationAuthorized = [(FMCongestionModel *)selfCopy isLocationAuthorized];
  v39 = v32 & 1;
  v36[4] = selfCopy;
  v40 = psPref == subsId;
  v29 = stateCopy;
  v37 = v29;
  [v25 enumerateObjectsUsingBlock:v36];
}

- (void)_handleIncomingMetric:(id)metric withPayload:(id)payload
{
  metricCopy = metric;
  payloadCopy = payload;
  if ([(FMCongestionModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (payloadCopy)
    {
      v8 = [FMBasebandMetricsController extractFMCongestionMetricFrom:payloadCopy];
      v9 = *(qword_1002DBE98 + 136);
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1001FB2FC();
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v17 = 0x2020000000;
        v18 = 0;
        contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1000258B4;
        v12[3] = &unk_1002AB1A0;
        selfCopy = self;
        p_buf = &buf;
        v13 = v8;
        [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v12];

        _Block_object_dispose(&buf, 8);
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001FB36C();
      }
    }

    else
    {
      v11 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = metricCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCongestionModel]:#N Received null metric: %@", &buf, 0xCu);
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
  v10[2] = sub_1000261F8;
  v10[3] = &unk_1002AB1C8;
  v7 = congestionPredictionEnabledCountries;
  v11 = v7;
  v8 = [updateCopy indexOfObjectPassingTest:v10];
  v9 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I Congestion prediction enabled in current country: %{BOOL}d", buf, 8u);
  }

  [(FMCongestionModel *)self setIsCongestionPredictionEnabledInCurrentCountry:v8 != 0x7FFFFFFFFFFFFFFFLL];
}

- (unique_ptr<awd::metrics::InsightTypeCongestion_CongestionCell,)insightCellFromFMCongestionCell:(id)cell
{
  v4 = v3;
  cellCopy = cell;
  congestionMetric = [cellCopy congestionMetric];
  isQoEScoreValid = [congestionMetric isQoEScoreValid];

  if (isQoEScoreValid)
  {
    operator new();
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FB55C();
  }

  *v4 = 0;

  return v8;
}

- (id)basebandSysModeFromCellMonitorRAT:(id)t
{
  tCopy = t;
  v4 = [NSString stringWithUTF8String:"GSM"];
  v5 = [tCopy isEqualToString:v4];

  if (v5)
  {
    v6 = off_1002B2830;
    goto LABEL_9;
  }

  v7 = [NSString stringWithUTF8String:"WCDMA"];
  v8 = [tCopy isEqualToString:v7];

  if (v8)
  {
    v6 = off_1002B2838;
    goto LABEL_9;
  }

  v9 = [NSString stringWithUTF8String:"CDMA"];
  if ([tCopy isEqualToString:v9])
  {

LABEL_8:
    v6 = off_1002B2828;
    goto LABEL_9;
  }

  v10 = [NSString stringWithUTF8String:"TDSCDMA"];
  v11 = [tCopy isEqualToString:v10];

  if (v11)
  {
    goto LABEL_8;
  }

  v15 = [NSString stringWithUTF8String:"LTE"];
  if ([tCopy isEqualToString:v15])
  {

LABEL_13:
    v6 = off_1002B2840;
    goto LABEL_9;
  }

  v16 = [NSString stringWithUTF8String:"NR_NSA"];
  v17 = [tCopy isEqualToString:v16];

  if (v17)
  {
    goto LABEL_13;
  }

  v18 = [NSString stringWithUTF8String:"NR_SA"];
  v19 = [tCopy isEqualToString:v18];

  v6 = off_1002B2820;
  if (v19)
  {
    v6 = &off_1002B2848;
  }

LABEL_9:
  v12 = *v6;
  v13 = *v6;

  return v12;
}

- (void)sendFedMobilityPredictionEventWithPredictionCorrect:(BOOL)correct seenCount:(int)count
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000268C8;
  v4[3] = &unk_1002AB1E8;
  correctCopy = correct;
  countCopy = count;
  sub_1000158DC(@"com.apple.Telephony.fedMobilityPredictions", v4);
}

- (void)sendRLGSPredictionEventForCell:(id)cell
{
  cellCopy = cell;
  pthread_mutex_lock(&stru_1002D47D8);
  v5 = xmmword_1002D4818;
  if (!xmmword_1002D4818)
  {
    sub_100082658(&v63);
    v6 = v63;
    v63 = 0uLL;
    v7 = *(&xmmword_1002D4818 + 1);
    xmmword_1002D4818 = v6;
    if (v7)
    {
      sub_100008350(v7);
      if (*(&v63 + 1))
      {
        sub_100008350(*(&v63 + 1));
      }
    }

    v5 = xmmword_1002D4818;
  }

  v8 = *(&xmmword_1002D4818 + 1);
  if (*(&xmmword_1002D4818 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4818 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D47D8);
  v9 = sub_10001409C(v5);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v9)
  {
    fmCoreData = [(FMModel *)self fmCoreData];
    v11 = [fmCoreData getPreviouslyStoredMatchingFMCongestionCell:cellCopy];

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FB678();
    }

    v47 = v11;
    dlBottleneckScoreAsString = [cellCopy dlBottleneckScoreAsString];
    v43 = dlBottleneckScoreAsString;
    ulBottleneckScoreAsString = [cellCopy ulBottleneckScoreAsString];
    v41 = ulBottleneckScoreAsString;
    if (v11)
    {
      dlBottleneckScoreAsString2 = [v11 dlBottleneckScoreAsString];
      ulBottleneckScoreAsString2 = [v11 ulBottleneckScoreAsString];
      v16 = dlBottleneckScoreAsString2;
      v17 = [dlBottleneckScoreAsString2 isEqualToString:dlBottleneckScoreAsString];
      v18 = ulBottleneckScoreAsString2;
      v19 = [ulBottleneckScoreAsString2 isEqualToString:ulBottleneckScoreAsString];
      v20 = [NSNumber numberWithBool:v17];
      v11 = [NSNumber numberWithBool:v19];
      v42 = [NSNumber numberWithBool:v17 & v19];
      v45 = v20;
      congestionMetric = [v47 congestionMetric];
      v21 = v45;
      if ([congestionMetric dataStallIndicatorAVS])
      {
        v44 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v21 = 0;
      v42 = 0;
    }

    congestionMetric2 = [cellCopy congestionMetric];
    dataStallIndicatorAVS = [congestionMetric2 dataStallIndicatorAVS];
    v44 = dataStallIndicatorAVS != 0;

    if (!v47)
    {
      v44 = dataStallIndicatorAVS != 0;
      goto LABEL_23;
    }

LABEL_20:

    congestionMetric = [v47 congestionMetric];
    if ([congestionMetric dataStallIndicatorUL])
    {
      v24 = 1;
      goto LABEL_24;
    }

LABEL_23:
    congestionMetric3 = [cellCopy congestionMetric];
    dataStallIndicatorUL = [congestionMetric3 dataStallIndicatorUL];
    v24 = dataStallIndicatorUL != 0;

    if (!v47)
    {
      v24 = dataStallIndicatorUL != 0;
      goto LABEL_27;
    }

LABEL_24:

    congestionMetric = [v47 congestionMetric];
    if ([congestionMetric isSubway])
    {
      v27 = 1;
      goto LABEL_28;
    }

LABEL_27:
    congestionMetric4 = [cellCopy congestionMetric];
    v27 = [congestionMetric4 isSubway] != 0;

    if (!v47)
    {
LABEL_29:
      v46 = v21;
      congestionMetric5 = [cellCopy congestionMetric];
      psPref = [congestionMetric5 psPref];
      congestionMetric6 = [cellCopy congestionMetric];
      v32 = psPref == [congestionMetric6 subsId];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_1000270C0;
      v49[3] = &unk_1002AB210;
      v50 = cellCopy;
      v33 = v16;
      v51 = v33;
      v34 = v43;
      v52 = v34;
      v35 = v46;
      v53 = v35;
      v36 = v18;
      v54 = v36;
      v37 = v41;
      v55 = v37;
      v38 = v11;
      v56 = v38;
      v59 = v44;
      v60 = v24;
      v61 = v27;
      v62 = v32;
      v39 = v42;
      v57 = v39;
      v40 = v47;
      v58 = v40;
      sub_1000158DC(@"com.apple.Telephony.cellularCongestionInfoValidation", v49);

      goto LABEL_30;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB63C();
  }

LABEL_30:
}

- (void)sendCongestionPredictionEventWithPrediction:(id)prediction isDataContext:(BOOL)context
{
  predictionCopy = prediction;
  if ([predictionCopy state] == 100)
  {
    predictedGoodCells = [predictionCopy predictedGoodCells];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100027A34;
    v35[3] = &unk_1002AB238;
    v7 = predictionCopy;
    v36 = v7;
    v8 = [predictedGoodCells indexesOfObjectsPassingTest:v35];
    v9 = [v8 count];

    predictedBadCells = [v7 predictedBadCells];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100027AA8;
    v33[3] = &unk_1002AB238;
    v11 = v7;
    v34 = v11;
    v12 = [predictedBadCells indexesOfObjectsPassingTest:v33];
    v13 = [v12 count];

    predictedGoodCells2 = [v11 predictedGoodCells];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100027B1C;
    v31[3] = &unk_1002AB238;
    v15 = v11;
    v32 = v15;
    v16 = [predictedGoodCells2 indexesOfObjectsPassingTest:v31];
    v17 = [v16 count];

    predictedBadCells2 = [v15 predictedBadCells];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027B90;
    v29[3] = &unk_1002AB238;
    v19 = v15;
    v30 = v19;
    v20 = [predictedBadCells2 indexesOfObjectsPassingTest:v29];
    v21 = [v20 count];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100027C04;
    v22[3] = &unk_1002AB260;
    v23 = v19;
    v24 = v9;
    v25 = v13;
    v26 = v17;
    v27 = v21;
    contextCopy = context;
    sub_1000158DC(@"com.apple.Telephony.fedMobilityCongestionPredictions", v22);
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FB6F8();
  }
}

- (void)sendCongestionPredictionEventWithCongestionArea:(id)area isDataContext:(BOOL)context
{
  areaCopy = area;
  if ([areaCopy curState] == 2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000285A4;
    v6[3] = &unk_1002AB288;
    v7 = areaCopy;
    contextCopy = context;
    sub_1000158DC(@"com.apple.Telephony.fedMobilityCongestionPredictions", v6);
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FB768();
  }
}

- (id)sendPredictionsToBasebandForSubscriptionID:(id)d timesUntilCongestion:(id)congestion timesInCongestion:(id)inCongestion cells:(id)cells seenCount:(int)count
{
  dCopy = d;
  congestionCopy = congestion;
  inCongestionCopy = inCongestion;
  cellsCopy = cells;
  [FMUtil meanOfSample:inCongestionCopy];
  v13 = v12;
  [FMUtil meanOfSample:congestionCopy];
  v14 = llround(v13);
  v16 = llround(v15);
  v17 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = cellsCopy;
    v22 = 1024;
    v23 = v16;
    v24 = 1024;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FederatedMobility[FMCongestionModel]:#I Sending congestion insight to baseband: subscriptionID %@, cells %@, timeUntilCongestion %u, timeInCongestion %u", buf, 0x22u);
  }

  operator new();
}

- (void)sendQoEEventForCongestionCell:(id)cell
{
  cellCopy = cell;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB8C4();
  }

  congestionMetric = [cellCopy congestionMetric];
  v5 = congestionMetric;
  if (congestionMetric && ([congestionMetric isQoEScoreValid] & 1) != 0)
  {
    v6 = +[NSDate now];
    timestamp = [cellCopy timestamp];
    [v6 timeIntervalSinceDate:timestamp];
    v9 = v8;

    if (v9 >= [v5 qoeDuration])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100029504;
      v10[3] = &unk_1002AB2B0;
      v11 = v5;
      v12 = v9;
      sub_1000158DC(@"com.apple.Telephony.congestionScoreStats", v10);
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FB934();
    }
  }
}

@end