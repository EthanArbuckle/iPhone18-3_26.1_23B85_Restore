@interface ASCJitterBackoff
- (ASCJitterBackoff)initWithBaseSleepTimeInterval:(double)interval maxSleepTimeInterval:(double)timeInterval;
- (double)nextSleepTimeInterval;
- (void)reset;
@end

@implementation ASCJitterBackoff

- (ASCJitterBackoff)initWithBaseSleepTimeInterval:(double)interval maxSleepTimeInterval:(double)timeInterval
{
  v10.receiver = self;
  v10.super_class = ASCJitterBackoff;
  v6 = [(ASCJitterBackoff *)&v10 init];
  if (v6)
  {
    v7 = [[ASCExponentialBackoff alloc] initWithBaseSleepTimeInterval:interval maxSleepTimeInterval:timeInterval];
    exponentialBackoff = v6->_exponentialBackoff;
    v6->_exponentialBackoff = v7;
  }

  return v6;
}

- (double)nextSleepTimeInterval
{
  v3 = arc4random() / 4294967300.0;
  exponentialBackoff = [(ASCJitterBackoff *)self exponentialBackoff];
  [exponentialBackoff nextSleepTimeInterval];
  v6 = v3 * v5;

  return v6;
}

- (void)reset
{
  exponentialBackoff = [(ASCJitterBackoff *)self exponentialBackoff];
  [exponentialBackoff reset];
}

@end