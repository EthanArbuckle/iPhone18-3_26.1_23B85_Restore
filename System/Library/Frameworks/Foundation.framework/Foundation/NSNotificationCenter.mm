@interface NSNotificationCenter
+ (NSNotificationCenter)defaultCenter;
+ (id)_defaultCenterWithoutCreating;
- (NSNotificationCenter)init;
- (id)_getActorQueueManager;
- (id)_initWithCFNotificationCenter:(__CFNotificationCenter *)center;
- (id)addObserverForName:(NSNotificationName)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void *)block;
- (id)debugDescription;
- (id)description;
- (unint64_t)_addObserver:(id)observer object:(id)object usingBlock:(id)block;
- (unint64_t)_addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object options:(unint64_t)options;
- (void)_removeObserver:(unint64_t)observer performSubclassCheck:(BOOL)check;
- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSNotificationName)aName object:(id)anObject;
- (void)dealloc;
- (void)postNotification:(NSNotification *)notification;
- (void)postNotificationName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
- (void)removeObserver:(id)observer name:(NSNotificationName)aName object:(id)anObject;
@end

@implementation NSNotificationCenter

+ (NSNotificationCenter)defaultCenter
{
  if (NSNotificationCenter == self)
  {
    if (qword_1ED43F2F0 != -1)
    {
      dispatch_once(&qword_1ED43F2F0, &__block_literal_global_179);
    }

    return atomic_load(&qword_1ED43F2E8);
  }

  else
  {
    os_unfair_lock_lock_with_options();
    Mutable = qword_1ED43F2D8;
    if (!qword_1ED43F2D8)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      qword_1ED43F2D8 = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, self);
    if (!Value)
    {
      Value = objc_alloc_init(self);
      CFDictionarySetValue(qword_1ED43F2D8, self, Value);
    }

    os_unfair_lock_unlock(&stru_1ED43F2C4);
  }

  return Value;
}

+ (id)_defaultCenterWithoutCreating
{
  if (!atomic_load(&qword_1ED43F2E8))
  {
    return 0;
  }

  if (qword_1ED43F2F0 != -1)
  {
    dispatch_once(&qword_1ED43F2F0, &__block_literal_global_179);
  }

  return atomic_load(&qword_1ED43F2E8);
}

- (NSNotificationCenter)init
{
  self->_impl = _CFXNotificationCenterCreate();
  self->actorQueueManagerLock._os_unfair_lock_opaque = 0;
  self->_actorQueueManager = 0;
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    CFRelease(impl);
  }

  v4.receiver = self;
  v4.super_class = NSNotificationCenter;
  [(NSNotificationCenter *)&v4 dealloc];
}

- (id)_initWithCFNotificationCenter:(__CFNotificationCenter *)center
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSNotificationCenter;
  v4 = [(NSNotificationCenter *)&v6 init];
  v4->_impl = CFRetain(center);
  v4->actorQueueManagerLock._os_unfair_lock_opaque = 0;
  v4->_actorQueueManager = 0;
  return v4;
}

- (id)description
{
  v2 = CFCopyDescription(self->_impl);

  return v2;
}

- (unint64_t)_addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object options:(unint64_t)options
{
  Class = object_getClass(observer);
  class_isMetaClass(Class);

  return _CFXNotificationRegisterObserver();
}

- (void)_removeObserver:(unint64_t)observer performSubclassCheck:(BOOL)check
{
  if (check && (Class = object_getClass(self), Class != objc_opt_class()) && (Uid = sel_getUid("_removeObserver:performSubclassCheck:"), InstanceMethod = class_getInstanceMethod(Class, Uid), Implementation = method_getImplementation(InstanceMethod), v10 = objc_opt_class(), v11 = class_getInstanceMethod(v10, Uid), Implementation == method_getImplementation(v11)))
  {
    objc_opt_self();
    v13 = [__NSObserver observerWithCenter:?];
    v13[2] = observer;

    [(NSNotificationCenter *)self removeObserver:v13];
  }

  else
  {
    impl = self->_impl;

    MEMORY[0x1EEDB8828](impl, observer);
  }
}

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSNotificationName)aName object:(id)anObject
{
  if (observer && aSelector)
  {
    if (@"NSWillBecomeMultiThreadedNotification" == aName && (_NSIsMultiThreaded & 1) == 0)
    {
      _NSIsMultiThreaded = 1;
      v9 = [[NSNotification alloc] initWithName:aName object:0 userInfo:0];
      [observer aSelector];
    }

    else
    {
      if (addObserver_selector_name_object__once != -1)
      {
        dispatch_once(&addObserver_selector_name_object__once, &__block_literal_global_103);
      }

      Class = object_getClass(observer);
      class_isMetaClass(Class);

      _CFXNotificationRegisterObserver();
    }
  }
}

- (void)removeObserver:(id)observer name:(NSNotificationName)aName object:(id)anObject
{
  if (!observer)
  {
    return;
  }

  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_9);
  if (qword_1ED43F2D0)
  {
    v9 = CFSetContainsValue(qword_1ED43F2D0, observer);
    os_unfair_lock_unlock(&_MergedGlobals_9);
    if (v9)
    {
      objc_opt_self();
      os_unfair_lock_lock(&_MergedGlobals_9);
      if (qword_1ED43F2D0 && CFSetContainsValue(qword_1ED43F2D0, observer))
      {
        CFSetRemoveValue(qword_1ED43F2D0, observer);
        v14 = *(observer + 1);
        *(observer + 1) = 0;
        token = [observer token];
        os_unfair_lock_unlock(&_MergedGlobals_9);
        if (v14)
        {
          [v14 _removeObserver:token performSubclassCheck:0];
        }
      }

      else
      {

        os_unfair_lock_unlock(&_MergedGlobals_9);
      }

      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&_MergedGlobals_9);
  }

  impl = self->_impl;
  if (aName)
  {
    v12 = aName;
  }

  else
  {
    v12 = *MEMORY[0x1E695E728];
  }

  if (anObject)
  {
    v13 = anObject;
  }

  else
  {
    v13 = *MEMORY[0x1E695E730];
  }

  MEMORY[0x1EEDB8868](impl, v12, v13, observer);
}

- (void)postNotification:(NSNotification *)notification
{
  if (!notification)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: notification is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v4);
  }

  _CFXNotificationPost();
}

- (void)postNotificationName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
  if (aName)
  {
    v5 = [[NSNotification alloc] initWithName:aName object:anObject userInfo:aUserInfo];
    _CFXNotificationPost();
  }
}

- (id)addObserverForName:(NSNotificationName)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void *)block
{
  if (!block)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Block cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  v7 = [__NSObserver observerWithCenter:?];
  if (_CFAppVersionCheck())
  {
    [v7 setBlock:block];
    [v7 block];
  }

  v8 = objc_opt_class();
  class_isMetaClass(v8);
  [v7 setToken:_CFXNotificationRegisterObserver()];
  return v7;
}

- (id)debugDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  buffer = 0u;
  v9 = 0u;
  v3 = getpid();
  if (proc_pidinfo(v3, 13, 0, &buffer, 64) != 64 || (v10 & 2) == 0)
  {
    return [NSString stringWithFormat:@"<%@:%p>\n", objc_opt_class(), self, buffer, v9];
  }

  v5 = [(NSString *)NSMutableString stringWithFormat:@"<%@:%p>\n", objc_opt_class(), self, buffer, v9];
  v6 = _CFXNotificationCenterCopyDebugInfo();
  [(NSMutableString *)v5 appendString:v6];
  CFRelease(v6);
  return v5;
}

- (unint64_t)_addObserver:(id)observer object:(id)object usingBlock:(id)block
{
  Class = object_getClass(self);
  if (Class != objc_opt_class() && (Uid = sel_getUid("_addObserver:object:usingBlock:"), InstanceMethod = class_getInstanceMethod(Class, Uid), Implementation = method_getImplementation(InstanceMethod), v13 = objc_opt_class(), v14 = class_getInstanceMethod(v13, Uid), Implementation == method_getImplementation(v14)))
  {
    token = [(NSNotificationCenter *)self addObserverForName:observer object:object queue:0 usingBlock:block];
    if (token)
    {
      os_unfair_lock_lock(&_MergedGlobals_9);
      if (qword_1ED43F2D0 && CFSetContainsValue(qword_1ED43F2D0, token))
      {
        CFSetRemoveValue(qword_1ED43F2D0, token);
        v17 = token[1];
        token[1] = 0;
        token = [token token];
      }

      else
      {
        v17 = 0;
        token = 0;
      }

      os_unfair_lock_unlock(&_MergedGlobals_9);
    }

    return token;
  }

  else
  {

    return _CFXNotificationRegisterObserver();
  }
}

- (id)_getActorQueueManager
{
  os_unfair_lock_lock(&self->actorQueueManagerLock);
  if (!self->_actorQueueManager)
  {
    self->_actorQueueManager = objc_alloc_init(_NotificationCenterActorQueueManager);
  }

  os_unfair_lock_unlock(&self->actorQueueManagerLock);
  return self->_actorQueueManager;
}

@end