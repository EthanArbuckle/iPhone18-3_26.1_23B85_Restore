@interface VCIDRSchedulerStream
+ (id)schedulerStreamWithKeyFrameInterval:(unsigned int)a3 framerate:(unsigned int)a4 weightFactor:(unsigned int)a5;
- (VCIDRSchedulerStream)initWithKeyFrameInterval:(unsigned int)a3 framerate:(unsigned int)a4 weightFactor:(unsigned int)a5;
- (id)description;
- (int64_t)compareWeightFactor:(id)a3;
@end

@implementation VCIDRSchedulerStream

+ (id)schedulerStreamWithKeyFrameInterval:(unsigned int)a3 framerate:(unsigned int)a4 weightFactor:(unsigned int)a5
{
  v5 = [[VCIDRSchedulerStream alloc] initWithKeyFrameInterval:*&a3 framerate:*&a4 weightFactor:*&a5];

  return v5;
}

- (VCIDRSchedulerStream)initWithKeyFrameInterval:(unsigned int)a3 framerate:(unsigned int)a4 weightFactor:(unsigned int)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCIDRSchedulerStream;
  result = [(VCIDRSchedulerStream *)&v9 init];
  if (result)
  {
    result->_keyFrameInterval = a3;
    result->_framerate = a4;
    result->_weightFactor = a5;
  }

  return result;
}

- (int64_t)compareWeightFactor:(id)a3
{
  weightFactor = self->_weightFactor;
  if (weightFactor > [a3 weightFactor])
  {
    return -1;
  }

  v7 = self->_weightFactor;
  return v7 != [a3 weightFactor];
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