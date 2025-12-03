@interface WISPowerUsageMetricController
- (WISPowerUsageMetricController)init;
- (id).cxx_construct;
- (id)powerIOPropertyForKey:(id)key ofExpectedClass:(Class)class;
- (shared_ptr<TelemetryObserver>)observer;
- (void)dealloc;
- (void)handleBasebandPowerMetricWithPayload:(id)payload;
- (void)handleChargingStateUpdate;
@end

@implementation WISPowerUsageMetricController

- (WISPowerUsageMetricController)init
{
  v10.receiver = self;
  v10.super_class = WISPowerUsageMetricController;
  v2 = [(WISPowerUsageMetricController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_queue = dispatch_queue_create("com.apple.wirelessinsightsd.PowerUsageMetric", v3);
    [(WISPowerUsageMetricController *)v2 setIsInitialized:0];
    [(WISPowerUsageMetricController *)v2 setLastRemainingPercent:0];
    [(WISPowerUsageMetricController *)v2 setLastMaxPercent:0];
    [(WISPowerUsageMetricController *)v2 setLastRawRemainingCharge:0];
    [(WISPowerUsageMetricController *)v2 setLastRawMaxCharge:0];
    [(WISPowerUsageMetricController *)v2 setLastVoltage:0];
    [(WISPowerUsageMetricController *)v2 setLastPackCurrentAccumulator:0];
    [(WISPowerUsageMetricController *)v2 setLastPackCurrentAccumulatorCount:0];
    [(WISPowerUsageMetricController *)v2 setLastSubmissionTimestamp:0];
    [(WISPowerUsageMetricController *)v2 setIsCurrentlyCharging:0];
    [(WISPowerUsageMetricController *)v2 setWasChargedSinceLastSubmission:0];
    [(WISPowerUsageMetricController *)v2 setNotificationToken:0xFFFFFFFFLL];
    out_token = -1;
    objc_initWeak(&location, v2);
    queue = [(WISPowerUsageMetricController *)v2 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10013794C;
    handler[3] = &unk_1002AB2D8;
    objc_copyWeak(&v7, &location);
    if (!notify_register_dispatch("com.apple.system.powersources.source", &out_token, queue, handler))
    {
      [(WISPowerUsageMetricController *)v2 setNotificationToken:out_token];
      sub_100138BDC();
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10020B1E8();
    }

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return 0;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B290();
  }

  if ([(WISPowerUsageMetricController *)self queue])
  {
    dispatch_release([(WISPowerUsageMetricController *)self queue]);
  }

  if ([(WISPowerUsageMetricController *)self notificationToken]!= -1)
  {
    notify_cancel([(WISPowerUsageMetricController *)self notificationToken]);
  }

  v3.receiver = self;
  v3.super_class = WISPowerUsageMetricController;
  [(WISPowerUsageMetricController *)&v3 dealloc];
}

- (void)handleChargingStateUpdate
{
  if (IOPSGetTimeRemainingEstimate() == -2.0)
  {
    [(WISPowerUsageMetricController *)self setIsCurrentlyCharging:1];

    [(WISPowerUsageMetricController *)self setWasChargedSinceLastSubmission:1];
  }

  else
  {

    [(WISPowerUsageMetricController *)self setIsCurrentlyCharging:0];
  }
}

- (void)handleBasebandPowerMetricWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [NSString stringWithUTF8String:"CurrentCapacity"];
  v73 = [(WISPowerUsageMetricController *)self powerIOPropertyForKey:v4 ofExpectedClass:objc_opt_class()];

  v5 = [NSString stringWithUTF8String:"MaxCapacity"];
  v72 = [(WISPowerUsageMetricController *)self powerIOPropertyForKey:v5 ofExpectedClass:objc_opt_class()];

  v6 = [NSString stringWithUTF8String:"AppleRawCurrentCapacity"];
  v7 = [(WISPowerUsageMetricController *)self powerIOPropertyForKey:v6 ofExpectedClass:objc_opt_class()];

  v8 = [NSString stringWithUTF8String:"AppleRawMaxCapacity"];
  v9 = [(WISPowerUsageMetricController *)self powerIOPropertyForKey:v8 ofExpectedClass:objc_opt_class()];

  v10 = [NSString stringWithUTF8String:"BatteryData"];
  v11 = [(WISPowerUsageMetricController *)self powerIOPropertyForKey:v10 ofExpectedClass:objc_opt_class()];

  v12 = [NSString stringWithUTF8String:"Voltage"];
  v13 = [v11 valueForKey:v12];

  v14 = [NSString stringWithUTF8String:"PackCurrentAccumulator"];
  v15 = [v11 valueForKey:v14];

  v16 = [NSString stringWithUTF8String:"PackCurrentAccumulatorCount"];
  v17 = [v11 valueForKey:v16];

  v18 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138413826;
    v79 = v73;
    v80 = 2112;
    v81 = v72;
    v82 = 2112;
    v83 = v7;
    v84 = 2112;
    v85 = v9;
    v86 = 2112;
    v87 = v13;
    v88 = 2112;
    v89 = v15;
    v90 = 2112;
    v91 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PowerUsageMetric:#I Retrieved value(s): remainingPercent %@, maxPercent %@, rawRemainingChargemAh %@, rawMaxChargemAh %@, voltagemV %@, packCurrentAccumulator %@, packCurrentAccumulatorCount %@", buf, 0x48u);
  }

  if (v73 && v72 && v7 && v9 && v13 && v15 && v17)
  {
    longLongValue = [v73 longLongValue];
    longLongValue2 = [v72 longLongValue];
    longLongValue3 = [v7 longLongValue];
    longLongValue4 = [v9 longLongValue];
    longLongValue5 = [v13 longLongValue];
    longLongValue6 = [v15 longLongValue];
    unsignedLongLongValue = [v17 unsignedLongLongValue];
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    isInitialized = [(WISPowerUsageMetricController *)self isInitialized];
    if ((isInitialized & 1) == 0)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        sub_10020B2C4();
      }

      [(WISPowerUsageMetricController *)self setLastRemainingPercent:longLongValue];
      [(WISPowerUsageMetricController *)self setLastMaxPercent:longLongValue2];
      [(WISPowerUsageMetricController *)self setLastRawRemainingCharge:longLongValue3];
      [(WISPowerUsageMetricController *)self setLastRawMaxCharge:longLongValue4];
      [(WISPowerUsageMetricController *)self setLastVoltage:longLongValue5];
      [(WISPowerUsageMetricController *)self setLastPackCurrentAccumulator:longLongValue6];
      [(WISPowerUsageMetricController *)self setLastPackCurrentAccumulatorCount:unsignedLongLongValue];
      [(WISPowerUsageMetricController *)self setLastSubmissionTimestamp:v19];
      [(WISPowerUsageMetricController *)self setWasChargedSinceLastSubmission:[(WISPowerUsageMetricController *)self isCurrentlyCharging]];
      goto LABEL_19;
    }

    if (v19 < [(WISPowerUsageMetricController *)self lastSubmissionTimestamp]|| unsignedLongLongValue < [(WISPowerUsageMetricController *)self lastPackCurrentAccumulatorCount])
    {
      v21 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PowerUsageMetric:#N Time or accumulator count moved backwards, aborting", buf, 2u);
      }

LABEL_19:
      [(WISPowerUsageMetricController *)self setIsInitialized:isInitialized ^ 1];
      goto LABEL_20;
    }

    lastRemainingPercent = [(WISPowerUsageMetricController *)self lastRemainingPercent];
    lastMaxPercent = [(WISPowerUsageMetricController *)self lastMaxPercent];
    lastRawRemainingCharge = [(WISPowerUsageMetricController *)self lastRawRemainingCharge];
    lastRawMaxCharge = [(WISPowerUsageMetricController *)self lastRawMaxCharge];
    lastRawRemainingCharge2 = [(WISPowerUsageMetricController *)self lastRawRemainingCharge];
    wasChargedSinceLastSubmission = [(WISPowerUsageMetricController *)self wasChargedSinceLastSubmission];
    [(WISPowerUsageMetricController *)self setWasChargedSinceLastSubmission:[(WISPowerUsageMetricController *)self isCurrentlyCharging]];
    lastSubmissionTimestamp = [(WISPowerUsageMetricController *)self lastSubmissionTimestamp];
    lastPackCurrentAccumulator = [(WISPowerUsageMetricController *)self lastPackCurrentAccumulator];
    lastPackCurrentAccumulatorCount = [(WISPowerUsageMetricController *)self lastPackCurrentAccumulatorCount];
    lastVoltage = [(WISPowerUsageMetricController *)self lastVoltage];
    [(WISPowerUsageMetricController *)self setLastRemainingPercent:longLongValue];
    [(WISPowerUsageMetricController *)self setLastMaxPercent:longLongValue2];
    [(WISPowerUsageMetricController *)self setLastRawRemainingCharge:longLongValue3];
    [(WISPowerUsageMetricController *)self setLastRawMaxCharge:longLongValue4];
    [(WISPowerUsageMetricController *)self setLastVoltage:longLongValue5];
    [(WISPowerUsageMetricController *)self setLastPackCurrentAccumulator:longLongValue6];
    [(WISPowerUsageMetricController *)self setLastPackCurrentAccumulatorCount:unsignedLongLongValue];
    [(WISPowerUsageMetricController *)self setLastSubmissionTimestamp:v19];
    v22 = [payloadCopy valueForKey:@"duration_ms"];
    longLongValue7 = [v22 longLongValue];

    v24 = [payloadCopy valueForKey:@"power_stats_cumulated_energy_mj"];
    longLongValue8 = [v24 longLongValue];

    v25 = [payloadCopy valueForKey:@"power_stats_avg_power_mw"];
    longLongValue9 = [v25 longLongValue];

    v26 = llround(longLongValue * 100.0 / longLongValue2);
    v76[0] = @"remaining_percent";
    [NSNumber numberWithLongLong:v26];
    v66 = v27 = llround(lastRemainingPercent * 100.0 / lastMaxPercent) - v26;
    v77[0] = v66;
    v76[1] = @"total_used_percent";
    v64 = [NSNumber numberWithLongLong:v27];
    v77[1] = v64;
    v76[2] = @"raw_remaining_percent";
    [NSNumber numberWithDouble:longLongValue3 * 100.0 / longLongValue4];
    v62 = v28 = lastRawRemainingCharge * 100.0 / lastRawMaxCharge - longLongValue3 * 100.0 / longLongValue4;
    v77[2] = v62;
    v76[3] = @"total_raw_used_percent";
    v56 = [NSNumber numberWithDouble:v28];
    v77[3] = v56;
    v76[4] = @"was_charged";
    [NSNumber numberWithBool:wasChargedSinceLastSubmission];
    v54 = v29 = (v19 - lastSubmissionTimestamp) / 0x3B9ACA00;
    v77[4] = v54;
    v76[5] = @"duration_s";
    v30 = [NSNumber numberWithUnsignedLongLong:v29];
    v31 = lastRawRemainingCharge2 - longLongValue3;
    v68 = v30;
    v77[5] = v30;
    v76[6] = @"raw_charge_used_mAh";
    [NSNumber numberWithLongLong:v31];
    v70 = v32 = (lastPackCurrentAccumulator - longLongValue6) / (unsignedLongLongValue - lastPackCurrentAccumulatorCount) * ((longLongValue5 + lastVoltage) / 2) / 1000.0;
    v77[6] = v70;
    v76[7] = @"energy_used_mWh";
    v60 = [NSNumber numberWithDouble:v29 / 3600.0 * v32];
    v77[7] = v60;
    v76[8] = @"average_power_used_mW";
    v58 = [NSNumber numberWithDouble:v32];
    v77[8] = v58;
    v76[9] = @"baseband_duration_s";
    1000 = [NSNumber numberWithLongLong:longLongValue7 / 1000];
    v77[9] = 1000;
    v76[10] = @"baseband_energy_used_mWh";
    v50 = [NSNumber numberWithDouble:longLongValue8 / 3600.0];
    v77[10] = v50;
    v76[11] = @"baseband_average_power_used_mW";
    [NSNumber numberWithLongLong:longLongValue9];
    v48 = v33 = longLongValue8 / 3600.0 / (v29 / 3600.0 * v32);
    v77[11] = v48;
    v76[12] = @"baseband_to_total_energy_ratio_percent";
    v34 = [NSNumber numberWithDouble:v33 * 100.0];
    v77[12] = v34;
    v76[13] = @"baseband_used_percent";
    v35 = [NSNumber numberWithDouble:v33 * v27];
    v77[13] = v35;
    v76[14] = @"baseband_raw_used_percent";
    v36 = [NSNumber numberWithDouble:v28 * v33];
    v77[14] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:15];

    v38 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      sub_10020B2F8(v37, v38);
    }

    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100138800;
    v74[3] = &unk_1002AB460;
    v75 = v37;
    v39 = v37;
    sub_1000158DC(@"com.apple.Telephony.APBBPowerUsage", v74);
  }

  else
  {
    [(WISPowerUsageMetricController *)self setIsInitialized:0];
  }

LABEL_20:
}

- (id)powerIOPropertyForKey:(id)key ofExpectedClass:(Class)class
{
  keyCopy = key;
  v5 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  v7 = MatchingService;
  if (MatchingService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, keyCopy, kCFAllocatorDefault, 0);
    IOObjectRelease(v7);
    if (CFProperty && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = CFProperty;
    }

    else
    {
      v10 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        sub_10020B370(v12, v14, CFProperty, v10);
      }

      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10020B3D8();
    }

    v9 = 0;
  }

  return v9;
}

- (shared_ptr<TelemetryObserver>)observer
{
  objc_copyCppObjectAtomic(v2, &self->_observer, sub_1001389A0);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end