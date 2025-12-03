@interface SANPGetVolumeLevel
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPGetVolumeLevel

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SANPGetVolumeLevel(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  targetQueue = [serviceCopy targetQueue];
  AFPerformDeviceVolumeAction();

  [AFAggregator logSiriMediaVolumeAction:1];
}

@end