@interface MPSkipIntervalCommandEvent
- (MPSkipIntervalCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPSkipIntervalCommandEvent

- (MPSkipIntervalCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MPSkipIntervalCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:*MEMORY[0x1E69B1238]];
    [v10 doubleValue];
    v9->_interval = v11;
  }

  return v9;
}

@end