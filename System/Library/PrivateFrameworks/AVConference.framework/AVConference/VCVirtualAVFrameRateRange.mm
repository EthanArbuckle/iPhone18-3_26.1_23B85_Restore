@interface VCVirtualAVFrameRateRange
- (VCVirtualAVFrameRateRange)initWithMinFrameRate:(double)rate maxFrameRate:(double)frameRate;
@end

@implementation VCVirtualAVFrameRateRange

- (VCVirtualAVFrameRateRange)initWithMinFrameRate:(double)rate maxFrameRate:(double)frameRate
{
  v8 = *MEMORY[0x1E69E9840];
  self->_virtualMinFrameRate = rate;
  self->_virtualMaxFrameRate = frameRate;
  p_virtualMinFrameDuration = &self->_virtualMinFrameDuration;
  CMTimeMake(&v7, 1, frameRate);
  *p_virtualMinFrameDuration = v7;
  CMTimeMake(&v7, 1, self->_virtualMinFrameRate);
  self->_virtualMaxFrameDuration = v7;
  return self;
}

@end