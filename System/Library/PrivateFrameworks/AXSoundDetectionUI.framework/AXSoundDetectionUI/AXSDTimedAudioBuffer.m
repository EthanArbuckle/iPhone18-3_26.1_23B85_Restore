@interface AXSDTimedAudioBuffer
- (AXSDTimedAudioBuffer)initWithBuffer:(id)a3 atTime:(id)a4;
@end

@implementation AXSDTimedAudioBuffer

- (AXSDTimedAudioBuffer)initWithBuffer:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXSDTimedAudioBuffer;
  v8 = [(AXSDTimedAudioBuffer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXSDTimedAudioBuffer *)v8 setBuffer:v6];
    [(AXSDTimedAudioBuffer *)v9 setTime:v7];
  }

  return v9;
}

@end