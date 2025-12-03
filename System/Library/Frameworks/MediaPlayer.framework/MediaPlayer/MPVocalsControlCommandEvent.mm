@interface MPVocalsControlCommandEvent
- (MPVocalsControlCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPVocalsControlCommandEvent

- (MPVocalsControlCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = MPVocalsControlCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1280]];
    active = v9->_active;
    v9->_active = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1288]];
    level = v9->_level;
    v9->_level = v12;
  }

  return v9;
}

@end