@interface OSADailyTelemetryMonitor
+ (void)collectDeveloperOptIn;
+ (void)evaluateState;
+ (void)sendRTCBeacon:(BOOL)beacon;
@end

@implementation OSADailyTelemetryMonitor

+ (void)evaluateState
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running daily telemetry monitor.", v2, 2u);
  }

  +[OSADailyTelemetryMonitor collectDeveloperOptIn];
}

+ (void)collectDeveloperOptIn
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Collecting developer opt in telemetry", buf, 2u);
  }

  v2 = +[OSASystemConfiguration sharedInstance];
  [v2 optIn3rdParty];

  AnalyticsSendEventLazy();
}

+ (void)sendRTCBeacon:(BOOL)beacon
{
  beaconCopy = beacon;
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v6 = v5;
  v7 = +[OSASystemConfiguration sharedInstance];
  hwModel = [v7 hwModel];

  if (v5)
  {
    v9 = CFBooleanGetValue(v5) != 0;
  }

  else
  {
    v9 = 1;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending RTC Beacon CA Event", buf, 2u);
  }

  AnalyticsSendEventLazy();
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending RTC Beacon", buf, 2u);
    }

    v10 = @"no_serial";
    if (v4)
    {
      v10 = v4;
    }

    v17[0] = v10;
    v16[0] = @"serial";
    v16[1] = @"hwModel";
    v11 = [(__CFString *)hwModel length];
    v12 = @"no_hw_model";
    if (v11)
    {
      v12 = hwModel;
    }

    v17[1] = v12;
    v16[2] = @"prodFused";
    v13 = [NSNumber numberWithBool:0];
    v17[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

    if (beaconCopy)
    {
      rtcsc_send_realtime();
    }

    else
    {
      rtcsc_send();
    }
  }
}

@end