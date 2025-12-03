@interface APSRateLimiter
- (APSRateLimiter)initWithLimit:(int64_t)limit timeLimit:(double)timeLimit;
- (BOOL)_checkIsExpired;
- (BOOL)isUnderLimit;
- (BOOL)isUnset;
- (id)description;
- (void)note;
@end

@implementation APSRateLimiter

- (APSRateLimiter)initWithLimit:(int64_t)limit timeLimit:(double)timeLimit
{
  v7.receiver = self;
  v7.super_class = APSRateLimiter;
  result = [(APSRateLimiter *)&v7 init];
  if (result)
  {
    result->_limit = limit;
    result->_timeLimit = timeLimit;
  }

  return result;
}

- (BOOL)_checkIsExpired
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3 - self->_startInterval;
  [(APSRateLimiter *)self timeLimit];
  if (v4 > v5)
  {
    self->_startInterval = -1.0;
    self->_notedCount = 0;
  }

  return v4 > v5;
}

- (void)note
{
  if ([(APSRateLimiter *)self _checkIsExpired]|| self->_startInterval == -1.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->_startInterval = v3;
  }

  ++self->_notedCount;
}

- (BOOL)isUnderLimit
{
  result = [(APSRateLimiter *)self _checkIsExpired];
  if (self->_notedCount < self->_limit)
  {
    return 1;
  }

  return result;
}

- (BOOL)isUnset
{
  if (self->_notedCount)
  {
    return [(APSRateLimiter *)self _checkIsExpired];
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  if (self->_startInterval == -1.0)
  {
    v4 = 0.0;
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v4 = v3 - self->_startInterval;
  }

  return [NSString stringWithFormat:@"<%@: %p> limit: %ld timeLimit: %f notedCount: %ld timeSinceStartInterval: %f", objc_opt_class(), self, self->_limit, *&self->_timeLimit, self->_notedCount, *&v4];
}

@end