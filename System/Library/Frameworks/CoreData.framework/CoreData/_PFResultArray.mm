@interface _PFResultArray
- (BOOL)_setPurgeable:(BOOL)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4;
- (unint64_t)indexOfObjectIdenticalTo:(id)a3 inRange:(_NSRange)a4;
- (void)dealloc;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)release;
@end

@implementation _PFResultArray

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    self->_cd_rc += 0x20000000;
    [(_PFResultArray *)self dealloc];
  }
}

- (unint64_t)count
{
  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0;
  }

  else
  {
    return self->_count;
  }
}

- (void)dealloc
{
  resultSet = self->_resultSet;
  if (resultSet)
  {
    bufferResultSetDeallocate(resultSet);
  }

  self->_weakRequestStore = 0;
  self->_metadata = 0;
  v4.receiver = self;
  v4.super_class = _PFResultArray;
  [(_PFResultArray *)&v4 dealloc];
}

- (unint64_t)indexOfObject:(id)a3 inRange:(_NSRange)a4
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = a4.length;
  location = a4.location;
  v8 = a4.location + a4.length;
  v9 = [a3 methodForSelector:sel_isEqual_];
  if (location >= v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  while (1)
  {
    v11 = [(_PFResultArray *)self objectAtIndex:location];
    if (v11 == a3 || (v10(a3, sel_isEqual_, v11) & 1) != 0)
    {
      break;
    }

    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (unint64_t)indexOfObjectIdenticalTo:(id)a3 inRange:(_NSRange)a4
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = a4.length;
  location = a4.location;
  if (a4.location >= a4.location + a4.length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while ([(_PFResultArray *)self objectAtIndex:location]!= a3)
  {
    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (BOOL)_setPurgeable:(BOOL)a3
{
  resultSet = self->_resultSet;
  if (a3)
  {
    return bufferResultSetPurgeable(resultSet);
  }

  else
  {
    return bufferResultSetNonPurgeable(resultSet);
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  v36 = *MEMORY[0x1E69E9840];
  resultSet = self->_resultSet;
  var7 = resultSet->var7;
  if ((*&var7 & 0x10) != 0)
  {
    if ((*&var7 & 0x40) != 0)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v25 = _NSMethodExceptionProem();
      v17 = @"%@: backing buffer has been purged";
    }

    else
    {
      if ((*&var7 & 0x20) == 0)
      {
        goto LABEL_2;
      }

      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v25 = _NSMethodExceptionProem();
      v17 = @"%@: backing buffer can be purged";
    }

    [v15 raise:v16 format:{v17, v25, v26, v27}];
    goto LABEL_23;
  }

LABEL_2:
  if (self->_count <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), a3, self->_count}];
LABEL_23:
    v18 = 0;
    goto LABEL_30;
  }

  if (!resultSet->var5)
  {
    v7 = 0;
LABEL_25:
    v9 = resultSet->var9[v7];
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = resultSet->var9[v7];
    v10 = *v9;
    if (v8 + (v10 - 1) >= a3)
    {
      break;
    }

    v8 += v10;
LABEL_14:
    if (++v7 >= resultSet->var5)
    {
      goto LABEL_25;
    }
  }

  if (v10 < a3 - v8)
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          goto LABEL_16;
        }
      }

      else if (v14)
      {
LABEL_16:
        *buf = 134218752;
        v29 = v7;
        v30 = 2048;
        v31 = 0;
        v32 = 2048;
        v33 = v8;
        v34 = 2048;
        v35 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Index beyond buffer: %ld, %ld, %ld, %ld\n", buf, 0x2Au);
      }
    }

    _NSCoreDataLog_console(1, "Index beyond buffer: %ld, %ld, %ld, %ld", v7, 0, v8, a3);
    objc_autoreleasePoolPop(v11);
    resultSet = self->_resultSet;
    goto LABEL_14;
  }

  v23 = a3 - v8;
  if (a3 == v8)
  {
LABEL_26:
    v19 = 8;
    goto LABEL_27;
  }

  v24 = v9[1];
  v19 = 8;
  do
  {
    v19 += *(v9 + v24);
    v24 += 4;
    --v23;
  }

  while (v23);
LABEL_27:
  v18 = v9 + v19;
  if (!*(v9 + v19))
  {
    v20 = objc_opt_class();
    object_setClass(v18, v20);
  }

  [v18 _setParentBuffer:self];
LABEL_30:
  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0;
  }

  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_count;
  }

  result = 0;
  a3->var1 = a4;
  if (a5)
  {
    count = self->_count;
    if (var0 < count)
    {
      result = 0;
      do
      {
        v12 = result;
        v13 = var0 + result;
        v14 = [(_PFResultArray *)self objectAtIndex:var0 + result];
        result = v12 + 1;
        a4[v12] = v14;
      }

      while (v13 + 1 < count && result < a5);
      var0 += result;
    }
  }

  a3->var0 = var0;
  return result;
}

- (void)getObjects:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  MEMORY[0x1EEE9AC00](self);
  v8 = v13 - v7;
  if (count <= 0x200)
  {
    bzero(v13 - v7, 8 * v6);
    if (count)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v8 = NSAllocateScannedUncollectable();
  if (!self->_count)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  do
  {
    *&v8[8 * v9] = [(_PFResultArray *)self objectAtIndex:v9];
    ++v9;
    v10 = self->_count;
  }

  while (v9 < v10);
  v11 = 8 * v10;
LABEL_8:
  memmove(a3, v8, v11);
  if (count >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  v15 = *MEMORY[0x1E69E9840];
  if (a4.location + a4.length > self->_count)
  {
    self = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), a4.location + a4.length - 1, self->_count}];
  }

  if (length)
  {
    v14 = &v14;
    MEMORY[0x1EEE9AC00](self);
    v9 = &v14 - v8;
    if (length > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v14 - v8, 8 * length);
    }

    if (location < v7->_count)
    {
      v10 = 1;
      v11 = v9;
      do
      {
        *v11++ = [(_PFResultArray *)v7 objectAtIndex:location + v10 - 1, v14, v15];
        v12 = location + v10 < v7->_count && length > v10;
        ++v10;
      }

      while (v12);
    }

    memmove(a3, v9, 8 * length);
    if (length >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end