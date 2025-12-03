@interface AVMIDIProgramChangeEvent
- (AVMIDIProgramChangeEvent)initWithChannel:(UInt32)channel programNumber:(UInt32)programNumber;
- (AVMIDIProgramChangeEvent)initWithMessage:(MIDIChannelMessage *)message;
@end

@implementation AVMIDIProgramChangeEvent

- (AVMIDIProgramChangeEvent)initWithMessage:(MIDIChannelMessage *)message
{
  v4.receiver = self;
  v4.super_class = AVMIDIProgramChangeEvent;
  return [(AVMIDIChannelEvent *)&v4 initWithMessage:message];
}

- (AVMIDIProgramChangeEvent)initWithChannel:(UInt32)channel programNumber:(UInt32)programNumber
{
  v5.receiver = self;
  v5.super_class = AVMIDIProgramChangeEvent;
  return [(AVMIDIChannelEvent *)&v5 initWithChannel:channel status:192 data1:programNumber data2:0];
}

@end