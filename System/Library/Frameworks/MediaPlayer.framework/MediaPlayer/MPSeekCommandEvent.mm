@interface MPSeekCommandEvent
- (MPSeekCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options;
@end

@implementation MPSeekCommandEvent

- (MPSeekCommandEvent)initWithCommand:(id)command mediaRemoteType:(unsigned int)type options:(id)options
{
  v7.receiver = self;
  v7.super_class = MPSeekCommandEvent;
  result = [(MPRemoteCommandEvent *)&v7 initWithCommand:command mediaRemoteType:*&type options:options];
  if (result)
  {
    result->_commandType = type;
    result->_type = (type & 0xFFFFFFFD) != 8;
  }

  return result;
}

@end