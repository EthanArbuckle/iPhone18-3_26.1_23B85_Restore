@interface AVMIDIPolyPressureEvent
- (AVMIDIPolyPressureEvent)initWithChannel:(UInt32)channel key:(UInt32)key pressure:(UInt32)pressure;
- (AVMIDIPolyPressureEvent)initWithMessage:(MIDIChannelMessage *)message;
@end

@implementation AVMIDIPolyPressureEvent

- (AVMIDIPolyPressureEvent)initWithMessage:(MIDIChannelMessage *)message
{
  v4.receiver = self;
  v4.super_class = AVMIDIPolyPressureEvent;
  return [(AVMIDIChannelEvent *)&v4 initWithMessage:message];
}

- (AVMIDIPolyPressureEvent)initWithChannel:(UInt32)channel key:(UInt32)key pressure:(UInt32)pressure
{
  v6.receiver = self;
  v6.super_class = AVMIDIPolyPressureEvent;
  return [(AVMIDIChannelEvent *)&v6 initWithChannel:channel status:160 data1:key data2:pressure];
}

@end