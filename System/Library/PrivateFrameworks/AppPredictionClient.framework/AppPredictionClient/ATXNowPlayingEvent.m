@interface ATXNowPlayingEvent
- (ATXNowPlayingEvent)initWithContextInfo:(id)a3;
- (BOOL)isTVExperienceAppNowPlaying;
@end

@implementation ATXNowPlayingEvent

- (ATXNowPlayingEvent)initWithContextInfo:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXNowPlayingEvent;
  v5 = [(ATXNowPlayingEvent *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6997A68] nowPlayingBundleIdKey];
    v7 = [v4 objectForKeyedSubscript:v6];
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

    v10 = [MEMORY[0x1E6997A68] nowPlayingStatusKey];
    v11 = [v4 objectForKeyedSubscript:v10];
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

  v3 = [(ATXNowPlayingEvent *)self bundleId];
  v4 = [ATXAVRoutingUtils isTVExperienceAppWithBundleId:v3];

  return v4;
}

@end