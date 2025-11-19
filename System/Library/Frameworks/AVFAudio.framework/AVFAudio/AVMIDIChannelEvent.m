@interface AVMIDIChannelEvent
- (AVMIDIChannelEvent)initWithChannel:(unsigned __int8)a3 status:(unsigned __int8)a4 data1:(unsigned __int8)a5 data2:(unsigned __int8)a6;
- (AVMIDIChannelEvent)initWithMessage:(MIDIChannelMessage *)a3;
@end

@implementation AVMIDIChannelEvent

- (AVMIDIChannelEvent)initWithMessage:(MIDIChannelMessage *)a3
{
  v5.receiver = self;
  v5.super_class = AVMIDIChannelEvent;
  result = [(AVMIDIChannelEvent *)&v5 init];
  if (result)
  {
    result->_msg = *a3;
  }

  return result;
}

- (AVMIDIChannelEvent)initWithChannel:(unsigned __int8)a3 status:(unsigned __int8)a4 data1:(unsigned __int8)a5 data2:(unsigned __int8)a6
{
  v11.receiver = self;
  v11.super_class = AVMIDIChannelEvent;
  result = [(AVMIDIChannelEvent *)&v11 init];
  if (result)
  {
    result->_msg.status = a3 & 0xF | a4;
    result->_msg.data1 = a5;
    result->_msg.data2 = a6;
    result->_msg.reserved = 0;
  }

  return result;
}

@end