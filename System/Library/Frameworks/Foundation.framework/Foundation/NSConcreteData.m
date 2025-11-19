@interface NSConcreteData
- (NSConcreteData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6;
- (NSConcreteData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 freeWhenDone:(BOOL)a6 bytesAreVM:(BOOL)a7;
- (id)_createDispatchData;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)getBytes:(void *)a3;
- (void)getBytes:(void *)a3 length:(unint64_t)a4;
- (void)getBytes:(void *)a3 range:(_NSRange)a4;
@end

@implementation NSConcreteData

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  deallocator = self->_deallocator;
  if (deallocator)
  {
    bytes = self->_bytes;
    if (bytes)
    {
      deallocator[2](deallocator, bytes, self->_length);
      deallocator = self->_deallocator;
    }

    _Block_release(deallocator);
  }

  v5.receiver = self;
  v5.super_class = NSConcreteData;
  [(NSConcreteData *)&v5 dealloc];
}

- (id)_createDispatchData
{
  v3 = ![(NSConcreteData *)self _copyWillRetain];

  return _NSDataCreateDispatchDataFromData(self, v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(NSConcreteData *)self _copyWillRetain])
  {

    return self;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSConcreteData;
    return [(NSData *)&v6 copyWithZone:a3];
  }
}

- (void)getBytes:(void *)a3
{
  v3 = a3;
  bytes = self->_bytes;
  length = self->_length;
  if (length < 0x80000)
  {
LABEL_5:
    if (!length)
    {
      return;
    }

    goto LABEL_6;
  }

  v6 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v7 = length & -*v6;
      NSCopyMemoryPages(bytes, v3, v7);
      bytes += v7;
      v3 += v7;
      length -= v7;
      goto LABEL_5;
    }
  }

LABEL_6:

  memmove(v3, bytes, length);
}

- (void)getBytes:(void *)a3 length:(unint64_t)a4
{
  v4 = a3;
  if (self->_length >= a4)
  {
    length = a4;
  }

  else
  {
    length = self->_length;
  }

  bytes = self->_bytes;
  if (length < 0x80000)
  {
LABEL_8:
    if (!length)
    {
      return;
    }

    goto LABEL_9;
  }

  v7 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v8 = length & -*v7;
      NSCopyMemoryPages(bytes, v4, v8);
      bytes += v8;
      v4 += v8;
      length -= v8;
      goto LABEL_8;
    }
  }

LABEL_9:

  memmove(v4, bytes, length);
}

- (void)getBytes:(void *)a3 range:(_NSRange)a4
{
  if (!a4.length)
  {
    return;
  }

  length = a4.length;
  location = a4.location;
  v9 = _CFExecutableLinkedOnOrAfter();
  v10 = self->_length;
  if (!v9)
  {
    if (v10 > location)
    {
      if (length >= v10 - location)
      {
        length = v10 - location;
      }

      goto LABEL_9;
    }

    v21 = location;
    v22 = self->_length;
    v20 = _NSMethodExceptionProem(self, a2);
    v14 = @"%@: location %lu exceeds data length %lu";
LABEL_20:
    v19 = [NSString stringWithFormat:v14, v20, v21, v22];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v19 userInfo:0]);
  }

  if (__CFADD__(length, location))
  {
    v18 = _NSMethodExceptionProem(self, a2);
    v25.location = location;
    v25.length = length;
    v20 = v18;
    v21 = NSStringFromRange(v25);
    v14 = @"%@: range %@ causes integer overflow";
    goto LABEL_20;
  }

  if (location + length > v10)
  {
    v11 = a2;
    v12 = self->_length;
    v13 = _NSMethodExceptionProem(self, v11);
    v24.location = location;
    v24.length = length;
    v21 = NSStringFromRange(v24);
    v22 = v12;
    v20 = v13;
    v14 = @"%@: range %@ exceeds data length %lu";
    goto LABEL_20;
  }

LABEL_9:
  v15 = self->_bytes + location;
  if (length < 0x80000)
  {
    goto LABEL_13;
  }

  v16 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v15 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v17 = length & -*v16;
      NSCopyMemoryPages(v15, a3, v17);
      v15 += v17;
      a3 = a3 + v17;
      length -= v17;
LABEL_13:
      if (!length)
      {
        return;
      }
    }
  }

  memmove(a3, v15, length);
}

- (NSConcreteData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6
{
  v7 = self;
  if (a4 >= 0x8000000000000001)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", a4, 0x8000000000000000), 0}];
    objc_exception_throw(v18);
  }

  if (!a4)
  {
    self->_bytes = 0;
    if (a6)
    {
      (*(a6 + 2))(a6, a3, self->_length);
    }

    goto LABEL_17;
  }

  if (!a5)
  {
    self->_bytes = a3;
    if (a6)
    {
      self->_deallocator = _Block_copy(a6);
    }

    goto LABEL_17;
  }

  v10 = malloc_default_zone();
  v11 = malloc_type_zone_malloc(v10, a4, 0xCEBFB2E4uLL);
  v7->_bytes = v11;
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  if (a4 < 0x80000 || (v13 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v11 | a3)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v14 = a4;
    v15 = a3;
LABEL_9:
    memmove(v12, v15, v14);
    goto LABEL_10;
  }

  v17 = -*v13 & a4;
  NSCopyMemoryPages(a3, v12, v17);
  v14 = a4 - v17;
  if (a4 != v17)
  {
    v15 = a3 + v17;
    v12 += v17;
    goto LABEL_9;
  }

LABEL_10:
  v7->_deallocator = _Block_copy(&__block_literal_global_6);
  if (a6)
  {
    (*(a6 + 2))(a6, a3, a4);
  }

LABEL_17:
  v7->_length = a4;
  return v7;
}

- (NSConcreteData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 freeWhenDone:(BOOL)a6 bytesAreVM:(BOOL)a7
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSConcreteData;
  return [(NSData *)&v8 initWithBytes:a3 length:a4 copy:a5 freeWhenDone:a6 bytesAreVM:a7];
}

@end