@interface ASCExponentialBackoff
- (ASCExponentialBackoff)initWithBaseSleepTimeInterval:(double)a3 maxSleepTimeInterval:(double)a4;
- (double)nextSleepTimeInterval;
- (void)reset;
@end

@implementation ASCExponentialBackoff

- (ASCExponentialBackoff)initWithBaseSleepTimeInterval:(double)a3 maxSleepTimeInterval:(double)a4
{
  v11.receiver = self;
  v11.super_class = ASCExponentialBackoff;
  v6 = [(ASCExponentialBackoff *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_baseSleepTimeInterval = a3;
    v6->_maxSleepTimeInterval = a4;
    v8 = objc_alloc_init(MEMORY[0x277D225F0]);
    attemptLock = v7->_attemptLock;
    v7->_attemptLock = v8;

    v7->_attemptsMade = 0;
  }

  return v7;
}

- (double)nextSleepTimeInterval
{
  v3 = [(ASCExponentialBackoff *)self attemptLock];
  [v3 lock];

  v4 = exp2([(ASCExponentialBackoff *)self attemptsMade]);
  [(ASCExponentialBackoff *)self baseSleepTimeInterval];
  v6 = v5 * v4;
  [(ASCExponentialBackoff *)self setAttemptsMade:[(ASCExponentialBackoff *)self attemptsMade]+ 1];
  v7 = [(ASCExponentialBackoff *)self attemptLock];
  [v7 unlock];

  [(ASCExponentialBackoff *)self maxSleepTimeInterval];
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

- (void)reset
{
  v3 = [(ASCExponentialBackoff *)self attemptLock];
  [v3 lock];

  [(ASCExponentialBackoff *)self setAttemptsMade:0];
  v4 = [(ASCExponentialBackoff *)self attemptLock];
  [v4 unlock];
}

@end