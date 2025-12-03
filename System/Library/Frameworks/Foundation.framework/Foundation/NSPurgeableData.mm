@interface NSPurgeableData
- (BOOL)beginContentAccess;
- (BOOL)isContentDiscarded;
- (NSPurgeableData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
- (NSPurgeableData)initWithCapacity:(unint64_t)capacity;
- (const)bytes;
- (id)description;
- (unint64_t)length;
- (void)_destroyMemory;
- (void)dealloc;
- (void)discardContentIfPossible;
- (void)endContentAccess;
- (void)mutableBytes;
- (void)setLength:(unint64_t)length;
@end

@implementation NSPurgeableData

- (BOOL)beginContentAccess
{
  objc_sync_enter(self);
  accessCount = self->_accessCount;
  if (!accessCount)
  {
    if (!self->_reserved || _CFDiscorporateMemoryMaterialize())
    {
      v4 = 0;
      goto LABEL_8;
    }

    accessCount = self->_accessCount;
  }

  if (accessCount != 0x7FFFFFFF)
  {
    self->_accessCount = accessCount + 1;
  }

  v4 = 1;
LABEL_8:
  objc_sync_exit(self);
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSPurgeableData *)self _destroyMemory];
  v3.receiver = self;
  v3.super_class = NSPurgeableData;
  [(NSPurgeableData *)&v3 dealloc];
}

- (void)endContentAccess
{
  objc_sync_enter(self);
  accessCount = self->_accessCount;
  if (accessCount != 0x7FFFFFFF)
  {
    if (!accessCount)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: called without successful matching -beginContentAccess", _NSMethodExceptionProem(self, a2)), 0}];
      objc_exception_throw(v6);
    }

    v5 = accessCount - 1;
    self->_accessCount = v5;
    if (!v5)
    {
      _CFDiscorporateMemoryDematerialize();
    }
  }

  objc_sync_exit(self);
}

- (void)_destroyMemory
{
  reserved = self->_reserved;
  if (reserved)
  {
    if (reserved->var2)
    {
      _CFDiscorporateMemoryDeallocate();
      reserved = self->_reserved;
    }

    free(reserved);
    self->_reserved = 0;
  }
}

- (unint64_t)length
{
  if (!self->_accessCount || !self->_reserved->var0)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: <%@: %p> accessed outside successful -beginContentAccess and -endContentAccess calls.", v4, NSStringFromClass(v5), self), 0}];
    objc_exception_throw(v6);
  }

  return self->_length;
}

- (const)bytes
{
  if (!self->_accessCount || !self->_reserved->var0)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: <%@: %p> accessed outside successful -beginContentAccess and -endContentAccess calls.", v4, NSStringFromClass(v5), self), 0}];
    objc_exception_throw(v6);
  }

  return self->_reserved->var0;
}

- (void)mutableBytes
{
  if (!self->_accessCount || !self->_reserved->var0)
  {
    v4 = _NSMethodExceptionProem(self, a2);
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: <%@: %p> accessed outside successful -beginContentAccess and -endContentAccess calls.", v4, NSStringFromClass(v5), self), 0}];
    objc_exception_throw(v6);
  }

  return self->_reserved->var0;
}

- (void)setLength:(unint64_t)length
{
  if (!self->_accessCount || (reserved = self->_reserved, !reserved->var0))
  {
    v19 = _NSMethodExceptionProem(self, a2);
    v20 = objc_opt_class();
    0x8000000000000000 = [NSString stringWithFormat:@"%@: <%@: %p> accessed outside successful -beginContentAccess and -endContentAccess calls.", v19, NSStringFromClass(v20), self];
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E695D920];
    goto LABEL_31;
  }

  if (length >= 0x8000000000000001)
  {
    0x8000000000000000 = [NSString stringWithFormat:@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000];
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E695D940];
    goto LABEL_31;
  }

  var1 = reserved->var1;
  length = self->_length;
  v9 = 1;
  if (length >> 19)
  {
    v9 = 2;
  }

  lengthCopy = (length >> v9) + length;
  if (var1 > lengthCopy)
  {
    lengthCopy = var1;
  }

  if (length <= length)
  {
    lengthCopy = length;
  }

  v11 = MEMORY[0x1E69E9AC8];
  v12 = lengthCopy + *MEMORY[0x1E69E9AC8] - 1;
  if ((v12 & -*MEMORY[0x1E69E9AC8]) <= lengthCopy)
  {
    v13 = lengthCopy;
  }

  else
  {
    v13 = v12 & -*MEMORY[0x1E69E9AC8];
  }

  if (v13 != var1)
  {
    if (!_CFDiscorporateMemoryAllocate())
    {
      v14 = 0;
      var0 = self->_reserved->var0;
      if (length >= length)
      {
        lengthCopy3 = length;
      }

      else
      {
        lengthCopy3 = length;
      }

      if (lengthCopy3 >= 0x80000)
      {
        if (((*v11 - 1) & var0) != 0)
        {
          goto LABEL_23;
        }

        malloc_default_zone();
        if (malloc_zone_claimed_address())
        {
          goto LABEL_23;
        }

        v17 = lengthCopy3 & -*v11;
        NSCopyMemoryPages(var0, 0, v17);
        var0 += v17;
        v14 = v17;
        lengthCopy3 -= v17;
      }

      if (!lengthCopy3)
      {
LABEL_24:
        _CFDiscorporateMemoryDeallocate();
        v18 = self->_reserved;
        v18->var5 = 0;
        *&v18->var0 = 0u;
        *&v18->var2 = 0u;
        goto LABEL_25;
      }

LABEL_23:
      memmove(v14, var0, lengthCopy3);
      goto LABEL_24;
    }

    0x8000000000000000 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%lu)", _NSMethodExceptionProem(self, a2), v13];
    v22 = MEMORY[0x1E695DF30];
    v23 = MEMORY[0x1E695DA18];
LABEL_31:
    objc_exception_throw([v22 exceptionWithName:*v23 reason:0x8000000000000000 userInfo:0]);
  }

LABEL_25:
  if (length > length)
  {
    bzero((self->_reserved->var0 + length), length - length);
  }

  self->_length = length;
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_accessCount)
  {
    v7.receiver = self;
    v7.super_class = NSPurgeableData;
    v3 = [(NSData *)&v7 description];
  }

  else
  {
    v4 = objc_opt_class();
    v3 = [NSString stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
  }

  v5 = v3;
  objc_sync_exit(self);
  return v5;
}

- (void)discardContentIfPossible
{
  objc_sync_enter(self);
  if (!self->_accessCount)
  {
    [(NSPurgeableData *)self _destroyMemory];
  }

  objc_sync_exit(self);
}

- (BOOL)isContentDiscarded
{
  objc_sync_enter(self);
  if (!self->_reserved)
  {
    goto LABEL_5;
  }

  if (!self->_accessCount)
  {
    if (!_CFDiscorporateMemoryMaterialize())
    {
      _CFDiscorporateMemoryDematerialize();
      goto LABEL_3;
    }

LABEL_5:
    v3 = 1;
    goto LABEL_6;
  }

LABEL_3:
  v3 = 0;
LABEL_6:
  objc_sync_exit(self);
  return v3;
}

- (NSPurgeableData)initWithCapacity:(unint64_t)capacity
{
  selfCopy = self;
  if (capacity >= 0x8000000000000001)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "capacity", capacity, 0x8000000000000000), 0}];
    objc_exception_throw(v5);
  }

  self->_length = 0;
  self->_reserved = malloc_type_malloc(0x28uLL, 0x1000040C7883783uLL);
  if (_CFDiscorporateMemoryAllocate())
  {

    return 0;
  }

  else
  {
    selfCopy->_accessCount = 1;
  }

  return selfCopy;
}

- (NSPurgeableData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  if (length >= 0x8000000000000001)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000), 0}];
    objc_exception_throw(v17);
  }

  v9 = [(NSPurgeableData *)self initWithCapacity:length];
  v10 = v9;
  if (v9)
  {
    var0 = v9->_reserved->var0;
    bytesCopy2 = bytes;
    lengthCopy2 = length;
    if (length >= 0x80000)
    {
      v14 = MEMORY[0x1E69E9AC8];
      if (((*MEMORY[0x1E69E9AC8] - 1) & (var0 | bytes)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
      {
        lengthCopy2 = length;
        bytesCopy2 = bytes;
        goto LABEL_9;
      }

      v15 = -*v14 & length;
      NSCopyMemoryPages(bytes, var0, v15);
      bytesCopy2 = bytes + v15;
      var0 += v15;
      lengthCopy2 = length - v15;
    }

    if (!lengthCopy2)
    {
LABEL_10:
      if (deallocator)
      {
        (*(deallocator + 2))(deallocator, bytes, length);
      }

      v10->_length = length;
      return v10;
    }

LABEL_9:
    memmove(var0, bytesCopy2, lengthCopy2);
    goto LABEL_10;
  }

  return v10;
}

@end