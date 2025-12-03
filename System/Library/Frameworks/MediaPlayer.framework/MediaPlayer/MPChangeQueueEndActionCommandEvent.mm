@interface MPChangeQueueEndActionCommandEvent
- (MPChangeQueueEndActionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPChangeQueueEndActionCommandEvent

- (MPChangeQueueEndActionCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MPChangeQueueEndActionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B0CD8]];
    v9->_preservesQueueEndAction = [v10 BOOLValue];

    v11 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];
    v9->_queueEndAction = [v11 integerValue];
  }

  return v9;
}

@end