@interface AVPlannedVideoSegmentConfiguration
- (AVPlannedVideoSegmentConfiguration)initWithNumberOfFrames:(int64_t)a3 duration:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation AVPlannedVideoSegmentConfiguration

- (AVPlannedVideoSegmentConfiguration)initWithNumberOfFrames:(int64_t)a3 duration:(id *)a4
{
  if (a3 <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"frameCount must be greater than 0." userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = AVPlannedVideoSegmentConfiguration;
  v6 = *a4;
  result = [(AVPlannedSegmentConfiguration *)&v7 initWithDuration:&v6];
  if (result)
  {
    result->_frameCount = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  frameCount = self->_frameCount;
  if (frameCount != [a3 frameCount])
  {
    return 0;
  }

  [(AVPlannedSegmentConfiguration *)self duration];
  [a3 duration];
  return CMTimeCompare(&time1, &v9) == 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVPlannedVideoSegmentConfiguration *)self frameCount];
  if (self)
  {
    [(AVPlannedSegmentConfiguration *)self duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return [v3 stringWithFormat:@"<%@: %p, frameCount = %ld, duration = %1.3f>", v5, self, v6, CMTimeGetSeconds(&time)];
}

@end