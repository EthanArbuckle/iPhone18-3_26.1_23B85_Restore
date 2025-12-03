@interface ATXTimeBucketedRateLimiter
- (ATXTimeBucketedRateLimiter)initWithMaxCount:(unint64_t)count perPeriod:(double)period;
- (BOOL)tryToIncrementCountAndReturnSuccess;
- (NSDate)now;
- (void)_resetBucketIfNeeded;
@end

@implementation ATXTimeBucketedRateLimiter

- (BOOL)tryToIncrementCountAndReturnSuccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ATXTimeBucketedRateLimiter *)selfCopy _resetBucketIfNeeded];
  countForCurrentBucket = selfCopy->_countForCurrentBucket;
  maxCount = selfCopy->_maxCount;
  if (countForCurrentBucket != maxCount)
  {
    selfCopy->_countForCurrentBucket = countForCurrentBucket + 1;
  }

  v5 = countForCurrentBucket != maxCount;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)_resetBucketIfNeeded
{
  endOfCurrentBucket = self->_endOfCurrentBucket;
  v4 = [(ATXTimeBucketedRateLimiter *)self now];
  v5 = [(NSDate *)endOfCurrentBucket earlierDate:v4];
  v6 = self->_endOfCurrentBucket;

  if (v5 == v6)
  {
    self->_countForCurrentBucket = 0;
    v9 = [(ATXTimeBucketedRateLimiter *)self now];
    v7 = [v9 dateByAddingTimeInterval:self->_period];
    v8 = self->_endOfCurrentBucket;
    self->_endOfCurrentBucket = v7;
  }
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (ATXTimeBucketedRateLimiter)initWithMaxCount:(unint64_t)count perPeriod:(double)period
{
  v11.receiver = self;
  v11.super_class = ATXTimeBucketedRateLimiter;
  v6 = [(ATXTimeBucketedRateLimiter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxCount = count;
    v6->_period = period;
    v6->_countForCurrentBucket = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    endOfCurrentBucket = v7->_endOfCurrentBucket;
    v7->_endOfCurrentBucket = distantPast;
  }

  return v7;
}

@end