@interface _LSEligibilityListenerNotificationToken
- (_LSEligibilityListenerNotificationToken)initWithEligibilityCache:(void *)a3;
- (void)dealloc;
@end

@implementation _LSEligibilityListenerNotificationToken

- (_LSEligibilityListenerNotificationToken)initWithEligibilityCache:(void *)a3
{
  v5.receiver = self;
  v5.super_class = _LSEligibilityListenerNotificationToken;
  result = [(_LSEligibilityListenerNotificationToken *)&v5 init];
  if (result)
  {
    result->_cache = a3;
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