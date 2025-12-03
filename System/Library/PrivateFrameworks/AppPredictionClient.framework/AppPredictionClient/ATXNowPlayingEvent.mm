@interface ATXNowPlayingEvent
- (ATXNowPlayingEvent)initWithContextInfo:(id)info;
- (BOOL)isTVExperienceAppNowPlaying;
@end

@implementation ATXNowPlayingEvent

- (ATXNowPlayingEvent)initWithContextInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = ATXNowPlayingEvent;
  v5 = [(ATXNowPlayingEvent *)&v13 init];
  if (v5)
  {
    nowPlayingBundleIdKey = [MEMORY[0x1E6997A68] nowPlayingBundleIdKey];
    v7 = [infoCopy objectForKeyedSubscript:nowPlayingBundleIdKey];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1F3E050C8;
    }

    objc_storeStrong(&v5->_bundleId, v9);

    nowPlayingStatusKey = [MEMORY[0x1E6997A68] nowPlayingStatusKey];
    v11 = [infoCopy objectForKeyedSubscript:nowPlayingStatusKey];
    v5->_nowPlayingState = [v11 integerValue];
  }

  return v5;
}

- (BOOL)isTVExperienceAppNowPlaying
{
  if ([(ATXNowPlayingEvent *)self nowPlayingState]!= 1)
  {
    return 0;
  }

  bundleId = [(ATXNowPlayingEvent *)self bundleId];
  v4 = [ATXAVRoutingUtils isTVExperienceAppWithBundleId:bundleId];

  return v4;
}

@end