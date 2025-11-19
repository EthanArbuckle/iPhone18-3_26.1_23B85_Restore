@interface NSProxy
+ (BOOL)conformsToProtocol:(id)a3;
+ (BOOL)isAncestorOfObject:(id)a3;
+ (BOOL)isKindOfClass:(Class)a3;
+ (BOOL)isSubclassOfClass:(Class)a3;
+ (BOOL)respondsToSelector:(SEL)aSelector;
+ (id)_copyDescription;
+ (id)alloc;
+ (id)allocWithZone:(NSZone *)zone;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (id)methodSignatureForSelector:(SEL)a3;
+ (id)performSelector:(SEL)a3;
+ (id)performSelector:(SEL)a3 withObject:(id)a4;
+ (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
+ (void)doesNotRecognizeSelector:(SEL)a3;
+ (void)forwardInvocation:(id)a3;
+ (void)instanceMethodForSelector:(SEL)a3;
+ (void)methodForSelector:(SEL)a3;
- (BOOL)_tryRetain;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)isMemberOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)superclass;
- (NSProxy)retain;
- (id)_copyDescription;
- (id)performSelector:(SEL)a3;
- (id)performSelector:(SEL)a3 withObject:(id)a4;
- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5;
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

  Class = object_getClass(a1);

  return class_respondsToSelector(Class, aSelector);
}

+ (BOOL)isAncestorOfObject:(id)a3
{
  Superclass = objc_opt_class();
  for (i = Superclass != 0; Superclass != a1 && Superclass; i = Superclass != 0)
  {
    Superclass = class_getSuperclass(Superclass);
  }

  return i;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  if (!a3 || !__methodDescriptionForSelector(a1, a3))
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DF68];

  return [v4 signatureWithObjCTypes:v3];
}

+ (id)methodSignatureForSelector:(SEL)a3
{
  if (!a3)
  {
    return 0;
  }

  Class = object_getClass(a1);
  if (!__methodDescriptionForSelector(Class, a3))
  {
    return 0;
  }

  v6 = MEMORY[0x1E695DF68];

  return [v6 signatureWithObjCTypes:v5];
}

+ (void)forwardInvocation:(id)a3
{
  if (a3)
  {
    a3 = [a3 selector];
  }

  [a1 doesNotRecognizeSelector:a3];
}

+ (void)doesNotRecognizeSelector:(SEL)a3
{
  v4 = _NSMethodExceptionProem(a1, a3);
  NSLog(@"%@: unrecognized selector sent to class %p", v4, a1);
  v5 = [NSString stringWithFormat:@"%@: unrecognized selector sent to class %p", v4, a1];
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
}

+ (id)_copyDescription
{
  _CFAutoreleasePoolPush();
  v3 = [a1 description];
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

+ (id)performSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  return [a1 a3];
}

- (id)performSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self a3];
}

+ (id)performSelector:(SEL)a3 withObject:(id)a4
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  return [a1 a3];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self a3];
}

+ (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  return [a1 a3];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4 withObject:(id)a5
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  return [self a3];
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v3 = Superclass != 0;
  if (Superclass && Superclass != a3)
  {
    do
    {
      Superclass = class_getSuperclass(Superclass);
      v3 = Superclass != 0;
    }

    while (Superclass != a3 && Superclass);
  }

  return v3;
}

+ (BOOL)isKindOfClass:(Class)a3
{
  Class = object_getClass(a1);
  for (i = Class != 0; Class != a3 && Class; i = Class != 0)
  {
    Class = class_getSuperclass(Class);
  }

  return i;
}

- (BOOL)isKindOfClass:(Class)a3
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

- (BOOL)isMemberOfClass:(Class)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v5 = _NSMessageBuilder();
  [v5 isMemberOfClass:a3];
  object_dispose(v5);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v7];
  return v7[0];
}

+ (BOOL)conformsToProtocol:(id)a3
{
  v3 = 0;
  if (a1 && a3)
  {
    Superclass = a1;
    do
    {
      v3 = class_conformsToProtocol(Superclass, a3);
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

- (BOOL)conformsToProtocol:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v5 = _NSMessageBuilder();
  [v5 conformsToProtocol:a3];
  object_dispose(v5);
  [(NSProxy *)self forwardInvocation:0];
  [0 getReturnValue:v7];
  return v7[0];
}

- (BOOL)respondsToSelector:(SEL)a3
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

+ (void)instanceMethodForSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  return class_getMethodImplementation(a1, a3);
}

+ (void)methodForSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  Class = object_getClass(a1);

  return class_getMethodImplementation(Class, a3);
}

@end