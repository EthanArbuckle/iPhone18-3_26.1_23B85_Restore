@interface MPSpecialSeekCommandEvent
- (MPSpecialSeekCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPSpecialSeekCommandEvent

- (MPSpecialSeekCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v8.receiver = self;
  v8.super_class = MPSpecialSeekCommandEvent;
  result = [(MPRemoteCommandEvent *)&v8 initWithCommand:a3 mediaRemoteType:*&a4 options:a5];
  if (result)
  {
    if (a4 - 100 > 5)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1A2741A68[a4 - 100];
    }

    result->_type = v7;
  }

  return result;
}

@end