@interface MPChangePlaybackRateCommandEvent
- (MPChangePlaybackRateCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPChangePlaybackRateCommandEvent

- (MPChangePlaybackRateCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MPChangePlaybackRateCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1188]];
    [v10 floatValue];
    v9->_playbackRate = v11;
  }

  return v9;
}

@end