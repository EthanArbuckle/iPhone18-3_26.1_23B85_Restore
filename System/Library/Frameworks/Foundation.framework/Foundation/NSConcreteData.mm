@interface NSConcreteData
- (NSConcreteData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
- (NSConcreteData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy freeWhenDone:(BOOL)done bytesAreVM:(BOOL)m;
- (id)_createDispatchData;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)getBytes:(void *)bytes;
- (void)getBytes:(void *)bytes length:(unint64_t)length;
- (void)getBytes:(void *)bytes range:(_NSRange)range;
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

- (id)copyWithZone:(_NSZone *)zone
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
    return [(NSData *)&v6 copyWithZone:zone];
  }
}

- (void)getBytes:(void *)bytes
{
  bytesCopy = bytes;
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
  if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | bytes)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v7 = length & -*v6;
      NSCopyMemoryPages(bytes, bytesCopy, v7);
      bytes += v7;
      bytesCopy += v7;
      length -= v7;
      goto LABEL_5;
    }
  }

LABEL_6:

  memmove(bytesCopy, bytes, length);
}

- (void)getBytes:(void *)bytes length:(unint64_t)length
{
  bytesCopy = bytes;
  if (self->_length >= length)
  {
    length = length;
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
  if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | bytes)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v8 = length & -*v7;
      NSCopyMemoryPages(bytes, bytesCopy, v8);
      bytes += v8;
      bytesCopy += v8;
      length -= v8;
      goto LABEL_8;
    }
  }

LABEL_9:

  memmove(bytesCopy, bytes, length);
}

- (void)getBytes:(void *)bytes range:(_NSRange)range
{
  if (!range.length)
  {
    return;
  }

  length = range.length;
  location = range.location;
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
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v15 | bytes)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v17 = length & -*v16;
      NSCopyMemoryPages(v15, bytes, v17);
      v15 += v17;
      bytes = bytes + v17;
      length -= v17;
LABEL_13:
      if (!length)
      {
        return;
      }
    }
  }

  memmove(bytes, v15, length);
}

- (NSConcreteData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  selfCopy = self;
  if (length >= 0x8000000000000001)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000), 0}];
    objc_exception_throw(v18);
  }

  if (!length)
  {
    self->_bytes = 0;
    if (deallocator)
    {
      (*(deallocator + 2))(deallocator, bytes, self->_length);
    }

    goto LABEL_17;
  }

  if (!copy)
  {
    self->_bytes = bytes;
    if (deallocator)
    {
      self->_deallocator = _Block_copy(deallocator);
    }

    goto LABEL_17;
  }

  v10 = malloc_default_zone();
  v11 = malloc_type_zone_malloc(v10, length, 0xCEBFB2E4uLL);
  selfCopy->_bytes = v11;
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  if (length < 0x80000 || (v13 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v11 | bytes)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    lengthCopy = length;
    bytesCopy = bytes;
LABEL_9:
    memmove(v12, bytesCopy, lengthCopy);
    goto LABEL_10;
  }

  v17 = -*v13 & length;
  NSCopyMemoryPages(bytes, v12, v17);
  lengthCopy = length - v17;
  if (length != v17)
  {
    bytesCopy = bytes + v17;
    v12 += v17;
    goto LABEL_9;
  }

LABEL_10:
  selfCopy->_deallocator = _Block_copy(&__block_literal_global_6);
  if (deallocator)
  {
    (*(deallocator + 2))(deallocator, bytes, length);
  }

LABEL_17:
  selfCopy->_length = length;
  return selfCopy;
}

- (NSConcreteData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy freeWhenDone:(BOOL)done bytesAreVM:(BOOL)m
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSConcreteData;
  return [(NSData *)&v8 initWithBytes:bytes length:length copy:copy freeWhenDone:done bytesAreVM:m];
}

@end