@interface SATimerDismiss
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)a3;
- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7;
@end

@implementation SATimerDismiss

- (id)_ad_timerResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_ad_timerRequestRepresentation
{
  v2 = objc_alloc_init(AFDismissTimerRequest);

  return v2;
}

- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7
{
  v9 = a5;
  v10 = sub_100015560(a3);
  v11 = [(SATimerDismiss *)self timerIds];
  v12 = v10;
  v13 = v11;
  *v34 = _NSConcreteStackBlock;
  *&v34[8] = 3221225472;
  *&v34[16] = sub_100099960;
  v35 = &unk_100510010;
  *v36 = v13;
  v14 = [v12 indexOfObjectPassingTest:v34];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v12 objectAtIndexedSubscript:v14];
  }

  v16 = [v15 deviceInfo];
  v17 = sub_1002BC960(v9, v16);

  v18 = [(SATimerDismiss *)self timerIds];
  v19 = v15;
  v20 = v19;
  if (v19)
  {
    if ([v19 fromLocalDevice])
    {
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *v34 = 136315650;
        *&v34[4] = "ADDeviceRouterResultForDeviceContextWithFiringTimer";
        *&v34[12] = 2112;
        *&v34[14] = @"dismiss";
        *&v34[22] = 2112;
        v35 = v18;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s #hal %@ local timers: %@", v34, 0x20u);
      }

      v22 = 0;
    }

    else
    {
      v24 = [v20 deviceInfo];
      v25 = sub_10001A498(v24, 0);

      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v31 = v26;
        v32 = AFPeerInfoGetCompactDescription();
        v33 = AFDeviceProximityGetName();
        *v34 = 136316162;
        *&v34[4] = "ADDeviceRouterResultForDeviceContextWithFiringTimer";
        *&v34[12] = 2112;
        *&v34[14] = @"dismiss";
        *&v34[22] = 2112;
        v35 = v18;
        *v36 = 2112;
        *&v36[2] = v32;
        v37 = 2112;
        v38 = v33;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s #hal %@ timers: %@ on %@, proximity: %@", v34, 0x34u);
      }

      v22 = [[ADPeerInfo alloc] initWithAFPeerInfo:v25];
    }

    v27 = [ADDeviceRouterResult alloc];
    v28 = [v20 identifier];
    v29 = [v20 contextCollectorSource];
    v23 = [(ADDeviceRouterResult *)v27 initWithPeerInfo:v22 contextIdentifier:v28 proximity:v17 commandRelayProxyIdentifier:v29 error:0];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end