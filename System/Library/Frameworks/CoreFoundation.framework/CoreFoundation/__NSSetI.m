@interface __NSSetI
- (BOOL)containsObject:(id)a3;
- (double)clumpingFactor;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)countForObject:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 count:(unint64_t)a4;
@end

@implementation __NSSetI

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (__NSSet0__ == self)
  {
    __break(1u);
  }

  v3 = self->_used[7];
  v4 = *(&__NSSetSizes + ((2 * v3) & 0x1F8));
  self->_used[7] = v3 & 3;
  *self->_used &= 0xFC00000000000000;
  if (v3 >= 4)
  {
    v5 = (self + 16);
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    do
    {
      if (*v5 >= 1)
      {
      }

      ++v5;
      --v6;
    }

    while (v6);
  }

  v8.receiver = self;
  v8.super_class = __NSSetI;
  [(__NSSetI *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)member:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v3 = self->_used[7];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __19____NSSetI_member___block_invoke;
  v18 = &unk_1E6D823E0;
  v19 = &v20;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [a3 hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == a3;
      if (v10 || ([v9 isEqual:a3] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v17(&v15, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = v21[5];
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (double)clumpingFactor
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *self->_used;
  if ((v3 & 0x3FFFFFFFFFFFFFELL) != 0)
  {
    v4 = v3 & 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = MEMORY[0x1EEE9AC00](v4, a2);
  v8 = &v23 - v7;
  v23 = 0;
  if (v6 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v5, 0, &v23);
    v6 = *self->_used & 0x3FFFFFFFFFFFFFFLL;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(__NSSetI *)self getObjects:v8 count:v6, v23, v24];
  v10 = *self->_used & 0x3FFFFFFFFFFFFFFLL;
  v11 = 0.0;
  if (v10 >= 2)
  {
    v12 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
    v13 = malloc_type_malloc(8 * v10 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v10; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v12;
    }

    qsort(v13, v10, 8uLL, _compare_clumpiness_0);
    v13[v10] = *v13 + v12;
    v15 = v10;
    v16 = v12 / v10;
    v17 = v13 + 1;
    v18 = 0.0;
    do
    {
      v19 = *v17 - *(v17 - 1);
      if (v16 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v17;
      --v10;
    }

    while (v10);
    free(v13);
    v11 = v18 * v15 * v15 / (v12 * v12) / (v15 + -1.0);
  }

  free(v9);
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[__NSSetI countByEnumeratingWithState:objects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSetI countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_18;
  }

  if (a5 >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[__NSSetI countByEnumeratingWithState:objects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSetI countByEnumeratingWithState:objects:count:]", a5);
LABEL_18:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  v6 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_3;
  }

  if (v6 > var0 && (a3->var1 = a4, a5))
  {
    result = 0;
    v9 = self + 16;
    do
    {
      v10 = *&v9[8 * var0++];
      a3->var0 = var0;
      if (v10)
      {
        a4[result++] = v10;
        var0 = a3->var0;
      }
    }

    while (var0 < v6 && result < a5);
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)containsObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v3 = self->_used[7];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __27____NSSetI_containsObject___block_invoke;
  v18 = &unk_1E6D823E0;
  v19 = &v20;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [a3 hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == a3;
      if (v10 || ([v9 isEqual:a3] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v17(&v15, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)countForObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v3 = self->_used[7];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __27____NSSetI_countForObject___block_invoke;
  v18 = &unk_1E6D823E0;
  v19 = &v20;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [a3 hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == a3;
      if (v10 || ([v9 isEqual:a3] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v17(&v15, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = v21[3];
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)getObjects:(id *)a3 count:(unint64_t)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSetI getObjects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSetI getObjects:count:]", a4);
    goto LABEL_18;
  }

  if (a4 >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[__NSSetI getObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = a4;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSetI getObjects:count:]", a4);
LABEL_18:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v17);
  }

  v4 = *self->_used & 0x3FFFFFFFFFFFFFFLL;
  if (v4 >= a4)
  {
    v4 = a4;
  }

  if (self->_used[7] >= 4u && v4 != 0)
  {
    v6 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
    v7 = (self + 16);
    v8 = 1;
    do
    {
      if (*v7)
      {
        *a3++ = *v7;
        --v4;
      }

      if (v8 >= v6)
      {
        break;
      }

      ++v8;
      ++v7;
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[__NSSetI enumerateObjectsWithOptions:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSetI enumerateObjectsWithOptions:usingBlock:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:block - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
    objc_exception_throw(v15);
  }

  v5 = a3;
  v7 = self->_used[7];
  v8 = *(__NSSetSizes + ((2 * v7) & 0x1F8));
  if ((a3 & 1) != 0 && __CFActiveProcessorCount() < 2)
  {
    v5 = 0;
  }

  if (v5)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51____NSSetI_enumerateObjectsWithOptions_usingBlock___block_invoke;
    block[3] = &unk_1E6D82408;
    block[5] = a4;
    block[6] = v17;
    block[4] = self;
    dispatch_apply(v8, 0, block);
    _Block_object_dispose(v17, 8);
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    if (v7 >= 4u)
    {
      v9 = 0;
      do
      {
        if (*&self->_used[8 * v9 + 8])
        {
          v10 = _CFAutoreleasePoolPush();
          __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v10);
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end