@interface MPChangePlaybackPositionCommandEvent
- (MPChangePlaybackPositionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPChangePlaybackPositionCommandEvent

- (MPChangePlaybackPositionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = MPChangePlaybackPositionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1168]];
    [v10 doubleValue];
    v9->_positionTime = v11;

    v12 = [optionsCopy objectForKey:*MEMORY[0x1E69B11F8]];
    referenceTime = v9->_referenceTime;
    v9->_referenceTime = v12;
  }

  return v9;
}

@end