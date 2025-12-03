@interface NSConstantDictionary
- (NSConstantDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
@end

@implementation NSConstantDictionary

- (NSConstantDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (id)objectForKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  options = self->_options;
  count = self->_count;
  keys = self->_keys;
  objects = self->_objects;
  keyCopy = key;
  if (!count)
  {
    goto LABEL_14;
  }

  if (count == 1 && *keys == key)
  {
    goto LABEL_30;
  }

  if ((options & 2) != 0)
  {
    if (_NSIsNSNumber(key))
    {
      if (count != 1)
      {
        v9 = comparisonUsingOrderingForNumericKeys;
        if ((options & 1) == 0)
        {
LABEL_20:
          while (1)
          {
            v10 = *keys;
            if (*keys == key)
            {
              goto LABEL_30;
            }

            if ((options & 2) != 0)
            {
              if ([v10 isEqualToNumber:{key, keyCopy, v13}])
              {
                goto LABEL_30;
              }
            }

            else if ([v10 isEqualToString:key])
            {
              goto LABEL_30;
            }

            result = 0;
            ++objects;
            ++keys;
            if (!--count)
            {
              goto LABEL_31;
            }
          }
        }

        goto LABEL_28;
      }

      if ([key isEqualToNumber:{*keys, keyCopy, v13}])
      {
        goto LABEL_30;
      }
    }

LABEL_14:
    result = 0;
    goto LABEL_31;
  }

  if ((_NSIsNSString(key) & 1) == 0)
  {
    if (!options)
    {
      while (*keys != key && ([*keys isEqual:{key, keyCopy, v13}] & 1) == 0)
      {
        result = 0;
        ++objects;
        ++keys;
        if (!--count)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  if (count == 1)
  {
    if ([key isEqualToString:{*keys, keyCopy, v13}])
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v9 = comparisonUsingOrderingForStringKeys;
  if ((options & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_28:
  result = bsearch(&keyCopy, keys, count, 8uLL, v9);
  if (result)
  {
    objects = (objects + result - keys);
LABEL_30:
    result = *objects;
  }

LABEL_31:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)keyEnumerator
{
  v2 = [[__NSConstantDictionaryEnumerator alloc] initWithConstantDictionary:self enumerateKeys:1];

  return v2;
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = count >> 61;
  if (objects && v7 || keys && v7)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[NSConstantDictionary getObjects:andKeys:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantDictionary getObjects:andKeys:count:]", count);
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

  v8 = 8 * self->_count;
  if (keys)
  {
    memmove(keys, self->_keys, v8);
  }

  if (objects)
  {
    objects = self->_objects;
    v10 = *MEMORY[0x1E69E9840];

    memmove(objects, objects, v8);
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)__apply:(void *)__apply context:(void *)context
{
  if (!__apply)
  {
    v8 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v8);
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9), 0];
    objc_exception_throw(v10);
  }

  if (self->_count)
  {
    v7 = 0;
    do
    {
      (__apply)(self->_keys[v7], self->_objects[v7], context);
      ++v7;
    }

    while (v7 < self->_count);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[NSConstantDictionary countByEnumeratingWithState:objects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSConstantDictionary countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[NSConstantDictionary countByEnumeratingWithState:objects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantDictionary countByEnumeratingWithState:objects:count:]", count);
LABEL_18:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  count = self->_count;
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_4;
  }

  if (count > var0 && (state->var1 = objects, count))
  {
    v7 = 0;
    do
    {
      v8 = self->_keys[var0++];
      state->var0 = var0;
      if (v8)
      {
        objects[v7++] = v8;
        var0 = state->var0;
      }
    }

    while (var0 < count && v7 < count);
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSConstantDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSConstantDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

  count = self->_count;
  v15[7] = 0;
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      if (self->_keys[i])
      {
        v8 = _CFAutoreleasePoolPush();
        v9 = self->_objects[i];
        __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v8);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  count = self->_count;
  v14 = 0;
  if (count)
  {
    v7 = 0;
    for (i = 0; i != count; ++i)
    {
      v9 = self->_keys[i];
      if (v9)
      {
        v10 = self->_objects[i];
        v11 = _CFAutoreleasePoolPush();
        if ((*(test + 2))(test, v9, v10, &v14))
        {
          v14 = 1;
          v7 = v9;
        }

        _CFAutoreleasePoolPop(v11);
        if (v14)
        {
          break;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)keysOfEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSConstantDictionary keysOfEntriesWithOptions:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSConstantDictionary keysOfEntriesWithOptions:passingTest:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  count = self->_count;
  v7 = +[(NSSet *)NSMutableSet];
  HIBYTE(v18) = 0;
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      v9 = self->_keys[i];
      if (v9)
      {
        v10 = self->_objects[i];
        v11 = _CFAutoreleasePoolPush();
        if ((*(test + 2))(test, v9, v10, &v18 + 7))
        {
          [(NSSet *)v7 addObject:v9];
        }

        _CFAutoreleasePoolPop(v11);
        if ((v18 & 0x100000000000000) != 0)
        {
          break;
        }
      }
    }
  }

  result = [NSSet setWithSet:v7];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v13 = *MEMORY[0x1E69E9840];
  options = self->_options;
  count = self->_count;
  keys = self->_keys;
  objects = self->_objects;
  subscriptCopy = subscript;
  if (!count)
  {
    goto LABEL_14;
  }

  if (count == 1 && *keys == subscript)
  {
    goto LABEL_30;
  }

  if ((options & 2) != 0)
  {
    if (_NSIsNSNumber(subscript))
    {
      if (count != 1)
      {
        v9 = comparisonUsingOrderingForNumericKeys;
        if ((options & 1) == 0)
        {
LABEL_20:
          while (1)
          {
            v10 = *keys;
            if (*keys == subscript)
            {
              goto LABEL_30;
            }

            if ((options & 2) != 0)
            {
              if ([v10 isEqualToNumber:{subscript, subscriptCopy, v13}])
              {
                goto LABEL_30;
              }
            }

            else if ([v10 isEqualToString:subscript])
            {
              goto LABEL_30;
            }

            result = 0;
            ++objects;
            ++keys;
            if (!--count)
            {
              goto LABEL_31;
            }
          }
        }

        goto LABEL_28;
      }

      if ([subscript isEqualToNumber:{*keys, subscriptCopy, v13}])
      {
        goto LABEL_30;
      }
    }

LABEL_14:
    result = 0;
    goto LABEL_31;
  }

  if ((_NSIsNSString(subscript) & 1) == 0)
  {
    if (!options)
    {
      while (*keys != subscript && ([*keys isEqual:{subscript, subscriptCopy, v13}] & 1) == 0)
      {
        result = 0;
        ++objects;
        ++keys;
        if (!--count)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  if (count == 1)
  {
    if ([subscript isEqualToString:{*keys, subscriptCopy, v13}])
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v9 = comparisonUsingOrderingForStringKeys;
  if ((options & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_28:
  result = bsearch(&subscriptCopy, keys, count, 8uLL, v9);
  if (result)
  {
    objects = (objects + result - keys);
LABEL_30:
    result = *objects;
  }

LABEL_31:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectEnumerator
{
  v2 = [[__NSConstantDictionaryEnumerator alloc] initWithConstantDictionary:self enumerateKeys:0];

  return v2;
}

@end