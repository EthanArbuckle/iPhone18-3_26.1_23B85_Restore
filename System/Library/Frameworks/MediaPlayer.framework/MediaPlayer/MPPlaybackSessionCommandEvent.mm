@interface MPPlaybackSessionCommandEvent
- (MPPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPPlaybackSessionCommandEvent

- (MPPlaybackSessionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = MPPlaybackSessionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v18 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B11A0]];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B11B8]];
    revision = v9->_revision;
    v9->_revision = v12;

    v14 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B11B0]];
    integerValue = [v14 integerValue];
    v16 = integerValue == 512;
    if (integerValue == 1024)
    {
      v16 = 2;
    }

    v9->_priority = v16;
  }

  return v9;
}

@end