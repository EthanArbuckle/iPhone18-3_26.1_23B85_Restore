@interface MPReorderQueueCommandEvent
- (MPReorderQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPReorderQueueCommandEvent

- (MPReorderQueueCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v18.receiver = self;
  v18.super_class = MPReorderQueueCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v18 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1130]];
    insertAfterContextItemID = v9->_insertAfterContextItemID;
    v9->_insertAfterContextItemID = v10;

    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1138]];
    insertBeforeContextItemID = v9->_insertBeforeContextItemID;
    v9->_insertBeforeContextItemID = v12;

    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B1170]];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 integerValue];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9->_destinationOffset = v16;
  }

  return v9;
}

@end