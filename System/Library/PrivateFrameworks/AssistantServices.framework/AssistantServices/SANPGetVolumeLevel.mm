@interface SANPGetVolumeLevel
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPGetVolumeLevel

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SANPGetVolumeLevel(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = [v5 targetQueue];
  AFPerformDeviceVolumeAction();

  [AFAggregator logSiriMediaVolumeAction:1];
}

@end