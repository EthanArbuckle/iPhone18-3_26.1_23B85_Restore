@interface SADomainCommand
- (void)_ad_performAudioPausingCommand:(unsigned int)a3 mediaRemoteService:(id)a4 replyHandler:(id)a5;
@end

@implementation SADomainCommand

- (void)_ad_performAudioPausingCommand:(unsigned int)a3 mediaRemoteService:(id)a4 replyHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SADomainCommand *)self _ad_mediaRemoteOptions];
  if (AFPauseCommandsInterruptAudio())
  {
    v10 = +[ADCommandCenter sharedCommandCenter];
    [v10 setSuppressAudioInterruptionEndedNotifications:1];
  }

  v11 = [v7 targetQueue];
  v13 = v8;
  v12 = v8;
  AFMediaRemoteSendCommandWithOptions();

  [AFAggregator logSiriPausedMedia:_NSConcreteStackBlock];
}

@end