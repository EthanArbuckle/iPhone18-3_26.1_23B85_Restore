@interface _LSEligibilityListenerNotificationToken
- (_LSEligibilityListenerNotificationToken)initWithEligibilityCache:(void *)cache;
- (void)dealloc;
@end

@implementation _LSEligibilityListenerNotificationToken

- (_LSEligibilityListenerNotificationToken)initWithEligibilityCache:(void *)cache
{
  v5.receiver = self;
  v5.super_class = _LSEligibilityListenerNotificationToken;
  result = [(_LSEligibilityListenerNotificationToken *)&v5 init];
  if (result)
  {
    result->_cache = cache;
  }

  return result;
}

- (void)dealloc
{
  LaunchServices::EligibilityCache::removeEligibilityChangedListener(self->_cache, self);
  v3.receiver = self;
  v3.super_class = _LSEligibilityListenerNotificationToken;
  [(_LSEligibilityListenerNotificationToken *)&v3 dealloc];
}

@end