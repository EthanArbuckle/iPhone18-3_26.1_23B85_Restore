@interface PHFetchLogRateLimiter
+ (PHFetchLogRateLimiter)sharedRateLimiter;
- (PHFetchLogRateLimiter)init;
- (unsigned)rateLimitedLogForErrorLog;
- (unsigned)rateLimitedLogForFaultLog;
- (unsigned)rateLimitedLogLevelForLogForLevel:(unsigned __int8)a3;
@end

@implementation PHFetchLogRateLimiter

+ (PHFetchLogRateLimiter)sharedRateLimiter
{
  pl_dispatch_once();
  v2 = sharedRateLimiter_pl_once_object_17;

  return v2;
}

- (unsigned)rateLimitedLogForErrorLog
{
  if (([(PFTokenBucket *)self->_errorTokenBucket removeToken]& 1) != 0)
  {
    return 16;
  }

  return [(PHFetchLogRateLimiter *)self rateLimitedLogForDefaultLog];
}

- (unsigned)rateLimitedLogForFaultLog
{
  if (([(PFTokenBucket *)self->_faultTokenBucket removeToken]& 1) != 0)
  {
    return 17;
  }

  return [(PHFetchLogRateLimiter *)self rateLimitedLogForErrorLog];
}

- (unsigned)rateLimitedLogLevelForLogForLevel:(unsigned __int8)a3
{
  if (a3 == 16)
  {
    return [(PHFetchLogRateLimiter *)self rateLimitedLogForErrorLog];
  }

  if (a3 == 17)
  {
    return [(PHFetchLogRateLimiter *)self rateLimitedLogForFaultLog];
  }

  return a3;
}

- (PHFetchLogRateLimiter)init
{
  v11.receiver = self;
  v11.super_class = PHFetchLogRateLimiter;
  v2 = [(PHFetchLogRateLimiter *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69BDD88]) initWithName:@"fetch log fault" capacity:1 refillPeriod:3600];
    faultTokenBucket = v2->_faultTokenBucket;
    v2->_faultTokenBucket = v3;

    v5 = [objc_alloc(MEMORY[0x1E69BDD88]) initWithName:@"fetch log error" capacity:10 refillPeriod:60];
    errorTokenBucket = v2->_errorTokenBucket;
    v2->_errorTokenBucket = v5;

    v7 = [objc_alloc(MEMORY[0x1E69BDD88]) initWithName:@"fetch log default" capacity:20 refillRate:1];
    defaultTokenBucket = v2->_defaultTokenBucket;
    v2->_defaultTokenBucket = v7;

    v9 = v2;
  }

  return v2;
}

uint64_t __42__PHFetchLogRateLimiter_sharedRateLimiter__block_invoke()
{
  sharedRateLimiter_pl_once_object_17 = objc_alloc_init(PHFetchLogRateLimiter);

  return MEMORY[0x1EEE66BB8]();
}

@end