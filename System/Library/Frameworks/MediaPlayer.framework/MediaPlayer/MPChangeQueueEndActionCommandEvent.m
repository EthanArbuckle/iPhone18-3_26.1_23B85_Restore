@interface MPChangeQueueEndActionCommandEvent
- (MPChangeQueueEndActionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPChangeQueueEndActionCommandEvent

- (MPChangeQueueEndActionCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v13.receiver = self;
  v13.super_class = MPChangeQueueEndActionCommandEvent;
  v9 = [(MPRemoteCommandEvent *)&v13 initWithCommand:a3 mediaRemoteType:v5 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B0CD8]];
    v9->_preservesQueueEndAction = [v10 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B11E8]];
    v9->_queueEndAction = [v11 integerValue];
  }

  return v9;
}

@end