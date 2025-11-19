@interface HSAccessoryPairingEventLogger
+ (id)sharedLogger;
- (HSAccessoryPairingEventLogger)init;
- (id)bucketizeValueIntoHistogramBin:(double)a3;
- (unint64_t)launchType;
- (void)_sendEvent;
- (void)logAccessory:(id)a3;
- (void)logCodeInputMethod:(unint64_t)a3;
- (void)logExitStep:(int64_t)a3;
- (void)logHUISDismiss;
- (void)logHUISLaunchWithReason:(int64_t)a3 accessoryDescription:(id)a4;
- (void)logHUISUserType:(unint64_t)a3;
- (void)logNumberOfPairedAccessories:(unint64_t)a3;
- (void)logPairingBegin;
- (void)logPairingComplete;
- (void)logStepStart:(int64_t)a3;
- (void)logTransportFlagsFromPayload:(id)a3;
@end

@implementation HSAccessoryPairingEventLogger

+ (id)sharedLogger
{
  if (qword_1000E6730 != -1)
  {
    sub_10007A2E4();
  }

  v3 = qword_1000E6728;

  return v3;
}

- (HSAccessoryPairingEventLogger)init
{
  v10.receiver = self;
  v10.super_class = HSAccessoryPairingEventLogger;
  v2 = [(HSAccessoryPairingEventLogger *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100044CE8;
    v11[3] = &unk_1000C7590;
    v12 = v3;
    v4 = v3;
    v5 = objc_retainBlock(v11);
    (v5[2])(v5, 0, 10, 1);
    (v5[2])(v5, 10, 300, 10);
    v6 = [NSNumber numberWithUnsignedInteger:300];
    [v4 addObject:v6];

    v7 = [v4 copy];
    accessoryPairingEventLoggerTimeHistogramBins = v2->_accessoryPairingEventLoggerTimeHistogramBins;
    v2->_accessoryPairingEventLoggerTimeHistogramBins = v7;
  }

  return v2;
}

- (id)bucketizeValueIntoHistogramBin:(double)a3
{
  v5 = [(HSAccessoryPairingEventLogger *)self accessoryPairingEventLoggerTimeHistogramBins];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v8 = [(HSAccessoryPairingEventLogger *)self accessoryPairingEventLoggerTimeHistogramBins];
    if ([v8 count] < 2)
    {
LABEL_7:
      v15 = [v8 lastObject];
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", 1000 * [v15 unsignedIntegerValue]);
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = v9 + 1;
        v11 = [v8 objectAtIndexedSubscript:v9 + 1];
        v12 = [v11 unsignedIntegerValue];

        if (v12 > a3)
        {
          break;
        }

        v13 = [v8 count];
        v14 = v9 + 2;
        ++v9;
        if (v14 >= v13)
        {
          goto LABEL_7;
        }
      }

      v15 = [v8 objectAtIndexedSubscript:v9];
      v16 = [v15 unsignedIntegerValue];
      v17 = [v8 objectAtIndexedSubscript:v10];
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", (1000 * (v16 + [v17 unsignedIntegerValue])) >> 1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logHUISUserType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(HSAccessoryPairingEventLogger *)self setHuisUserType:v4];
}

- (void)logCodeInputMethod:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(HSAccessoryPairingEventLogger *)self setCodeInputMethod:v4];
}

- (void)logHUISLaunchWithReason:(int64_t)a3 accessoryDescription:(id)a4
{
  v6 = a4;
  v12 = v6;
  if (a3)
  {
    v7 = 2;
  }

  else if ([v6 hf_isLaunchedByHomeApp])
  {
    v8 = [v12 setupAccessoryPayload];

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else if ([v12 hf_isLaunchedByHomeDaemon])
  {
    v7 = 1;
  }

  else
  {
    v7 = 100;
  }

  v9 = [NSNumber numberWithInteger:a3];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchReason:v9];

  v10 = [NSNumber numberWithUnsignedInteger:v7];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchType:v10];

  v11 = +[NSDate date];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchDate:v11];
}

- (unint64_t)launchType
{
  v2 = [(HSAccessoryPairingEventLogger *)self huisLaunchType];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)logHUISDismiss
{
  v3 = [(HSAccessoryPairingEventLogger *)self huisDismissDate];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(HSAccessoryPairingEventLogger *)self setHuisDismissDate:v4];

    [(HSAccessoryPairingEventLogger *)self _sendEvent];
  }
}

- (void)logPairingBegin
{
  v3 = +[NSDate date];
  [(HSAccessoryPairingEventLogger *)self setPairingBeginDate:v3];
}

- (void)logPairingComplete
{
  v3 = +[NSDate date];
  [(HSAccessoryPairingEventLogger *)self setPairingCompleteDate:v3];
}

- (void)logNumberOfPairedAccessories:(unint64_t)a3
{
  [(HSAccessoryPairingEventLogger *)self setPairingSuccess:a3 != 0];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [(HSAccessoryPairingEventLogger *)self setNumPairedAccessories:v5];
}

- (void)logExitStep:(int64_t)a3
{
  [(HSAccessoryPairingEventLogger *)self logStepStart:0];
  v5 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:a3];
  [(HSAccessoryPairingEventLogger *)self setExitCardString:v5];
}

- (void)logTransportFlagsFromPayload:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 supportsIP]);
    [(HSAccessoryPairingEventLogger *)self setSupportsIP:v5];

    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 supportsWAC]);
    [(HSAccessoryPairingEventLogger *)self setSupportsWAC:v6];

    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 supportsBTLE]);
    [(HSAccessoryPairingEventLogger *)self setSupportsBTLE:v7];

    v9 = [v4 threadIdentifier];

    v8 = [NSNumber numberWithInt:v9 != 0];
    [(HSAccessoryPairingEventLogger *)self setSupportsThread:v8];
  }
}

- (void)logAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(HSAccessoryPairingEventLogger *)self setAccessoryName:v5];

  v6 = [v4 manufacturer];

  [(HSAccessoryPairingEventLogger *)self setAccessoryManufacturer:v6];
}

- (void)logStepStart:(int64_t)a3
{
  if ([(HSAccessoryPairingEventLogger *)self currentStep]!= a3)
  {
    v5 = +[NSDate date];
    if ([(HSAccessoryPairingEventLogger *)self currentStep])
    {
      v6 = [(HSAccessoryPairingEventLogger *)self currentStepStartTime];

      if (v6)
      {
        v7 = [(HSAccessoryPairingEventLogger *)self cardTime];

        if (!v7)
        {
          v8 = +[NSMutableArray array];
          [(HSAccessoryPairingEventLogger *)self setCardTime:v8];
        }

        v9 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:[(HSAccessoryPairingEventLogger *)self currentStep]];
        v10 = [(HSAccessoryPairingEventLogger *)self currentStepStartTime];
        [v5 timeIntervalSinceDate:v10];
        v12 = v11;

        v13 = [(HSAccessoryPairingEventLogger *)self cardTime];
        v16 = v9;
        v14 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:v12];
        v17 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        [v13 na_safeAddObject:v15];
      }
    }

    [(HSAccessoryPairingEventLogger *)self setCurrentStep:a3];
    [(HSAccessoryPairingEventLogger *)self setCurrentStepStartTime:v5];
  }
}

- (void)_sendEvent
{
  v3 = [(HSAccessoryPairingEventLogger *)self cardTime];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [(HSAccessoryPairingEventLogger *)self huisDismissDate];
    v7 = [(HSAccessoryPairingEventLogger *)self huisLaunchDate];
    [v6 timeIntervalSinceDate:v7];
    v8 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:?];
    [v5 setObject:v8 forKeyedSubscript:HFAnalyticsDataHUISSessionTimeKey];

    v9 = [(HSAccessoryPairingEventLogger *)self huisLaunchReason];
    [v5 setObject:v9 forKeyedSubscript:HFAnalyticsDataHUISLaunchReasonKey];

    v10 = [(HSAccessoryPairingEventLogger *)self huisLaunchType];
    [v5 setObject:v10 forKeyedSubscript:HFAnalyticsDataHUISLaunchTypeKey];

    v11 = [(HSAccessoryPairingEventLogger *)self huisUserType];
    [v5 setObject:v11 forKeyedSubscript:HFAnalyticsDataHUISUserTypeKey];

    v12 = [(HSAccessoryPairingEventLogger *)self exitCardString];
    [v5 setObject:v12 forKeyedSubscript:HFAnalyticsDataHUISExitCardKey];

    v13 = [(HSAccessoryPairingEventLogger *)self cardTime];
    v14 = [v13 na_flatMap:&stru_1000C7548];
    [v5 setObject:v14 forKeyedSubscript:HFAnalyticsDataCardNameKey];

    v15 = [(HSAccessoryPairingEventLogger *)self cardTime];
    v16 = [v15 na_flatMap:&stru_1000C7568];
    [v5 setObject:v16 forKeyedSubscript:HFAnalyticsDataCardTimeKey];

    v17 = [NSNumber numberWithUnsignedInteger:[(HSAccessoryPairingEventLogger *)self numCards]];
    [v5 setObject:v17 forKeyedSubscript:HFAnalyticsDataCardCountKey];

    v18 = [(HSAccessoryPairingEventLogger *)self huisLaunchReason];

    if (!v18)
    {
      v20 = [(HSAccessoryPairingEventLogger *)self isLaunchedToSetupASpecificAccessory];
      [v5 setObject:v20 forKeyedSubscript:HFAnalyticsDataHUISIsLaunchedToSetupASpecificAccessory];

      v21 = [(HSAccessoryPairingEventLogger *)self isUsingCHIPCommunicationProtocol];
      [v5 setObject:v21 forKeyedSubscript:HFAnalyticsDataHUISIsUsingCHIPCommunicationProtocol];

      v22 = [(HSAccessoryPairingEventLogger *)self codeInputMethod];
      [v5 setObject:v22 forKeyedSubscript:HFAnalyticsDataHUISCodeInputMethod];

      v23 = [(HSAccessoryPairingEventLogger *)self supportsIP];
      [v5 setObject:v23 forKeyedSubscript:HFAnalyticsDataAccessoryTransportIPKey];

      v24 = [(HSAccessoryPairingEventLogger *)self supportsWAC];
      [v5 setObject:v24 forKeyedSubscript:HFAnalyticsDataAccessoryTransportWACKey];

      v25 = [(HSAccessoryPairingEventLogger *)self supportsBTLE];
      [v5 setObject:v25 forKeyedSubscript:HFAnalyticsDataAccessoryTransportBTLEKey];

      v26 = [(HSAccessoryPairingEventLogger *)self supportsThread];
      [v5 setObject:v26 forKeyedSubscript:HFAnalyticsDataAccessoryTransportThreadKey];

      v27 = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];

      if (v27)
      {
        v28 = [NSNumber numberWithBool:[(HSAccessoryPairingEventLogger *)self pairingSuccess]];
        [v5 setObject:v28 forKeyedSubscript:HFAnalyticsDataSuccessKey];

        v29 = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];
        v30 = [(HSAccessoryPairingEventLogger *)self huisLaunchDate];
        [v29 timeIntervalSinceDate:v30];
        v31 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:?];
        [v5 setObject:v31 forKeyedSubscript:HFAnalyticsDataPrePairingTimeKey];

        v32 = [(HSAccessoryPairingEventLogger *)self numPairedAccessories];
        [v5 setObject:v32 forKeyedSubscript:HFAnalyticsDataNumPairedAccessoriesKey];

        v33 = [(HSAccessoryPairingEventLogger *)self pairingCompleteDate];

        if (v33)
        {
          v34 = [(HSAccessoryPairingEventLogger *)self pairingCompleteDate];
          v35 = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];
          [v34 timeIntervalSinceDate:v35];
          v36 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:?];
          [v5 setObject:v36 forKeyedSubscript:HFAnalyticsDataPairingTimeKey];
        }
      }
    }

    AnalyticsSendEvent();
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412546;
      v38 = @"com.apple.Home.AccessoryPairing";
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Event:%@ payload:%@", &v37, 0x16u);
    }
  }
}

@end