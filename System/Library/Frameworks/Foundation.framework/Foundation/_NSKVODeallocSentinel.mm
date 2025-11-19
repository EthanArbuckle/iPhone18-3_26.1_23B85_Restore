@interface _NSKVODeallocSentinel
+ (void)_havingRegistrationLockHeldAttachSentinelToObjectIfNeeded:(id)a3;
- (id)_initWithObservedObject:(id)a3;
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

- (id)_initWithObservedObject:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSKVODeallocSentinel;
  result = [(_NSKVODeallocSentinel *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

+ (void)_havingRegistrationLockHeldAttachSentinelToObjectIfNeeded:(id)a3
{
  Class = object_getClass(a3);
  if (_NSKVOUsesBaseClassObservationInfoImplementationForClass(Class))
  {
    v6 = objc_opt_class();
    if (!objc_getAssociatedObject(a3, v6))
    {
      value = [[a1 alloc] _initWithObservedObject:a3];
      v7 = objc_opt_class();
      objc_setAssociatedObject(a3, v7, value, 0x10001);
    }
  }
}

@end