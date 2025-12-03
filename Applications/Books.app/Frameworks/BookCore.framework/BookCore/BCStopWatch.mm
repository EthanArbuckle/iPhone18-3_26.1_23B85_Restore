@interface BCStopWatch
+ (id)stopwatch;
+ (id)stopwatchWithDescription:(id)description;
+ (void)initialize;
- (BCStopWatch)init;
- (double)time;
- (id)description;
- (void)report;
- (void)reportWithMarker:(id)marker;
- (void)setDescription:(id)description;
- (void)start;
@end

@implementation BCStopWatch

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    mach_timebase_info(&dword_3421B4);
  }
}

- (BCStopWatch)init
{
  v6.receiver = self;
  v6.super_class = BCStopWatch;
  v2 = [(BCStopWatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)stopwatchWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = objc_opt_new();
  [v4 setDescription:descriptionCopy];

  [v4 start];

  return v4;
}

+ (id)stopwatch
{
  v2 = objc_opt_new();
  [v2 start];

  return v2;
}

- (void)start
{
  self->_startTime = mach_absolute_time();
  description = self->_description;
  if (!description)
  {
    description = &stru_2D2930;
  }

  NSLog(@"<%p> start%@", self, description);
}

- (double)time
{
  v3 = mach_absolute_time();
  LODWORD(v4) = dword_3421B4;
  LODWORD(v5) = *algn_3421B8;
  return (v3 - self->_startTime) * v4 / v5 / 1000000000.0;
}

- (void)setDescription:(id)description
{
  descriptionCopy = description;
  descriptionCopy = [[NSString alloc] initWithFormat:@" %@", descriptionCopy];

  description = self->_description;
  self->_description = descriptionCopy;
}

- (id)description
{
  if (self->_description)
  {
    description = self->_description;
  }

  else
  {
    description = &stru_2D2930;
  }

  [(BCStopWatch *)self time];
  return [NSString stringWithFormat:@"<%p>%@: elapsed time: %0.5f", self, description, v4];
}

- (void)report
{
  v2 = [(BCStopWatch *)self description];
  NSLog(@"%@", v2);
}

- (void)reportWithMarker:(id)marker
{
  markerCopy = marker;
  [(BCStopWatch *)self time];
  description = &stru_2D2930;
  if (self->_description)
  {
    description = self->_description;
  }

  NSLog(@"<%p> [%@] %@: elapsed time: %0.5fs (%0.5fms)", self, markerCopy, description, *&v4, v4 * 1000.0);
}

@end