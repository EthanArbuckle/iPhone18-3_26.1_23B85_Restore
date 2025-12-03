@interface MPReorderQueueCommandEvent
- (MPReorderQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPReorderQueueCommandEvent

- (MPReorderQueueCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v5 = *&type;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = MPReorderQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v18 initWithCommand:command mediaRemoteType:v5 options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContextItemID = v9->_insertAfterContextItemID;
    v9->_insertAfterContextItemID = v10;

    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1138]];
    insertBeforeContextItemID = v9->_insertBeforeContextItemID;
    v9->_insertBeforeContextItemID = v12;

    v14 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1170]];
    v15 = v14;
    if (v14)
    {
      integerValue = [v14 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9->_destinationOffset = integerValue;
  }

  return v9;
}

@end