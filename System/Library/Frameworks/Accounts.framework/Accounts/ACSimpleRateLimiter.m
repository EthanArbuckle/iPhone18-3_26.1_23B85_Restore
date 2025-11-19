@interface ACSimpleRateLimiter
- (ACSimpleRateLimiter)initWithMaximum:(unint64_t)a3 inTimeInterval:(double)a4;
- (BOOL)isEmptyAfterFlushing;
- (BOOL)reservePerformActionNow;
- (NSDate)rateLimitingStartDate;
- (unint64_t)locked_indexOfFirstAfter:(id)a3;
- (void)locked_addDate:(id)a3;
- (void)locked_removeDatesBefore:(id)a3;
@end

@implementation ACSimpleRateLimiter

- (ACSimpleRateLimiter)initWithMaximum:(unint64_t)a3 inTimeInterval:(double)a4
{
  v13.receiver = self;
  v13.super_class = ACSimpleRateLimiter;
  v6 = [(ACSimpleRateLimiter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maximum = a3;
    v6->_timeInterval = a4;
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    instanceLock = v7->_instanceLock;
    v7->_instanceLock = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    sortedActionDates = v7->_sortedActionDates;
    v7->_sortedActionDates = v10;
  }

  return v7;
}

- (BOOL)reservePerformActionNow
{
  v3 = [(ACSimpleRateLimiter *)self instanceLock];
  [v3 lock];

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(ACSimpleRateLimiter *)self rateLimitingStartDate];
  [(ACSimpleRateLimiter *)self locked_removeDatesBefore:v5];

  v6 = [(ACSimpleRateLimiter *)self sortedActionDates];
  v7 = [v6 count];
  v8 = [(ACSimpleRateLimiter *)self maximum];

  if (v7 < v8)
  {
    [(ACSimpleRateLimiter *)self locked_addDate:v4];
  }

  v9 = [(ACSimpleRateLimiter *)self instanceLock];
  [v9 unlock];

  return v7 < v8;
}

- (BOOL)isEmptyAfterFlushing
{
  v3 = [(ACSimpleRateLimiter *)self instanceLock];
  [v3 lock];

  v4 = [(ACSimpleRateLimiter *)self rateLimitingStartDate];
  [(ACSimpleRateLimiter *)self locked_removeDatesBefore:v4];

  v5 = [(ACSimpleRateLimiter *)self sortedActionDates];
  v6 = [v5 count] == 0;

  v7 = [(ACSimpleRateLimiter *)self instanceLock];
  [v7 unlock];

  return v6;
}

- (NSDate)rateLimitingStartDate
{
  v2 = MEMORY[0x1E695DF00];
  [(ACSimpleRateLimiter *)self timeInterval];
  v4 = -v3;

  return [v2 dateWithTimeIntervalSinceNow:v4];
}

- (unint64_t)locked_indexOfFirstAfter:(id)a3
{
  v4 = a3;
  v5 = [(ACSimpleRateLimiter *)self sortedActionDates];
  v6 = [(ACSimpleRateLimiter *)self sortedActionDates];
  v7 = [v5 indexOfObject:v4 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 1024, &__block_literal_global_10}];

  return v7;
}

- (void)locked_removeDatesBefore:(id)a3
{
  v4 = [(ACSimpleRateLimiter *)self locked_indexOfFirstAfter:a3];
  v5 = [(ACSimpleRateLimiter *)self sortedActionDates];
  [v5 removeObjectsInRange:{0, v4}];
}

- (void)locked_addDate:(id)a3
{
  v4 = a3;
  v5 = [(ACSimpleRateLimiter *)self locked_indexOfFirstAfter:v4];
  v6 = [(ACSimpleRateLimiter *)self sortedActionDates];
  [v6 insertObject:v4 atIndex:v5];
}

@end