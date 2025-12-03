@interface __NSPlaceholderSet
+ (void)initialize;
- (__NSPlaceholderSet)init;
- (__NSPlaceholderSet)initWithCapacity:(unint64_t)capacity;
- (__NSPlaceholderSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation __NSPlaceholderSet

- (__NSPlaceholderSet)init
{
  if (self == &___immutablePlaceholderSet)
  {
    return [(__NSPlaceholderSet *)&___immutablePlaceholderSet initWithObjects:0 count:0];
  }

  if (self == &___mutablePlaceholderSet)
  {
    return [(__NSPlaceholderSet *)&___mutablePlaceholderSet initWithCapacity:0];
  }

  __break(1u);
  return self;
}

+ (void)initialize
{
  if (__NSPlaceholderSet == self)
  {
    __NSSet0__ = __NSSetI_new(0, 0, 0, 0);
  }
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "NSSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (id)member:(id)member
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)objectEnumerator
{
  v4 = "mutable";
  v5 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "NSSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (void)addObject:(id)object
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)removeObject:(id)object
{
  v5 = "mutable";
  v6 = "NSMutableSet";
  if (self != &___mutablePlaceholderSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderSet)
  {
    v8 = "NSSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (__NSPlaceholderSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderSet initWithObjects:count:]", count);
    goto LABEL_25;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderSet initWithObjects:count:]", count);
    goto LABEL_25;
  }

  if (count)
  {
    v4 = 0;
    while (objects[v4])
    {
      if (count == ++v4)
      {
        goto LABEL_8;
      }
    }

    v11 = v4;
    v12 = _os_log_pack_size();
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[__NSPlaceholderSet initWithObjects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderSet initWithObjects:count:]", v11);
LABEL_25:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v16);
  }

LABEL_8:
  if (self == &___immutablePlaceholderSet)
  {
    if (count == 1)
    {
      v8 = *objects;
      v9 = *MEMORY[0x1E69E9840];

      return __NSSingleObjectSetI_new(v8, 0);
    }

    else if (count)
    {
      v10 = *MEMORY[0x1E69E9840];

      return __NSSetI_new(objects, 0, count, 0);
    }

    else
    {
      v6 = __NSSet0__;
      v7 = *MEMORY[0x1E69E9840];

      return v6;
    }
  }

  else if (self == &___mutablePlaceholderSet)
  {
    v5 = *MEMORY[0x1E69E9840];

    return __NSSetM_new(objects, count, 0);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (__NSPlaceholderSet)initWithCapacity:(unint64_t)capacity
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (capacity >> 61)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315394;
    *(v7 + 4) = "[__NSPlaceholderSet initWithCapacity:]";
    *(v7 + 12) = 2048;
    *(v7 + 14) = capacity;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderSet initWithCapacity:]", capacity);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (self == &___immutablePlaceholderSet)
  {
    [&___immutablePlaceholderSet doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderSet)
  {
    goto LABEL_9;
  }

  v3 = *MEMORY[0x1E69E9840];

  return __NSSetM_new(0, capacity, 0);
}

@end