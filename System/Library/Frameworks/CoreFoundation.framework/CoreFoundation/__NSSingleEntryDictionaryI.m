@interface __NSSingleEntryDictionaryI
- (BOOL)isEqualToDictionary:(id)a3;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
@end

@implementation __NSSingleEntryDictionaryI

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  obj = self->_obj;
  if (obj >= 1)
  {
  }

  key = self->_key;
  if (key >= 1)
  {
  }

  v6.receiver = self;
  v6.super_class = __NSSingleEntryDictionaryI;
  [(__NSSingleEntryDictionaryI *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)keyEnumerator
{
  v2 = [[__NSSingleObjectEnumerator alloc] initWithObject:self->_key collection:self];

  return v2;
}

- (BOOL)isEqualToDictionary:(id)a3
{
  v3 = self;
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    LOBYTE(self) = self == 0;
    goto LABEL_12;
  }

  if ((_NSIsNSDictionary(a3) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[__NSSingleEntryDictionaryI isEqualToDictionary:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[__NSSingleEntryDictionaryI isEqualToDictionary:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (a3 == v3)
  {
    LOBYTE(self) = 1;
    goto LABEL_12;
  }

  if ([a3 count] != 1)
  {
    LOBYTE(self) = 0;
    goto LABEL_12;
  }

  self = [a3 objectForKey:v3->_key];
  if (!self)
  {
LABEL_12:
    v8 = *MEMORY[0x1E69E9840];
    return self;
  }

  v5 = self;
  obj = v3->_obj;
  v7 = *MEMORY[0x1E69E9840];

  LOBYTE(self) = [obj isEqual:v5];
  return self;
}

- (id)objectForKey:(id)a3
{
  key = self->_key;
  if (key == a3 || [key isEqual:?])
  {
    return self->_obj;
  }

  else
  {
    return 0;
  }
}

- (id)objectEnumerator
{
  v2 = [[__NSSingleObjectEnumerator alloc] initWithObject:self->_obj collection:self];

  return v2;
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a5 >> 61;
  if (a3)
  {
    if (v5)
    {
      goto LABEL_10;
    }

    if (!a5)
    {
      goto LABEL_9;
    }

    *a3 = self->_obj;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  if (v5)
  {
LABEL_10:
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill();
    *v9 = 136315394;
    *(v9 + 4) = "[__NSSingleEntryDictionaryI getObjects:andKeys:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = a5;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI getObjects:andKeys:count:]", a5);
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (a5)
  {
    *a4 = self->_key;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)__apply:(void *)a3 context:(void *)a4
{
  if (!a3)
  {
    v7 = __CFExceptionProem(self, a2);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v7);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8), 0];
    objc_exception_throw(v9);
  }

  obj = self->_obj;
  key = self->_key;

  (a3)(key, obj, a4);
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_10;
  }

  if (a5 >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", a5);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  if (a3->var0)
  {
    result = 0;
  }

  else
  {
    a3->var1 = a4;
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_2;
    *a4 = self->_key;
    result = 1;
    a3->var0 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[__NSSingleEntryDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleEntryDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v10];
    objc_exception_throw(v13);
  }

  v14[7] = 0;
  v6 = _CFAutoreleasePoolPush();
  key = self->_key;
  obj = self->_obj;
  __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
  _CFAutoreleasePoolPop(v6);
  v9 = *MEMORY[0x1E69E9840];
}

@end