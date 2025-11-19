@interface NSConcreteMutableData
- (NSConcreteMutableData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6;
- (NSConcreteMutableData)initWithCapacity:(unint64_t)a3;
- (NSConcreteMutableData)initWithLength:(unint64_t)a3;
- (const)bytes;
- (unint64_t)length;
- (void)_freeBytes;
- (void)appendBytes:(const void *)a3 length:(unint64_t)a4;
- (void)appendData:(id)a3;
- (void)dealloc;
- (void)increaseLengthBy:(unint64_t)a3;
- (void)mutableBytes;
- (void)replaceBytesInRange:(_NSRange)a3 withBytes:(const void *)a4;
- (void)resetBytesInRange:(_NSRange)a3;
- (void)setLength:(unint64_t)a3;
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

- (void)setLength:(unint64_t)a3
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
  }

  if (a3 >= 0x8000000000000001)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", a3, 0x8000000000000000), 0}];
    objc_exception_throw(v9);
  }

  if (self->_capacity >= a3 && (bytes = self->_bytes) != 0)
  {
    length = self->_length;
    if (a3 > length && (*(self + 8) & 2) != 0)
    {
      bzero(&bytes[length], a3 - length);
    }

    else if (a3 < length)
    {
      *(self + 8) |= 2u;
    }
  }

  else
  {
    _NSMutableDataGrowBytes(self, a2, a3, 1);
  }

  self->_length = a3;
}

- (void)appendBytes:(const void *)a3 length:(unint64_t)a4
{
  v5 = a4;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v4, *MEMORY[0x1E695E0D0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  length = self->_length;
  if (__CFADD__(v5, length))
  {
    v26 = _NSMethodExceptionProem(self, a2);
    v29.location = length;
    v29.length = v5;
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: range %@ causes integer overflow", v26, NSStringFromRange(v29)), 0}];
    objc_exception_throw(v27);
  }

  capacity = self->_capacity;
  bytes = self->_bytes;
  if (capacity < length + v5)
  {
    v12 = &bytes[capacity];
    if (bytes)
    {
      v13 = v12 > a3;
    }

    else
    {
      v13 = 0;
    }

    v14 = !v13 || bytes >= a3 + v5;
    v15 = a3;
    if (v14)
    {
      goto LABEL_19;
    }

    v16 = malloc_type_malloc(v5, 0x825B7107uLL);
    v15 = v16;
    v17 = v5;
    v18 = a3;
    if (v5 >= 0x80000)
    {
      v19 = MEMORY[0x1E69E9AC8];
      v17 = v5;
      v18 = a3;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v16 | a3)) == 0)
      {
        malloc_default_zone();
        v20 = malloc_zone_claimed_address();
        v16 = v15;
        v17 = v5;
        v18 = a3;
        if (!v20)
        {
          v21 = -*v19 & v5;
          NSCopyMemoryPages(a3, v15, v21);
          v17 = v5 - v21;
          if (v5 == v21)
          {
LABEL_19:
            _NSMutableDataGrowBytes(self, a2, length + v5, 0);
            bytes = self->_bytes;
            goto LABEL_20;
          }

          v18 = a3 + v21;
          v16 = v15 + v21;
        }
      }
    }

    memmove(v16, v18, v17);
    goto LABEL_19;
  }

  v15 = a3;
  if (!bytes)
  {
    goto LABEL_19;
  }

LABEL_20:
  self->_length = length + v5;
  v22 = &bytes[length];
  if (v5 < 0x80000 || (v23 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v22 | v15)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v24 = v15;
LABEL_24:
    memmove(v22, v24, v5);
    goto LABEL_25;
  }

  v25 = -*v23 & v5;
  NSCopyMemoryPages(v15, v22, v25);
  v5 -= v25;
  if (v5)
  {
    v24 = (v15 + v25);
    v22 += v25;
    goto LABEL_24;
  }

LABEL_25:
  if (v15 != a3)
  {

    free(v15);
  }
}

- (void)appendData:(id)a3
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
  [a3 enumerateByteRangesUsingBlock:v6];
}

- (void)increaseLengthBy:(unint64_t)a3
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  if (a3 >= 0x8000000000000001)
  {
    v10 = [NSString stringWithFormat:@"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "extra length", a3, 0x8000000000000000];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
    goto LABEL_16;
  }

  length = self->_length;
  if (__CFADD__(a3, length))
  {
    v13 = self->_length;
    v14 = _NSMethodExceptionProem(self, a2);
    v15.location = v13;
    v15.length = a3;
    v10 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v14, NSStringFromRange(v15)];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695DA20];
LABEL_16:
    objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
  }

  v8 = length + a3;
  if (self->_capacity >= length + a3 && (bytes = self->_bytes) != 0)
  {
    if ((*(self + 8) & 2) != 0)
    {
      bzero(&bytes[length], a3);
    }
  }

  else
  {
    _NSMutableDataGrowBytes(self, a2, length + a3, 1);
  }

  self->_length = v8;
}

- (void)replaceBytesInRange:(_NSRange)a3 withBytes:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v4, *MEMORY[0x1E695E0D0]);
    if (!length)
    {
      return;
    }
  }

  else if (!a3.length)
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
  v12 = a4;
  if (v10 < location + length)
  {
    capacity = self->_capacity;
    v12 = a4;
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
      v16 = v15 > a4;
    }

    else
    {
      v16 = 0;
    }

    v17 = !v16 || bytes >= a4 + length;
    v12 = a4;
    if (!v17)
    {
      v18 = malloc_type_malloc(length, 0xE9386013uLL);
      v12 = v18;
      v19 = length;
      v20 = a4;
      if (length < 0x80000)
      {
        goto LABEL_19;
      }

      v21 = MEMORY[0x1E69E9AC8];
      v19 = length;
      v20 = a4;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v18 | a4)) != 0)
      {
        goto LABEL_19;
      }

      malloc_default_zone();
      v22 = malloc_zone_claimed_address();
      v18 = v12;
      v19 = length;
      v20 = a4;
      if (v22)
      {
        goto LABEL_19;
      }

      v23 = length & -*v21;
      NSCopyMemoryPages(a4, v12, v23);
      v19 = length - v23;
      if (length != v23)
      {
        v20 = a4 + v23;
        v18 = v12 + v23;
LABEL_19:
        memmove(v18, v20, v19);
      }
    }

    _NSMutableDataGrowBytes(self, a2, location + length, 0);
    goto LABEL_21;
  }

LABEL_22:
  v24 = self->_bytes + location;
  if (length < 0x80000 || (v25 = MEMORY[0x1E69E9AC8], ((*MEMORY[0x1E69E9AC8] - 1) & (v24 | v12)) != 0) || (malloc_default_zone(), malloc_zone_claimed_address()))
  {
    v26 = v12;
LABEL_26:
    memmove(v24, v26, length);
    goto LABEL_27;
  }

  v27 = length & -*v25;
  NSCopyMemoryPages(v12, v24, v27);
  length -= v27;
  if (length)
  {
    v26 = (v12 + v27);
    v24 += v27;
    goto LABEL_26;
  }

LABEL_27:
  if (v12 != a4)
  {

    free(v12);
  }
}

- (void)resetBytesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(self, v3, *MEMORY[0x1E695E0D0]);
    if (!length)
    {
      return;
    }
  }

  else if (!a3.length)
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

- (NSConcreteMutableData)initWithLength:(unint64_t)a3
{
  v4 = self;
  if (a3 >= 0x8000000000000001)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", a3, 0x8000000000000000), 0}];
    objc_exception_throw(v11);
  }

  v5 = a3 >> 2;
  if (a3 >> 30)
  {
    v5 = 0;
  }

  v6 = v5 + a3;
  if (v5 + a3 >= 0x80000)
  {
    v6 = (v6 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  *(self + 8) &= ~4u;
  v7 = malloc_default_zone();
  if (a3 <= 0x20000)
  {
    v8 = malloc_type_zone_malloc(v7, v6, 0xCEBFB2E4uLL);
    v9 = 2;
  }

  else
  {
    v8 = malloc_type_zone_calloc(v7, 1uLL, v6, 0x5525ABDBuLL);
    v9 = 0;
  }

  v4->_bytes = v8;
  v4->_capacity = v6;
  *(v4 + 8) = *(v4 + 8) & 0xFD | v9;
  if (v4->_bytes)
  {
    [(NSConcreteMutableData *)v4 setLength:a3];
  }

  else
  {

    return 0;
  }

  return v4;
}

- (NSConcreteMutableData)initWithCapacity:(unint64_t)a3
{
  v3 = self;
  if (a3 >= 0x8000000000000001)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "capacity", a3, 0x8000000000000000), 0}];
    objc_exception_throw(v8);
  }

  v4 = a3 >> 2;
  if (a3 >> 30)
  {
    v4 = 0;
  }

  v5 = v4 + a3;
  if (v4 + a3 >= 0x80000)
  {
    v5 = (v5 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  self->_length = 0;
  *(self + 8) &= ~4u;
  v6 = malloc_default_zone();
  v3->_bytes = malloc_type_zone_malloc(v6, v5, 0xCEBFB2E4uLL);
  v3->_capacity = v5;
  *(v3 + 8) |= 2u;
  if (!v3->_bytes)
  {

    return 0;
  }

  return v3;
}

- (NSConcreteMutableData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6
{
  if (a4 >= 0x8000000000000001)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: absurd %s: %lu, maximum size: %llu bytes", _NSMethodExceptionProem(self, a2), "length", a4, 0x8000000000000000), 0}];
    objc_exception_throw(v17);
  }

  v9 = [(NSConcreteMutableData *)self initWithCapacity:a4];
  v10 = v9;
  if (v9)
  {
    bytes = v9->_bytes;
    if (a4 < 0x80000)
    {
      v14 = a3;
      v13 = a4;
      if (!a4)
      {
LABEL_9:
        if (a6)
        {
          (*(a6 + 2))(a6, a3, a4);
        }

        v10->_length = a4;
        return v10;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9AC8];
      if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | a3)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
      {
        v13 = a4;
        v14 = a3;
      }

      else
      {
        v16 = -*v12 & a4;
        NSCopyMemoryPages(a3, bytes, v16);
        v14 = a3 + v16;
        bytes += v16;
        v13 = a4 - v16;
        if (a4 == v16)
        {
          goto LABEL_9;
        }
      }
    }

    memmove(bytes, v14, v13);
    goto LABEL_9;
  }

  return v10;
}

@end