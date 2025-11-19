@interface FMCellMapModel
- (BOOL)predictionsEnabled;
- (FMCellMapModel)initWithFMCoreData:(id)a3 locationController:(id)a4 andQueueName:(const char *)a5;
- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4;
- (void)_handleRadioStateChanged:(id)a3;
- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4;
- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3;
- (void)_initializeStateForContext:(id)a3 atTime:(id)a4;
- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5;
- (void)dealloc;
- (void)populateInsightCongestionCell:(InsightTypeCongestion_CongestionCell *)a3 fromFMCellMapNode:(id)a4;
- (void)resetPreviousInformationForState:(id)a3;
- (void)sendPrediction:(id)a3 toBasebandForSubscriptionID:(id)a4;
- (void)sendTelemetryForCongestionMetric:(id)a3;
- (void)sendTelemetryForPrediction:(id)a3;
@end

@implementation FMCellMapModel

- (FMCellMapModel)initWithFMCoreData:(id)a3 locationController:(id)a4 andQueueName:(const char *)a5
{
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = FMCellMapModel;
  v10 = [(FMModel *)&v23 initWithFMCoreData:v8 withQueueName:a5];
  v11 = v10;
  if (v10)
  {
    [(FMCellMapModel *)v10 setIsCongestionPredictionEnabledInCurrentCountry:0];
    v12 = [(FMModel *)v11 fmCoreTelephonyController];
    -[FMCellMapModel setIsAirplaneModeActive:](v11, "setIsAirplaneModeActive:", [v12 isAirplaneModeActive]);

    [(FMCellMapModel *)v11 setRadioState:0];
    v13 = +[FMConfiguration sharedInstance];
    [v13 FMCellMapPredictionSendingEnabledLikelihood];
    v11->_shouldSendPredictions = [FMUtil randomlyTrueWithLikelihood:?];

    v14 = [(FMModel *)v11 fmRegulatoryDomainController];
    v15 = [v14 getCurrentEstimates];
    [(FMCellMapModel *)v11 _handleRegulatoryDomainEstimateUpdate:v15];

    [(FMCellMapModel *)v11 setIsLocationAuthorized:0];
    [v9 addDelegate:v11];
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

    v19 = [(FMModel *)v11 fmCoreTelephonyController];
    v20 = [v19 getSubscriptionContextsInUse];
    [(FMModel *)v11 populateSubscriptionContextsInUse:v20];

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

- (void)_initializeStateForContext:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 uuid];
    sub_100204558(v8, &v14);
  }

  v9 = [FMCellMapContextState alloc];
  v10 = [v6 subscriptionID];
  v11 = [(FMCellMapContextState *)v9 initWithStartTime:v7 subscriptionID:v10];

  if (v11)
  {
    v12 = [(FMModel *)self contextUUIDToStateMap];
    v13 = [v6 uuid];
    [v12 setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1002045AC();
  }
}

- (void)_updateStateForContext:(id)a3 atTime:(id)a4 withExistingState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    v11 = [v8 uuid];
    sub_10020461C(v11, &v15);
  }

  v12 = [v10 subscriptionID];
  v13 = [v8 subscriptionID];
  v14 = [v12 isEqualToNumber:v13];

  if ((v14 & 1) == 0)
  {
    [(FMCellMapModel *)self _initializeStateForContext:v8 atTime:v9];
  }
}

- (void)_handleCellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FMCellMapModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (v7)
    {
      v8 = [(FMModel *)self contextUUIDToStateMap];
      v9 = [v8 objectForKey:v6];

      if (v9)
      {
        v28 = [WISTelephonyUtils getServingCellInfoFromArray:v7];
        v10 = [WISTelephonyUtils getGciFromCellInfo:"getGciFromCellInfo:error:" error:?];
        v29 = 0;
        v11 = [v9 lastGCI];
        if (!v11 || ([v9 lastGCI], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "isEqualToString:", v12), v12, v11, (v13 & 1) == 0))
        {
          [v9 setLastGCI:v10];
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
          {
            sub_100204670();
          }

          v14 = [v9 pastPredictions];
          v15 = [v14 lastObject];

          if (v15)
          {
            v16 = [v15 nextCellGCI];
            v17 = v16 == 0;

            if (v17)
            {
              [v15 setNextCellGCI:v10];
            }
          }

          v18 = [(FMModel *)self fmCoreData];
          v19 = [v18 cellMapPredictionForGCI:v10];

          v20 = *(qword_1002DBE98 + 136);
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              sub_1002046E0();
            }

            v21 = [v9 pastPredictions];
            [v21 addObject:v19];

            v22 = [v9 pastPredictions];
            [FMUtil removeFirstElementsForCapacity:3 fromArray:v22];

            if ([(FMCellMapModel *)self predictionsEnabled])
            {
              v23 = [v9 subscriptionID];
              [(FMCellMapModel *)self sendPrediction:v19 toBasebandForSubscriptionID:v23];
            }

            else
            {
              v24 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = +[FMConfiguration sharedInstance];
                v26 = [v25 FMCellMapSendPredictionsToBaseband];
                v27 = [(FMCellMapModel *)self shouldSendPredictions];
                *buf = 67109376;
                LODWORD(v31[0]) = v26;
                WORD2(v31[0]) = 1024;
                *(v31 + 6) = v27;
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

- (void)_handleRadioStateChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
    if ([(FMCellMapModel *)self radioState]!= v6)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1002048B4();
      }

      [(FMCellMapModel *)self setRadioState:v6];
      if (!v6)
      {
        v7 = [(FMModel *)self contextUUIDToStateMap];
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10009FB84;
        v8[3] = &unk_1002AEA98;
        v8[4] = self;
        [v7 enumerateKeysAndObjectsUsingBlock:v8];
      }
    }
  }
}

- (void)_handleRegistrationStatusChanged:(id)a3 registrationStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(FMModel *)self contextUUIDToStateMap];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      v10 = [v9 lastRegistrationState];
      if (!v10 || ([v9 lastRegistrationState], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v7), v11, v10, (v12 & 1) == 0))
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100204924();
        }

        [v9 setLastRegistrationState:v7];
        if ([WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v7])
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

- (void)_handleIncomingMetric:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FMCellMapModel *)self isCongestionPredictionEnabledInCurrentCountry])
  {
    if (v7)
    {
      v8 = [FMBasebandMetricsController extractFMCellMapCongestionMetricFrom:v7];
      v9 = *(qword_1002DBE98 + 136);
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100204A14();
        }

        v10 = [(FMModel *)self contextUUIDToStateMap];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10009FF44;
        v16 = &unk_1002AEAC0;
        v11 = v8;
        v17 = v11;
        v18 = self;
        [v10 enumerateKeysAndObjectsUsingBlock:&v13];

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
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMCellMapModel]:#N Received null metric: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_handleRegulatoryDomainEstimateUpdate:(id)a3
{
  v4 = a3;
  v5 = +[FMConfiguration sharedInstance];
  v6 = [v5 congestionPredictionEnabledCountries];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A04A8;
  v10[3] = &unk_1002AB1C8;
  v7 = v6;
  v11 = v7;
  v8 = [v4 indexOfObjectPassingTest:v10];
  v9 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Congestion prediction enabled in current country: %{BOOL}d", buf, 8u);
  }

  [(FMCellMapModel *)self setIsCongestionPredictionEnabledInCurrentCountry:v8 != 0x7FFFFFFFFFFFFFFFLL];
}

- (void)resetPreviousInformationForState:(id)a3
{
  v3 = a3;
  v4 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 subscriptionID];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Resetting prev. information for subscription ID %@", &v7, 0xCu);
  }

  [v3 setLastGCI:0];
  [v3 setLastCellMapNodeObjectID:0];
  v6 = [v3 pastPredictions];
  [v6 removeAllObjects];
}

- (void)sendPrediction:(id)a3 toBasebandForSubscriptionID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    buf[0] = 138412546;
    *&buf[1] = v6;
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FederatedMobility[FMCellMapModel]:#I Sending CellMap prediction to baseband (subscription ID %@): %@", buf, 0x16u);
  }

  operator new();
}

- (void)populateInsightCongestionCell:(InsightTypeCongestion_CongestionCell *)a3 fromFMCellMapNode:(id)a4
{
  v22 = a4;
  v5 = [v22 rat];
  a3->var18[0] |= 1u;
  a3->var1 = v5;
  v6 = [v22 frequency];
  a3->var18[0] |= 2u;
  a3->var2 = v6;
  v7 = [v22 cellIdentity];
  a3->var18[0] |= 4u;
  a3->var3 = v7;
  v8 = [v22 tac];
  a3->var18[0] |= 8u;
  a3->var4 = v8;
  v9 = [v22 mnc];
  a3->var18[0] |= 0x10u;
  a3->var5 = v9;
  v10 = [v22 mcc];
  a3->var18[0] |= 0x20u;
  a3->var6 = v10;
  v11 = [v22 band];
  a3->var18[0] |= 0x80u;
  a3->var8 = v11;
  v12 = [v22 pci];
  a3->var18[0] |= 0x100u;
  a3->var9 = v12;
  v13 = [v22 dsDuration];
  a3->var18[0] |= 0x200u;
  a3->var10 = v13;
  v14 = [v22 totalDuration];
  a3->var18[0] |= 0x400u;
  a3->var11 = v14;
  v15 = [v22 dlCongestionCount];
  a3->var18[0] |= 0x800u;
  a3->var12 = v15;
  v16 = [v22 ulCongestionCount];
  a3->var18[0] |= 0x1000u;
  a3->var13 = v16;
  v17 = [v22 l1MitigationCount];
  a3->var18[0] |= 0x2000u;
  a3->var14 = v17;
  v18 = [v22 weight];
  a3->var18[0] |= 0x4000u;
  a3->var15 = v18;
  v19 = [v22 scs];

  if (v19)
  {
    v20 = [v22 scs];
    v21 = [v20 unsignedIntValue];
    a3->var18[0] |= 0x8000u;
    a3->var16 = v21;
  }
}

- (void)sendTelemetryForPrediction:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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
      v31 = [v4 neighborCells];
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count]);
    }

    else
    {
      v19 = +[NSNull null];
      v31 = v19;
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

  v5 = [v3 nextCellGCI];
  if (v5)
  {
    v6 = [v4 nextCellCongestionMetric];

    if (v6)
    {
      v7 = [v4 currentCell];
      v8 = [NSNumber numberWithBool:[FMCoreData isFMCellMapNodeCongested:v7]];

      v9 = [v4 neighborCells];
      v10 = [v9 indexesOfObjectsPassingTest:&stru_1002AEB00];
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);

      v11 = [v4 neighborCells];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000A16D4;
      v41[3] = &unk_1002AEB28;
      v12 = v4;
      v42 = v12;
      v13 = [v11 indexOfObjectPassingTest:v41];

      v14 = [NSNumber numberWithBool:v13 != 0x7FFFFFFFFFFFFFFFLL];
      v15 = [v12 nextCellCongestionMetric];
      v36 = v14;
      v37 = [NSNumber numberWithBool:[FMCoreData isFMCellMapCongestionMetricCongested:v15]^ 1];

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = 0;
        v38 = 0;
      }

      else
      {
        v16 = [v12 neighborCells];
        v17 = [v16 objectAtIndex:v13];
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

- (void)sendTelemetryForCongestionMetric:(id)a3
{
  v4 = a3;
  v18 = [v4 dlCongestionCount];
  v5 = [v4 ulCongestionCount];
  v6 = [v4 l1MitigationCount];
  v7 = v6;
  if (v18 && v5 && v6)
  {
    v21[0] = @"rat";
    v17 = [v4 rat];
    v22[0] = v17;
    v21[1] = @"band";
    v16 = [v4 band];
    v22[1] = v16;
    v21[2] = @"frequency";
    v15 = [v4 frequency];
    v22[2] = v15;
    v21[3] = @"scs";
    v8 = [v4 scs];
    v9 = v8;
    if (!v8)
    {
      v9 = +[NSNull null];
    }

    v22[3] = v9;
    v21[4] = @"connDuration";
    v10 = [v4 connDuration];
    v22[4] = v10;
    v21[5] = @"totalDuration";
    v11 = [v4 totalDuration];
    v22[5] = v11;
    v22[6] = v18;
    v21[6] = @"dlCongestionCount";
    v21[7] = @"ulCongestionCount";
    v22[7] = v5;
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
    v4 = [(FMCellMapModel *)self shouldSendPredictions];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end