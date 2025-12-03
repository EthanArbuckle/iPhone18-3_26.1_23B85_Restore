@interface ARCoachingAnimTime
- (ARCoachingAnimTime)init;
- (void)setAbsoluteTime:(double)time;
- (void)setStartTime:(double)time;
@end

@implementation ARCoachingAnimTime

- (void)setAbsoluteTime:(double)time
{
  self->_absoluteTime = time;
  [(ARCoachingAnimTime *)self startTime];
  v6 = time - v5;
  self->_delta = time - v5;
  [(ARCoachingAnimTime *)self duration];
  self->_deltaPercentage = fmin(fmax(v6 / v7, 0.0), 1.0);
  *&v7 = time * 5.0;
  self->_oscillatingTime = sinf(*&v7) * 0.5 + 0.5;
}

- (void)setStartTime:(double)time
{
  [(ARCoachingAnimTime *)self absoluteTime];
  if (v5 > time)
  {
    [ARCoachingAnimTime setStartTime:];
  }

  self->_startTime = time;
}

- (ARCoachingAnimTime)init
{
  v5.receiver = self;
  v5.super_class = ARCoachingAnimTime;
  v2 = [(ARCoachingAnimTime *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ARCoachingAnimTime *)v2 setDuration:1.0];
    v3->_deltaPercentage = 0.0;
    *&v3->_oscillatingTime = 0u;
    *&v3->_absoluteTime = 0u;
  }

  return v3;
}

@end