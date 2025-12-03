@interface ARCoachingHeuristicDelay
- (ARCoachingHeuristicDelay)initWithDuration:(double)duration;
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicDelay

- (ARCoachingHeuristicDelay)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = ARCoachingHeuristicDelay;
  result = [(ARCoachingHeuristicDelay *)&v5 init];
  if (result)
  {
    result->_endTime = -1.0;
    result->_duration = duration;
  }

  return result;
}

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  frameCopy = frame;
  if (![(ARCoachingHeuristic *)self satisfied])
  {
    if (self->_endTime < 0.0)
    {
      [frameCopy timestamp];
      self->_endTime = v5 + self->_duration;
    }

    [frameCopy timestamp];
    [(ARCoachingHeuristic *)self setSatisfied:v6 >= self->_endTime];
  }
}

@end