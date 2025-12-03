@interface BatteryGaugingAccuracyManager
+ (id)InstanceManager;
- (BOOL)chargeToFullDueToDOD0:(double)d0 time:(id)time;
- (BOOL)chargeToFullDueToQMax:(double)max time:(id)time;
- (BOOL)disableSocLimitPolicy;
- (BOOL)isBatterySupportBottomOcv;
- (id)batteryPercentFromBatteryProperties:(id)properties;
- (id)dod0ArrayFromBatteryProperties:(id)properties;
- (id)dod0AtQualQmaxFromBatteryProperties:(id)properties;
- (id)externalConnectedFromBatteryProperties:(id)properties;
- (id)fcStatusFromBatteryProperties:(id)properties;
- (id)gaugingAccuracyMetricGet;
- (id)gaugingMitigationStatistics;
- (id)getBatteryProperties;
- (id)initBatteryGaugingAccuracyData;
- (id)qMaxFromBatteryProperties:(id)properties;
- (id)usableBottomOcvFromBatteryProperties:(id)properties;
- (void)handleAlarmEvent:(id)event;
- (void)handleBatteryStateDataUpdate;
- (void)incrAnalyticsMetricsAttribute:(unint64_t *)attribute;
- (void)notifyDOD0StateToSMC:(BOOL)c;
- (void)periodicActions;
- (void)periodicChargeToFullCheck;
- (void)reportMonthlyData;
- (void)requestPeriodicActionsInMinutes:(int)minutes waking:(BOOL)waking;
- (void)restoreAnalyticDataFromDisk:(id)disk :(unint64_t *)a4;
- (void)updateAnalyticsData;
- (void)updateAnalyticsMetricsMaxAttribute:(unint64_t *)attribute interval:(double)interval;
- (void)updateLastDOD0Values:(id)values atDate:(id)date;
- (void)updateLastQMaxArray:(id)array atDate:(id)date;
- (void)writeNSNumberDataToDisk:(id)disk :(id)a4;
@end

@implementation BatteryGaugingAccuracyManager

- (id)dod0AtQualQmaxFromBatteryProperties:(id)properties
{
  v3 = qword_1000AD380;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(v3);
  v5 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];

  v6 = [v5 objectForKeyedSubscript:@"Dod0AtQualifiedQmax"];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (BOOL)isBatterySupportBottomOcv
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v2 = sub_100041B58();
  v3 = v2 & 0x80;
  v4 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v3 >> 7;
    v7 = 2048;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isBatterySupportBottomOcv enabled:%d flags:%llx\n", v6, 0x12u);
  }

  return v3 != 0;
}

- (id)usableBottomOcvFromBatteryProperties:(id)properties
{
  v3 = qword_1000AD380;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(v3);
  v5 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];

  v6 = [v5 objectForKeyedSubscript:@"UsableBottomOcv"];

  v7 = qword_1000AC998;
  if (v6)
  {
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v11[0] = 67109120;
      v11[1] = [v6 intValue];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IOPM UsableBottomOCV: %d\n", v11, 8u);
    }

    v9 = v6;
  }

  else if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
  {
    sub_10006DA6C();
  }

  return v6;
}

- (id)batteryPercentFromBatteryProperties:(id)properties
{
  v3 = qword_1000AD380;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(v3);
  v5 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];

  v6 = [v5 objectForKeyedSubscript:@"StateOfCharge"];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (id)fcStatusFromBatteryProperties:(id)properties
{
  v3 = qword_1000AD380;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(v3);
  v5 = [propertiesCopy objectForKeyedSubscript:@"FullyCharged"];

  if (v5)
  {
    v6 = v5;
  }

  return v5;
}

- (id)externalConnectedFromBatteryProperties:(id)properties
{
  v3 = qword_1000AD380;
  propertiesCopy = properties;
  dispatch_assert_queue_V2(v3);
  v5 = [propertiesCopy objectForKeyedSubscript:@"ExternalConnected"];

  if (v5)
  {
    v6 = v5;
  }

  return v5;
}

- (id)dod0ArrayFromBatteryProperties:(id)properties
{
  propertiesCopy = properties;
  dispatch_assert_queue_V2(qword_1000AD380);
  v4 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];
  v5 = [v4 objectForKeyedSubscript:@"DOD0"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = [propertiesCopy objectForKeyedSubscript:@"BatteryFCCData"];
    v8 = [v7 objectForKeyedSubscript:@"DOD0"];

    if (v8)
    {
      v10 = v8;
      v6 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v6 = &__NSArray0__struct;
    }
  }

  return v6;
}

- (id)qMaxFromBatteryProperties:(id)properties
{
  propertiesCopy = properties;
  dispatch_assert_queue_V2(qword_1000AD380);
  v4 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];
  v5 = [v4 objectForKeyedSubscript:@"Qmax"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = [propertiesCopy objectForKeyedSubscript:@"BatteryData"];
    v8 = [v7 objectForKeyedSubscript:@"ITMiscStatus"];

    if (v8)
    {
      v6 = +[NSMutableArray array];
      [v6 addObject:v8];
    }

    else
    {
      v6 = &__NSArray0__struct;
    }
  }

  return v6;
}

- (void)notifyDOD0StateToSMC:(BOOL)c
{
  cCopy = c;
  cCopy2 = c;
  dispatch_assert_queue_V2(qword_1000AD380);
  if (byte_1000AD389 != 1 || byte_1000AD388 != cCopy)
  {
    v5 = sub_10005EEE4(1651930160, &cCopy2, 1u);
    if (v5)
    {
      v6 = v5;
      v7 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_ERROR))
      {
        sub_10006DAA0(v6, v7);
      }
    }

    byte_1000AD388 = cCopy2;
    byte_1000AD389 = 1;
  }
}

- (BOOL)chargeToFullDueToDOD0:(double)d0 time:(id)time
{
  timeCopy = time;
  dispatch_assert_queue_V2(qword_1000AD380);
  testDOD0UpdateDate = self->_testDOD0UpdateDate;
  if (!testDOD0UpdateDate)
  {
    if (d0 >= 259200.0)
    {
      goto LABEL_8;
    }

    [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfOcvRequested];
    v10 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = d0 / 86400.0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Last DOD0 Change: %.1f days too recent", &v17, 0xCu);
    }

    [(BatteryGaugingAccuracyManager *)self notifyDOD0StateToSMC:0];
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  [(NSNumber *)testDOD0UpdateDate doubleValue];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [timeCopy timeIntervalSinceDate:v8];
  if (v9 < 259200.0)
  {
    v13 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      [timeCopy timeIntervalSinceDate:v8];
      v17 = 134217984;
      v18 = v15 / 86400.0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(Test) Last DOD0 Change: %.1f days too recent", &v17, 0xCu);
    }

    [(BatteryGaugingAccuracyManager *)self notifyDOD0StateToSMC:0];

    goto LABEL_14;
  }

LABEL_8:
  v11 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = d0 / 86400.0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Last DOD0 Change: %.1f days ago; charge to full", &v17, 0xCu);
  }

  v12 = 1;
  [(BatteryGaugingAccuracyManager *)self notifyDOD0StateToSMC:1];
LABEL_15:

  return v12;
}

- (BOOL)chargeToFullDueToQMax:(double)max time:(id)time
{
  timeCopy = time;
  dispatch_assert_queue_V2(qword_1000AD380);
  testQmaxUpdateDate = self->_testQmaxUpdateDate;
  if (testQmaxUpdateDate)
  {
    [(NSNumber *)testQmaxUpdateDate doubleValue];
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [timeCopy timeIntervalSinceDate:v8];
    if (v9 < 1209600.0)
    {
      v16 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        [timeCopy timeIntervalSinceDate:v8];
        v49 = 134217984;
        v50 = v18 / 86400.0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(Test) Last Qmax change was %.1f days ago too recent", &v49, 0xCu);
      }

      goto LABEL_40;
    }
  }

  else if (max < 1209600.0)
  {
    v10 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 134217984;
      v50 = max / 86400.0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Last Qmax change was %.1f days ago too recent", &v49, 0xCu);
    }

    p_numOfQmaxTooRecent = &self->_numOfQmaxTooRecent;
    goto LABEL_8;
  }

  if (!self->_ggSupportsBottomOcv)
  {
    testQualifiedQMaxDOD0Value = self->_testQualifiedQMaxDOD0Value;
    if (testQualifiedQMaxDOD0Value)
    {
      if ([(NSNumber *)testQualifiedQMaxDOD0Value intValue]<= 50000)
      {
        v20 = qword_1000AC998;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->_testQualifiedQMaxDOD0Value;
          v8 = v20;
          v49 = 67109120;
          LODWORD(v50) = [(NSNumber *)v21 intValue];
          v15 = "(Test) QMax update necessary, but dod0 at last qual Qmax was too small (%d)";
          goto LABEL_39;
        }

LABEL_41:
        v38 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      lastDOD0ValueAtQualQmax = self->_lastDOD0ValueAtQualQmax;
      if (lastDOD0ValueAtQualQmax && [(NSNumber *)lastDOD0ValueAtQualQmax intValue]<= 50000)
      {
        v27 = qword_1000AC998;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
        {
          v28 = self->_lastDOD0ValueAtQualQmax;
          v29 = v27;
          v49 = 67109120;
          LODWORD(v50) = [(NSNumber *)v28 intValue];
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "QMax update necessary, but dod0 at last qual Qmax was too small (%d)", &v49, 8u);
        }

        p_numOfQmaxTooRecent = &self->_numOfQmaxTooSmall;
        goto LABEL_8;
      }
    }

    testQualifiedQMaxDate = self->_testQualifiedQMaxDate;
    if (testQualifiedQMaxDate)
    {
      [(NSNumber *)testQualifiedQMaxDate doubleValue];
      v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v31 = +[NSDate now];
      [v31 timeIntervalSinceDate:v8];
      v33 = v32;

      if (v33 >= 108000.0)
      {
        v39 = qword_1000AC998;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          v41 = +[NSDate now];
          [v41 timeIntervalSinceDate:self->_lastQualifiedQmaxDate];
          v49 = 134217984;
          v50 = v42 / 3600.0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(Test) QMax update necessary, but last qualQmax was too long ago (%.1f hours)", &v49, 0xCu);
        }

        goto LABEL_40;
      }

      goto LABEL_30;
    }

    v34 = +[NSDate now];
    [v34 timeIntervalSinceDate:self->_lastQualifiedQmaxDate];
    v36 = v35;

    if (v36 < 108000.0)
    {
      goto LABEL_32;
    }

    v45 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
      v47 = +[NSDate now];
      [v47 timeIntervalSinceDate:self->_lastQualifiedQmaxDate];
      v49 = 134217984;
      v50 = v48 / 3600.0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "QMax update necessary, but last qualQmax was too long ago (%.1f hours)", &v49, 0xCu);
    }

    p_numOfQmaxTooRecent = &self->_numOfQmaxTooOld;
LABEL_8:
    [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:p_numOfQmaxTooRecent];
    goto LABEL_41;
  }

  testUsableBottomOCV = self->_testUsableBottomOCV;
  if (!testUsableBottomOCV)
  {
    intValue = [(NSNumber *)self->_lastUsableBottomOCV intValue];
    v23 = qword_1000AC998;
    v24 = os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT);
    if (!intValue)
    {
      if (v24)
      {
        lastUsableBottomOCV = self->_lastUsableBottomOCV;
        v8 = v23;
        v49 = 67109120;
        LODWORD(v50) = [(NSNumber *)lastUsableBottomOCV intValue];
        v15 = "Usable bottom OCV:%d has not captured";
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (!v24)
    {
      goto LABEL_32;
    }

    v25 = self->_lastUsableBottomOCV;
    v8 = v23;
    v49 = 67109120;
    LODWORD(v50) = [(NSNumber *)v25 intValue];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Usable bottom OCV:%d is captured", &v49, 8u);
LABEL_30:

    goto LABEL_32;
  }

  if (![(NSNumber *)testUsableBottomOCV intValue])
  {
    v13 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_testUsableBottomOCV;
      v8 = v13;
      v49 = 67109120;
      LODWORD(v50) = [(NSNumber *)v14 intValue];
      v15 = "(Test) Usable bottom OCV:%d has not captured";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v15, &v49, 8u);
LABEL_40:

      goto LABEL_41;
    }

    goto LABEL_41;
  }

LABEL_32:
  v37 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 134217984;
    v50 = max / 86400.0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Last QMax Change: %.1f days ago; charge to full now", &v49, 0xCu);
  }

  [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfQmaxRequested];
  v38 = 1;
LABEL_42:

  return v38;
}

- (void)requestPeriodicActionsInMinutes:(int)minutes waking:(BOOL)waking
{
  dispatch_assert_queue_V2(qword_1000AD380);
  xdict = xpc_dictionary_create(0, 0, 0);
  v6 = time(0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * (v6 + 60 * minutes));
  if (!waking)
  {
    xpc_dictionary_set_BOOL(xdict, "ShouldWake", 0);
  }

  xpc_set_event();
}

- (void)handleAlarmEvent:(id)event
{
  v4 = qword_1000AD380;
  eventCopy = event;
  dispatch_assert_queue_V2(v4);
  v6 = [NSString stringWithUTF8String:xpc_dictionary_get_string(eventCopy, _xpc_event_key_name)];
  reply = xpc_dictionary_create_reply(eventCopy);
  v8 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v8, reply);
  v9 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Alarm fired for %@", &v10, 0xCu);
  }

  if ([v6 isEqualToString:@"GaugingMitigationActions"])
  {
    [(BatteryGaugingAccuracyManager *)self periodicActions];
  }
}

- (id)getBatteryProperties
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v2 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    properties = 0;
    IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
    v5 = [(__CFDictionary *)properties copy];
    IOObjectRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateAnalyticsMetricsMaxAttribute:(unint64_t *)attribute interval:(double)interval
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v6 = *attribute;
  if (interval / 86400.0 > v6)
  {
    v6 = interval / 86400.0;
  }

  *attribute = v6;
}

- (void)incrAnalyticsMetricsAttribute:(unint64_t *)attribute
{
  dispatch_assert_queue_V2(qword_1000AD380);
  getBatteryProperties = [(BatteryGaugingAccuracyManager *)self getBatteryProperties];
  v6 = [(BatteryGaugingAccuracyManager *)self externalConnectedFromBatteryProperties:getBatteryProperties];

  if (v6 && [v6 BOOLValue])
  {
    ++*attribute;
  }

  _objc_release_x1();
}

- (id)gaugingAccuracyMetricGet
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v3 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v4 = qword_1000AC998;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "gaugingAccuracyMetricGet policy state\n", v17, 2u);
  }

  [v3 setObject:self->_lastDOD0ValueAtQualQmax forKeyedSubscript:@"lastQualQmaxDODValue"];
  [v3 setObject:self->_lastUsableBottomOCV forKeyedSubscript:@"lastUsableBottomOcvUpdate"];
  [v3 setObject:self->_lastQualifiedQmaxDate forKeyedSubscript:@"lastQualQMaxDate"];
  [v3 setObject:self->_lastQMaxUpdate forKeyedSubscript:@"lastQMaxUpdate"];
  [v3 setObject:self->_lastDOD0Update forKeyedSubscript:@"lastDOD0Update"];
  [v3 setObject:self->_lastFullChargeDate forKeyedSubscript:@"lastFullChargeDate"];
  [v3 setObject:self->_lastAttemptedFullChargeDate forKeyedSubscript:@"lastAttemptedFullChargeDate"];
  v5 = [NSNumber numberWithBool:self->_lastChargeToFullRequested];
  [v3 setObject:v5 forKeyedSubscript:@"lastFullChargeReq"];

  testQmaxUpdateDate = self->_testQmaxUpdateDate;
  if (testQmaxUpdateDate)
  {
    [(NSNumber *)testQmaxUpdateDate doubleValue];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setObject:v7 forKeyedSubscript:@"testQmaxUpdateDate"];
  }

  testDOD0UpdateDate = self->_testDOD0UpdateDate;
  if (testDOD0UpdateDate)
  {
    [(NSNumber *)testDOD0UpdateDate doubleValue];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setObject:v9 forKeyedSubscript:@"testDOD0UpdateDate"];
  }

  testFullyChargedDate = self->_testFullyChargedDate;
  if (testFullyChargedDate)
  {
    [(NSNumber *)testFullyChargedDate doubleValue];
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setObject:v11 forKeyedSubscript:@"testFullyChargedDate"];
  }

  testQualifiedQMaxDate = self->_testQualifiedQMaxDate;
  if (testQualifiedQMaxDate)
  {
    [(NSNumber *)testQualifiedQMaxDate doubleValue];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v3 setObject:v13 forKeyedSubscript:@"testQualQMaxDate"];
  }

  testQualifiedQMaxDOD0Value = self->_testQualifiedQMaxDOD0Value;
  if (testQualifiedQMaxDOD0Value)
  {
    [v3 setObject:testQualifiedQMaxDOD0Value forKeyedSubscript:@"testQualQmaxDODValue"];
  }

  testUsableBottomOCV = self->_testUsableBottomOCV;
  if (testUsableBottomOCV)
  {
    [v3 setObject:testUsableBottomOCV forKeyedSubscript:@"testUsableBottomOCV"];
  }

  return v3;
}

- (void)periodicActions
{
  dispatch_assert_queue_V2(qword_1000AD380);
  getBatteryProperties = [(BatteryGaugingAccuracyManager *)self getBatteryProperties];
  v4 = getBatteryProperties;
  if (getBatteryProperties && [getBatteryProperties count])
  {
    [(BatteryGaugingAccuracyManager *)self reportMonthlyData];
    v5 = +[NSDate date];
    v6 = [(BatteryGaugingAccuracyManager *)self dod0AtQualQmaxFromBatteryProperties:v4];
    v7 = v6;
    if (v6 && (v8 = [v6 intValue], v8 != -[NSNumber intValue](self->_lastDOD0ValueAtQualQmax, "intValue")))
    {
      objc_storeStrong(&self->_lastDOD0ValueAtQualQmax, v7);
      objc_storeStrong(&self->_lastQualifiedQmaxDate, v5);
      v11 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        lastDOD0ValueAtQualQmax = self->_lastDOD0ValueAtQualQmax;
        *buf = 138412290;
        v43 = lastDOD0ValueAtQualQmax;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "dod0 at qualQmax value has changed, update it %@\n", buf, 0xCu);
      }

      [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastQualQmaxDODValue"];
      [(NSDate *)self->_lastQualifiedQmaxDate timeIntervalSinceReferenceDate];
      v13 = [NSNumber numberWithDouble:?];
      [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastQualQMaxDate"];

      [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfDOD0QualQmaxUpdates];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    self->_ggSupportsBottomOcv = [(BatteryGaugingAccuracyManager *)self isBatterySupportBottomOcv];
    v14 = [(BatteryGaugingAccuracyManager *)self usableBottomOcvFromBatteryProperties:v4];
    v15 = v14;
    if (self->_ggSupportsBottomOcv)
    {
      if (v14)
      {
        intValue = [v14 intValue];
        if (intValue != [(NSNumber *)self->_lastUsableBottomOCV intValue])
        {
          objc_storeStrong(&self->_lastUsableBottomOCV, v15);
          v17 = qword_1000AC998;
          if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
          {
            lastUsableBottomOCV = self->_lastUsableBottomOCV;
            *buf = 138412290;
            v43 = lastUsableBottomOCV;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "usableBottomOCV has changed, update it %@\n", buf, 0xCu);
          }

          [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastUsableBottomOcvUpdate"];
          [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfUsableBottomOCVUpdates];
          v9 = 1;
        }
      }
    }

    v39 = v7;
    v19 = [(BatteryGaugingAccuracyManager *)self dod0ArrayFromBatteryProperties:v4];
    v20 = v19;
    if (v19)
    {
      if (([v19 isEqualToArray:self->_lastDOD0Values] & 1) == 0)
      {
        [(BatteryGaugingAccuracyManager *)self updateLastDOD0Values:v20 atDate:v5];
      }

      [v5 timeIntervalSinceDate:self->_lastDOD0Update];
      self->_timeSinceLastDOD0Update = v21;
      [(BatteryGaugingAccuracyManager *)self updateAnalyticsMetricsMaxAttribute:&self->_maxDaysSinceOcv interval:?];
    }

    obj = v5;
    [(BatteryGaugingAccuracyManager *)self chargeToFullDueToDOD0:v5 time:self->_timeSinceLastDOD0Update, v15];
    v22 = [(BatteryGaugingAccuracyManager *)self batteryPercentFromBatteryProperties:v4];
    v23 = v22;
    v40 = v9;
    if (v22)
    {
      v24 = [v22 integerValue] > 95;
    }

    else
    {
      v24 = 0;
    }

    v25 = [(BatteryGaugingAccuracyManager *)self externalConnectedFromBatteryProperties:v4];
    v26 = v25;
    if (v25)
    {
      bOOLValue = [v25 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v28 = [(BatteryGaugingAccuracyManager *)self fcStatusFromBatteryProperties:v4];
    v29 = v28;
    if (v28)
    {
      integerValue = [v28 integerValue];
      if (integerValue)
      {
        objc_storeStrong(&self->_lastFullChargeDate, obj);
        lastAttemptedFullChargeDate = self->_lastAttemptedFullChargeDate;
        self->_lastAttemptedFullChargeDate = 0;

        v32 = qword_1000AC998;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
        {
          lastFullChargeDate = self->_lastFullChargeDate;
          *buf = 138412290;
          v43 = lastFullChargeDate;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FC detected, updating lastFullyCharge date to %@", buf, 0xCu);
        }

        [(NSDate *)self->_lastFullChargeDate timeIntervalSinceReferenceDate];
        v34 = [NSNumber numberWithDouble:?];
        [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastFullChargeDate"];

        [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastAttemptedFullChargeDate"];
        if (!dword_1000AD38C)
        {
          [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfChargeToFullReached];
          v40 = 1;
        }
      }
    }

    else
    {
      integerValue = 0;
    }

    dword_1000AD38C = integerValue;
    [(BatteryGaugingAccuracyManager *)self periodicChargeToFullCheck];
    if ((bOOLValue & v24) != 1 || integerValue)
    {
      selfCopy2 = self;
      v36 = 60;
      v37 = 0;
    }

    else
    {
      selfCopy2 = self;
      v36 = 5;
      v37 = 1;
    }

    [(BatteryGaugingAccuracyManager *)selfCopy2 requestPeriodicActionsInMinutes:v36 waking:v37];
    if (v40)
    {
      [(BatteryGaugingAccuracyManager *)self updateAnalyticsData];
    }
  }

  else
  {
    v10 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid batteryProperties, skip updating Qmax", buf, 2u);
    }
  }
}

- (id)gaugingMitigationStatistics
{
  p_lastNumOfDOD0QualQmaxUpdates = &self->_lastNumOfDOD0QualQmaxUpdates;
  dispatch_assert_queue_V2(qword_1000AD380);
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSNumber numberWithInteger:self->_numOfChargeToFullRequest - self->_lastNumOfChargeToFullRequest];
  [v4 setObject:v5 forKeyedSubscript:@"nrOfPeriodicFullChargeRequested"];

  v6 = [NSNumber numberWithInteger:self->_numOfChargeToFullReached - self->_lastNumOfChargeToFullReached];
  [v4 setObject:v6 forKeyedSubscript:@"nrOfSessionsReachingFullCharge"];

  v7 = [NSNumber numberWithInteger:self->_numOfDOD0QualQmaxUpdates - self->_lastNumOfDOD0QualQmaxUpdates];
  [v4 setObject:v7 forKeyedSubscript:@"nrOfDOD0AtQualifiedQmaxUpdates"];

  v8 = [NSNumber numberWithInteger:self->_numOfUsableBottomOCVUpdates - self->_lastNumOfUsableBottomOCVUpdates];
  [v4 setObject:v8 forKeyedSubscript:@"nrOfUsableBottomOcvUpdates"];

  v9 = [NSNumber numberWithInteger:self->_numOfQmaxTooRecent - p_lastNumOfDOD0QualQmaxUpdates[2]];
  [v4 setObject:v9 forKeyedSubscript:@"nrOfQMaxTooRecent"];

  v10 = [NSNumber numberWithInteger:self->_numOfQmaxTooOld - self->_lastNumOfQmaxTooOld];
  [v4 setObject:v10 forKeyedSubscript:@"nrOfQMaxTooOld"];

  v11 = [NSNumber numberWithInteger:self->_numOfQmaxTooSmall - p_lastNumOfDOD0QualQmaxUpdates[4]];
  [v4 setObject:v11 forKeyedSubscript:@"nrOfDOD0TooSmall"];

  v12 = [NSNumber numberWithInteger:self->_numOfQmaxRequested - self->_lastNumOfQmaxRequested];
  [v4 setObject:v12 forKeyedSubscript:@"nrOfQMaxRequested"];

  v13 = [NSNumber numberWithInteger:self->_numOfOcvRequested - p_lastNumOfDOD0QualQmaxUpdates[6]];
  [v4 setObject:v13 forKeyedSubscript:@"nrOfOCVRequested"];

  v14 = [NSNumber numberWithInteger:self->_maxDaysSinceQmax - self->_lastMaxDaysSinceQmax];
  [v4 setObject:v14 forKeyedSubscript:@"maxDaysSinceQmax"];

  v15 = [NSNumber numberWithInteger:self->_maxDaysSinceOcv - p_lastNumOfDOD0QualQmaxUpdates[8]];
  [v4 setObject:v15 forKeyedSubscript:@"maxDaysSinceOCV"];

  v16 = [NSNumber numberWithInteger:self->_maxDaysSinceFC - self->_lastMaxDaysSinceFC];
  [v4 setObject:v16 forKeyedSubscript:@"maxDaysSinceLastFullCharge"];

  v17 = *&self->_numOfChargeToFullRequest;
  *&self->_lastNumOfChargeToFullRequest = v17;
  v18 = *&self->_numOfQmaxTooRecent;
  *p_lastNumOfDOD0QualQmaxUpdates = *&self->_numOfDOD0QualQmaxUpdates;
  *(p_lastNumOfDOD0QualQmaxUpdates + 1) = v18;
  v19 = *&self->_numOfOcvRequested;
  *(p_lastNumOfDOD0QualQmaxUpdates + 2) = *&self->_numOfQmaxTooSmall;
  *(p_lastNumOfDOD0QualQmaxUpdates + 3) = v19;
  *(p_lastNumOfDOD0QualQmaxUpdates + 4) = *&self->_maxDaysSinceOcv;
  v20 = [NSNumber numberWithInteger:v17];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfPeriodicFullChargeRequested"];

  v21 = [NSNumber numberWithInteger:self->_lastNumOfChargeToFullReached];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfSessionsReachingFullCharge"];

  v22 = [NSNumber numberWithInteger:self->_lastNumOfDOD0QualQmaxUpdates];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfDOD0AtQualifiedQmaxUpdates"];

  v23 = [NSNumber numberWithInteger:self->_lastNumOfUsableBottomOCVUpdates];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfUsableBottomOcvUpdates"];

  v24 = [NSNumber numberWithInteger:p_lastNumOfDOD0QualQmaxUpdates[2]];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfQMaxTooRecent"];

  v25 = [NSNumber numberWithInteger:self->_lastNumOfQmaxTooOld];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfQMaxTooOld"];

  v26 = [NSNumber numberWithInteger:p_lastNumOfDOD0QualQmaxUpdates[4]];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfDOD0TooSmall"];

  v27 = [NSNumber numberWithInteger:self->_lastNumOfQmaxRequested];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfQMaxRequested"];

  v28 = [NSNumber numberWithInteger:p_lastNumOfDOD0QualQmaxUpdates[6]];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastNrOfOCVRequested"];

  v29 = [NSNumber numberWithInteger:self->_lastMaxDaysSinceQmax];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastMaxDaysSinceQmax"];

  v30 = [NSNumber numberWithInteger:p_lastNumOfDOD0QualQmaxUpdates[8]];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastMaxDaysSinceOCV"];

  v31 = [NSNumber numberWithInteger:self->_lastMaxDaysSinceFC];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastMaxDaysSinceLastFullCharge"];

  return v4;
}

- (void)reportMonthlyData
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v3 = os_transaction_create();
  v4 = CFPreferencesCopyAppValue(@"MonthlyDataReportedDate", @"com.apple.powerd.batterygauging");
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v7 = +[NSDate date];
    v8 = v7;
    if (v6 && ([v7 timeIntervalSinceDate:v6], v9 < 2592000.0))
    {
      v10 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Considered submitting monthly OBC analytics, but not enough time has passed since last submission: %@", buf, 0xCu);
      }
    }

    else
    {
      [v8 timeIntervalSinceReferenceDate];
      v11 = [NSNumber numberWithDouble:?];
      [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"MonthlyDataReportedDate"];

      gaugingMitigationStatistics = [(BatteryGaugingAccuracyManager *)self gaugingMitigationStatistics];
      v12 = gaugingMitigationStatistics;
      AnalyticsSendEventLazy();
    }
  }

  else
  {
    v13 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "reportMonthlyData invalid interval\n", buf, 2u);
    }
  }
}

- (void)periodicChargeToFullCheck
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v3 = CFPreferencesCopyAppValue(@"MonthlyDataReportedDate", @"com.apple.powerd.batterygauging");
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v6 = +[NSDate date];
    v7 = v6;
    if (v5 && ([v6 timeIntervalSinceDate:v5], v8 < 43200.0))
    {
      v9 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not enough time has passed since last charge to full check: %@", &v12, 0xCu);
      }
    }

    else
    {
      v10 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "periodicChargeToFullCheck run disableSocLimitPolicy\n", &v12, 2u);
      }

      [(BatteryGaugingAccuracyManager *)self handleBatteryStateDataUpdate];
    }
  }

  else
  {
    v11 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "periodicChargeToFullCheck invalid interval\n", &v12, 2u);
    }
  }
}

- (BOOL)disableSocLimitPolicy
{
  dispatch_assert_queue_V2(qword_1000AD380);
  getBatteryProperties = [(BatteryGaugingAccuracyManager *)self getBatteryProperties];
  v4 = getBatteryProperties;
  if (getBatteryProperties && [getBatteryProperties count])
  {
    v5 = +[NSDate date];
    v6 = [(BatteryGaugingAccuracyManager *)self qMaxFromBatteryProperties:v4];
    v7 = v6;
    if (v6)
    {
      if (([v6 isEqualToArray:self->_lastQMaxArray] & 1) == 0)
      {
        [(BatteryGaugingAccuracyManager *)self updateLastQMaxArray:v7 atDate:v5];
      }

      [v5 timeIntervalSinceDate:self->_lastQMaxUpdate];
      v9 = v8;
      self->_timeSinceLastQmaxUpdate = v8;
      [(BatteryGaugingAccuracyManager *)self updateAnalyticsMetricsMaxAttribute:&self->_maxDaysSinceQmax interval:?];
    }

    else
    {
      v9 = 0.0;
    }

    v12 = [(BatteryGaugingAccuracyManager *)self chargeToFullDueToQMax:v5 time:v9];
    v11 = [(BatteryGaugingAccuracyManager *)self chargeToFullDueToDOD0:v5 time:self->_timeSinceLastDOD0Update]| v12;
    testFullyChargedDate = self->_testFullyChargedDate;
    if (testFullyChargedDate)
    {
      [(NSNumber *)testFullyChargedDate doubleValue];
      v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v5 timeIntervalSinceDate:v14];
      if (v15 > 1814400.0)
      {
        v16 = qword_1000AC998;
        if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          [v5 timeIntervalSinceDate:v14];
          v34 = 134217984;
          v35 = v18 / 86400.0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(Test) Last full charge date was %.1f days ago, try and charge to full", &v34, 0xCu);
        }

        v11 = 1;
      }

LABEL_15:

LABEL_16:
      v19 = qword_1000AC998;
      if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 67109120;
        LODWORD(v35) = v11 & 1;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Charge To Full Request:%d", &v34, 8u);
      }

      goto LABEL_19;
    }

    p_lastFullChargeDate = &self->_lastFullChargeDate;
    if (!self->_lastFullChargeDate)
    {
      goto LABEL_16;
    }

    [v5 timeIntervalSinceDate:?];
    if (v22 <= 1814400.0)
    {
      if (!*p_lastFullChargeDate)
      {
        goto LABEL_16;
      }

      v30 = qword_1000AC998;
      if (!os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v31 = *p_lastFullChargeDate;
      v14 = v30;
      [v5 timeIntervalSinceDate:v31];
      v34 = 134217984;
      v35 = v32 / 86400.0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Last full charge date was %.1f days ago too recent", &v34, 0xCu);
      goto LABEL_15;
    }

    v23 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *p_lastFullChargeDate;
      v25 = v23;
      [v5 timeIntervalSinceDate:v24];
      v34 = 134217984;
      v35 = v26 / 86400.0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Last full charge date was %.1f days ago, try and charge to full", &v34, 0xCu);
    }

    [v5 timeIntervalSinceDate:self->_lastFullChargeDate];
    [(BatteryGaugingAccuracyManager *)self updateAnalyticsMetricsMaxAttribute:&self->_maxDaysSinceFC interval:?];
    if (self->_lastAttemptedFullChargeDate)
    {
      [v5 timeIntervalSinceDate:?];
      if (v27 > 43200.0)
      {
        objc_storeStrong(&self->_lastFullChargeDate, v5);
        lastAttemptedFullChargeDate = self->_lastAttemptedFullChargeDate;
        self->_lastAttemptedFullChargeDate = 0;

        [(NSDate *)self->_lastFullChargeDate timeIntervalSinceReferenceDate];
        v29 = [NSNumber numberWithDouble:?];
        [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastFullChargeDate"];

        [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastAttemptedFullChargeDate"];
LABEL_32:
        v11 = 1;
        goto LABEL_16;
      }

      if (self->_lastAttemptedFullChargeDate)
      {
        goto LABEL_32;
      }
    }

    objc_storeStrong(&self->_lastAttemptedFullChargeDate, v5);
    [(NSDate *)self->_lastAttemptedFullChargeDate timeIntervalSinceReferenceDate];
    v33 = [NSNumber numberWithDouble:?];
    [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"lastAttemptedFullChargeDate"];

    goto LABEL_32;
  }

  v10 = qword_1000AC998;
  v11 = 0;
  if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid batteryProperties, skip gauging mitigation charge to full action", &v34, 2u);
    v11 = 0;
  }

LABEL_19:

  return v11 & 1;
}

- (void)updateAnalyticsData
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v3 = [NSNumber numberWithInteger:self->_numOfChargeToFullRequest];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfPeriodicFullChargeRequested"];

  v4 = [NSNumber numberWithInteger:self->_numOfChargeToFullReached];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfSessionsReachingFullCharge"];

  v5 = [NSNumber numberWithInteger:self->_numOfDOD0QualQmaxUpdates];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfDOD0AtQualifiedQmaxUpdates"];

  v6 = [NSNumber numberWithInteger:self->_numOfQmaxTooRecent];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfQMaxTooRecent"];

  v7 = [NSNumber numberWithInteger:self->_numOfQmaxTooOld];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfQMaxTooOld"];

  v8 = [NSNumber numberWithInteger:self->_numOfQmaxTooSmall];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfDOD0TooSmall"];

  v9 = [NSNumber numberWithInteger:self->_numOfQmaxRequested];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfQMaxRequested"];

  v10 = [NSNumber numberWithInteger:self->_numOfOcvRequested];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"nrOfOCVRequested"];

  v11 = [NSNumber numberWithInteger:self->_maxDaysSinceQmax];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"maxDaysSinceQmax"];

  v12 = [NSNumber numberWithInteger:self->_maxDaysSinceOcv];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"maxDaysSinceOCV"];

  v13 = [NSNumber numberWithInteger:self->_maxDaysSinceFC];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"maxDaysSinceLastFullCharge"];
}

- (void)updateLastQMaxArray:(id)array atDate:(id)date
{
  arrayCopy = array;
  dateCopy = date;
  dispatch_assert_queue_V2(qword_1000AD380);
  if (arrayCopy)
  {
    v8 = arrayCopy;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v14[0] = @"lastQMax";
  v14[1] = @"lastQMaxUpdate";
  v15[0] = v8;
  [(NSDate *)dateCopy timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  CFPreferencesSetMultiple(v10, 0, @"com.apple.powerd.batterygauging", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  lastQMaxArray = self->_lastQMaxArray;
  self->_lastQMaxArray = arrayCopy;
  v12 = arrayCopy;

  lastQMaxUpdate = self->_lastQMaxUpdate;
  self->_lastQMaxUpdate = dateCopy;
}

- (void)updateLastDOD0Values:(id)values atDate:(id)date
{
  valuesCopy = values;
  dateCopy = date;
  dispatch_assert_queue_V2(qword_1000AD380);
  if (valuesCopy)
  {
    v8 = valuesCopy;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v14[0] = @"lastDOD0";
  v14[1] = @"lastDOD0Update";
  v15[0] = v8;
  [(NSDate *)dateCopy timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  v15[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  CFPreferencesSetMultiple(v10, 0, @"com.apple.powerd.batterygauging", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  lastDOD0Values = self->_lastDOD0Values;
  self->_lastDOD0Values = valuesCopy;
  v12 = valuesCopy;

  lastDOD0Update = self->_lastDOD0Update;
  self->_lastDOD0Update = dateCopy;
}

- (void)writeNSNumberDataToDisk:(id)disk :(id)a4
{
  v5 = qword_1000AD380;
  v6 = a4;
  key = disk;
  dispatch_assert_queue_V2(v5);
  CFPreferencesSetAppValue(key, v6, @"com.apple.powerd.batterygauging");
}

- (void)restoreAnalyticDataFromDisk:(id)disk :(unint64_t *)a4
{
  v5 = qword_1000AD380;
  diskCopy = disk;
  dispatch_assert_queue_V2(v5);
  v8 = CFPreferencesCopyAppValue(diskCopy, @"com.apple.powerd.batterygauging");

  if (v8)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  *a4 = integerValue;

  _objc_release_x1();
}

- (id)initBatteryGaugingAccuracyData
{
  dispatch_assert_queue_V2(qword_1000AD380);
  v49.receiver = self;
  v49.super_class = BatteryGaugingAccuracyManager;
  v3 = [(BatteryGaugingAccuracyManager *)&v49 init];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  v3->_timeSinceLastDOD0Update = 0.0;
  v5 = CFPreferencesCopyAppValue(@"testQmaxUpdateDate", @"com.apple.powerd.batterygauging");
  testQmaxUpdateDate = v4->_testQmaxUpdateDate;
  v4->_testQmaxUpdateDate = v5;

  v7 = CFPreferencesCopyAppValue(@"testDOD0UpdateDate", @"com.apple.powerd.batterygauging");
  testDOD0UpdateDate = v4->_testDOD0UpdateDate;
  v4->_testDOD0UpdateDate = v7;

  v9 = CFPreferencesCopyAppValue(@"testFullyChargedDate", @"com.apple.powerd.batterygauging");
  testFullyChargedDate = v4->_testFullyChargedDate;
  v4->_testFullyChargedDate = v9;

  v11 = CFPreferencesCopyAppValue(@"testQualQMaxDate", @"com.apple.powerd.batterygauging");
  testQualifiedQMaxDate = v4->_testQualifiedQMaxDate;
  v4->_testQualifiedQMaxDate = v11;

  v13 = CFPreferencesCopyAppValue(@"testQualQmaxDODValue", @"com.apple.powerd.batterygauging");
  testQualifiedQMaxDOD0Value = v4->_testQualifiedQMaxDOD0Value;
  v4->_testQualifiedQMaxDOD0Value = v13;

  v15 = CFPreferencesCopyAppValue(@"MonthlyDataReportedDate", @"com.apple.powerd.batterygauging");
  if (!v15)
  {
    v16 = +[NSDate date];
    [v16 timeIntervalSinceReferenceDate];
    CFPreferencesSetAppValue(@"MonthlyDataReportedDate", [NSNumber numberWithDouble:?], @"com.apple.powerd.batterygauging");
  }

  v17 = CFPreferencesCopyAppValue(@"MonthlyDataReportedDate", @"com.apple.powerd.batterygauging");

  if (!v17)
  {
    v18 = +[NSDate date];
    [v18 timeIntervalSinceReferenceDate];
    CFPreferencesSetAppValue(@"MonthlyDataReportedDate", [NSNumber numberWithDouble:?], @"com.apple.powerd.batterygauging");
  }

  v19 = CFPreferencesCopyAppValue(@"lastDOD0", @"com.apple.powerd.batterygauging");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
LABEL_10:
    lastDOD0Values = v4->_lastDOD0Values;
    v4->_lastDOD0Values = v20;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v19;
    v20 = [NSArray arrayWithObjects:&v51 count:1];
    goto LABEL_10;
  }

  lastDOD0Values = v4->_lastDOD0Values;
  v4->_lastDOD0Values = &__NSArray0__struct;
LABEL_12:

  v22 = CFPreferencesCopyAppValue(@"lastDOD0Update", @"com.apple.powerd.batterygauging");
  if (v22)
  {
    [v22 doubleValue];
    [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    +[NSDate date];
  }
  v23 = ;
  lastDOD0Update = v4->_lastDOD0Update;
  v4->_lastDOD0Update = v23;

  v25 = CFPreferencesCopyAppValue(@"lastQMax", @"com.apple.powerd.batterygauging");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      lastQMaxArray = v4->_lastQMaxArray;
      v4->_lastQMaxArray = &__NSArray0__struct;
      goto LABEL_21;
    }

    v50 = v25;
    v26 = [NSArray arrayWithObjects:&v50 count:1];
  }

  lastQMaxArray = v4->_lastQMaxArray;
  v4->_lastQMaxArray = v26;
LABEL_21:

  v28 = CFPreferencesCopyAppValue(@"lastQMaxUpdate", @"com.apple.powerd.batterygauging");
  if (v28)
  {
    [v28 doubleValue];
    [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    +[NSDate date];
  }
  v29 = ;
  lastQMaxUpdate = v4->_lastQMaxUpdate;
  v4->_lastQMaxUpdate = v29;

  v31 = CFPreferencesCopyAppValue(@"lastFullChargeDate", @"com.apple.powerd.batterygauging");
  if (v31)
  {
    [v31 doubleValue];
    v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    lastFullChargeDate = v4->_lastFullChargeDate;
    v4->_lastFullChargeDate = v32;
  }

  else
  {
    v34 = +[NSDate date];
    v35 = v4->_lastFullChargeDate;
    v4->_lastFullChargeDate = v34;

    [(NSDate *)v4->_lastFullChargeDate timeIntervalSinceReferenceDate];
    CFPreferencesSetAppValue(@"lastFullChargeDate", [NSNumber numberWithDouble:?], @"com.apple.powerd.batterygauging");
  }

  v36 = CFPreferencesCopyAppValue(@"lastQualQMaxDate", @"com.apple.powerd.batterygauging");

  if (v36)
  {
    [v36 doubleValue];
    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    lastQualifiedQmaxDate = v4->_lastQualifiedQmaxDate;
    v4->_lastQualifiedQmaxDate = v37;
  }

  else
  {
    v39 = +[NSDate date];
    v40 = v4->_lastQualifiedQmaxDate;
    v4->_lastQualifiedQmaxDate = v39;

    [(NSDate *)v4->_lastQualifiedQmaxDate timeIntervalSinceReferenceDate];
    CFPreferencesSetAppValue(@"lastQualQMaxDate", [NSNumber numberWithDouble:?], @"com.apple.powerd.batterygauging");
  }

  v41 = CFPreferencesCopyAppValue(@"lastAttemptedFullChargeDate", @"com.apple.powerd.batterygauging");

  if (v41)
  {
    [v41 doubleValue];
    v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v42 = 0;
  }

  lastAttemptedFullChargeDate = v4->_lastAttemptedFullChargeDate;
  v4->_lastAttemptedFullChargeDate = v42;

  v44 = CFPreferencesCopyAppValue(@"lastQualQmaxDODValue", @"com.apple.powerd.batterygauging");
  lastDOD0ValueAtQualQmax = v4->_lastDOD0ValueAtQualQmax;
  v4->_lastDOD0ValueAtQualQmax = v44;

  if (!v4->_lastDOD0ValueAtQualQmax)
  {
    v4->_lastDOD0ValueAtQualQmax = &off_1000A2D08;

    CFPreferencesSetAppValue(@"lastQualQmaxDODValue", v4->_lastDOD0ValueAtQualQmax, @"com.apple.powerd.batterygauging");
  }

  v46 = CFPreferencesCopyAppValue(@"lastUsableBottomOcvUpdate", @"com.apple.powerd.batterygauging");
  lastUsableBottomOCV = v4->_lastUsableBottomOCV;
  v4->_lastUsableBottomOCV = v46;

  if (!v4->_lastUsableBottomOCV)
  {
    v4->_lastUsableBottomOCV = &off_1000A2D20;

    CFPreferencesSetAppValue(@"lastUsableBottomOcvUpdate", v4->_lastUsableBottomOCV, @"com.apple.powerd.batterygauging");
  }

  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfPeriodicFullChargeRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfSessionsReachingFullCharge"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfDOD0AtQualifiedQmaxUpdates"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfUsableBottomOcvUpdates"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfQMaxTooRecent"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfQMaxTooOld"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfDOD0TooSmall"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfQMaxRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"nrOfOCVRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"maxDaysSinceQmax"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"maxDaysSinceOCV"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"maxDaysSinceLastFullCharge"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfPeriodicFullChargeRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfSessionsReachingFullCharge"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfDOD0AtQualifiedQmaxUpdates"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfUsableBottomOcvUpdates"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfQMaxTooRecent"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfQMaxTooOld"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfDOD0TooSmall"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfQMaxRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastNrOfOCVRequested"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastMaxDaysSinceQmax"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastMaxDaysSinceOCV"];
  [(BatteryGaugingAccuracyManager *)v4 restoreAnalyticDataFromDisk:@"lastMaxDaysSinceLastFullCharge"];
  [(BatteryGaugingAccuracyManager *)v4 periodicActions];

  return v4;
}

- (void)handleBatteryStateDataUpdate
{
  dispatch_assert_queue_V2(qword_1000AD380);
  disableSocLimitPolicy = [(BatteryGaugingAccuracyManager *)self disableSocLimitPolicy];
  v4 = disableSocLimitPolicy;
  lastChargeToFullRequested = self->_lastChargeToFullRequested;
  v6 = lastChargeToFullRequested | disableSocLimitPolicy ^ 1;
  if ((v6 & 1) == 0)
  {
    v8 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HandleBatteryDataUpdate ChargeToFull Enabled", buf, 2u);
    }

    [(BatteryGaugingAccuracyManager *)self incrAnalyticsMetricsAttribute:&self->_numOfChargeToFullRequest];
    goto LABEL_8;
  }

  if (!(disableSocLimitPolicy & 1 | !lastChargeToFullRequested))
  {
    v7 = qword_1000AC998;
    if (os_log_type_enabled(qword_1000AC998, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HandleBatteryDataUpdate ChargeToFull Disabled", v11, 2u);
    }

LABEL_8:
    sub_10002F760((v6 & 1) == 0);
  }

  self->_lastChargeToFullRequested = v4 & 1;
  v9 = +[NSDate date];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  [(BatteryGaugingAccuracyManager *)self writeNSNumberDataToDisk:@"MonthlyDataReportedDate"];

  [(BatteryGaugingAccuracyManager *)self updateAnalyticsData];
}

+ (id)InstanceManager
{
  dispatch_assert_queue_V2(qword_1000AD380);
  if (qword_1000AD398 != -1)
  {
    sub_10006DB18();
  }

  v2 = qword_1000AD390;

  return v2;
}

@end