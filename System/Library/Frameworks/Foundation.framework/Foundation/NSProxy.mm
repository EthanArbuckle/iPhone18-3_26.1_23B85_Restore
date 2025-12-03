@interface NSProxy
+ (BOOL)conformsToProtocol:(id)protocol;
+ (BOOL)isAncestorOfObject:(id)object;
+ (BOOL)isKindOfClass:(Class)class;
+ (BOOL)isSubclassOfClass:(Class)class;
+ (BOOL)respondsToSelector:(SEL)aSelector;
+ (id)_copyDescription;
+ (id)alloc;
+ (id)allocWithZone:(NSZone *)zone;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)methodSignatureForSelector:(SEL)selector;
+ (id)performSelector:(SEL)selector;
+ (id)performSelector:(SEL)selector withObject:(id)object;
+ (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
+ (void)doesNotRecognizeSelector:(SEL)selector;
+ (void)forwardInvocation:(id)invocation;
+ (void)instanceMethodForSelector:(SEL)selector;
+ (void)methodForSelector:(SEL)selector;
- (BOOL)_tryRetain;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isMemberOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)superclass;
- (NSProxy)retain;
- (id)_copyDescription;
- (id)performSelector:(SEL)selector;
- (id)performSelector:(SEL)selector withObject:(id)object;
- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject;
- (void)release;
@end

@implementation NSProxy

- (NSProxy)retain
{
  v2 = _objc_rootRetain();
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    __CFRecordAllocationEvent();
  }

  return v2;
}

- (void)release
{
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    __CFRecordAllocationEvent();
  }

  MEMORY[0x1EEE66848](self);
}

+ (id)alloc
{
  v2 = _objc_rootAlloc();
  object_getClassName(v2);
  __CFSetLastAllocationEventName();
  return v2;
}

- (BOOL)_tryRetain
{
  v2 = _objc_rootTryRetain();
  if (v2 && *MEMORY[0x1E695E0C0] == 1)
  {
    __CFRecordAllocationEvent();
  }

  return v2;
}

+ (id)allocWithZone:(NSZone *)zone
{
  v3 = _objc_rootAllocWithZone();
  object_getClassName(v3);
  __CFSetLastAllocationEventName();
  return v3;
}

- (Class)superclass
{
  v2 = objc_opt_class();

  return class_getSuperclass(v2);
}

+ (BOOL)respondsToSelector:(SEL)aSelector
{
  if (!aSelector)
  {
    return 0;
  }

  Class = object_getClass(self);

  return class_respondsToSelector(Class, aSelector);
}

+ (BOOL)isAncestorOfObject:(id)object
{
  Superclass = objc_opt_class();
  for (i = Superclass != 0; Superclass != self && Superclass; i = Superclass != 0)
  {
    Superclass = class_getSuperclass(Superclass);
  }

  return i;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  if (!selector || !__methodDescriptionForSelector(self, selector))
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF68];

  return [v4 signatureWithObjCTypes:v3];
}

+ (id)methodSignatureForSelector:(SEL)selector
{
  if (!selector)
  {
    return 0;
  }

  Class = object_getClass(self);
  if (!__methodDescriptionForSelector(Class, selector))
  {
    return 0;
  }

  v6 = MEMORY[0x1E695DF68];

  return [v6 signatureWithObjCTypes:v5];
}

+ (void)forwardInvocation:(id)invocation
{
  if (invocation)
  {
    invocation = [invocation selector];
  }

  [self doesNotRecognizeSelector:invocation];
}

+ (void)doesNotRecognizeSelector:(SEL)selector
{
  v4 = _NSMethodExceptionProem(self, selector);
  NSLog(@"%@: unrecognized selector sent to class %p", v4, self);
  v5 = [NSString stringWithFormat:@"%@: unrecognized selector sent to class %p", v4, self];
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
}

+ (id)_copyDescription
{
  _CFAutoreleasePoolPush();
  v3 = [self description];
  _CFAutoreleasePoolPop();
  return v3;
}

- (id)_copyDescription
{
  _CFAutoreleasePoolPush();
  v3 = [(NSProxy *)self description];
  _CFAutoreleasePoolPop();
  return v3;
}

+ (id)performSelector:(SEL)selector
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

- (id)performSelector:(SEL)selector
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

+ (id)performSelector:(SEL)selector withObject:(id)object
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

- (id)performSelector:(SEL)selector withObject:(id)object
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

+ (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

- (id)performSelector:(SEL)selector withObject:(id)object withObject:(id)withObject
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self selector];
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v3 = Superclass != 0;
  if (Superclass && Superclass != class)
  {
    do
    {
      Superclass = class_getSuperclass(Superclass);
      v3 = Superclass != 0;
    }

    while (Superclass != class && Superclass);
  }

  return v3;
}

+ (BOOL)isKindOfClass:(Class)class
{
  Class = object_getClass(self);
  for (i = Class != 0; Class != class && Class; i = Class != 0)
  {
    Class = class_getSuperclass(Class);
  }

  return i;
}

- (BOOL)isKindOfClass:(Class)class
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = _NSMessageBuilder();
  objc_opt_isKindOfClass();
  object_dispose(v4);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v6];
  return v6[0];
}

- (BOOL)isMemberOfClass:(Class)class
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v5 = _NSMessageBuilder();
  [v5 isMemberOfClass:class];
  object_dispose(v5);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v7];
  return v7[0];
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  v3 = 0;
  if (self && protocol)
  {
    Superclass = self;
    do
    {
      v3 = class_conformsToProtocol(Superclass, protocol);
      if (v3)
      {
        break;
      }

      Superclass = class_getSuperclass(Superclass);
    }

    while (Superclass);
  }

  return v3;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v5 = _NSMessageBuilder();
  [v5 conformsToProtocol:protocol];
  object_dispose(v5);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v7];
  return v7[0];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = _NSMessageBuilder();
  objc_opt_respondsToSelector();
  object_dispose(v4);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v6];
  return v6[0];
}

+ (void)instanceMethodForSelector:(SEL)selector
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return class_getMethodImplementation(self, selector);
}

+ (void)methodForSelector:(SEL)selector
{
  if (!selector)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  Class = object_getClass(self);

  return class_getMethodImplementation(Class, selector);
}

@end