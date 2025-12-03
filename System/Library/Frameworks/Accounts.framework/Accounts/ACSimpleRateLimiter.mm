@interface ACSimpleRateLimiter
- (ACSimpleRateLimiter)initWithMaximum:(unint64_t)maximum inTimeInterval:(double)interval;
- (BOOL)isEmptyAfterFlushing;
- (BOOL)reservePerformActionNow;
- (NSDate)rateLimitingStartDate;
- (unint64_t)locked_indexOfFirstAfter:(id)after;
- (void)locked_addDate:(id)date;
- (void)locked_removeDatesBefore:(id)before;
@end

@implementation ACSimpleRateLimiter

- (ACSimpleRateLimiter)initWithMaximum:(unint64_t)maximum inTimeInterval:(double)interval
{
  v13.receiver = self;
  v13.super_class = ACSimpleRateLimiter;
  v6 = [(ACSimpleRateLimiter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maximum = maximum;
    v6->_timeInterval = interval;
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    instanceLock = v7->_instanceLock;
    v7->_instanceLock = v8;

    array = [MEMORY[0x1E695DF70] array];
    sortedActionDates = v7->_sortedActionDates;
    v7->_sortedActionDates = array;
  }

  return v7;
}

- (BOOL)reservePerformActionNow
{
  instanceLock = [(ACSimpleRateLimiter *)self instanceLock];
  [instanceLock lock];

  date = [MEMORY[0x1E695DF00] date];
  rateLimitingStartDate = [(ACSimpleRateLimiter *)self rateLimitingStartDate];
  [(ACSimpleRateLimiter *)self locked_removeDatesBefore:rateLimitingStartDate];

  sortedActionDates = [(ACSimpleRateLimiter *)self sortedActionDates];
  v7 = [sortedActionDates count];
  maximum = [(ACSimpleRateLimiter *)self maximum];

  if (v7 < maximum)
  {
    [(ACSimpleRateLimiter *)self locked_addDate:date];
  }

  instanceLock2 = [(ACSimpleRateLimiter *)self instanceLock];
  [instanceLock2 unlock];

  return v7 < maximum;
}

- (BOOL)isEmptyAfterFlushing
{
  instanceLock = [(ACSimpleRateLimiter *)self instanceLock];
  [instanceLock lock];

  rateLimitingStartDate = [(ACSimpleRateLimiter *)self rateLimitingStartDate];
  [(ACSimpleRateLimiter *)self locked_removeDatesBefore:rateLimitingStartDate];

  sortedActionDates = [(ACSimpleRateLimiter *)self sortedActionDates];
  v6 = [sortedActionDates count] == 0;

  instanceLock2 = [(ACSimpleRateLimiter *)self instanceLock];
  [instanceLock2 unlock];

  return v6;
}

- (NSDate)rateLimitingStartDate
{
  v2 = MEMORY[0x1E695DF00];
  [(ACSimpleRateLimiter *)self timeInterval];
  v4 = -v3;

  return [v2 dateWithTimeIntervalSinceNow:v4];
}

- (unint64_t)locked_indexOfFirstAfter:(id)after
{
  afterCopy = after;
  sortedActionDates = [(ACSimpleRateLimiter *)self sortedActionDates];
  sortedActionDates2 = [(ACSimpleRateLimiter *)self sortedActionDates];
  v7 = [sortedActionDates indexOfObject:afterCopy inSortedRange:0 options:objc_msgSend(sortedActionDates2 usingComparator:{"count"), 1024, &__block_literal_global_10}];

  return v7;
}

- (void)locked_removeDatesBefore:(id)before
{
  v4 = [(ACSimpleRateLimiter *)self locked_indexOfFirstAfter:before];
  sortedActionDates = [(ACSimpleRateLimiter *)self sortedActionDates];
  [sortedActionDates removeObjectsInRange:{0, v4}];
}

- (void)locked_addDate:(id)date
{
  dateCopy = date;
  v5 = [(ACSimpleRateLimiter *)self locked_indexOfFirstAfter:dateCopy];
  sortedActionDates = [(ACSimpleRateLimiter *)self sortedActionDates];
  [sortedActionDates insertObject:dateCopy atIndex:v5];
}

@end