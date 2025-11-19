@interface __NSPlaceholderDictionary
- (__NSPlaceholderDictionary)init;
- (__NSPlaceholderDictionary)initWithCapacity:(unint64_t)a3;
- (__NSPlaceholderDictionary)initWithContentsOfFile:(id)a3;
- (__NSPlaceholderDictionary)initWithContentsOfURL:(id)a3;
- (__NSPlaceholderDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation __NSPlaceholderDictionary

- (__NSPlaceholderDictionary)init
{
  if (self == &___immutablePlaceholderDictionary)
  {
    return [(__NSPlaceholderDictionary *)&___immutablePlaceholderDictionary initWithObjects:0 forKeys:0 count:0];
  }

  if (self == &___mutablePlaceholderDictionary)
  {
    return [(__NSPlaceholderDictionary *)&___mutablePlaceholderDictionary initWithCapacity:0];
  }

  __break(1u);
  return self;
}

- (unint64_t)count
{
  v4 = "mutable";
  v5 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "NSDictionary";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (id)objectForKey:(id)a3
{
  v5 = "mutable";
  v6 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "NSDictionary";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (id)keyEnumerator
{
  v4 = "mutable";
  v5 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v4 = "<unknown>";
    v5 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v6 = "immutable";
  }

  else
  {
    v6 = v4;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "NSDictionary";
  }

  else
  {
    v7 = v5;
  }

  v8 = __CFLookUpClass(v7);
  v9 = __CFFullMethodName(v8, self, a2);
  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v9, v6);
  v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10), 0];
  objc_exception_throw(v11);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = "mutable";
  v7 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v6 = "<unknown>";
    v7 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "immutable";
  }

  else
  {
    v8 = v6;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v9 = "NSDictionary";
  }

  else
  {
    v9 = v7;
  }

  v10 = __CFLookUpClass(v9);
  v11 = __CFFullMethodName(v10, self, a2);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v11, v8);
  v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
  objc_exception_throw(v13);
}

- (void)removeObjectForKey:(id)a3
{
  v5 = "mutable";
  v6 = "NSMutableDictionary";
  if (self != &___mutablePlaceholderDictionary)
  {
    v5 = "<unknown>";
    v6 = "<unknown>";
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v7 = "immutable";
  }

  else
  {
    v7 = v5;
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    v8 = "NSDictionary";
  }

  else
  {
    v8 = v6;
  }

  v9 = __CFLookUpClass(v8);
  v10 = __CFFullMethodName(v9, self, a2);
  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized %s dictionary object", v10, v7);
  v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
  objc_exception_throw(v12);
}

- (__NSPlaceholderDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    goto LABEL_32;
  }

  if (a5 >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", a5);
    goto LABEL_29;
  }

  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      if (!a4[i])
      {
        goto LABEL_28;
      }
    }

    if (a3)
    {
      i = 0;
      while (a3[i])
      {
        if (a5 == ++i)
        {
          goto LABEL_12;
        }
      }

LABEL_28:
      v12 = i;
      v13 = _os_log_pack_size();
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      *v15 = 136315394;
      *(v15 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = v12;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", v12);
LABEL_29:
      v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
      objc_exception_throw(v17);
    }

LABEL_32:
    v13 = _os_log_pack_size();
    v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSPlaceholderDictionary initWithObjects:forKeys:count:]", a5);
    goto LABEL_29;
  }

LABEL_12:
  if (self == &___immutablePlaceholderDictionary)
  {
    if (a5 == 1)
    {
      v8 = *a4;
      v9 = *a3;
      v10 = *MEMORY[0x1E69E9840];

      return __NSSingleEntryDictionaryI_new(v8, v9, 1);
    }

    else if (a5)
    {
      v11 = *MEMORY[0x1E69E9840];

      return __NSDictionaryI_new(a4, a3, 0, a5, 1);
    }

    else
    {
      v7 = *MEMORY[0x1E69E9840];

      return &__NSDictionary0__struct;
    }
  }

  else if (self == &___mutablePlaceholderDictionary)
  {
    v6 = *MEMORY[0x1E69E9840];

    return __NSDictionaryM_new(a4, a3, a5, 3uLL);
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (__NSPlaceholderDictionary)initWithCapacity:(unint64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 >> 61)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill();
    *v7 = 136315394;
    *(v7 + 4) = "[__NSPlaceholderDictionary initWithCapacity:]";
    *(v7 + 12) = 2048;
    *(v7 + 14) = a3;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: capacity (%lu) is ridiculous", "[__NSPlaceholderDictionary initWithCapacity:]", a3);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (self == &___immutablePlaceholderDictionary)
  {
    [&___immutablePlaceholderDictionary doesNotRecognizeSelector:a2];
LABEL_9:
    __break(1u);
  }

  if (self != &___mutablePlaceholderDictionary)
  {
    goto LABEL_9;
  }

  v3 = *MEMORY[0x1E69E9840];

  return __NSDictionaryM_new(0, 0, a3, 3uLL);
}

- (__NSPlaceholderDictionary)initWithContentsOfFile:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSString(a3) & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[__NSPlaceholderDictionary initWithContentsOfFile:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: string argument is not an NSString", "[__NSPlaceholderDictionary initWithContentsOfFile:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  v5 = *MEMORY[0x1E69E9840];

  return [NSDictionary newWithContentsOf:a3 immutable:self == &___immutablePlaceholderDictionary];
}

- (__NSPlaceholderDictionary)initWithContentsOfURL:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (atomic_load(&initWithContentsOfURL____cls_NSURL_0))
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    atomic_store(objc_lookUpClass("NSURL"), &initWithContentsOfURL____cls_NSURL_0);
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  atomic_load(&initWithContentsOfURL____cls_NSURL_0);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "[__NSPlaceholderDictionary initWithContentsOfURL:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: url argument is not an NSURL", "[__NSPlaceholderDictionary initWithContentsOfURL:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];

  return [NSDictionary newWithContentsOf:a3 immutable:self == &___immutablePlaceholderDictionary];
}

@end