@interface AVPlannedSegmentConfiguration
- (AVPlannedSegmentConfiguration)initWithDuration:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation AVPlannedSegmentConfiguration

- (AVPlannedSegmentConfiguration)initWithDuration:(id *)a3
{
  if ((a3->var2 & 0x1D) != 1 || (time1 = *a3, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) <= 0))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"duration must be numeric and greater than 0." userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = AVPlannedSegmentConfiguration;
  result = [(AVPlannedSegmentConfiguration *)&v7 init];
  if (result)
  {
    v6 = *&a3->var0;
    result->_duration.epoch = a3->var3;
    *&result->_duration.value = v6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a3 duration];
  duration = self->_duration;
  return CMTimeCompare(&duration, &time2) == 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    [(AVPlannedSegmentConfiguration *)self duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return [v3 stringWithFormat:@"<%@: %p, duration = %1.3f>", v5, self, CMTimeGetSeconds(&time)];
}

@end