@interface _NSKVODeallocSentinel
+ (void)_havingRegistrationLockHeldAttachSentinelToObjectIfNeeded:(id)needed;
- (id)_initWithObservedObject:(id)object;
- (void)dealloc;
@end

@implementation _NSKVODeallocSentinel

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSKeyValueRemoveObservationInfoForObject(self->_observedObject);
  v3.receiver = self;
  v3.super_class = _NSKVODeallocSentinel;
  [(_NSKVODeallocSentinel *)&v3 dealloc];
}

- (id)_initWithObservedObject:(id)object
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSKVODeallocSentinel;
  result = [(_NSKVODeallocSentinel *)&v5 init];
  if (result)
  {
    *(result + 1) = object;
  }

  return result;
}

+ (void)_havingRegistrationLockHeldAttachSentinelToObjectIfNeeded:(id)needed
{
  Class = object_getClass(needed);
  if (_NSKVOUsesBaseClassObservationInfoImplementationForClass(Class))
  {
    v6 = objc_opt_class();
    if (!objc_getAssociatedObject(needed, v6))
    {
      value = [[self alloc] _initWithObservedObject:needed];
      v7 = objc_opt_class();
      objc_setAssociatedObject(needed, v7, value, 0x10001);
    }
  }
}

@end