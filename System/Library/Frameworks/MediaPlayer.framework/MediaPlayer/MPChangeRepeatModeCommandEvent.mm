@interface MPChangeRepeatModeCommandEvent
- (MPChangeRepeatModeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPChangeRepeatModeCommandEvent

- (MPChangeRepeatModeCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = MPChangeRepeatModeCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v15 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1208]];
    intValue = [v10 intValue];

    if (intValue > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A2741A98[intValue];
    }

    v9->_repeatType = v12;
    v13 = [optionsCopy objectForKey:*MEMORY[0x1E69B0CE0]];
    v9->_preservesRepeatMode = [v13 BOOLValue];
  }

  return v9;
}

@end