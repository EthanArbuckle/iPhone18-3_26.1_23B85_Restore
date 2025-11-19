@interface AMSMediaTokenServiceBagProperties
- (AMSMediaTokenServiceBagProperties)initWithEnabled:(BOOL)a3 refreshPercentage:(double)a4 refreshTime:(double)a5 anonymousRateLimitingClientIds:(id)a6;
@end

@implementation AMSMediaTokenServiceBagProperties

- (AMSMediaTokenServiceBagProperties)initWithEnabled:(BOOL)a3 refreshPercentage:(double)a4 refreshTime:(double)a5 anonymousRateLimitingClientIds:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = AMSMediaTokenServiceBagProperties;
  v11 = [(AMSMediaTokenServiceBagProperties *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_enabled = a3;
    v11->_refreshPercentage = a4;
    v11->_refreshTime = a5;
    v13 = [v10 copy];
    anonymousRateLimitingClientIds = v12->_anonymousRateLimitingClientIds;
    v12->_anonymousRateLimitingClientIds = v13;
  }

  return v12;
}

@end