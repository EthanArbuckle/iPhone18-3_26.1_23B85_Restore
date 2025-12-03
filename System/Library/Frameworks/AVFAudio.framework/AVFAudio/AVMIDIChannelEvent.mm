@interface AVMIDIChannelEvent
- (AVMIDIChannelEvent)initWithChannel:(unsigned __int8)channel status:(unsigned __int8)status data1:(unsigned __int8)data1 data2:(unsigned __int8)data2;
- (AVMIDIChannelEvent)initWithMessage:(MIDIChannelMessage *)message;
@end

@implementation AVMIDIChannelEvent

- (AVMIDIChannelEvent)initWithMessage:(MIDIChannelMessage *)message
{
  v5.receiver = self;
  v5.super_class = AVMIDIChannelEvent;
  result = [(AVMIDIChannelEvent *)&v5 init];
  if (result)
  {
    result->_msg = *message;
  }

  return result;
}

- (AVMIDIChannelEvent)initWithChannel:(unsigned __int8)channel status:(unsigned __int8)status data1:(unsigned __int8)data1 data2:(unsigned __int8)data2
{
  v11.receiver = self;
  v11.super_class = AVMIDIChannelEvent;
  result = [(AVMIDIChannelEvent *)&v11 init];
  if (result)
  {
    result->_msg.status = channel & 0xF | status;
    result->_msg.data1 = data1;
    result->_msg.data2 = data2;
    result->_msg.reserved = 0;
  }

  return result;
}

@end