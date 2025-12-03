@interface MPAdvanceRepeatModeCommandEvent
- (MPAdvanceRepeatModeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPAdvanceRepeatModeCommandEvent

- (MPAdvanceRepeatModeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = MPAdvanceRepeatModeCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v12 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B0CE0]];
    v9->_preservesRepeatMode = [v10 BOOLValue];
  }

  return v9;
}

@end