@interface _NCWidgetControllerRequestLimiter
+ (id)sharedInstance;
- (BOOL)isRequestPermitted;
@end

@implementation _NCWidgetControllerRequestLimiter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___NCWidgetControllerRequestLimiter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

- (BOOL)isRequestPermitted
{
  v3 = [MEMORY[0x277CBEAA8] date];
  p_lastRequestDate = &self->_lastRequestDate;
  lastRequestDate = self->_lastRequestDate;
  if (!lastRequestDate)
  {
    objc_storeStrong(&self->_lastRequestDate, v3);
    lastRequestDate = *p_lastRequestDate;
  }

  [(NSDate *)v3 timeIntervalSinceDate:lastRequestDate];
  if (v6 <= 1.0)
  {
    requestCount = self->_requestCount;
    self->_requestCount = requestCount + 1;
    isThrottled = self->_isThrottled;
    v10 = 10;
    if (isThrottled)
    {
      v10 = 2;
    }

    v7 = requestCount < v10;
    v11 = requestCount >= v10 || self->_isThrottled;
    self->_isThrottled = v11;
    if (!isThrottled && requestCount >= v10)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      NSLog(&cfstr_TooManyRequest.isa, v13);

      v7 = 0;
    }
  }

  else
  {
    self->_requestCount = 0;
    v7 = 1;
    if (v6 > 5.0 && self->_isThrottled)
    {
      self->_isThrottled = 0;
    }
  }

  v14 = *p_lastRequestDate;
  *p_lastRequestDate = v3;

  return v7;
}

@end