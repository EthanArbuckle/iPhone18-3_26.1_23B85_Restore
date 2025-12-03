@interface SASExtractSpeechData
- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower;
@end

@implementation SASExtractSpeechData

- (id)ad_executionDeviceForDeviceContextTuples:(id)tuples executionContext:(id)context proximityMap:(id)map sharedUserID:(id)d localDeviceIsFollower:(BOOL)follower
{
  contextCopy = context;
  v8 = contextCopy;
  if (contextCopy)
  {
    originPeerInfo = [contextCopy originPeerInfo];

    if (originPeerInfo)
    {
      originPeerInfo2 = [v8 originPeerInfo];
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315394;
        v15 = "ADDeviceRouterResultForExecutionContextWithOriginPeer";
        v16 = 2112;
        v17 = v8;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s #hal executionContext: %@, doesn't have originPeer", &v14, 0x16u);
      }

      originPeerInfo2 = 0;
    }

    v11 = [[ADDeviceRouterResult alloc] initWithPeerInfo:originPeerInfo2 contextIdentifier:0 proximity:0 commandRelayProxyIdentifier:0 error:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end