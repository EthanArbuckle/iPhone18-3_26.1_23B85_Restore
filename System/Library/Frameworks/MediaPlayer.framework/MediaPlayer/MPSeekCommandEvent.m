@interface MPSeekCommandEvent
- (MPSeekCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5;
@end

@implementation MPSeekCommandEvent

- (MPSeekCommandEvent)initWithCommand:(id)a3 mediaRemoteType:(unsigned int)a4 options:(id)a5
{
  v7.receiver = self;
  v7.super_class = MPSeekCommandEvent;
  result = [(MPRemoteCommandEvent *)&v7 initWithCommand:a3 mediaRemoteType:*&a4 options:a5];
  if (result)
  {
    result->_commandType = a4;
    result->_type = (a4 & 0xFFFFFFFD) != 8;
  }

  return result;
}

@end