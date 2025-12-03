@interface AMSMediaTokenServiceBagProperties
- (AMSMediaTokenServiceBagProperties)initWithEnabled:(BOOL)enabled refreshPercentage:(double)percentage refreshTime:(double)time anonymousRateLimitingClientIds:(id)ids;
@end

@implementation AMSMediaTokenServiceBagProperties

- (AMSMediaTokenServiceBagProperties)initWithEnabled:(BOOL)enabled refreshPercentage:(double)percentage refreshTime:(double)time anonymousRateLimitingClientIds:(id)ids
{
  idsCopy = ids;
  v16.receiver = self;
  v16.super_class = AMSMediaTokenServiceBagProperties;
  v11 = [(AMSMediaTokenServiceBagProperties *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_enabled = enabled;
    v11->_refreshPercentage = percentage;
    v11->_refreshTime = time;
    v13 = [idsCopy copy];
    anonymousRateLimitingClientIds = v12->_anonymousRateLimitingClientIds;
    v12->_anonymousRateLimitingClientIds = v13;
  }

  return v12;
}

@end