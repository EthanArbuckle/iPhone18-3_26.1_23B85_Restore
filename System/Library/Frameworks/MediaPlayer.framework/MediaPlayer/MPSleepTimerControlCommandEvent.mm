@interface MPSleepTimerControlCommandEvent
- (MPSleepTimerControlCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPSleepTimerControlCommandEvent

- (MPSleepTimerControlCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = MPSleepTimerControlCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v16 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1248]];
    time = v9->_time;
    v9->_time = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1240]];
    v13 = [v12 integerValue] - 1;
    if (v13 < 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 0;
    }

    v9->_stopMode = v14;
  }

  return v9;
}

@end