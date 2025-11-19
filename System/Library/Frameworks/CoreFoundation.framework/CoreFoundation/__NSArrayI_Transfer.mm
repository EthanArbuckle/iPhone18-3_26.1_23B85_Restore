@interface __NSArrayI_Transfer
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation __NSArrayI_Transfer

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  list = self->_list;
  used = self->_used;
  if (used)
  {
    do
    {
      if ((*list & 0x8000000000000000) == 0)
      {
      }

      ++list;
      --used;
    }

    while (used);
    list = self->_list;
  }

  free(list);
  v6.receiver = self;
  v6.super_class = __NSArrayI_Transfer;
  [(__NSArrayI_Transfer *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  used = self->_used;
  if (used <= a3)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    if (used)
    {
      v10 = used - 1;
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v8, "[__NSArrayI_Transfer objectAtIndex:]", a3, v10);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v11, "[__NSArrayI_Transfer objectAtIndex:]", a3, v10);
    }

    else
    {
      *v8 = 136315394;
      *(v8 + 4) = "[__NSArrayI_Transfer objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a3;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayI_Transfer objectAtIndex:]", a3);
    }

    v12 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v12);
  }

  result = self->_list[a3];
  v5 = *MEMORY[0x1E69E9840];
  return result;
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
    *(v14 + 4) = "[__NSArrayI_Transfer getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI_Transfer getObjects:range:]", length);
    goto LABEL_22;
  }

  if (a4.length >> 61)
  {
    v16 = a4.length;
    v12 = _os_log_pack_size();
    v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[__NSArrayI_Transfer getObjects:range:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v16;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI_Transfer getObjects:range:]", v16);
LABEL_22:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  used = self->_used;
  if ((a4.location & 0x8000000000000000) != 0 || used < a4.location + a4.length)
  {
    location = a4.location;
    v20 = a4.length;
    v21 = _os_log_pack_size();
    v22 = _os_log_pack_fill();
    if (used)
    {
      v25 = used - 1;
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[__NSArrayI_Transfer getObjects:range:]", location, v20, v25);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[__NSArrayI_Transfer getObjects:range:]", location, v20, v25);
    }

    else
    {
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[__NSArrayI_Transfer getObjects:range:]", location, v20);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[__NSArrayI_Transfer getObjects:range:]", location, v20);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21];
    objc_exception_throw(v27);
  }

  v5 = &self->_list[a4.location];
  if (a4.length <= 4)
  {
    if (a4.length > 2)
    {
      if (a4.length != 3)
      {
        v7 = *v5++;
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
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v9 = _os_log_pack_size();
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = a5;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_10;
  }

  if (a5 >> 61)
  {
    v9 = _os_log_pack_size();
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]", a5);
LABEL_10:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v9];
    objc_exception_throw(v15);
  }

  if (a3->var0)
  {
    result = 0;
  }

  else
  {
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_45;
    list = self->_list;
    a3->var0 = -1;
    a3->var1 = list;
    result = self->_used;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v22[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v15 = _os_log_pack_size();
    v17 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[__NSArrayI_Transfer enumerateObjectsWithOptions:usingBlock:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSArrayI_Transfer enumerateObjectsWithOptions:usingBlock:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v15];
    objc_exception_throw(v20);
  }

  v5 = a3;
  used = self->_used;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62____NSArrayI_Transfer_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v22[3] = &unk_1E6A55E70;
  v22[4] = self;
  v22[5] = a4;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(v5, 1, used, v22) & 1) == 0)
  {
    if ((v5 & 2) != 0)
    {
      HIBYTE(v21) = 0;
      v12 = self->_used - 1;
      do
      {
        if (v12 == -1)
        {
          break;
        }

        v13 = self->_list[v12];
        v14 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
        _CFAutoreleasePoolPop(v14);
        --v12;
      }

      while (HIBYTE(v21) != 1);
    }

    else
    {
      HIBYTE(v21) = 0;
      if (self->_used)
      {
        v9 = 0;
        do
        {
          v10 = self->_list[v9];
          v11 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v11);
          if (HIBYTE(v21) == 1)
          {
            break;
          }

          ++v9;
        }

        while (v9 < self->_used);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  used = self->_used;
  if (used <= a3)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    if (used)
    {
      v10 = used - 1;
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v8, "[__NSArrayI_Transfer objectAtIndexedSubscript:]", a3, v10);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v11, "[__NSArrayI_Transfer objectAtIndexedSubscript:]", a3, v10);
    }

    else
    {
      *v8 = 136315394;
      *(v8 + 4) = "[__NSArrayI_Transfer objectAtIndexedSubscript:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a3;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayI_Transfer objectAtIndexedSubscript:]", a3);
    }

    v12 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v12);
  }

  result = self->_list[a3];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end