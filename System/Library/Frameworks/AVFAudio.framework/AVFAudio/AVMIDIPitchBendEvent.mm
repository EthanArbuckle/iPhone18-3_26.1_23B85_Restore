@interface AVMIDIPitchBendEvent
- (AVMIDIPitchBendEvent)initWithChannel:(UInt32)channel value:(UInt32)value;
- (AVMIDIPitchBendEvent)initWithMessage:(MIDIChannelMessage *)a3;
- (void)setValue:(UInt32)value;
@end

@implementation AVMIDIPitchBendEvent

- (AVMIDIPitchBendEvent)initWithMessage:(MIDIChannelMessage *)a3
{
  v4.receiver = self;
  v4.super_class = AVMIDIPitchBendEvent;
  return [(AVMIDIChannelEvent *)&v4 initWithMessage:a3];
}

- (void)setValue:(UInt32)value
{
  [(AVMIDIChannelEvent *)self setData1:value];

  [(AVMIDIChannelEvent *)self setData2:(value >> 7)];
}

- (AVMIDIPitchBendEvent)initWithChannel:(UInt32)channel value:(UInt32)value
{
  v5.receiver = self;
  v5.super_class = AVMIDIPitchBendEvent;
  return [(AVMIDIChannelEvent *)&v5 initWithChannel:channel status:224 data1:value data2:(value >> 7)];
}

@end