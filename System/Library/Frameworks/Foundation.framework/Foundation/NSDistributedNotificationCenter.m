@interface NSDistributedNotificationCenter
+ (NSDistributedNotificationCenter)notificationCenterForType:(NSDistributedNotificationCenterType)notificationCenterType;
- (id)addObserverForName:(id)a3 object:(id)a4 suspensionBehavior:(unint64_t)a5 queue:(id)a6 usingBlock:(id)a7;
- (void)addObserver:(id)observer selector:(SEL)selector name:(NSNotificationName)name object:(NSString *)object suspensionBehavior:(NSNotificationSuspensionBehavior)suspensionBehavior;
- (void)postNotification:(id)a3;
- (void)postNotificationName:(NSNotificationName)name object:(NSString *)object userInfo:(NSDictionary *)userInfo options:(NSDistributedNotificationOptions)options;
- (void)removeObserver:(id)observer name:(NSNotificationName)aName object:(NSString *)anObject;
@end

@implementation NSDistributedNotificationCenter

+ (NSDistributedNotificationCenter)notificationCenterForType:(NSDistributedNotificationCenterType)notificationCenterType
{
  os_unfair_lock_lock_with_options();
  Mutable = qword_1ED43F2E0;
  if (!qword_1ED43F2E0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED43F2E0 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, notificationCenterType);
  if (!Value)
  {
    v7 = NSClassFromString(notificationCenterType);
    if (!v7)
    {
      v7 = a1;
    }

    Value = objc_alloc_init(v7);
    if (Value)
    {
      CFDictionarySetValue(qword_1ED43F2E0, notificationCenterType, Value);
    }
  }

  os_unfair_lock_unlock(&stru_1ED43F2C4);
  return Value;
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(NSNotificationName)name object:(NSString *)object suspensionBehavior:(NSNotificationSuspensionBehavior)suspensionBehavior
{
  Class = object_getClass(observer);
  class_isMetaClass(Class);

  _CFXNotificationRegisterObserver();
}

- (id)addObserverForName:(id)a3 object:(id)a4 suspensionBehavior:(unint64_t)a5 queue:(id)a6 usingBlock:(id)a7
{
  if (!a7)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Block cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  v7 = [__NSObserver observerWithCenter:?];
  [v7 setToken:_CFXNotificationRegisterObserver()];
  return v7;
}

- (void)removeObserver:(id)observer name:(NSNotificationName)aName object:(NSString *)anObject
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDistributedNotificationCenter;
  [(NSNotificationCenter *)&v5 removeObserver:observer name:aName object:anObject];
}

- (void)postNotificationName:(NSNotificationName)name object:(NSString *)object userInfo:(NSDictionary *)userInfo options:(NSDistributedNotificationOptions)options
{
  v6 = [[NSNotification alloc] initWithName:name object:object userInfo:userInfo];
  _CFXNotificationPost();
}

- (void)postNotification:(id)a3
{
  if (!a3)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: notification is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v4);
  }

  _CFXNotificationPost();
}

@end