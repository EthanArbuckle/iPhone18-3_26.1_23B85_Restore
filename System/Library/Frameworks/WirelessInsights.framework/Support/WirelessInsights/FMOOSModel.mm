@interface FMOOSModel
- (FMCoreLocationController)fmCoreLocationController;
- (FMOOSModel)initWithFMCoreData:(id)data locationController:(id)controller withQueueName:(const char *)name;
- (id)getCoreTelephonyRATStringFromEnum:(int)enum;
- (int)getOOSInsightRATFromString:(id)string;
- (void)_handleCellMonitorUpdate:(id)update info:(id)info;
- (void)_handleLocationUpdate:(id)update;
- (void)_handleRegistrationStatusChanged:(id)changed registrationStatus:(id)status;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)update;
- (void)_handleVisitEnded:(id)ended;
- (void)_handleVisitStarted:(id)started;
- (void)_initializeStateForContext:(id)context atTime:(id)time;
- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state;
- (void)dealloc;
- (void)fetchAndSendCrowdsourcedOOSInsightsPerTileForState:(id)state atLocation:(id)location withReason:(id)reason;
- (void)fetchAndSendOnDeviceLearningsForState:(id)state withContext:(id)context;
- (void)sendOutOfServicePredictionEventWithClientPrediction:(id)prediction withSuppressionReason:(unsigned int)reason didDeviceGoOutOfService:(BOOL)service;
@end

@implementation FMOOSModel

- (FMOOSModel)initWithFMCoreData:(id)data locationController:(id)controller withQueueName:(const char *)name
{
  dataCopy = data;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = FMOOSModel;
  v10 = [(FMModel *)&v24 initWithFMCoreData:dataCopy withQueueName:name];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    fmRegulatoryDomainController = [(FMModel *)v10 fmRegulatoryDomainController];
    getCurrentEstimates = [fmRegulatoryDomainController getCurrentEstimates];
    [(FMOOSModel *)v12 _handleRegulatoryDomainEstimateUpdate:getCurrentEstimates];

    v15 = objc_alloc_init(NSMutableArray);
    prevVisits = v12->_prevVisits;
    v12->_prevVisits = v15;

    curVisit = v12->_curVisit;
    v12->_curVisit = 0;

    curLocation = v12->_curLocation;
    v12->_curLocation = 0;

    v12->_isLocationAuthorized = 0;
    fmCoreTelephonyController = [(FMModel *)v12 fmCoreTelephonyController];
    -[FMOOSModel setIsAirplaneModeActive:](v12, "setIsAirplaneModeActive:", [fmCoreTelephonyController isAirplaneModeActive]);

    objc_storeWeak(&v11->_fmCoreLocationController, controllerCopy);
    [controllerCopy addDelegate:v12];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100202AE8();
    }

    fmCoreTelephonyController2 = [(FMModel *)v12 fmCoreTelephonyController];
    getSubscriptionContextsInUse = [fmCoreTelephonyController2 getSubscriptionContextsInUse];
    [(FMModel *)v12 populateSubscriptionContextsInUse:getSubscriptionContextsInUse];

    v22 = v12;
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100202B24();
  }

  return v12;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100202B58();
  }

  v3.receiver = self;
  v3.super_class = FMOOSModel;
  [(FMModel *)&v3 dealloc];
}

- (void)_initializeStateForContext:(id)context atTime:(id)time
{
  contextCopy = context;
  timeCopy = time;
  fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
  uuid = [contextCopy uuid];
  v10 = [fmCoreTelephonyController getRegistrationStatus:uuid];

  v11 = [contextCopy mcc];
  v12 = [contextCopy mnc];
  v13 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uuid2 = [contextCopy uuid];
    v20 = 138413058;
    v21 = uuid2;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Initializing context %@ with registrationState = %@ for Home PLMN (%@, %@) ", &v20, 0x2Au);
  }

  v14 = [FMOOSContextState alloc];
  subscriptionID = [contextCopy subscriptionID];
  v16 = [(FMOOSContextState *)v14 initWithStartTime:timeCopy subscriptionID:subscriptionID registrationState:v10 homeMcc:v11 homeMnc:v12];

  if (v16)
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    uuid3 = [contextCopy uuid];
    [contextUUIDToStateMap setObject:v16 forKey:uuid3];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100202B94();
  }
}

- (void)_updateStateForContext:(id)context atTime:(id)time withExistingState:(id)state
{
  contextCopy = context;
  timeCopy = time;
  stateCopy = state;
  v11 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uuid = [contextCopy uuid];
    sub_100202C08(uuid, buf, v11);
  }

  subscriptionID = [stateCopy subscriptionID];
  subscriptionID2 = [contextCopy subscriptionID];
  if ([subscriptionID isEqualToNumber:subscriptionID2])
  {
    homeMcc = [stateCopy homeMcc];
    v16 = [contextCopy mcc];
    if ([homeMcc isEqualToString:v16])
    {
      homeMnc = [stateCopy homeMnc];
      v18 = [contextCopy mnc];
      v19 = [homeMnc isEqualToString:v18];

      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(FMOOSModel *)self _initializeStateForContext:contextCopy atTime:timeCopy];
LABEL_10:
}

- (void)fetchAndSendCrowdsourcedOOSInsightsPerTileForState:(id)state atLocation:(id)location withReason:(id)reason
{
  stateCopy = state;
  locationCopy = location;
  reasonCopy = reason;
  v11 = +[FMConfiguration sharedInstance];
  disableCrowdsourcedLearnings = [v11 disableCrowdsourcedLearnings];

  if (disableCrowdsourcedLearnings)
  {
    v13 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Crowdsourced learnings disabled as per config, aborting", buf, 2u);
    }

    disableCrowdsourcedLearnings = 0x10000;
  }

  isInCrowdsourcedDisabledCountry = [(FMOOSModel *)self isInCrowdsourcedDisabledCountry];
  v15 = qword_1002DBE98;
  if (isInCrowdsourcedDisabledCountry)
  {
    v16 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Crowdsourced learnings disabled in the current country, aborting", buf, 2u);
      v15 = qword_1002DBE98;
    }

    disableCrowdsourcedLearnings |= 0x40000u;
  }

  v17 = *(v15 + 136);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v39) = disableCrowdsourcedLearnings;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Suppression reason %u", buf, 8u);
  }

  [stateCopy setPredictionSuppressionReason:{objc_msgSend(stateCopy, "predictionSuppressionReason") | disableCrowdsourcedLearnings}];
  if (([stateCopy predictionSuppressionReason] & 0xFFFD0000) != 0)
  {
    v18 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Not sending crowdsourced learning because they are being suppressed for this OOS";
LABEL_14:
      v20 = v18;
      v21 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
    }
  }

  else
  {
    if (!locationCopy)
    {
      v18 = *(qword_1002DBE98 + 136);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v19 = "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Cannot fetch Crowdsourced predictions without location information, aborting";
      goto LABEL_14;
    }

    [locationCopy accuracy];
    v23 = v22;
    v24 = +[FMConfiguration sharedInstance];
    v25 = v23 < [v24 LocationHorizontalAccuracyThreshold];

    v26 = *(qword_1002DBE98 + 136);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    if (!v25)
    {
      if (!v27)
      {
        goto LABEL_25;
      }

      [locationCopy accuracy];
      *buf = 134217984;
      v39 = v33;
      v19 = "FederatedMobility[FMOOSModel]:#I Not sending Crowdsourced prediction: horizontal accuracy %f is more than threshold";
      v20 = v26;
      v21 = 12;
      goto LABEL_15;
    }

    if (v27)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Inside fetchAndSendCrowdsourcedOOSInsightsPerTile", buf, 2u);
    }

    [locationCopy latitude];
    v29 = v28;
    [locationCopy longitude];
    v31 = v30;
    _queue = [(FMModel *)self _queue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10008C120;
    v34[3] = &unk_1002AE378;
    v35 = stateCopy;
    v36 = locationCopy;
    v37 = reasonCopy;
    [FMGEOServicesHandler getCellularCoverageTileConfigurationAtLatitude:_queue longitude:v37 queue:v34 reason:v29 responseBlock:v31];
  }

LABEL_25:
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
    if (!v9)
    {
      if (v10)
      {
        sub_100203020();
      }

      goto LABEL_52;
    }

    if (v10)
    {
      sub_100202E10();
    }

    registrationState = [v9 registrationState];
    [v9 setRegistrationState:statusCopy];
    if ([(FMOOSModel *)self isAirplaneModeActive])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100202FE4();
      }

      goto LABEL_51;
    }

    if ([WISTelephonyUtils isRegistrationDisplayStatusInService:registrationState]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:statusCopy])
    {
      v13 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = changedCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device went OOS with context %@", buf, 0xCu);
      }

      oosAreaEntry = [v9 oosAreaEntry];
      v15 = oosAreaEntry == 0;

      if (v15)
      {
        curLocation = [(FMOOSModel *)self curLocation];
        clientPrediction = [v9 clientPrediction];
        if (clientPrediction && ([v9 clientPrediction], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isSent"), v29, clientPrediction, (v30 & 1) != 0))
        {
          v58 = 1;
        }

        else
        {
          v31 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I On-device prediction not sent, sending Crowdsourced OOS learnings", buf, 2u);
          }

          [(FMOOSModel *)self fetchAndSendCrowdsourcedOOSInsightsPerTileForState:v9 atLocation:curLocation withReason:@"OutOfService"];
          v58 = 0;
        }

        prevCells = [v9 prevCells];
        prevCells2 = [v9 prevCells];
        v66 = [prevCells2 count];
        v60 = +[FMConfiguration sharedInstance];
        oOSPrevCellsInDatabase = [v60 OOSPrevCellsInDatabase];
        if (v66 <= oOSPrevCellsInDatabase)
        {
          v68 = 0;
        }

        else
        {
          prevCells3 = [v9 prevCells];
          v32 = [prevCells3 count];
          v56 = +[FMConfiguration sharedInstance];
          v68 = v32 - [v56 OOSPrevCellsInDatabase];
        }

        prevCells4 = [v9 prevCells];
        v33 = [prevCells4 count];
        v34 = +[FMConfiguration sharedInstance];
        if (v33 >= [v34 OOSPrevCellsInDatabase])
        {
          prevCells5 = +[FMConfiguration sharedInstance];
          oOSPrevCellsInDatabase2 = [prevCells5 OOSPrevCellsInDatabase];
        }

        else
        {
          prevCells5 = [v9 prevCells];
          oOSPrevCellsInDatabase2 = [prevCells5 count];
        }

        v69 = [prevCells subarrayWithRange:{v68, oOSPrevCellsInDatabase2}];

        if (v66 > oOSPrevCellsInDatabase)
        {
        }

        prevVisits = [(FMOOSModel *)self prevVisits];
        lastObject = [prevVisits lastObject];

        curVisit = [(FMOOSModel *)self curVisit];
        v40 = +[NSDate now];
        v41 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          [v40 timeIntervalSince1970];
          *buf = 134218754;
          v73 = v42;
          v74 = 1024;
          *v75 = v58;
          *&v75[4] = 1024;
          *&v75[6] = v58 ^ 1;
          v76 = 2112;
          v77 = v69;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device went OOS at time %f. On-device prediction sent %{BOOL}d => Crowdsourced predictions required %{BOOL}d. Last cells before %@", buf, 0x22u);
        }

        v43 = sub_1000CDAE0();
        v44 = [FMOOSAreaEntry alloc];
        clientPrediction2 = [v9 clientPrediction];
        v46 = [(FMOOSAreaEntry *)v44 init:v40 prevVisit:lastObject curVisit:curVisit entryLocation:curLocation prevCells:v69 registrationState:registrationState batteryLevel:v43 clientPrediction:clientPrediction2];
        [v9 setOosAreaEntry:v46];

        clientPrediction3 = [v9 clientPrediction];
        -[FMOOSModel sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:](self, "sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:", clientPrediction3, [v9 predictionSuppressionReason], 1);

        [v9 setClientPrediction:0];
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100202F74();
      }

      goto LABEL_51;
    }

    if (![WISTelephonyUtils isRegistrationDisplayStatusOutOfService:registrationState]|| ![WISTelephonyUtils isRegistrationDisplayStatusInService:statusCopy])
    {
LABEL_51:

LABEL_52:
      goto LABEL_53;
    }

    oosAreaEntry2 = [v9 oosAreaEntry];
    v17 = oosAreaEntry2 == 0;

    v18 = *(qword_1002DBE98 + 136);
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100202F04();
      }

      [v9 setPreviousCrowdsourcedOOSInsights:0];
      [v9 setPredictionSuppressionReason:0];
      goto LABEL_51;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = changedCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device no longer OOS with context %@ according to registration display state", buf, 0xCu);
    }

    v70 = +[NSDate now];
    oosAreaEntry3 = [v9 oosAreaEntry];
    timestamp = [oosAreaEntry3 timestamp];
    [v70 timeIntervalSinceDate:timestamp];
    v22 = v21;

    v23 = +[FMConfiguration sharedInstance];
    v65 = [v70 dateByAddingTimeInterval:{-objc_msgSend(v23, "OOSMaxSecondsSinceCellSeenBeforeInService")}];

    prevCells6 = [v9 prevCells];
    lastObject2 = [prevCells6 lastObject];

    if (lastObject2)
    {
      oosAreaEntry4 = [v9 oosAreaEntry];
      timestamp2 = [oosAreaEntry4 timestamp];
      timestamp3 = [lastObject2 timestamp];
      if ([timestamp2 compare:timestamp3] == -1)
      {
        timestamp4 = [lastObject2 timestamp];
        v64 = [v65 compare:timestamp4] == -1;

        if (v64)
        {
          v49 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v73 = changedCopy;
            v74 = 2112;
            *v75 = lastObject2;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device back in service with context %@ and next cell %@", buf, 0x16u);
          }

          subscriptionID = [v9 subscriptionID];
          fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
          v52 = [fmCoreTelephonyController isDataContextUuid:changedCopy];
          oosAreaEntry5 = [v9 oosAreaEntry];
          previousCrowdsourcedOOSInsights = [v9 previousCrowdsourcedOOSInsights];
          LODWORD(v55) = [v9 predictionSuppressionReason];
          [(FMOOSModel *)self backInServiceWithSubscriptionID:subscriptionID isDataContext:v52 afterDuration:oosAreaEntry5 fromEntry:lastObject2 withNextCell:statusCopy withRegistrationState:previousCrowdsourcedOOSInsights previousCrowdsourcedPrediction:v22 withPredictionSuppressionReason:v55];

          [v9 setOosAreaEntry:0];
          [v9 setPreviousCrowdsourcedOOSInsights:0];
          [v9 setPredictionSuppressionReason:0];
          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100202E94();
    }

LABEL_50:

    goto LABEL_51;
  }

  v12 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v73 = changedCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Received nil display status change for context %@", buf, 0xCu);
  }

LABEL_53:
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
        sub_1002031A4();
      }

      goto LABEL_30;
    }

    v43 = [WISTelephonyUtils getServingCellInfoFromArray:infoCopy];
    v10 = +[NSDate now];
    subscriptionID = [v9 subscriptionID];
    v44 = 0;
    v42 = [FMCoreTelephonyController cellInfoToFMServingCell:v43 atTime:v10 inSlot:subscriptionID error:&v44];
    v12 = v44;

    if (v12)
    {
      v13 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        localizedDescription = [v12 localizedDescription];
        sub_100203090(updateCopy, localizedDescription, buf, v13);
      }

      goto LABEL_29;
    }

    if (!v42)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100203134();
      }

      goto LABEL_29;
    }

    oosAreaEntry = [v9 oosAreaEntry];
    if (oosAreaEntry)
    {
      registrationState = [v9 registrationState];
      v17 = [WISTelephonyUtils isRegistrationDisplayStatusInService:registrationState];

      if (v17)
      {
        v18 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = updateCopy;
          v47 = 2112;
          v48 = v42;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device no longer OOS with context %@ according to registration display state and cell monitor with next cell %@", buf, 0x16u);
        }

        subscriptionID2 = [v9 subscriptionID];
        fmCoreTelephonyController = [(FMModel *)self fmCoreTelephonyController];
        v38 = [fmCoreTelephonyController isDataContextUuid:updateCopy];
        v41 = +[NSDate now];
        oosAreaEntry2 = [v9 oosAreaEntry];
        timestamp = [oosAreaEntry2 timestamp];
        [v41 timeIntervalSinceDate:?];
        v21 = v20;
        oosAreaEntry3 = [v9 oosAreaEntry];
        registrationState2 = [v9 registrationState];
        previousCrowdsourcedOOSInsights = [v9 previousCrowdsourcedOOSInsights];
        LODWORD(v36) = [v9 predictionSuppressionReason];
        [(FMOOSModel *)self backInServiceWithSubscriptionID:subscriptionID2 isDataContext:v38 afterDuration:oosAreaEntry3 fromEntry:v42 withNextCell:registrationState2 withRegistrationState:previousCrowdsourcedOOSInsights previousCrowdsourcedPrediction:v21 withPredictionSuppressionReason:v36];

        [v9 setOosAreaEntry:0];
        [v9 setPreviousCrowdsourcedOOSInsights:0];
        [v9 setPredictionSuppressionReason:0];
      }
    }

    prevCells = [v9 prevCells];
    lastObject = [prevCells lastObject];

    if (lastObject && [lastObject isEqual:v42])
    {
      timestamp2 = [v42 timestamp];
      [lastObject updateTimestampTo:timestamp2];

      clientPrediction = [v9 clientPrediction];
      v29 = clientPrediction == 0;

      if (!v29)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1002030F8();
        }

LABEL_26:

LABEL_29:
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      prevCells2 = [v9 prevCells];
      [prevCells2 addObject:v42];

      v31 = +[FMConfiguration sharedInstance];
      oOSPrevCellsInMemory = [v31 OOSPrevCellsInMemory];
      prevCells3 = [v9 prevCells];
      [FMUtil removeFirstElementsForCapacity:oOSPrevCellsInMemory fromArray:prevCells3];
    }

    v34 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      isLocationAuthorized = [(FMOOSModel *)self isLocationAuthorized];
      *buf = 138412802;
      v46 = updateCopy;
      v47 = 2112;
      v48 = v42;
      v49 = 1024;
      v50 = isLocationAuthorized;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Cell Monitor Update for context %@: %@, isLocationAuthorized: %{BOOL}d", buf, 0x1Cu);
    }

    if ([(FMOOSModel *)self isLocationAuthorized])
    {
      [(FMOOSModel *)self fetchAndSendOnDeviceLearningsForState:v9 withContext:updateCopy];
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203214();
  }

LABEL_31:
}

- (void)fetchAndSendOnDeviceLearningsForState:(id)state withContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v92 = stateCopy;
  oosAreaEntry = [stateCopy oosAreaEntry];

  if (!oosAreaEntry)
  {
    clientPrediction = [stateCopy clientPrediction];
    -[FMOOSModel sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:](self, "sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:", clientPrediction, [stateCopy predictionSuppressionReason], 0);

    [stateCopy setClientPrediction:0];
    [stateCopy setPredictionSuppressionReason:0];
    v91 = +[NSDate now];
    fmCoreData = [(FMModel *)self fmCoreData];
    prevVisits = [(FMOOSModel *)self prevVisits];
    lastObject = [prevVisits lastObject];
    curVisit = [(FMOOSModel *)self curVisit];
    subscriptionID = [stateCopy subscriptionID];
    prevCells = [v92 prevCells];
    curLocation = [(FMOOSModel *)self curLocation];
    v16 = [FMOOSPredictor getOutOfServiceRecoveryPredictionWithFMCoreData:fmCoreData prevVisit:lastObject curVisit:curVisit subscriptionID:subscriptionID prevCells:prevCells startTime:v91 entryLocation:curLocation];

    v95 = v16;
    if (v16 && ([v16 firstObject], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v90 = v17;
      cells = [v17 cells];
      firstObject = [cells firstObject];

      if (firstObject)
      {
        subscriptionID2 = [firstObject subscriptionID];
        unsignedIntegerValue = [subscriptionID2 unsignedIntegerValue];

        v22 = *(qword_1002DBE98 + 136);
        if (unsignedIntegerValue < 2)
        {
          v89 = firstObject;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = contextCopy;
            *&buf[12] = 2048;
            *&buf[14] = [v16 count];
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Received Recovery Predictions for context %@: %lu", buf, 0x16u);
          }

          for (i = 0; ; i = v94)
          {
            v25 = [v95 count];
            v26 = *(qword_1002DBE98 + 136);
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
            if (i >= v25)
            {
              break;
            }

            if (v27)
            {
              v28 = [v95 count];
              v29 = [v95 objectAtIndexedSubscript:i];
              cells2 = [v29 cells];
              v31 = [cells2 count];
              v32 = [v95 objectAtIndexedSubscript:i];
              durations = [v32 durations];
              v34 = [durations count];
              *buf = 138413314;
              *&buf[4] = contextCopy;
              *&buf[12] = 2048;
              v94 = i + 1;
              *&buf[14] = i + 1;
              v97 = 2048;
              v98 = v28;
              v99 = 2048;
              v100 = v31;
              v101 = 2048;
              v102 = v34;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Prediction[%@][%lu/%lu] has %lu cells and %lu durations", buf, 0x34u);
            }

            else
            {
              v94 = i + 1;
            }

            v35 = 0;
            while (1)
            {
              v36 = [v95 objectAtIndexedSubscript:i];
              durations2 = [v36 durations];
              v38 = v35 < [durations2 count];

              if (!v38)
              {
                break;
              }

              v39 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = [v95 count];
                v41 = [v95 objectAtIndexedSubscript:i];
                durations3 = [v41 durations];
                v43 = [durations3 count];
                v44 = [v95 objectAtIndexedSubscript:i];
                durations4 = [v44 durations];
                v46 = [durations4 objectAtIndexedSubscript:v35];
                ++v35;
                *buf = 138413570;
                *&buf[4] = contextCopy;
                *&buf[12] = 2048;
                *&buf[14] = v94;
                v97 = 2048;
                v98 = v40;
                v99 = 2048;
                v100 = v35;
                v101 = 2048;
                v102 = v43;
                v103 = 2112;
                v104 = v46;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Prediction[%@][%lu/%lu] Duration[%lu/%lu]: %@", buf, 0x3Eu);
              }

              else
              {
                ++v35;
              }
            }

            v47 = 0;
            while (1)
            {
              v48 = [v95 objectAtIndexedSubscript:i];
              cells3 = [v48 cells];
              v50 = v47 < [cells3 count];

              if (!v50)
              {
                break;
              }

              v51 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = [v95 count];
                v53 = [v95 objectAtIndexedSubscript:i];
                cells4 = [v53 cells];
                v55 = [cells4 count];
                v56 = [v95 objectAtIndexedSubscript:i];
                cells5 = [v56 cells];
                v58 = [cells5 objectAtIndexedSubscript:v47];
                ++v47;
                *buf = 138413570;
                *&buf[4] = contextCopy;
                *&buf[12] = 2048;
                *&buf[14] = v94;
                v97 = 2048;
                v98 = v52;
                v99 = 2048;
                v100 = v47;
                v101 = 2048;
                v102 = v55;
                v103 = 2112;
                v104 = v58;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Prediction[%@][%lu/%lu] Cell[%lu/%lu]: %@", buf, 0x3Eu);
              }

              else
              {
                ++v47;
              }
            }
          }

          if (v27)
          {
            *buf = 138412290;
            *&buf[4] = contextCopy;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Passing OOS recovery predictions for context %@ to clients", buf, 0xCu);
          }

          durations5 = [v90 durations];
          v60 = +[FMConfiguration sharedInstance];
          v61 = +[FMOOSPredictor getElementFromSortedArray:forPercentile:](FMOOSPredictor, "getElementFromSortedArray:forPercentile:", durations5, [v60 onDeviceDurationPredictionPercentile]);

          if (v61)
          {
            [v61 doubleValue];
            v63 = v62;
            v64 = +[FMConfiguration sharedInstance];
            sendOOSPredictionsToBaseband = [v64 sendOOSPredictionsToBaseband];

            seenCount = [v90 seenCount];
            v67 = +[FMConfiguration sharedInstance];
            v68 = [v67 OOSMinSeenCountForSendingPrediction] > seenCount;

            if (v68)
            {
              v69 = sendOOSPredictionsToBaseband ^ 1 | 2;
            }

            else
            {
              v69 = sendOOSPredictionsToBaseband ^ 1;
            }

            v70 = +[FMConfiguration sharedInstance];
            v71 = v63 < [v70 minPredictedDurationSeconds];

            if (v71)
            {
              v72 = v69 | 8;
            }

            else
            {
              v72 = v69;
            }

            v73 = +[FMConfiguration sharedInstance];
            [v73 sendOnDevicePredictionLikelihood];
            v75 = [FMUtil randomlyFalseWithLikelihood:v74];

            if (v75)
            {
              v76 = v72 | 4;
            }

            else
            {
              v76 = v72;
            }

            v77 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v76;
              _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D On-device prediction suppression reason: %u", buf, 8u);
              v77 = *(qword_1002DBE98 + 136);
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              if (v76)
              {
                v78 = @"no";
              }

              else
              {
                v78 = @"yes";
              }

              durations6 = [v90 durations];
              v80 = [FMOOSPredictor getElementFromSortedArray:durations6 forPercentile:25];
              durations7 = [v90 durations];
              v82 = [FMOOSPredictor getElementFromSortedArray:durations7 forPercentile:50];
              durations8 = [v90 durations];
              v84 = [FMOOSPredictor getElementFromSortedArray:durations8 forPercentile:75];
              *buf = 138413826;
              *&buf[4] = v89;
              *&buf[12] = 2048;
              *&buf[14] = llround(v63);
              v97 = 2048;
              v98 = llround(v63 + 30.0);
              v99 = 2112;
              v100 = v78;
              v101 = 2112;
              v102 = v80;
              v103 = 2112;
              v104 = v82;
              v105 = 2112;
              v106 = v84;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Final prediction: Cell %@, duration %ld, validDuration %ld, sendPrediction: %@, p25duration: %@, p50duration: %@, p75duration: %@", buf, 0x48u);
            }

            v85 = [FMOOSClientPrediction alloc];
            cells6 = [v90 cells];
            v87 = -[FMOOSClientPrediction initWithPredictedCell:nextCells:oosAreaSeenCount:predictedOOSDuration:validPredictionDuration:isSent:](v85, "initWithPredictedCell:nextCells:oosAreaSeenCount:predictedOOSDuration:validPredictionDuration:isSent:", v89, cells6, [v90 seenCount], v76 == 0, v63, v63 + 30.0);
            [v92 setClientPrediction:v87];

            [v92 setPredictionSuppressionReason:{objc_msgSend(v92, "predictionSuppressionReason") | v76}];
            if (!v76)
            {
              operator new();
            }

            v88 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Prediction does not fulfill sending criteria, skipping", buf, 2u);
            }
          }

          else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
          {
            sub_1002032C0();
          }

          firstObject = v89;
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100202D74();
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v90 = 0;
    }

    v23 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I No OOS recovery predictions available for new cell", buf, 2u);
    }

    firstObject = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203284();
  }

LABEL_15:
}

- (int)getOOSInsightRATFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyGSM])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMA1x])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAEVDO])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAHybrid])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyLTE])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN2])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:kCTCellMonitorRadioAccessTechnologyNR])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleLocationUpdate:(id)update
{
  updateCopy = update;
  [(FMOOSModel *)self setCurLocation:updateCopy];
  if (![(FMOOSModel *)self isAirplaneModeActive])
  {
    contextUUIDToStateMap = [(FMModel *)self contextUUIDToStateMap];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008FBC4;
    v6[3] = &unk_1002AE3A0;
    v7 = updateCopy;
    selfCopy = self;
    [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)_handleVisitStarted:(id)started
{
  startedCopy = started;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203364();
  }

  [(FMOOSModel *)self setCurVisit:startedCopy];
  if ([(FMOOSModel *)self isLocationAuthorized])
  {
    fmCoreData = [(FMModel *)self fmCoreData];
    [fmCoreData updateOutOfServiceAreasWithNextVisit:startedCopy];
  }
}

- (void)_handleVisitEnded:(id)ended
{
  endedCopy = ended;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002033A0();
  }

  [(FMOOSModel *)self setCurVisit:0];
  prevVisits = [(FMOOSModel *)self prevVisits];
  [prevVisits addObject:endedCopy];

  v6 = +[FMConfiguration sharedInstance];
  oOSPrevCellsInMemory = [v6 OOSPrevCellsInMemory];
  prevVisits2 = [(FMOOSModel *)self prevVisits];
  [FMUtil removeFirstElementsForCapacity:oOSPrevCellsInMemory fromArray:prevVisits2];
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy count])
  {
    v5 = +[FMConfiguration sharedInstance];
    crowdsourcedDisabledCountries = [v5 crowdsourcedDisabledCountries];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009043C;
    v11[3] = &unk_1002AB1C8;
    v7 = crowdsourcedDisabledCountries;
    v12 = v7;
    v8 = [updateCopy indexOfObjectPassingTest:v11];
    v9 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = v8 != 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced learnings disabled in current country: %{BOOL}d", buf, 8u);
    }

    [(FMOOSModel *)self setIsInCrowdsourcedDisabledCountry:v8 != 0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v10 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I No regulatory domain estimates available", buf, 2u);
    }

    [(FMOOSModel *)self setIsInCrowdsourcedDisabledCountry:1];
  }
}

- (id)getCoreTelephonyRATStringFromEnum:(int)enum
{
  if (enum <= 8)
  {
    self = **(&off_1002AE3E8 + enum);
  }

  return self;
}

- (void)sendOutOfServicePredictionEventWithClientPrediction:(id)prediction withSuppressionReason:(unsigned int)reason didDeviceGoOutOfService:(BOOL)service
{
  reasonCopy = reason;
  predictionCopy = prediction;
  if (predictionCopy && (reasonCopy & 0xFFFB) == 0)
  {
    v8 = [NSString stringWithUTF8String:"com.apple.Telephony.fedMobilityPredictions"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100091FD0;
    v9[3] = &unk_1002AB288;
    serviceCopy = service;
    v10 = predictionCopy;
    sub_1000158DC(v8, v9);
  }
}

- (FMCoreLocationController)fmCoreLocationController
{
  WeakRetained = objc_loadWeakRetained(&self->_fmCoreLocationController);

  return WeakRetained;
}

@end