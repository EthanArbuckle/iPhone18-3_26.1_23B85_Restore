@interface AVMIDIControlChangeEvent
- (AVMIDIControlChangeEvent)initWithChannel:(UInt32)channel messageType:(AVMIDIControlChangeMessageType)messageType value:(UInt32)value;
- (AVMIDIControlChangeEvent)initWithMessage:(MIDIChannelMessage *)message;
@end

@implementation AVMIDIControlChangeEvent

- (AVMIDIControlChangeEvent)initWithMessage:(MIDIChannelMessage *)message
{
  v4.receiver = self;
  v4.super_class = AVMIDIControlChangeEvent;
  return [(AVMIDIChannelEvent *)&v4 initWithMessage:message];
}

- (AVMIDIControlChangeEvent)initWithChannel:(UInt32)channel messageType:(AVMIDIControlChangeMessageType)messageType value:(UInt32)value
{
  v6.receiver = self;
  v6.super_class = AVMIDIControlChangeEvent;
  return [(AVMIDIChannelEvent *)&v6 initWithChannel:channel status:176 data1:messageType data2:value];
}

@end