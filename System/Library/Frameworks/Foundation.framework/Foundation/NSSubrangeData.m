@interface NSSubrangeData
- (NSSubrangeData)init;
- (NSSubrangeData)initWithData:(id)a3 range:(_NSRange)a4;
- (void)dealloc;
- (void)getBytes:(void *)a3;
- (void)getBytes:(void *)a3 length:(unint64_t)a4;
- (void)getBytes:(void *)a3 range:(_NSRange)a4;
@end

@implementation NSSubrangeData

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSubrangeData;
  [(NSSubrangeData *)&v3 dealloc];
}

- (void)getBytes:(void *)a3
{
  v5 = _CFExecutableLinkedOnOrAfter();
  data = self->_data;
  if (v5)
  {
    location = self->_range.location;
    length = self->_range.length;

    [(NSData *)data getBytes:a3 range:location, length];
    return;
  }

  v9 = [(NSData *)data bytes];
  v10 = self->_range.location;
  v11 = self->_range.length;
  v12 = v9 + v10;
  if (v11 < 0x80000)
  {
    goto LABEL_9;
  }

  v13 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v12 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v14 = v11 & -*v13;
      NSCopyMemoryPages(v12, a3, v14);
      v12 += v14;
      a3 = a3 + v14;
      v11 -= v14;
LABEL_9:
      if (!v11)
      {
        return;
      }
    }
  }

  memmove(a3, v12, v11);
}

- (void)getBytes:(void *)a3 length:(unint64_t)a4
{
  p_range = &self->_range;
  if (self->_range.length >= a4)
  {
    length = a4;
  }

  else
  {
    length = self->_range.length;
  }

  v8 = _CFExecutableLinkedOnOrAfter();
  data = self->_data;
  if (v8)
  {
    location = p_range->location;

    [(NSData *)data getBytes:a3 range:location, length];
    return;
  }

  v11 = ([(NSData *)data bytes]+ p_range->location);
  if (length < 0x80000)
  {
    goto LABEL_12;
  }

  v12 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (v11 | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v13 = length & -*v12;
      NSCopyMemoryPages(v11, a3, v13);
      v11 += v13;
      a3 = a3 + v13;
      length -= v13;
LABEL_12:
      if (!length)
      {
        return;
      }
    }
  }

  memmove(a3, v11, length);
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
  v10 = self->_range.length;
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
    v22 = self->_range.length;
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
    v12 = self->_range.length;
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
  v15 = ([(NSData *)self->_data bytes]+ self->_range.location + location);
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

- (NSSubrangeData)init
{
  v3 = [NSString stringWithFormat:@"%@: should never be called", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v3 userInfo:0]);
}

- (NSSubrangeData)initWithData:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = [a3 length];
  if (__CFADD__(length, location))
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v22.location = location;
    v22.length = length;
    v13 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v12, NSStringFromRange(v22), v20];
    goto LABEL_14;
  }

  if (location + length > v9)
  {
    v14 = v9;
    v15 = _NSMethodExceptionProem(self, a2);
    v16 = v15;
    if (length)
    {
      v23.location = location;
      v23.length = length;
      v19 = NSStringFromRange(v23);
      v21 = v14;
      v18 = v16;
      v17 = @"%@: range %@ exceeds data length %lu";
    }

    else
    {
      v19 = location;
      v21 = v14;
      v18 = v15;
      v17 = @"%@: location %lu exceeds data length %lu";
    }

    v13 = [NSString stringWithFormat:v17, v18, v19, v21];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v13 userInfo:0]);
  }

  if (objc_opt_isKindOfClass())
  {
    self->_range.location = *(a3 + 1) + location;
    self->_range.length = length;
    v10 = *(a3 + 3);
  }

  else
  {
    self->_range.location = location;
    self->_range.length = length;
    v10 = [a3 copyWithZone:0];
  }

  self->_data = v10;
  if (!v10)
  {

    return 0;
  }

  return self;
}

@end