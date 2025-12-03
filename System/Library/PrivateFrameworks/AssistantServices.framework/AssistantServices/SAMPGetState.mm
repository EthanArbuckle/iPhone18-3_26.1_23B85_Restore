@interface SAMPGetState
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SAMPGetState

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  if (handlerCopy)
  {
    targetQueue = [serviceCopy targetQueue];
    v14 = handlerCopy;
    AFGetNowPlayingQueueState();
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = v11;
      aceId = [(SAMPGetState *)self aceId];
      *buf = 136315650;
      v16 = "[SAMPGetState(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = aceId;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Ignoring %@ with aceId %@ because there is no completion handler. This command should only read state, and have no effect.", buf, 0x20u);
    }
  }
}

@end