@interface AKAnalyticsSender
+ (void)sendAnalyticsEvent:(id)a3 context:(id)a4 account:(id)a5 error:(id)a6;
+ (void)sendAnalyticsEvent:(id)a3 withError:(id)a4;
@end

@implementation AKAnalyticsSender

+ (void)sendAnalyticsEvent:(id)a3 context:(id)a4 account:(id)a5 error:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  if (location[0])
  {
    v13 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:location[0] account:v19 error:v18];
    v6 = [v20 telemetryFlowID];
    [v13 setObject:? forKeyedSubscript:?];
    _objc_release(v6);
    v7 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v7 sendEvent:v13];
    _objc_release(v7);
    objc_storeStrong(&v13, 0);
    v14 = 0;
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      sub_10001CEEC(v15);
      _os_log_error_impl(&_mh_execute_header, log, type, "Analytics event name is nil, skipping analytics", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v14 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

+ (void)sendAnalyticsEvent:(id)a3 withError:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if (location[0])
  {
    if (v11)
    {
      [location[0] setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
    }

    else
    {
      [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:kAAFDidSucceed];
    }

    [location[0] populateUnderlyingErrorsStartingWithRootError:v11];
    v4 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v4 sendEvent:location[0]];
    _objc_release(v4);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_error_impl(&_mh_execute_header, log, type, "Analytics event is nil, skipping analytics", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end