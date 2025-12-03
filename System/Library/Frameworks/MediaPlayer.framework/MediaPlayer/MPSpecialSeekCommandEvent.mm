@interface MPSpecialSeekCommandEvent
- (MPSpecialSeekCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPSpecialSeekCommandEvent

- (MPSpecialSeekCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v8.receiver = self;
  v8.super_class = MPSpecialSeekCommandEvent;
  result = [(MPRemoteCommandEvent *)&v8 initWithCommand:command mediaRemoteType:*&type options:options];
  if (result)
  {
    if (type - 100 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1A2741A68[type - 100];
    }

    result->_type = v7;
  }

  return result;
}

@end