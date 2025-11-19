@interface NSObject(NSObject)
+ (CFTypeRef)_copyDescription;
+ (NSMethodSignature)instanceMethodSignatureForSelector:()NSObject;
+ (NSMethodSignature)methodSignatureForSelector:()NSObject;
+ (objc_class)init;
+ (uint64_t)description;
+ (uint64_t)load;
+ (void)__allocWithZone_OA:()NSObject;
+ (void)dealloc;
+ (void)doesNotRecognizeSelector:()NSObject;
- (CFTypeRef)_copyDescription;
- (NSMethodSignature)methodSignatureForSelector:()NSObject;
- (uint64_t)___tryRetain_OA;
- (uint64_t)__release_OA;
- (uint64_t)__retain_OA;
- (uint64_t)description;
- (void)__dealloc_zombie;
- (void)doesNotRecognizeSelector:()NSObject;
@end

@implementation NSObject(NSObject)

- (uint64_t)description
{
  v2 = objc_opt_class();
  Name = class_getName(v2);
  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<%s: %p>", Name, a1);

  return _CFAutoreleasePoolAddObject(v4, v4);
}

+ (uint64_t)description
{
  Name = class_getName(a1);
  v2 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s", Name);

  return _CFAutoreleasePoolAddObject(v2, v2);
}

- (CFTypeRef)_copyDescription
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 description];
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  _CFAutoreleasePoolPop(v2);
  return v4;
}

+ (uint64_t)load
{
  if (*MEMORY[0x1E69E5908] && load_once != -1)
  {
    +[NSObject(NSObject) load];
  }

  return MEMORY[0x1EEE66878](couldNotInstantiate);
}

+ (CFTypeRef)_copyDescription
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 description];
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  _CFAutoreleasePoolPop(v2);
  return v4;
}

+ (void)doesNotRecognizeSelector:()NSObject
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (cls)
  {
    Name = class_getName(cls);
    if (sel)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Name = "(null class)";
    if (sel)
    {
LABEL_3:
      v6 = sel_getName(sel);
      goto LABEL_6;
    }
  }

  v6 = "(null selector)";
LABEL_6:
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[%s %s]: unrecognized selector sent to class %p", Name, v6, cls);
  v8 = _CFAutoreleasePoolAddObject(v7, v7);
  strlen(Name);
  is_memory_immutable = _dyld_is_memory_immutable();
  strlen(v6);
  v10 = _dyld_is_memory_immutable();
  v11 = _os_log_pack_size();
  v12 = _os_log_pack_fill();
  if (is_memory_immutable)
  {
    v13 = Name;
  }

  else
  {
    v13 = "(dynamic class)";
  }

  if (v10)
  {
    v14 = v6;
  }

  else
  {
    v14 = "(dynamic selector)";
  }

  v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:v8 userInfo:0 osLogPack:v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) size:v11, __os_log_helper_1_2_3_8_32_8_32_8_0(v12, v13, v14, cls)];
  objc_exception_throw(v15);
}

- (void)doesNotRecognizeSelector:()NSObject
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  if (v5)
  {
    Name = class_getName(v5);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Name = "(null class)";
    if (a3)
    {
LABEL_3:
      v7 = sel_getName(a3);
      goto LABEL_6;
    }
  }

  v7 = "(null selector)";
LABEL_6:
  v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"[%s %s]: unrecognized selector sent to instance %p", Name, v7, a1);
  v9 = _CFAutoreleasePoolAddObject(v8, v8);
  strlen(Name);
  is_memory_immutable = _dyld_is_memory_immutable();
  strlen(v7);
  v11 = _dyld_is_memory_immutable();
  v12 = _os_log_pack_size();
  v13 = _os_log_pack_fill();
  if (is_memory_immutable)
  {
    v14 = Name;
  }

  else
  {
    v14 = "(dynamic class)";
  }

  if (v11)
  {
    v15 = v7;
  }

  else
  {
    v15 = "(dynamic selector)";
  }

  v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:v9 userInfo:0 osLogPack:v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) size:v12, __os_log_helper_1_2_3_8_32_8_32_8_0(v13, v14, v15, a1)];
  objc_exception_throw(v16);
}

+ (NSMethodSignature)instanceMethodSignatureForSelector:()NSObject
{
  if (!name || !__methodDescriptionForSelector(a1, name))
  {
    return 0;
  }

  return [NSMethodSignature signatureWithObjCTypes:v3];
}

+ (NSMethodSignature)methodSignatureForSelector:()NSObject
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

  return [NSMethodSignature signatureWithObjCTypes:v5];
}

- (NSMethodSignature)methodSignatureForSelector:()NSObject
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_opt_class();
  if (!__methodDescriptionForSelector(v4, a3))
  {
    return 0;
  }

  return [NSMethodSignature signatureWithObjCTypes:v5];
}

- (uint64_t)__retain_OA
{
  v0 = _objc_rootRetain();
  __CFRecordAllocationEvent();
  return v0;
}

- (uint64_t)___tryRetain_OA
{
  v0 = _objc_rootTryRetain();
  if (v0)
  {
    __CFRecordAllocationEvent();
  }

  return v0;
}

- (uint64_t)__release_OA
{
  __CFRecordAllocationEvent();

  return MEMORY[0x1EEE66848](a1);
}

+ (void)__allocWithZone_OA:()NSObject
{
  v0 = _objc_rootAllocWithZone();
  v1 = v0;
  if (v0)
  {
    object_getClassName(v0);
    __CFSetLastAllocationEventName();
  }

  return v1;
}

- (void)__dealloc_zombie
{
  name[1] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_7:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  if (__CFZombieEnabled)
  {
    Class = object_getClass(a1);
    name[0] = 0;
    v3 = class_getName(Class);
    asprintf(name, "_NSZombie_%s", v3);
    v4 = objc_lookUpClass(name[0]);
    if (!v4)
    {
      v5 = objc_lookUpClass("_NSZombie_");
      v4 = objc_duplicateClass(v5, name[0], 0);
    }

    free(name[0]);
    objc_destructInstance(a1);
    object_setClass(a1, v4);
    if (__CFDeallocateZombies)
    {
      free(a1);
    }

    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66828]();
}

+ (objc_class)init
{
  if (_CFExecutableLinkedOnOrAfter(6uLL))
  {
    Name = class_getName(a1);
    v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** +[%s<%p> init]: cannot init a class object.", Name, a1);
    v5 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(v4 userInfo:v4), 0];
    objc_exception_throw(v5);
  }

  return a1;
}

+ (void)dealloc
{
  Name = class_getName(a1);
  v3 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** +[%s<%p> dealloc]: cannot dealloc a class object.", Name, a1);
  v4 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(v3 userInfo:v3), 0];
  objc_exception_throw(v4);
}

@end