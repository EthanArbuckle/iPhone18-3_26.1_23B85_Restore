@interface SADomainCommand
- (void)_ad_performAudioPausingCommand:(unsigned int)command mediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SADomainCommand

- (void)_ad_performAudioPausingCommand:(unsigned int)command mediaRemoteService:(id)service replyHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  _ad_mediaRemoteOptions = [(SADomainCommand *)self _ad_mediaRemoteOptions];
  if (AFPauseCommandsInterruptAudio())
  {
    v10 = +[ADCommandCenter sharedCommandCenter];
    [v10 setSuppressAudioInterruptionEndedNotifications:1];
  }

  targetQueue = [serviceCopy targetQueue];
  v13 = handlerCopy;
  v12 = handlerCopy;
  AFMediaRemoteSendCommandWithOptions();

  [AFAggregator logSiriPausedMedia:_NSConcreteStackBlock];
}

@end