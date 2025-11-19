@interface FMOOSModel
- (FMCoreLocationController)fmCoreLocationController;
- (FMOOSModel)initWithFMCoreData:(id)a3 locationController:(id)a4 withQueueName:(const char *)a5;
- (id)getCoreTelephonyRATStringFromEnum:(int)a3;
- (int)getOOSInsightRATFromString:(id)a3;
- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)_handleLocationUpdate:(id)a3;
- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3;
- (void)_handleVisitEnded:(id)a3;
- (void)_handleVisitStarted:(id)a3;
- (void)_initializeStateForContext:(id)a3 atTime:(id)a4;
- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5;
- (void)dealloc;
- (void)fetchAndSendCrowdsourcedOOSInsightsPerTileForState:(id)a3 atLocation:(id)a4 withReason:(id)a5;
- (void)fetchAndSendOnDeviceLearningsForState:(id)a3 withContext:(id)a4;
- (void)sendOutOfServicePredictionEventWithClientPrediction:(id)a3 withSuppressionReason:(unsigned int)a4 didDeviceGoOutOfService:(BOOL)a5;
@end

@implementation FMOOSModel

- (FMOOSModel)initWithFMCoreData:(id)a3 locationController:(id)a4 withQueueName:(const char *)a5
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = FMOOSModel;
  v10 = [(FMModel *)&v24 initWithFMCoreData:v8 withQueueName:a5];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v13 = [(FMModel *)v10 fmRegulatoryDomainController];
    v14 = [v13 getCurrentEstimates];
    [(FMOOSModel *)v12 _handleRegulatoryDomainEstimateUpdate:v14];

    v15 = objc_alloc_init(NSMutableArray);
    prevVisits = v12->_prevVisits;
    v12->_prevVisits = v15;

    curVisit = v12->_curVisit;
    v12->_curVisit = 0;

    curLocation = v12->_curLocation;
    v12->_curLocation = 0;

    v12->_isLocationAuthorized = 0;
    v19 = [(FMModel *)v12 fmCoreTelephonyController];
    -[FMOOSModel setIsAirplaneModeActive:](v12, "setIsAirplaneModeActive:", [v19 isAirplaneModeActive]);

    objc_storeWeak(&v11->_fmCoreLocationController, v9);
    [v9 addDelegate:v12];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100202AE8();
    }

    v20 = [(FMModel *)v12 fmCoreTelephonyController];
    v21 = [v20 getSubscriptionContextsInUse];
    [(FMModel *)v12 populateSubscriptionContextsInUse:v21];

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

- (void)_initializeStateForContext:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMModel *)self fmCoreTelephonyController];
  v9 = [v6 uuid];
  v10 = [v8 getRegistrationStatus:v9];

  v11 = [v6 mcc];
  v12 = [v6 mnc];
  v13 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v6 uuid];
    v20 = 138413058;
    v21 = v19;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Initializing context %@ with registrationState = %@ for Home PLMN (%@, %@) ", &v20, 0x2Au);
  }

  v14 = [FMOOSContextState alloc];
  v15 = [v6 subscriptionID];
  v16 = [(FMOOSContextState *)v14 initWithStartTime:v7 subscriptionID:v15 registrationState:v10 homeMcc:v11 homeMnc:v12];

  if (v16)
  {
    v17 = [(FMModel *)self contextUUIDToStateMap];
    v18 = [v6 uuid];
    [v17 setObject:v16 forKey:v18];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100202B94();
  }
}

- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 uuid];
    sub_100202C08(v12, buf, v11);
  }

  v13 = [v10 subscriptionID];
  v14 = [v8 subscriptionID];
  if ([v13 isEqualToNumber:v14])
  {
    v15 = [v10 homeMcc];
    v16 = [v8 mcc];
    if ([v15 isEqualToString:v16])
    {
      v17 = [v10 homeMnc];
      v18 = [v8 mnc];
      v19 = [v17 isEqualToString:v18];

      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(FMOOSModel *)self _initializeStateForContext:v8 atTime:v9];
LABEL_10:
}

- (void)fetchAndSendCrowdsourcedOOSInsightsPerTileForState:(id)a3 atLocation:(id)a4 withReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[FMConfiguration sharedInstance];
  v12 = [v11 disableCrowdsourcedLearnings];

  if (v12)
  {
    v13 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Crowdsourced learnings disabled as per config, aborting", buf, 2u);
    }

    v12 = 0x10000;
  }

  v14 = [(FMOOSModel *)self isInCrowdsourcedDisabledCountry];
  v15 = qword_1002DBE98;
  if (v14)
  {
    v16 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Crowdsourced learnings disabled in the current country, aborting", buf, 2u);
      v15 = qword_1002DBE98;
    }

    v12 |= 0x40000u;
  }

  v17 = *(v15 + 136);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v39) = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Crowdsourced OOS learnings: Suppression reason %u", buf, 8u);
  }

  [v8 setPredictionSuppressionReason:{objc_msgSend(v8, "predictionSuppressionReason") | v12}];
  if (([v8 predictionSuppressionReason] & 0xFFFD0000) != 0)
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
    if (!v9)
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

    [v9 accuracy];
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

      [v9 accuracy];
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

    [v9 latitude];
    v29 = v28;
    [v9 longitude];
    v31 = v30;
    v32 = [(FMModel *)self _queue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10008C120;
    v34[3] = &unk_1002AE378;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    [FMGEOServicesHandler getCellularCoverageTileConfigurationAtLatitude:v32 longitude:v37 queue:v34 reason:v29 responseBlock:v31];
  }

LABEL_25:
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

    v11 = [v9 registrationState];
    [v9 setRegistrationState:v7];
    if ([(FMOOSModel *)self isAirplaneModeActive])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100202FE4();
      }

      goto LABEL_51;
    }

    if ([WISTelephonyUtils isRegistrationDisplayStatusInService:v11]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v7])
    {
      v13 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device went OOS with context %@", buf, 0xCu);
      }

      v14 = [v9 oosAreaEntry];
      v15 = v14 == 0;

      if (v15)
      {
        v71 = [(FMOOSModel *)self curLocation];
        v28 = [v9 clientPrediction];
        if (v28 && ([v9 clientPrediction], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isSent"), v29, v28, (v30 & 1) != 0))
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

          [(FMOOSModel *)self fetchAndSendCrowdsourcedOOSInsightsPerTileForState:v9 atLocation:v71 withReason:@"OutOfService"];
          v58 = 0;
        }

        v62 = [v9 prevCells];
        v61 = [v9 prevCells];
        v66 = [v61 count];
        v60 = +[FMConfiguration sharedInstance];
        v63 = [v60 OOSPrevCellsInDatabase];
        if (v66 <= v63)
        {
          v68 = 0;
        }

        else
        {
          v57 = [v9 prevCells];
          v32 = [v57 count];
          v56 = +[FMConfiguration sharedInstance];
          v68 = v32 - [v56 OOSPrevCellsInDatabase];
        }

        v59 = [v9 prevCells];
        v33 = [v59 count];
        v34 = +[FMConfiguration sharedInstance];
        if (v33 >= [v34 OOSPrevCellsInDatabase])
        {
          v35 = +[FMConfiguration sharedInstance];
          v36 = [v35 OOSPrevCellsInDatabase];
        }

        else
        {
          v35 = [v9 prevCells];
          v36 = [v35 count];
        }

        v69 = [v62 subarrayWithRange:{v68, v36}];

        if (v66 > v63)
        {
        }

        v37 = [(FMOOSModel *)self prevVisits];
        v38 = [v37 lastObject];

        v39 = [(FMOOSModel *)self curVisit];
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
        v45 = [v9 clientPrediction];
        v46 = [(FMOOSAreaEntry *)v44 init:v40 prevVisit:v38 curVisit:v39 entryLocation:v71 prevCells:v69 registrationState:v11 batteryLevel:v43 clientPrediction:v45];
        [v9 setOosAreaEntry:v46];

        v47 = [v9 clientPrediction];
        -[FMOOSModel sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:](self, "sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:", v47, [v9 predictionSuppressionReason], 1);

        [v9 setClientPrediction:0];
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100202F74();
      }

      goto LABEL_51;
    }

    if (![WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v11]|| ![WISTelephonyUtils isRegistrationDisplayStatusInService:v7])
    {
LABEL_51:

LABEL_52:
      goto LABEL_53;
    }

    v16 = [v9 oosAreaEntry];
    v17 = v16 == 0;

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
      v73 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device no longer OOS with context %@ according to registration display state", buf, 0xCu);
    }

    v70 = +[NSDate now];
    v19 = [v9 oosAreaEntry];
    v20 = [v19 timestamp];
    [v70 timeIntervalSinceDate:v20];
    v22 = v21;

    v23 = +[FMConfiguration sharedInstance];
    v65 = [v70 dateByAddingTimeInterval:{-objc_msgSend(v23, "OOSMaxSecondsSinceCellSeenBeforeInService")}];

    v24 = [v9 prevCells];
    v67 = [v24 lastObject];

    if (v67)
    {
      v25 = [v9 oosAreaEntry];
      v26 = [v25 timestamp];
      v27 = [v67 timestamp];
      if ([v26 compare:v27] == -1)
      {
        v48 = [v67 timestamp];
        v64 = [v65 compare:v48] == -1;

        if (v64)
        {
          v49 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v73 = v6;
            v74 = 2112;
            *v75 = v67;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device back in service with context %@ and next cell %@", buf, 0x16u);
          }

          v50 = [v9 subscriptionID];
          v51 = [(FMModel *)self fmCoreTelephonyController];
          v52 = [v51 isDataContextUuid:v6];
          v53 = [v9 oosAreaEntry];
          v54 = [v9 previousCrowdsourcedOOSInsights];
          LODWORD(v55) = [v9 predictionSuppressionReason];
          [(FMOOSModel *)self backInServiceWithSubscriptionID:v50 isDataContext:v52 afterDuration:v53 fromEntry:v67 withNextCell:v7 withRegistrationState:v54 previousCrowdsourcedPrediction:v22 withPredictionSuppressionReason:v55];

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
    v73 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Received nil display status change for context %@", buf, 0xCu);
  }

LABEL_53:
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
        sub_1002031A4();
      }

      goto LABEL_30;
    }

    v43 = [WISTelephonyUtils getServingCellInfoFromArray:v7];
    v10 = +[NSDate now];
    v11 = [v9 subscriptionID];
    v44 = 0;
    v42 = [FMCoreTelephonyController cellInfoToFMServingCell:v43 atTime:v10 inSlot:v11 error:&v44];
    v12 = v44;

    if (v12)
    {
      v13 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v12 localizedDescription];
        sub_100203090(v6, v14, buf, v13);
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

    v15 = [v9 oosAreaEntry];
    if (v15)
    {
      v16 = [v9 registrationState];
      v17 = [WISTelephonyUtils isRegistrationDisplayStatusInService:v16];

      if (v17)
      {
        v18 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = v6;
          v47 = 2112;
          v48 = v42;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Device no longer OOS with context %@ according to registration display state and cell monitor with next cell %@", buf, 0x16u);
        }

        v40 = [v9 subscriptionID];
        v39 = [(FMModel *)self fmCoreTelephonyController];
        v38 = [v39 isDataContextUuid:v6];
        v41 = +[NSDate now];
        v37 = [v9 oosAreaEntry];
        v19 = [v37 timestamp];
        [v41 timeIntervalSinceDate:?];
        v21 = v20;
        v22 = [v9 oosAreaEntry];
        v23 = [v9 registrationState];
        v24 = [v9 previousCrowdsourcedOOSInsights];
        LODWORD(v36) = [v9 predictionSuppressionReason];
        [(FMOOSModel *)self backInServiceWithSubscriptionID:v40 isDataContext:v38 afterDuration:v22 fromEntry:v42 withNextCell:v23 withRegistrationState:v24 previousCrowdsourcedPrediction:v21 withPredictionSuppressionReason:v36];

        [v9 setOosAreaEntry:0];
        [v9 setPreviousCrowdsourcedOOSInsights:0];
        [v9 setPredictionSuppressionReason:0];
      }
    }

    v25 = [v9 prevCells];
    v26 = [v25 lastObject];

    if (v26 && [v26 isEqual:v42])
    {
      v27 = [v42 timestamp];
      [v26 updateTimestampTo:v27];

      v28 = [v9 clientPrediction];
      v29 = v28 == 0;

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
      v30 = [v9 prevCells];
      [v30 addObject:v42];

      v31 = +[FMConfiguration sharedInstance];
      v32 = [v31 OOSPrevCellsInMemory];
      v33 = [v9 prevCells];
      [FMUtil removeFirstElementsForCapacity:v32 fromArray:v33];
    }

    v34 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [(FMOOSModel *)self isLocationAuthorized];
      *buf = 138412802;
      v46 = v6;
      v47 = 2112;
      v48 = v42;
      v49 = 1024;
      v50 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Cell Monitor Update for context %@: %@, isLocationAuthorized: %{BOOL}d", buf, 0x1Cu);
    }

    if ([(FMOOSModel *)self isLocationAuthorized])
    {
      [(FMOOSModel *)self fetchAndSendOnDeviceLearningsForState:v9 withContext:v6];
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203214();
  }

LABEL_31:
}

- (void)fetchAndSendOnDeviceLearningsForState:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v93 = a4;
  v92 = v6;
  v7 = [v6 oosAreaEntry];

  if (!v7)
  {
    v8 = [v6 clientPrediction];
    -[FMOOSModel sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:](self, "sendOutOfServicePredictionEventWithClientPrediction:withSuppressionReason:didDeviceGoOutOfService:", v8, [v6 predictionSuppressionReason], 0);

    [v6 setClientPrediction:0];
    [v6 setPredictionSuppressionReason:0];
    v91 = +[NSDate now];
    v9 = [(FMModel *)self fmCoreData];
    v10 = [(FMOOSModel *)self prevVisits];
    v11 = [v10 lastObject];
    v12 = [(FMOOSModel *)self curVisit];
    v13 = [v6 subscriptionID];
    v14 = [v92 prevCells];
    v15 = [(FMOOSModel *)self curLocation];
    v16 = [FMOOSPredictor getOutOfServiceRecoveryPredictionWithFMCoreData:v9 prevVisit:v11 curVisit:v12 subscriptionID:v13 prevCells:v14 startTime:v91 entryLocation:v15];

    v95 = v16;
    if (v16 && ([v16 firstObject], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v90 = v17;
      v18 = [v17 cells];
      v19 = [v18 firstObject];

      if (v19)
      {
        v20 = [v19 subscriptionID];
        v21 = [v20 unsignedIntegerValue];

        v22 = *(qword_1002DBE98 + 136);
        if (v21 < 2)
        {
          v89 = v19;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v93;
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
              v30 = [v29 cells];
              v31 = [v30 count];
              v32 = [v95 objectAtIndexedSubscript:i];
              v33 = [v32 durations];
              v34 = [v33 count];
              *buf = 138413314;
              *&buf[4] = v93;
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
              v37 = [v36 durations];
              v38 = v35 < [v37 count];

              if (!v38)
              {
                break;
              }

              v39 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = [v95 count];
                v41 = [v95 objectAtIndexedSubscript:i];
                v42 = [v41 durations];
                v43 = [v42 count];
                v44 = [v95 objectAtIndexedSubscript:i];
                v45 = [v44 durations];
                v46 = [v45 objectAtIndexedSubscript:v35];
                ++v35;
                *buf = 138413570;
                *&buf[4] = v93;
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
              v49 = [v48 cells];
              v50 = v47 < [v49 count];

              if (!v50)
              {
                break;
              }

              v51 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = [v95 count];
                v53 = [v95 objectAtIndexedSubscript:i];
                v54 = [v53 cells];
                v55 = [v54 count];
                v56 = [v95 objectAtIndexedSubscript:i];
                v57 = [v56 cells];
                v58 = [v57 objectAtIndexedSubscript:v47];
                ++v47;
                *buf = 138413570;
                *&buf[4] = v93;
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
            *&buf[4] = v93;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMOOSModel]:#I Passing OOS recovery predictions for context %@ to clients", buf, 0xCu);
          }

          v59 = [v90 durations];
          v60 = +[FMConfiguration sharedInstance];
          v61 = +[FMOOSPredictor getElementFromSortedArray:forPercentile:](FMOOSPredictor, "getElementFromSortedArray:forPercentile:", v59, [v60 onDeviceDurationPredictionPercentile]);

          if (v61)
          {
            [v61 doubleValue];
            v63 = v62;
            v64 = +[FMConfiguration sharedInstance];
            v65 = [v64 sendOOSPredictionsToBaseband];

            v66 = [v90 seenCount];
            v67 = +[FMConfiguration sharedInstance];
            v68 = [v67 OOSMinSeenCountForSendingPrediction] > v66;

            if (v68)
            {
              v69 = v65 ^ 1 | 2;
            }

            else
            {
              v69 = v65 ^ 1;
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

              v79 = [v90 durations];
              v80 = [FMOOSPredictor getElementFromSortedArray:v79 forPercentile:25];
              v81 = [v90 durations];
              v82 = [FMOOSPredictor getElementFromSortedArray:v81 forPercentile:50];
              v83 = [v90 durations];
              v84 = [FMOOSPredictor getElementFromSortedArray:v83 forPercentile:75];
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
            v86 = [v90 cells];
            v87 = -[FMOOSClientPrediction initWithPredictedCell:nextCells:oosAreaSeenCount:predictedOOSDuration:validPredictionDuration:isSent:](v85, "initWithPredictedCell:nextCells:oosAreaSeenCount:predictedOOSDuration:validPredictionDuration:isSent:", v89, v86, [v90 seenCount], v76 == 0, v63, v63 + 30.0);
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

          v19 = v89;
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

    v19 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203284();
  }

LABEL_15:
}

- (int)getOOSInsightRATFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyGSM])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMA1x])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAEVDO])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAHybrid])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyLTE])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN2])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:kCTCellMonitorRadioAccessTechnologyNR])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleLocationUpdate:(id)a3
{
  v4 = a3;
  [(FMOOSModel *)self setCurLocation:v4];
  if (![(FMOOSModel *)self isAirplaneModeActive])
  {
    v5 = [(FMModel *)self contextUUIDToStateMap];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008FBC4;
    v6[3] = &unk_1002AE3A0;
    v7 = v4;
    v8 = self;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (void)_handleVisitStarted:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100203364();
  }

  [(FMOOSModel *)self setCurVisit:v4];
  if ([(FMOOSModel *)self isLocationAuthorized])
  {
    v5 = [(FMModel *)self fmCoreData];
    [v5 updateOutOfServiceAreasWithNextVisit:v4];
  }
}

- (void)_handleVisitEnded:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002033A0();
  }

  [(FMOOSModel *)self setCurVisit:0];
  v5 = [(FMOOSModel *)self prevVisits];
  [v5 addObject:v4];

  v6 = +[FMConfiguration sharedInstance];
  v7 = [v6 OOSPrevCellsInMemory];
  v8 = [(FMOOSModel *)self prevVisits];
  [FMUtil removeFirstElementsForCapacity:v7 fromArray:v8];
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[FMConfiguration sharedInstance];
    v6 = [v5 crowdsourcedDisabledCountries];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009043C;
    v11[3] = &unk_1002AB1C8;
    v7 = v6;
    v12 = v7;
    v8 = [v4 indexOfObjectPassingTest:v11];
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

- (id)getCoreTelephonyRATStringFromEnum:(int)a3
{
  if (a3 <= 8)
  {
    self = **(&off_1002AE3E8 + a3);
  }

  return self;
}

- (void)sendOutOfServicePredictionEventWithClientPrediction:(id)a3 withSuppressionReason:(unsigned int)a4 didDeviceGoOutOfService:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  if (v7 && (v6 & 0xFFFB) == 0)
  {
    v8 = [NSString stringWithUTF8String:"com.apple.Telephony.fedMobilityPredictions"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100091FD0;
    v9[3] = &unk_1002AB288;
    v11 = a5;
    v10 = v7;
    sub_1000158DC(v8, v9);
  }
}

- (FMCoreLocationController)fmCoreLocationController
{
  WeakRetained = objc_loadWeakRetained(&self->_fmCoreLocationController);

  return WeakRetained;
}

@end