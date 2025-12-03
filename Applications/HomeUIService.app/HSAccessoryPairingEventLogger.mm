@interface HSAccessoryPairingEventLogger
+ (id)sharedLogger;
- (HSAccessoryPairingEventLogger)init;
- (id)bucketizeValueIntoHistogramBin:(double)bin;
- (unint64_t)launchType;
- (void)_sendEvent;
- (void)logAccessory:(id)accessory;
- (void)logCodeInputMethod:(unint64_t)method;
- (void)logExitStep:(int64_t)step;
- (void)logHUISDismiss;
- (void)logHUISLaunchWithReason:(int64_t)reason accessoryDescription:(id)description;
- (void)logHUISUserType:(unint64_t)type;
- (void)logNumberOfPairedAccessories:(unint64_t)accessories;
- (void)logPairingBegin;
- (void)logPairingComplete;
- (void)logStepStart:(int64_t)start;
- (void)logTransportFlagsFromPayload:(id)payload;
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

- (id)bucketizeValueIntoHistogramBin:(double)bin
{
  accessoryPairingEventLoggerTimeHistogramBins = [(HSAccessoryPairingEventLogger *)self accessoryPairingEventLoggerTimeHistogramBins];
  v6 = [accessoryPairingEventLoggerTimeHistogramBins count];

  if (v6 >= 2)
  {
    accessoryPairingEventLoggerTimeHistogramBins2 = [(HSAccessoryPairingEventLogger *)self accessoryPairingEventLoggerTimeHistogramBins];
    if ([accessoryPairingEventLoggerTimeHistogramBins2 count] < 2)
    {
LABEL_7:
      lastObject = [accessoryPairingEventLoggerTimeHistogramBins2 lastObject];
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", 1000 * [lastObject unsignedIntegerValue]);
    }

    else
    {
      v9 = 0;
      while (1)
      {
        v10 = v9 + 1;
        v11 = [accessoryPairingEventLoggerTimeHistogramBins2 objectAtIndexedSubscript:v9 + 1];
        unsignedIntegerValue = [v11 unsignedIntegerValue];

        if (unsignedIntegerValue > bin)
        {
          break;
        }

        v13 = [accessoryPairingEventLoggerTimeHistogramBins2 count];
        v14 = v9 + 2;
        ++v9;
        if (v14 >= v13)
        {
          goto LABEL_7;
        }
      }

      lastObject = [accessoryPairingEventLoggerTimeHistogramBins2 objectAtIndexedSubscript:v9];
      unsignedIntegerValue2 = [lastObject unsignedIntegerValue];
      v17 = [accessoryPairingEventLoggerTimeHistogramBins2 objectAtIndexedSubscript:v10];
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", (1000 * (unsignedIntegerValue2 + [v17 unsignedIntegerValue])) >> 1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logHUISUserType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  [(HSAccessoryPairingEventLogger *)self setHuisUserType:v4];
}

- (void)logCodeInputMethod:(unint64_t)method
{
  v4 = [NSNumber numberWithUnsignedInteger:method];
  [(HSAccessoryPairingEventLogger *)self setCodeInputMethod:v4];
}

- (void)logHUISLaunchWithReason:(int64_t)reason accessoryDescription:(id)description
{
  descriptionCopy = description;
  v12 = descriptionCopy;
  if (reason)
  {
    v7 = 2;
  }

  else if ([descriptionCopy hf_isLaunchedByHomeApp])
  {
    setupAccessoryPayload = [v12 setupAccessoryPayload];

    if (setupAccessoryPayload)
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

  v9 = [NSNumber numberWithInteger:reason];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchReason:v9];

  v10 = [NSNumber numberWithUnsignedInteger:v7];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchType:v10];

  v11 = +[NSDate date];
  [(HSAccessoryPairingEventLogger *)self setHuisLaunchDate:v11];
}

- (unint64_t)launchType
{
  huisLaunchType = [(HSAccessoryPairingEventLogger *)self huisLaunchType];
  unsignedIntegerValue = [huisLaunchType unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)logHUISDismiss
{
  huisDismissDate = [(HSAccessoryPairingEventLogger *)self huisDismissDate];

  if (!huisDismissDate)
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

- (void)logNumberOfPairedAccessories:(unint64_t)accessories
{
  [(HSAccessoryPairingEventLogger *)self setPairingSuccess:accessories != 0];
  v5 = [NSNumber numberWithUnsignedInteger:accessories];
  [(HSAccessoryPairingEventLogger *)self setNumPairedAccessories:v5];
}

- (void)logExitStep:(int64_t)step
{
  [(HSAccessoryPairingEventLogger *)self logStepStart:0];
  v5 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:step];
  [(HSAccessoryPairingEventLogger *)self setExitCardString:v5];
}

- (void)logTransportFlagsFromPayload:(id)payload
{
  if (payload)
  {
    payloadCopy = payload;
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy supportsIP]);
    [(HSAccessoryPairingEventLogger *)self setSupportsIP:v5];

    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy supportsWAC]);
    [(HSAccessoryPairingEventLogger *)self setSupportsWAC:v6];

    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy supportsBTLE]);
    [(HSAccessoryPairingEventLogger *)self setSupportsBTLE:v7];

    threadIdentifier = [payloadCopy threadIdentifier];

    v8 = [NSNumber numberWithInt:threadIdentifier != 0];
    [(HSAccessoryPairingEventLogger *)self setSupportsThread:v8];
  }
}

- (void)logAccessory:(id)accessory
{
  accessoryCopy = accessory;
  name = [accessoryCopy name];
  [(HSAccessoryPairingEventLogger *)self setAccessoryName:name];

  manufacturer = [accessoryCopy manufacturer];

  [(HSAccessoryPairingEventLogger *)self setAccessoryManufacturer:manufacturer];
}

- (void)logStepStart:(int64_t)start
{
  if ([(HSAccessoryPairingEventLogger *)self currentStep]!= start)
  {
    v5 = +[NSDate date];
    if ([(HSAccessoryPairingEventLogger *)self currentStep])
    {
      currentStepStartTime = [(HSAccessoryPairingEventLogger *)self currentStepStartTime];

      if (currentStepStartTime)
      {
        cardTime = [(HSAccessoryPairingEventLogger *)self cardTime];

        if (!cardTime)
        {
          v8 = +[NSMutableArray array];
          [(HSAccessoryPairingEventLogger *)self setCardTime:v8];
        }

        v9 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:[(HSAccessoryPairingEventLogger *)self currentStep]];
        currentStepStartTime2 = [(HSAccessoryPairingEventLogger *)self currentStepStartTime];
        [v5 timeIntervalSinceDate:currentStepStartTime2];
        v12 = v11;

        cardTime2 = [(HSAccessoryPairingEventLogger *)self cardTime];
        v16 = v9;
        v14 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:v12];
        v17 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        [cardTime2 na_safeAddObject:v15];
      }
    }

    [(HSAccessoryPairingEventLogger *)self setCurrentStep:start];
    [(HSAccessoryPairingEventLogger *)self setCurrentStepStartTime:v5];
  }
}

- (void)_sendEvent
{
  cardTime = [(HSAccessoryPairingEventLogger *)self cardTime];
  v4 = [cardTime count];

  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    huisDismissDate = [(HSAccessoryPairingEventLogger *)self huisDismissDate];
    huisLaunchDate = [(HSAccessoryPairingEventLogger *)self huisLaunchDate];
    [huisDismissDate timeIntervalSinceDate:huisLaunchDate];
    v8 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:?];
    [v5 setObject:v8 forKeyedSubscript:HFAnalyticsDataHUISSessionTimeKey];

    huisLaunchReason = [(HSAccessoryPairingEventLogger *)self huisLaunchReason];
    [v5 setObject:huisLaunchReason forKeyedSubscript:HFAnalyticsDataHUISLaunchReasonKey];

    huisLaunchType = [(HSAccessoryPairingEventLogger *)self huisLaunchType];
    [v5 setObject:huisLaunchType forKeyedSubscript:HFAnalyticsDataHUISLaunchTypeKey];

    huisUserType = [(HSAccessoryPairingEventLogger *)self huisUserType];
    [v5 setObject:huisUserType forKeyedSubscript:HFAnalyticsDataHUISUserTypeKey];

    exitCardString = [(HSAccessoryPairingEventLogger *)self exitCardString];
    [v5 setObject:exitCardString forKeyedSubscript:HFAnalyticsDataHUISExitCardKey];

    cardTime2 = [(HSAccessoryPairingEventLogger *)self cardTime];
    v14 = [cardTime2 na_flatMap:&stru_1000C7548];
    [v5 setObject:v14 forKeyedSubscript:HFAnalyticsDataCardNameKey];

    cardTime3 = [(HSAccessoryPairingEventLogger *)self cardTime];
    v16 = [cardTime3 na_flatMap:&stru_1000C7568];
    [v5 setObject:v16 forKeyedSubscript:HFAnalyticsDataCardTimeKey];

    v17 = [NSNumber numberWithUnsignedInteger:[(HSAccessoryPairingEventLogger *)self numCards]];
    [v5 setObject:v17 forKeyedSubscript:HFAnalyticsDataCardCountKey];

    huisLaunchReason2 = [(HSAccessoryPairingEventLogger *)self huisLaunchReason];

    if (!huisLaunchReason2)
    {
      isLaunchedToSetupASpecificAccessory = [(HSAccessoryPairingEventLogger *)self isLaunchedToSetupASpecificAccessory];
      [v5 setObject:isLaunchedToSetupASpecificAccessory forKeyedSubscript:HFAnalyticsDataHUISIsLaunchedToSetupASpecificAccessory];

      isUsingCHIPCommunicationProtocol = [(HSAccessoryPairingEventLogger *)self isUsingCHIPCommunicationProtocol];
      [v5 setObject:isUsingCHIPCommunicationProtocol forKeyedSubscript:HFAnalyticsDataHUISIsUsingCHIPCommunicationProtocol];

      codeInputMethod = [(HSAccessoryPairingEventLogger *)self codeInputMethod];
      [v5 setObject:codeInputMethod forKeyedSubscript:HFAnalyticsDataHUISCodeInputMethod];

      supportsIP = [(HSAccessoryPairingEventLogger *)self supportsIP];
      [v5 setObject:supportsIP forKeyedSubscript:HFAnalyticsDataAccessoryTransportIPKey];

      supportsWAC = [(HSAccessoryPairingEventLogger *)self supportsWAC];
      [v5 setObject:supportsWAC forKeyedSubscript:HFAnalyticsDataAccessoryTransportWACKey];

      supportsBTLE = [(HSAccessoryPairingEventLogger *)self supportsBTLE];
      [v5 setObject:supportsBTLE forKeyedSubscript:HFAnalyticsDataAccessoryTransportBTLEKey];

      supportsThread = [(HSAccessoryPairingEventLogger *)self supportsThread];
      [v5 setObject:supportsThread forKeyedSubscript:HFAnalyticsDataAccessoryTransportThreadKey];

      pairingBeginDate = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];

      if (pairingBeginDate)
      {
        v28 = [NSNumber numberWithBool:[(HSAccessoryPairingEventLogger *)self pairingSuccess]];
        [v5 setObject:v28 forKeyedSubscript:HFAnalyticsDataSuccessKey];

        pairingBeginDate2 = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];
        huisLaunchDate2 = [(HSAccessoryPairingEventLogger *)self huisLaunchDate];
        [pairingBeginDate2 timeIntervalSinceDate:huisLaunchDate2];
        v31 = [(HSAccessoryPairingEventLogger *)self bucketizeValueIntoHistogramBin:?];
        [v5 setObject:v31 forKeyedSubscript:HFAnalyticsDataPrePairingTimeKey];

        numPairedAccessories = [(HSAccessoryPairingEventLogger *)self numPairedAccessories];
        [v5 setObject:numPairedAccessories forKeyedSubscript:HFAnalyticsDataNumPairedAccessoriesKey];

        pairingCompleteDate = [(HSAccessoryPairingEventLogger *)self pairingCompleteDate];

        if (pairingCompleteDate)
        {
          pairingCompleteDate2 = [(HSAccessoryPairingEventLogger *)self pairingCompleteDate];
          pairingBeginDate3 = [(HSAccessoryPairingEventLogger *)self pairingBeginDate];
          [pairingCompleteDate2 timeIntervalSinceDate:pairingBeginDate3];
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