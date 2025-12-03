@interface ATXNowPlayingDataProvider
- (ATXNowPlayingDataProvider)init;
- (BOOL)isTVExperienceAppNowPlaying;
- (id)currentNowPlayingEvent;
@end

@implementation ATXNowPlayingDataProvider

- (ATXNowPlayingDataProvider)init
{
  v6.receiver = self;
  v6.super_class = ATXNowPlayingDataProvider;
  v2 = [(ATXNowPlayingDataProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coreDuetContextHelper = v2->_coreDuetContextHelper;
    v2->_coreDuetContextHelper = v3;
  }

  return v2;
}

- (id)currentNowPlayingEvent
{
  coreDuetContextHelper = self->_coreDuetContextHelper;
  keyPathForNowPlayingDataDictionary = [MEMORY[0x1E6997A68] keyPathForNowPlayingDataDictionary];
  v4 = [(ATXCoreDuetContextHelper *)coreDuetContextHelper fetchDataDictionaryForKeyPath:keyPathForNowPlayingDataDictionary];

  v5 = [[ATXNowPlayingEvent alloc] initWithContextInfo:v4];

  return v5;
}

- (BOOL)isTVExperienceAppNowPlaying
{
  lastNowPlayingEvent = self->_lastNowPlayingEvent;
  if (!lastNowPlayingEvent)
  {
    currentNowPlayingEvent = [(ATXNowPlayingDataProvider *)self currentNowPlayingEvent];
    v5 = self->_lastNowPlayingEvent;
    self->_lastNowPlayingEvent = currentNowPlayingEvent;

    lastNowPlayingEvent = self->_lastNowPlayingEvent;
  }

  return [(ATXNowPlayingEvent *)lastNowPlayingEvent isTVExperienceAppNowPlaying];
}

@end