@interface SANPSeekToPlaybackPosition
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPSeekToPlaybackPosition

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(SANPSeekToPlaybackPosition *)self _ad_mediaRemoteOptions];
  v8 = [(SANPSeekToPlaybackPosition *)self positionInMilliseconds];
  v9 = [v8 integerValue];

  v10 = [NSNumber numberWithDouble:v9 / 1000.0];
  [v12 setValue:v10 forKey:kMRMediaRemoteOptionPlaybackPosition];

  v11 = [v7 targetQueue];

  AFMediaRemoteSendCommandWithOptions();
}

@end