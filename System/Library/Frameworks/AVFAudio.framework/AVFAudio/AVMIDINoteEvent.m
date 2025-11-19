@interface AVMIDINoteEvent
- (AVMIDINoteEvent)initWithChannel:(UInt32)channel key:(UInt32)keyNum velocity:(UInt32)velocity duration:(AVMusicTimeStamp)duration;
- (AVMIDINoteEvent)initWithMessage:(MIDINoteMessage *)a3;
@end

@implementation AVMIDINoteEvent

- (AVMIDINoteEvent)initWithMessage:(MIDINoteMessage *)a3
{
  v5.receiver = self;
  v5.super_class = AVMIDINoteEvent;
  result = [(AVMIDINoteEvent *)&v5 init];
  if (result)
  {
    result->_msg = *a3;
  }

  return result;
}

- (AVMIDINoteEvent)initWithChannel:(UInt32)channel key:(UInt32)keyNum velocity:(UInt32)velocity duration:(AVMusicTimeStamp)duration
{
  v7 = velocity;
  v8 = keyNum;
  v9 = channel;
  v12.receiver = self;
  v12.super_class = AVMIDINoteEvent;
  result = [(AVMIDINoteEvent *)&v12 init];
  if (result)
  {
    result->_msg.channel = v9;
    result->_msg.note = v8;
    result->_msg.velocity = v7;
    result->_msg.releaseVelocity = 0;
    v11 = duration;
    result->_msg.duration = v11;
  }

  return result;
}

@end