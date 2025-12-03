@interface MPCreateRadioStationCommandEvent
- (MPCreateRadioStationCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPCreateRadioStationCommandEvent

- (MPCreateRadioStationCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = MPCreateRadioStationCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v16 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1260]];
    v11 = [v10 copy];

    if ([v11 length])
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      stationURL = v9->_stationURL;
      v9->_stationURL = v12;
    }

    v14 = [optionsCopy objectForKey:*MEMORY[0x1E69B1228]];
    v9->_requestingPlaybackInitialization = [v14 BOOLValue];
  }

  return v9;
}

@end