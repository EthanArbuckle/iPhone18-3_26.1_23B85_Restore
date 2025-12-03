@interface NSConcreteMutableData
- (NSConcreteMutableData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
- (NSConcreteMutableData)initWithCapacity:(unint64_t)capacity;
- (NSConcreteMutableData)initWithLength:(unint64_t)length;
- (const)bytes;
- (unint64_t)length;
- (void)_freeBytes;
- (void)appendBytes:(const void *)bytes length:(unint64_t)length;
- (void)appendData:(id)data;
- (void)dealloc;
- (void)increaseLengthBy:(unint64_t)by;
- (void)mutableBytes;
- (void)replaceBytesInRange:(_NSRange)range withBytes:(const void *)bytes;
- (void)resetBytesInRange:(_NSRange)range;
- (void)setLength:(unint64_t)length;
@end

@implementation NSConcreteMutableData

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSConcreteMutableData *)self _freeBytes];
  v3.receiver = self;
  v3.super_class = NSConcreteMutableData;
  [(NSConcreteMutableData *)&v3 dealloc];
}

- (void)_freeBytes
{
  if (self->_bytes)
  {
    if ((*(self + 8) & 4) != 0)
    {
      NSDeallocateMemoryPages(self->_bytes, self->_capacity);
    }

    else
    {
      free(self->_bytes);
    }
  }
}

- (unint64_t)length
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v2, *MEMORY[0x1E695E0D0]);
  }

  return self->_length;
}

- (const)bytes
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v2, *MEMORY[0x1E695E0D0]);
  }

  return self->_bytes;
}

- (void)mutableBytes
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v2, *MEMORY[0x1E695E0D0]);
  }

  return self->_bytes;
}

- (void)setLength:(unint64_t)length
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
  }

  if (length >= 0x8000000000000001)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000), 0}];
    objc_exception_throw(v9);
  }

  if (self->_capacity >= length && (bytes = self->_bytes) != 0)
  {
    length = self->_length;
    if (length > length && (*(self + 8) & 2) != 0)
    {
      bzero(&bytes[length], length - length);
    }

    else if (length < length)
    {
      *(self + 8) |= 2u;
    }
  }

  else
  {
    _NSMutableDataGrowBytes(self, a2, length, 1);
  }

  self->_length = length;
}

- (void)appendBytes:(const void *)bytes length:(unint64_t)length
{
  lengthCopy = length;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v4, *MEMORY[0x1E695E0D0]);
    if (!lengthCopy)
    {
      return;
    }
  }

  else if (!length)
  {
    return;
  }

  length = self->_length;
  if (__CFADD__(lengthCopy, length))
  {
    v26 = _NSMethodExceptionProem(self, a2);
    v29.location = length;
    v29.length = lengthCopy;
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range %@ causes integer overflow", v26, NSStringFromRange(v29)), 0}];
    objc_exception_throw(v27);
  }

  capacity = self->_capacity;
  bytes = self->_bytes;
  if (capacity < length + lengthCopy)
  {
    v12 = &bytes[capacity];
    if (bytes)
    {
      v13 = v12 > bytes;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v13 || bytes >= bytes + lengthCopy;
    bytesCopy5 = bytes;
    if (v14)
    {
      goto LABEL_19;
    }

    v16 = malloc_type_malloc(lengthCopy, 0x825B7107uLL);
    bytesCopy5 = v16;
    v17 = lengthCopy;
    bytesCopy4 = bytes;
    if (lengthCopy >= 0x80000)
    {
      v19 = MEMORY[0x1E69E9AC8];
      v17 = lengthCopy;
      bytesCopy4 = bytes;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v16 | bytes)) == 0)
      {
        malloc_default_zone();
        v20 = malloc_zone_claimed_address();
        v16 = bytesCopy5;
        v17 = lengthCopy;
        bytesCopy4 = bytes;
        if (!v20)
        {
          v21 = -*v19 & lengthCopy;
          NSCopyMemoryPages(bytes, bytesCopy5, v21);
          v17 = lengthCopy - v21;
          if (lengthCopy == v21)
          {
LABEL_19:
            _NSMutableDataGrowBytes(self, a2, length + lengthCopy, 0);
            bytes = self->_bytes;
            goto LABEL_20;
          }

          bytesCopy4 = bytes + v21;
          v16 = bytesCopy5 + v21;
        }
      }
    }

    memmove(v16, bytesCopy4, v17);
    goto LABEL_19;
  }

  bytesCopy5 = bytes;
  if (!bytes)
  {
    goto LABEL_19;
  }

LABEL_20:
  self->_length = length + lengthCopy;
  v22 = &bytes[length];
  if (lengthCopy < 0x80000 || (v23 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v22 | bytesCopy5)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v24 = bytesCopy5;
LABEL_24:
    memmove(v22, v24, lengthCopy);
    goto LABEL_25;
  }

  v25 = -*v23 & lengthCopy;
  NSCopyMemoryPages(bytesCopy5, v22, v25);
  lengthCopy -= v25;
  if (lengthCopy)
  {
    v24 = (bytesCopy5 + v25);
    v22 += v25;
    goto LABEL_24;
  }

LABEL_25:
  if (bytesCopy5 != bytes)
  {

    free(bytesCopy5);
  }
}

- (void)appendData:(id)data
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSConcreteMutableData_appendData___block_invoke;
  v6[3] = &unk_1E69F2A48;
  v6[4] = self;
  [data enumerateByteRangesUsingBlock:v6];
}

- (void)increaseLengthBy:(unint64_t)by
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
    if (!by)
    {
      return;
    }
  }

  else if (!by)
  {
    return;
  }

  if (by >= 0x8000000000000001)
  {
    0x8000000000000000 = [NSString stringWithFormat:@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "extra length", by, 0x8000000000000000];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
    goto LABEL_16;
  }

  length = self->_length;
  if (__CFADD__(by, length))
  {
    v13 = self->_length;
    v14 = _NSMethodExceptionProem(self, a2);
    v15.location = v13;
    v15.length = by;
    0x8000000000000000 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v14, NSStringFromRange(v15)];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695DA20];
LABEL_16:
    objc_exception_throw([v11 exceptionWithName:*v12 reason:0x8000000000000000 userInfo:0]);
  }

  v8 = length + by;
  if (self->_capacity >= length + by && (bytes = self->_bytes) != 0)
  {
    if ((*(self + 8) & 2) != 0)
    {
      bzero(&bytes[length], by);
    }
  }

  else
  {
    _NSMutableDataGrowBytes(self, a2, length + by, 1);
  }

  self->_length = v8;
}

- (void)replaceBytesInRange:(_NSRange)range withBytes:(const void *)bytes
{
  length = range.length;
  location = range.location;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v4, *MEMORY[0x1E695E0D0]);
    if (!length)
    {
      return;
    }
  }

  else if (!range.length)
  {
    return;
  }

  v10 = self->_length;
  if (location > v10)
  {
    v28 = [NSString stringWithFormat:@"%@: location %lu exceeds data length %lu", _NSMethodExceptionProem(self, a2), location, v10];
    goto LABEL_37;
  }

  if (__CFADD__(length, location))
  {
    v29 = _NSMethodExceptionProem(self, a2);
    v32.location = location;
    v32.length = length;
    v28 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v29, NSStringFromRange(v32), v30];
LABEL_37:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v28 userInfo:0]);
  }

  v11 = location + length;
  bytesCopy3 = bytes;
  if (v10 < location + length)
  {
    capacity = self->_capacity;
    bytesCopy3 = bytes;
    if (capacity >= v11)
    {
LABEL_21:
      self->_length = v11;
      goto LABEL_22;
    }

    bytes = self->_bytes;
    v15 = &bytes[capacity];
    if (bytes)
    {
      v16 = v15 > bytes;
    }

    else
    {
      v16 = 0;
    }

    v17 = !v16 || bytes >= bytes + length;
    bytesCopy3 = bytes;
    if (!v17)
    {
      v18 = malloc_type_malloc(length, 0xE9386013uLL);
      bytesCopy3 = v18;
      v19 = length;
      bytesCopy6 = bytes;
      if (length < 0x80000)
      {
        goto LABEL_19;
      }

      v21 = MEMORY[0x1E69E9AC8];
      v19 = length;
      bytesCopy6 = bytes;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v18 | bytes)) != 0)
      {
        goto LABEL_19;
      }

      malloc_default_zone();
      v22 = malloc_zone_claimed_address();
      v18 = bytesCopy3;
      v19 = length;
      bytesCopy6 = bytes;
      if (v22)
      {
        goto LABEL_19;
      }

      v23 = length & -*v21;
      NSCopyMemoryPages(bytes, bytesCopy3, v23);
      v19 = length - v23;
      if (length != v23)
      {
        bytesCopy6 = bytes + v23;
        v18 = bytesCopy3 + v23;
LABEL_19:
        memmove(v18, bytesCopy6, v19);
      }
    }

    _NSMutableDataGrowBytes(self, a2, location + length, 0);
    goto LABEL_21;
  }

LABEL_22:
  v24 = self->_bytes + location;
  if (length < 0x80000 || (v25 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v24 | bytesCopy3)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v26 = bytesCopy3;
LABEL_26:
    memmove(v24, v26, length);
    goto LABEL_27;
  }

  v27 = length & -*v25;
  NSCopyMemoryPages(bytesCopy3, v24, v27);
  length -= v27;
  if (length)
  {
    v26 = (bytesCopy3 + v27);
    v24 += v27;
    goto LABEL_26;
  }

LABEL_27:
  if (bytesCopy3 != bytes)
  {

    free(bytesCopy3);
  }
}

- (void)resetBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
    if (!length)
    {
      return;
    }
  }

  else if (!range.length)
  {
    return;
  }

  v8 = self->_length;
  if (location > v8)
  {
    v11 = [NSString stringWithFormat:@"%@: location %lu exceeds data length %lu", _NSMethodExceptionProem(self, a2), location, self->_length];
    goto LABEL_16;
  }

  if (__CFADD__(length, location))
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v15.location = location;
    v15.length = length;
    v11 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v12, NSStringFromRange(v15), v13];
LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v11 userInfo:0]);
  }

  v9 = location + length;
  if (v8 < location + length)
  {
    if (self->_capacity < v9)
    {
      _NSMutableDataGrowBytes(self, a2, location + length, 0);
    }

    self->_length = v9;
  }

  v10 = self->_bytes + location;

  bzero(v10, length);
}

- (NSConcreteMutableData)initWithLength:(unint64_t)length
{
  selfCopy = self;
  if (length >= 0x8000000000000001)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000), 0}];
    objc_exception_throw(v11);
  }

  v5 = length >> 2;
  if (length >> 30)
  {
    v5 = 0;
  }

  v6 = v5 + length;
  if (v5 + length >= 0x80000)
  {
    v6 = (v6 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  *(self + 8) &= ~4u;
  v7 = malloc_default_zone();
  if (length <= 0x20000)
  {
    v8 = malloc_type_zone_malloc(v7, v6, 0xCEBFB2E4uLL);
    v9 = 2;
  }

  else
  {
    v8 = malloc_type_zone_calloc(v7, 1uLL, v6, 0x5525ABDBuLL);
    v9 = 0;
  }

  selfCopy->_bytes = v8;
  selfCopy->_capacity = v6;
  *(selfCopy + 8) = *(selfCopy + 8) & 0xFD | v9;
  if (selfCopy->_bytes)
  {
    [(NSConcreteMutableData *)selfCopy setLength:length];
  }

  else
  {

    return 0;
  }

  return selfCopy;
}

- (NSConcreteMutableData)initWithCapacity:(unint64_t)capacity
{
  selfCopy = self;
  if (capacity >= 0x8000000000000001)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "capacity", capacity, 0x8000000000000000), 0}];
    objc_exception_throw(v8);
  }

  v4 = capacity >> 2;
  if (capacity >> 30)
  {
    v4 = 0;
  }

  v5 = v4 + capacity;
  if (v4 + capacity >= 0x80000)
  {
    v5 = (v5 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  self->_length = 0;
  *(self + 8) &= ~4u;
  v6 = malloc_default_zone();
  selfCopy->_bytes = malloc_type_zone_malloc(v6, v5, 0xCEBFB2E4uLL);
  selfCopy->_capacity = v5;
  *(selfCopy + 8) |= 2u;
  if (!selfCopy->_bytes)
  {

    return 0;
  }

  return selfCopy;
}

- (NSConcreteMutableData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  if (length >= 0x8000000000000001)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", length, 0x8000000000000000), 0}];
    objc_exception_throw(v17);
  }

  v9 = [(NSConcreteMutableData *)self initWithCapacity:length];
  v10 = v9;
  if (v9)
  {
    bytes = v9->_bytes;
    if (length < 0x80000)
    {
      bytesCopy2 = bytes;
      lengthCopy2 = length;
      if (!length)
      {
LABEL_9:
        if (deallocator)
        {
          (*(deallocator + 2))(deallocator, bytes, length);
        }

        v10->_length = length;
        return v10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9AC8];
      if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | bytes)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
      {
        lengthCopy2 = length;
        bytesCopy2 = bytes;
      }

      else
      {
        v16 = -*v12 & length;
        NSCopyMemoryPages(bytes, bytes, v16);
        bytesCopy2 = bytes + v16;
        bytes += v16;
        lengthCopy2 = length - v16;
        if (length == v16)
        {
          goto LABEL_9;
        }
      }
    }

    memmove(bytes, bytesCopy2, lengthCopy2);
    goto LABEL_9;
  }

  return v10;
}

@end