@interface SAIntentGroupRunSiriKitExecutor
- (BOOL)ad_requiresProximityInformationForDeviceContextTuples:(id)tuples;
- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower;
@end

@implementation SAIntentGroupRunSiriKitExecutor

- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower
{
  tuplesCopy = tuples;
  mapCopy = map;
  if (AFSupportsHALFlowRouting())
  {
    sub_100015560(tuplesCopy);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v9)
    {
      v33 = tuplesCopy;
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
          deviceInfo = [v12 deviceInfo];
          idsDeviceUniqueIdentifier = [deviceInfo idsDeviceUniqueIdentifier];

          v15 = [mapCopy objectForKey:idsDeviceUniqueIdentifier];
          integerValue = [v15 integerValue];

          af_validFlowContext = [v12 af_validFlowContext];
          v18 = AFDeviceProximityCompare();
          promptContextProto = [af_validFlowContext promptContextProto];

          v20 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v41 = "[SAIntentGroupRunSiriKitExecutor(DeviceRouting) ad_executionDeviceForDeviceContextTuples:executionContext:proximityMap:sharedUserID:localDeviceIsFollower:]";
            v42 = 1024;
            v43 = v18 == -1;
            v44 = 1024;
            v45 = promptContextProto != 0;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Candidate: isCloseEnough? %d, flowPrompted? %d", buf, 0x18u);
          }

          if (v18 == -1 && promptContextProto != 0)
          {
            v9 = v12;

            goto LABEL_18;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v9);
      integerValue = 0;
LABEL_18:
      tuplesCopy = v33;
    }

    else
    {
      integerValue = 0;
    }

    v23 = +[ADDeviceCircleManager sharedInstance];
    deviceInfo2 = [v9 deviceInfo];
    v25 = [v23 managedPeerInfoMatchingPeerInfo:deviceInfo2];
    v26 = v25;
    if (v25)
    {
      deviceInfo3 = v25;
    }

    else
    {
      deviceInfo3 = [v9 deviceInfo];
    }

    v28 = deviceInfo3;

    v29 = [[ADPeerInfo alloc] initWithAFPeerInfo:v28];
    v30 = [ADDeviceRouterResult alloc];
    identifier = [v9 identifier];
    v22 = [(ADDeviceRouterResult *)v30 initWithPeerInfo:v29 contextIdentifier:identifier proximity:integerValue commandRelayProxyIdentifier:0 error:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)ad_requiresProximityInformationForDeviceContextTuples:(id)tuples
{
  tuplesCopy = tuples;
  if (AFSupportsHALFlowRouting())
  {
    v4 = sub_100015560(tuplesCopy);
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