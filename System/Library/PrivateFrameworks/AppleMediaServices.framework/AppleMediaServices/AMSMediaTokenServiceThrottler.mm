@interface AMSMediaTokenServiceThrottler
- (AMSMediaTokenServiceThrottler)initWithBaseSleepInterval:(double)a3 maxSleepInterval:(double)a4;
- (BOOL)shouldThrottle;
- (double)_calculateThrottleInterval;
- (void)reset;
- (void)setBaseSleepInterval:(double)a3 maxSleepInterval:(double)a4;
- (void)throttle;
@end

@implementation AMSMediaTokenServiceThrottler

- (void)reset
{
  [(AMSMediaTokenServiceThrottler *)self setThrottleDate:0];

  [(AMSMediaTokenServiceThrottler *)self setAttemptNumber:0];
}

- (AMSMediaTokenServiceThrottler)initWithBaseSleepInterval:(double)a3 maxSleepInterval:(double)a4
{
  v9.receiver = self;
  v9.super_class = AMSMediaTokenServiceThrottler;
  v6 = [(AMSMediaTokenServiceThrottler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_baseSleepInterval = a3;
    v6->_maxSleepInterval = a4;
    v6->_accessLock._os_unfair_lock_opaque = 0;
    [(AMSMediaTokenServiceThrottler *)v6 reset];
  }

  return v7;
}

- (BOOL)shouldThrottle
{
  v2 = [(AMSMediaTokenServiceThrottler *)self throttleDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 > 0.0;

  return v4;
}

- (void)throttle
{
  [(AMSMediaTokenServiceThrottler *)self _calculateThrottleInterval];
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v3];
  [(AMSMediaTokenServiceThrottler *)self setThrottleDate:v4];

  v5 = [(AMSMediaTokenServiceThrottler *)self attemptNumber]+ 1;

  [(AMSMediaTokenServiceThrottler *)self setAttemptNumber:v5];
}

- (void)setBaseSleepInterval:(double)a3 maxSleepInterval:(double)a4
{
  os_unfair_lock_lock(&self->_accessLock);
  self->_baseSleepInterval = a3;
  self->_maxSleepInterval = a4;

  os_unfair_lock_unlock(&self->_accessLock);
}

- (double)_calculateThrottleInterval
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(AMSMediaTokenServiceThrottler *)self attemptNumber];
  [(AMSMediaTokenServiceThrottler *)self baseSleepInterval];
  v5 = exp2(v4 * v3);
  [(AMSMediaTokenServiceThrottler *)self maxSleepInterval];
  if (v5 < v6)
  {
    v6 = v5;
  }

  v7 = arc4random_uniform(v6);
  os_unfair_lock_unlock(&self->_accessLock);
  return v7;
}

@end