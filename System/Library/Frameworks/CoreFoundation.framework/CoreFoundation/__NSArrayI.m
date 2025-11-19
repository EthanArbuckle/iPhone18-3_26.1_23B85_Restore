@interface __NSArrayI
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation __NSArrayI

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  used = self->used;
  if (used)
  {
    p_list = &self->list;
    do
    {
      if ((*p_list & 0x8000000000000000) == 0)
      {
      }

      ++p_list;
      --used;
    }

    while (used);
  }

  v6.receiver = self;
  v6.super_class = __NSArrayI;
  [(__NSArrayI *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndex:(unint64_t)a3
{
  used = self->used;
  if (used <= a3)
  {
    __boundsFail(a3, used);
  }

  return *(&self->list + a3);
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4.length)
  {
    length = a4.length;
    v12 = _os_log_pack_size();
    v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[__NSArrayI getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI getObjects:range:]", length);
    goto LABEL_22;
  }

  if (a4.length >> 61)
  {
    v16 = a4.length;
    v12 = _os_log_pack_size();
    v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[__NSArrayI getObjects:range:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v16;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI getObjects:range:]", v16);
LABEL_22:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  used = self->used;
  if ((a4.location & 0x8000000000000000) != 0 || used < a4.location + a4.length)
  {
    location = a4.location;
    v20 = a4.length;
    v21 = _os_log_pack_size();
    v22 = _os_log_pack_fill();
    if (used)
    {
      v25 = used - 1;
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[__NSArrayI getObjects:range:]", location, v20, v25);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[__NSArrayI getObjects:range:]", location, v20, v25);
    }

    else
    {
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[__NSArrayI getObjects:range:]", location, v20);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[__NSArrayI getObjects:range:]", location, v20);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21];
    objc_exception_throw(v27);
  }

  v5 = (&self->list + a4.location);
  if (a4.length <= 4)
  {
    if (a4.length > 2)
    {
      if (a4.length != 3)
      {
        v7 = *v5;
        v5 = (&self[1].super.super.isa + a4.location);
        *a3++ = v7;
      }

      v8 = *v5++;
      *a3++ = v8;
    }

    else
    {
      if (a4.length == 1)
      {
LABEL_18:
        *a3 = *v5;
LABEL_19:
        v10 = *MEMORY[0x1E69E9840];
        return;
      }

      if (a4.length != 2)
      {
        goto LABEL_19;
      }
    }

    v9 = *v5++;
    *a3++ = v9;
    goto LABEL_18;
  }

  v6 = *MEMORY[0x1E69E9840];

  memmove(a3, v5, 8 * a4.length);
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
    *(v10 + 4) = "[__NSArrayI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_10;
  }

  if (a5 >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSArrayI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = a5;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI countByEnumeratingWithState:objects:count:]", a5);
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
    a3->var0 = -1;
    a3->var1 = &self->list;
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_6;
    result = self->used;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v25[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v18 = _os_log_pack_size();
    v20 = &v25[-1] - ((MEMORY[0x1EEE9AC00](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = "[__NSArrayI enumerateObjectsWithOptions:usingBlock:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSArrayI enumerateObjectsWithOptions:usingBlock:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v18];
    objc_exception_throw(v23);
  }

  v5 = a3;
  p_used = &self->used;
  used = self->used;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __53____NSArrayI_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v25[3] = &unk_1E6A55E70;
  v25[4] = self;
  v25[5] = a4;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(v5, 1, used, v25) & 1) == 0)
  {
    if ((v5 & 2) != 0)
    {
      HIBYTE(v24) = 0;
      v14 = *p_used;
      do
      {
        if (!v14)
        {
          break;
        }

        v15 = v14 - 1;
        v16 = p_used[v14];
        v17 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
        _CFAutoreleasePoolPop(v17);
        v14 = v15;
      }

      while (HIBYTE(v24) != 1);
    }

    else
    {
      HIBYTE(v24) = 0;
      if (*p_used)
      {
        v10 = 0;
        p_list = &self->list;
        do
        {
          v12 = p_list[v10];
          v13 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v13);
          if (HIBYTE(v24) == 1)
          {
            break;
          }

          ++v10;
        }

        while (v10 < *p_used);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  used = self->used;
  if (used <= a3)
  {
    __boundsFail(a3, used);
  }

  return *(&self->list + a3);
}

@end