@interface AVMIDIChannelPressureEvent
- (AVMIDIChannelPressureEvent)initWithChannel:(UInt32)channel pressure:(UInt32)pressure;
- (AVMIDIChannelPressureEvent)initWithMessage:(MIDIChannelMessage *)a3;
@end

@implementation AVMIDIChannelPressureEvent

- (AVMIDIChannelPressureEvent)initWithMessage:(MIDIChannelMessage *)a3
{
  v4.receiver = self;
  v4.super_class = AVMIDIChannelPressureEvent;
  return [(AVMIDIChannelEvent *)&v4 initWithMessage:a3];
}

- (AVMIDIChannelPressureEvent)initWithChannel:(UInt32)channel pressure:(UInt32)pressure
{
  v5.receiver = self;
  v5.super_class = AVMIDIChannelPressureEvent;
  return [(AVMIDIChannelEvent *)&v5 initWithChannel:channel status:208 data1:pressure data2:0];
}

@end