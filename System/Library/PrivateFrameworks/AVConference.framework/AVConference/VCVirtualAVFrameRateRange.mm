@interface VCVirtualAVFrameRateRange
- (VCVirtualAVFrameRateRange)initWithMinFrameRate:(double)a3 maxFrameRate:(double)a4;
@end

@implementation VCVirtualAVFrameRateRange

- (VCVirtualAVFrameRateRange)initWithMinFrameRate:(double)a3 maxFrameRate:(double)a4
{
  v8 = *MEMORY[0x1E69E9840];
  self->_virtualMinFrameRate = a3;
  self->_virtualMaxFrameRate = a4;
  p_virtualMinFrameDuration = &self->_virtualMinFrameDuration;
  CMTimeMake(&v7, 1, a4);
  *p_virtualMinFrameDuration = v7;
  CMTimeMake(&v7, 1, self->_virtualMinFrameRate);
  self->_virtualMaxFrameDuration = v7;
  return self;
}

@end