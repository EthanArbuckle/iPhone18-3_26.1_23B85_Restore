@interface ATXTimeBucketedRateLimiter
- (ATXTimeBucketedRateLimiter)initWithMaxCount:(unint64_t)a3 perPeriod:(double)a4;
- (BOOL)tryToIncrementCountAndReturnSuccess;
- (NSDate)now;
- (void)_resetBucketIfNeeded;
@end

@implementation ATXTimeBucketedRateLimiter

- (BOOL)tryToIncrementCountAndReturnSuccess
{
  v2 = self;
  objc_sync_enter(v2);
  [(ATXTimeBucketedRateLimiter *)v2 _resetBucketIfNeeded];
  countForCurrentBucket = v2->_countForCurrentBucket;
  maxCount = v2->_maxCount;
  if (countForCurrentBucket != maxCount)
  {
    v2->_countForCurrentBucket = countForCurrentBucket + 1;
  }

  v5 = countForCurrentBucket != maxCount;
  objc_sync_exit(v2);

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

- (ATXTimeBucketedRateLimiter)initWithMaxCount:(unint64_t)a3 perPeriod:(double)a4
{
  v11.receiver = self;
  v11.super_class = ATXTimeBucketedRateLimiter;
  v6 = [(ATXTimeBucketedRateLimiter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxCount = a3;
    v6->_period = a4;
    v6->_countForCurrentBucket = 0;
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    endOfCurrentBucket = v7->_endOfCurrentBucket;
    v7->_endOfCurrentBucket = v8;
  }

  return v7;
}

@end