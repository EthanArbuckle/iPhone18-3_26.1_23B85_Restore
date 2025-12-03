@interface VCIDRSchedulerStream
+ (id)schedulerStreamWithKeyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate weightFactor:(unsigned int)factor;
- (VCIDRSchedulerStream)initWithKeyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate weightFactor:(unsigned int)factor;
- (id)description;
- (int64_t)compareWeightFactor:(id)factor;
@end

@implementation VCIDRSchedulerStream

+ (id)schedulerStreamWithKeyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate weightFactor:(unsigned int)factor
{
  v5 = [[VCIDRSchedulerStream alloc] initWithKeyFrameInterval:*&interval framerate:*&framerate weightFactor:*&factor];

  return v5;
}

- (VCIDRSchedulerStream)initWithKeyFrameInterval:(unsigned int)interval framerate:(unsigned int)framerate weightFactor:(unsigned int)factor
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCIDRSchedulerStream;
  result = [(VCIDRSchedulerStream *)&v9 init];
  if (result)
  {
    result->_keyFrameInterval = interval;
    result->_framerate = framerate;
    result->_weightFactor = factor;
  }

  return result;
}

- (int64_t)compareWeightFactor:(id)factor
{
  weightFactor = self->_weightFactor;
  if (weightFactor > [factor weightFactor])
  {
    return -1;
  }

  v7 = self->_weightFactor;
  return v7 != [factor weightFactor];
}

- (id)description
{
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stream: KeyInterval=%d, framerate=%d, weightFactor:%d", self->_keyFrameInterval, self->_framerate, self->_weightFactor];
  if (self->_framesPerIdrPeriod)
  {
    return [result stringByAppendingFormat:@" => FramesPerPeriod:%d FramePosition:%d", self->_framesPerIdrPeriod, self->_framePosition];
  }

  return result;
}

@end