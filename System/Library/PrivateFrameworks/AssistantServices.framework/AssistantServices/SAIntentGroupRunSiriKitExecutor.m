@interface SAIntentGroupRunSiriKitExecutor
- (BOOL)ad_requiresProximityInformationForDeviceContextTuples:(id)a3;
- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7;
@end

@implementation SAIntentGroupRunSiriKitExecutor

- (id)ad_executionDeviceForDeviceContextTuples:(id)a3 executionContext:(id)a4 proximityMap:(id)a5 sharedUserID:(id)a6 localDeviceIsFollower:(BOOL)a7
{
  v8 = a3;
  v35 = a5;
  if (AFSupportsHALFlowRouting())
  {
    sub_100015560(v8);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v9)
    {
      v33 = v8;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = [v12 deviceInfo];
          v14 = [v13 idsDeviceUniqueIdentifier];

          v15 = [v35 objectForKey:v14];
          v16 = [v15 integerValue];

          v17 = [v12 af_validFlowContext];
          v18 = AFDeviceProximityCompare();
          v19 = [v17 promptContextProto];

          v20 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v41 = "[SAIntentGroupRunSiriKitExecutor(DeviceRouting) ad_executionDeviceForDeviceContextTuples:executionContext:proximityMap:sharedUserID:localDeviceIsFollower:]";
            v42 = 1024;
            v43 = v18 == -1;
            v44 = 1024;
            v45 = v19 != 0;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Candidate: isCloseEnough? %d, flowPrompted? %d", buf, 0x18u);
          }

          if (v18 == -1 && v19 != 0)
          {
            v9 = v12;

            goto LABEL_18;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v9);
      v16 = 0;
LABEL_18:
      v8 = v33;
    }

    else
    {
      v16 = 0;
    }

    v23 = +[ADDeviceCircleManager sharedInstance];
    v24 = [v9 deviceInfo];
    v25 = [v23 managedPeerInfoMatchingPeerInfo:v24];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [v9 deviceInfo];
    }

    v28 = v27;

    v29 = [[ADPeerInfo alloc] initWithAFPeerInfo:v28];
    v30 = [ADDeviceRouterResult alloc];
    v31 = [v9 identifier];
    v22 = [(ADDeviceRouterResult *)v30 initWithPeerInfo:v29 contextIdentifier:v31 proximity:v16 commandRelayProxyIdentifier:0 error:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)ad_requiresProximityInformationForDeviceContextTuples:(id)a3
{
  v3 = a3;
  if (AFSupportsHALFlowRouting())
  {
    v4 = sub_100015560(v3);
    v5 = sub_1002BC33C(v4);
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end