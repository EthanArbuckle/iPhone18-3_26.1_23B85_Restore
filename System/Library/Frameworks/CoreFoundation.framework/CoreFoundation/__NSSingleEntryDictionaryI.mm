@interface __NSSingleEntryDictionaryI
- (BOOL)isEqualToDictionary:(id)dictionary;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
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

- (BOOL)isEqualToDictionary:(id)dictionary
{
  selfCopy = self;
  v14[1] = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    LOBYTE(self) = self == 0;
    goto LABEL_12;
  }

  if ((_NSIsNSDictionary(dictionary) & 1) == 0)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    *v10 = 136315138;
    *(v10 + 4) = "[__NSSingleEntryDictionaryI isEqualToDictionary:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[__NSSingleEntryDictionaryI isEqualToDictionary:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (dictionary == selfCopy)
  {
    LOBYTE(self) = 1;
    goto LABEL_12;
  }

  if ([dictionary count] != 1)
  {
    LOBYTE(self) = 0;
    goto LABEL_12;
  }

  self = [dictionary objectForKey:selfCopy->_key];
  if (!self)
  {
LABEL_12:
    v8 = *MEMORY[0x1E69E9840];
    return self;
  }

  selfCopy2 = self;
  obj = selfCopy->_obj;
  v7 = *MEMORY[0x1E69E9840];

  LOBYTE(self) = [obj isEqual:selfCopy2];
  return self;
}

- (id)objectForKey:(id)key
{
  key = self->_key;
  if (key == key || [key isEqual:?])
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

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = count >> 61;
  if (objects)
  {
    if (v5)
    {
      goto LABEL_10;
    }

    if (!count)
    {
      goto LABEL_9;
    }

    *objects = self->_obj;
  }

  if (!keys)
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
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI getObjects:andKeys:count:]", count);
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  if (count)
  {
    *keys = self->_key;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)__apply:(void *)__apply context:(void *)context
{
  if (!__apply)
  {
    v7 = __CFExceptionProem(self, a2);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v7);
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8), 0];
    objc_exception_throw(v9);
  }

  obj = self->_obj;
  key = self->_key;

  (__apply)(key, obj, context);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill();
    *v10 = 136315394;
    *(v10 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleEntryDictionaryI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  if (state->var0)
  {
    result = 0;
  }

  else
  {
    state->var1 = objects;
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_2;
    *objects = self->_key;
    result = 1;
    state->var0 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  if (!block)
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
  __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v6);
  v9 = *MEMORY[0x1E69E9840];
}

@end