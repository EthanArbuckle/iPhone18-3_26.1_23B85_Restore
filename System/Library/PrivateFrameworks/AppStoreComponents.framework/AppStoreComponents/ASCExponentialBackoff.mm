@interface ASCExponentialBackoff
- (ASCExponentialBackoff)initWithBaseSleepTimeInterval:(double)interval maxSleepTimeInterval:(double)timeInterval;
- (double)nextSleepTimeInterval;
- (void)reset;
@end

@implementation ASCExponentialBackoff

- (ASCExponentialBackoff)initWithBaseSleepTimeInterval:(double)interval maxSleepTimeInterval:(double)timeInterval
{
  v11.receiver = self;
  v11.super_class = ASCExponentialBackoff;
  v6 = [(ASCExponentialBackoff *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_baseSleepTimeInterval = interval;
    v6->_maxSleepTimeInterval = timeInterval;
    v8 = objc_alloc_init(MEMORY[0x277D225F0]);
    attemptLock = v7->_attemptLock;
    v7->_attemptLock = v8;

    v7->_attemptsMade = 0;
  }

  return v7;
}

- (double)nextSleepTimeInterval
{
  attemptLock = [(ASCExponentialBackoff *)self attemptLock];
  [attemptLock lock];

  v4 = exp2([(ASCExponentialBackoff *)self attemptsMade]);
  [(ASCExponentialBackoff *)self baseSleepTimeInterval];
  v6 = v5 * v4;
  [(ASCExponentialBackoff *)self setAttemptsMade:[(ASCExponentialBackoff *)self attemptsMade]+ 1];
  attemptLock2 = [(ASCExponentialBackoff *)self attemptLock];
  [attemptLock2 unlock];

  [(ASCExponentialBackoff *)self maxSleepTimeInterval];
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

- (void)reset
{
  attemptLock = [(ASCExponentialBackoff *)self attemptLock];
  [attemptLock lock];

  [(ASCExponentialBackoff *)self setAttemptsMade:0];
  attemptLock2 = [(ASCExponentialBackoff *)self attemptLock];
  [attemptLock2 unlock];
}

@end