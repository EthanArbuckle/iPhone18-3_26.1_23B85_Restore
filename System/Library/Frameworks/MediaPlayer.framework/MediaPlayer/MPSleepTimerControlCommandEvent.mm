@interface MPSleepTimerControlCommandEvent
- (MPSleepTimerControlCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPSleepTimerControlCommandEvent

- (MPSleepTimerControlCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v16.receiver = self;
  v16.super_class = MPSleepTimerControlCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v16 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1248]];
    time = v9->_time;
    v9->_time = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1240]];
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