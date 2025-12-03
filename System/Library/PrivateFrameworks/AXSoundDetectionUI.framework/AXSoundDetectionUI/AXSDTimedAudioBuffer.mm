@interface AXSDTimedAudioBuffer
- (AXSDTimedAudioBuffer)initWithBuffer:(id)buffer atTime:(id)time;
@end

@implementation AXSDTimedAudioBuffer

- (AXSDTimedAudioBuffer)initWithBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = AXSDTimedAudioBuffer;
  v8 = [(AXSDTimedAudioBuffer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXSDTimedAudioBuffer *)v8 setBuffer:bufferCopy];
    [(AXSDTimedAudioBuffer *)v9 setTime:timeCopy];
  }

  return v9;
}

@end