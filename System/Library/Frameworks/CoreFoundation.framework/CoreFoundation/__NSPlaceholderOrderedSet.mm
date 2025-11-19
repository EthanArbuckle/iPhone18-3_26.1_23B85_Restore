@interface __NSPlaceholderOrderedSet
- (__NSPlaceholderOrderedSet)init;
- (__NSPlaceholderOrderedSet)initWithCapacity:(unint64_t)a3;
- (__NSPlaceholderOrderedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
@end

@implementation __NSPlaceholderOrderedSet

- (__NSPlaceholderOrderedSet)init
{
  if (self == &___immutablePlaceholderOrderedSet)
  {
    return [(__NSPlaceholderOrderedSet *)&___immutablePlaceholderOrderedSet initWithObjects:0 count:0];
  }

  if (self == &___mutablePlaceholderOrderedSet)
  {
    return [(__NSPlaceholderOrderedSet *)&___mutablePlaceholderOrderedSet initWithCapacity:0];
  }

  __break(1u);
  return self;
}

- (__NSPlaceholderOrderedSet)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v10 = _os_log_pack_size();
    v12 = v22 - ((MEMORY[0x1EEE9AC00](v10, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderOrderedSet initWithObjects:count:]", a4);
    goto LABEL_23;
  }

  if (a4 >> 61)
  {
    v10 = _os_log_pack_size();
    v12 = v22 - ((MEMORY[0x1EEE9AC00](v10, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = a4;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderOrderedSet initWithObjects:count:]", a4);
    goto LABEL_23;
  }

  if (a4)
  {
    v4 = 0;
    while (a3[v4])
    {
      if (a4 == ++v4)
      {
        if (self == &___immutablePlaceholderOrderedSet)
        {
          v5 = *MEMORY[0x1E69E9840];

          return __NSOrderedSetI_new(a3, a4, 0);
        }

LABEL_13:
        if (self == &___mutablePlaceholderOrderedSet)
        {
          v6 = *MEMORY[0x1E69E9840];

          return __NSOrderedSetM_new(a3, a4, 0);
        }

        else
        {
          __break(1u);
        }

        return self;
      }
    }

    v9 = v4;
    v10 = _os_log_pack_size();
    v12 = v22 - ((MEMORY[0x1EEE9AC00](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSPlaceholderOrderedSet initWithObjects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderOrderedSet initWithObjects:count:]", v9);
LABEL_23:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v10];
    objc_exception_throw(v15);
  }

  if (self != &___immutablePlaceholderOrderedSet)
  {
    goto LABEL_13;
  }

  if (initWithObjects_count__static_init != -1)
  {
    [__NSPlaceholderOrderedSet initWithObjects:count:];
  }

  v7 = initWithObjects_count____NSOrderedSet0__;
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (__NSPlaceholderOrderedSet)initWithCapacity:(unint64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 >> 61)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315394;
    *(v7 + 4) = "[__NSPlaceholderOrderedSet initWithCapacity:]";
    *(v7 + 12) = 2048;
    *(v7 + 14) = a3;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderOrderedSet initWithCapacity:]", a3);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    [&___immutablePlaceholderOrderedSet doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderOrderedSet)
  {
    goto LABEL_9;
  }

  v3 = *MEMORY[0x1E69E9840];

  return __NSOrderedSetM_new(0, a3, 0);
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "NSOrderedSet";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (unint64_t)indexOfObject:(id)a3
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)objectAtIndex:(unint64_t)a3
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = "mutable";
  v7 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v9 = "NSOrderedSet";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = "mutable";
  v6 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "NSOrderedSet";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = "mutable";
  v7 = "NSMutableOrderedSet";
  if (self != &___mutablePlaceholderOrderedSet)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderOrderedSet)
  {
    v9 = "NSOrderedSet";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s ordered set object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

@end