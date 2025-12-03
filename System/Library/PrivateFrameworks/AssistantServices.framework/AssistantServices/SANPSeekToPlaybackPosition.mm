@interface SANPSeekToPlaybackPosition
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSeekToPlaybackPosition

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  _ad_mediaRemoteOptions = [(SANPSeekToPlaybackPosition *)self _ad_mediaRemoteOptions];
  positionInMilliseconds = [(SANPSeekToPlaybackPosition *)self positionInMilliseconds];
  integerValue = [positionInMilliseconds integerValue];

  v10 = [NSNumber numberWithDouble:integerValue / 1000.0];
  [_ad_mediaRemoteOptions setValue:v10 forKey:kMRMediaRemoteOptionPlaybackPosition];

  targetQueue = [serviceCopy targetQueue];

  AFMediaRemoteSendCommandWithOptions();
}

@end