@interface __NSOrderedSetI
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSOrderedSetI

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  used = self->_used;
  v4 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *&self->_used[8 * i + 8];
      if (v6 >= 1)
      {

        v4 = *used | ((*(used + 2) | (used[6] << 16)) << 32);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = __NSOrderedSetI;
  [(__NSOrderedSetI *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)indexOfObject:(id)object
{
  if (!object)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = self->_used[7];
  if (v4 >= 4)
  {
    v6 = self->_used[6];
    v7 = *&self->_used[4];
    v8 = *(&__NSOrderedSetSizes + ((2 * v4) & 0x1F8));
    v9 = *self->_used;
    v10 = self->_used[7] & 3;
    v11 = [object hash];
    if (v10 != 3)
    {
      v13 = self + 16;
      v14 = &self->_used[((8 * v9) | ((v7 | (v6 << 16)) << 35)) + 8];
      v15 = v13 - 8;
      v16 = v11 % v8;
      if (v8 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v8;
      }

      do
      {
        if (v10 == 2)
        {
          v18 = *&v14[4 * v16];
        }

        else
        {
          v18 = v10 == 1 ? *&v14[2 * v16] : v14[v16];
        }

        if (!v18)
        {
          break;
        }

        v19 = *&v15[8 * v18];
        if (v19 == object || ([v19 isEqual:object] & 1) != 0)
        {
          return v18 - 1;
        }

        if (v16 + 1 >= v8)
        {
          v20 = v8;
        }

        else
        {
          v20 = 0;
        }

        v16 = v16 + 1 - v20;
        --v17;
      }

      while (v17);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)objectAtIndex:(unint64_t)index
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  if (v3 <= index)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    if (v3)
    {
      v10 = v3 - 1;
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v8, "[__NSOrderedSetI objectAtIndex:]", index, v10);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v11, "[__NSOrderedSetI objectAtIndex:]", index, v10);
    }

    else
    {
      *v8 = 136315394;
      *(v8 + 4) = "[__NSOrderedSetI objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = index;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetI objectAtIndex:]", index);
    }

    v12 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v12);
  }

  result = *&self->_used[8 * index + 8];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = [(__NSOrderedSetI *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v21 = v8;
      v14 = _os_log_pack_size();
      v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill();
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[__NSOrderedSetI getObjects:range:]", location, length, --v21);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[__NSOrderedSetI getObjects:range:]", location, length, v21);
    }

    else
    {
      v14 = _os_log_pack_size();
      v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill();
      v17 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "[__NSOrderedSetI getObjects:range:]", location, length);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v17, "[__NSOrderedSetI getObjects:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v15, v14];
    objc_exception_throw(v24);
  }

  if (!objects && length)
  {
    v10 = _os_log_pack_size();
    v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315394;
    *(v12 + 4) = "[__NSOrderedSetI getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSOrderedSetI getObjects:range:]", length);
    goto LABEL_14;
  }

  if (length >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[__NSOrderedSetI getObjects:range:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSOrderedSetI getObjects:range:]", length);
LABEL_14:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v20);
  }

  v9 = *MEMORY[0x1E69E9840];

  memmove(objects, &self->_used[8 * location + 8], 8 * length);
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
    *(v10 + 4) = "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]", count);
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
    state->var0 = -1;
    state->var1 = (self + 16);
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu;
    result = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v22[6] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v15 = _os_log_pack_size();
    v17 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[__NSOrderedSetI enumerateObjectsWithOptions:usingBlock:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSOrderedSetI enumerateObjectsWithOptions:usingBlock:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v15];
    objc_exception_throw(v20);
  }

  optionsCopy = options;
  v7 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58____NSOrderedSetI_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v22[3] = &unk_1E6A55E70;
  v22[4] = self;
  v22[5] = block;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, v7, v22) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      HIBYTE(v21) = 0;
      v12 = (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32)) - 1;
      do
      {
        if (v12 == -1)
        {
          break;
        }

        v13 = *&self->_used[8 * v12 + 8];
        v14 = _CFAutoreleasePoolPush();
        __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v14);
        --v12;
      }

      while (HIBYTE(v21) != 1);
    }

    else
    {
      HIBYTE(v21) = 0;
      if (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32))
      {
        v9 = 0;
        do
        {
          v10 = *&self->_used[8 * v9 + 8];
          v11 = _CFAutoreleasePoolPush();
          __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v11);
          if (HIBYTE(v21) == 1)
          {
            break;
          }

          ++v9;
        }

        while (v9 < (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32)));
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end