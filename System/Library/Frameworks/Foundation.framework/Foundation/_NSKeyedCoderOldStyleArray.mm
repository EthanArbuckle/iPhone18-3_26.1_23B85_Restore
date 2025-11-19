@interface _NSKeyedCoderOldStyleArray
- (_NSKeyedCoderOldStyleArray)initWithCoder:(id)a3;
- (_NSKeyedCoderOldStyleArray)initWithObjCType:(char)a3 count:(unint64_t)a4 at:(const void *)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fillObjCType:(char)a3 count:(unint64_t)a4 at:(void *)a5;
@end

@implementation _NSKeyedCoderOldStyleArray

- (_NSKeyedCoderOldStyleArray)initWithObjCType:(char)a3 count:(unint64_t)a4 at:(const void *)a5
{
  v7 = a3;
  v18 = *MEMORY[0x1E69E9840];
  alignp = 0;
  sizep = 0;
  typePtr[0] = a3;
  typePtr[1] = 0;
  NSGetSizeAndAlignment(typePtr, &sizep, &alignp);
  v10 = alignp;
  v9 = sizep;
  if (sizep)
  {
    v11 = alignp == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    v13 = _NSMethodExceptionProem(self, sel_encodeArrayOfObjCType_count_at_);
    v14 = [NSString stringWithFormat:@"%@: size (%ld) or alignment (%ld) of type ('%c') is zero", v13, sizep, alignp, v7];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v14 userInfo:0]);
  }

  self->_type = v7;
  self->_addr = a5;
  self->_count = a4;
  if (v9 <= v10)
  {
    v9 = v10;
  }

  self->_size = v9;
  self->_decoded = 0;
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_decoded)
  {
    addr = self->_addr;
    if (addr)
    {
      free(addr);
    }
  }

  v4.receiver = self;
  v4.super_class = _NSKeyedCoderOldStyleArray;
  [(_NSKeyedCoderOldStyleArray *)&v4 dealloc];
}

- (void)fillObjCType:(char)a3 count:(unint64_t)a4 at:(void *)a5
{
  count = self->_count;
  if (!count || (size = self->_size) == 0)
  {

    v10 = [NSString stringWithFormat:@"%@: stored element size (%ld) or count (%ld) is zero", _NSMethodExceptionProem(self, a2), self->_size, self->_count];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D930];
    goto LABEL_10;
  }

  if (count != a4 || self->_type != a3)
  {
    v10 = [NSString stringWithFormat:@"%@: type ('%c') or count (%ld) does not match stored type and count ('%c', %ld)", _NSMethodExceptionProem(self, sel_decodeArrayOfObjCType_count_at_), a3, a4, self->_type, self->_count];
    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
LABEL_10:
    objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
  }

  addr = self->_addr;

  memmove(a5, addr, size * a4);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:LODWORD(self->_count) forKey:@"NS.count"];
  [a3 encodeInt32:LODWORD(self->_size) forKey:@"NS.size"];
  [a3 encodeInt32:self->_type forKey:@"NS.type"];
  if (self->_count)
  {
    v5 = 0;
    do
    {
      _compatEncodeValueOfObjCType(a3, self->_type, (self->_addr + self->_size * v5++), sel_encodeArrayOfObjCType_count_at_);
    }

    while (v5 < self->_count);
  }
}

- (_NSKeyedCoderOldStyleArray)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [a3 decodeInt32ForKey:@"NS.count"];
  v7 = v6;
  if ((v6 & 0x80000000) != 0)
  {
    v15 = _NSMethodExceptionProem(self, a2);

    [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: unable to decode array with negative count (%d)", v15, v7}];
  }

  else
  {
    v8 = v6;
    self->_count = v6;
    v9 = [a3 decodeInt32ForKey:@"NS.size"];
    v10 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      v16 = _NSMethodExceptionProem(self, a2);

      [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: unable to decode array with negative size (%d)", v16, v10}];
    }

    else
    {
      v11 = v9;
      self->_size = v9;
      v12 = [a3 decodeInt32ForKey:@"NS.type"];
      v13 = v12;
      if (v12 == v12)
      {
        self->_type = v12;
        alignp = 0;
        sizep = 0;
        typePtr[0] = v12;
        typePtr[1] = 0;
        NSGetSizeAndAlignment(typePtr, &sizep, &alignp);
        if (sizep <= alignp)
        {
          v18 = alignp;
        }

        else
        {
          v18 = sizep;
        }

        self->_size = v18;
        v19 = malloc_type_calloc(self->_count, v18, 0xFB87941CuLL);
        self->_addr = v19;
        if (v19)
        {
          self->_decoded = 1;
          if (!self->_count)
          {
            return self;
          }

          v20 = 0;
          while ((_compatDecodeValueOfObjCType(a3, self->_type, self->_addr + self->_size * v20, sel_decodeArrayOfObjCType_count_at_) & 1) != 0)
          {
            if (++v20 >= self->_count)
            {
              return self;
            }
          }

          v22 = _NSMethodExceptionProem(self, a2);

          if (![a3 error])
          {
            [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: unable to decode element in array of size (%ld) and count (%ld)", v22, v11, v8}];
          }
        }

        else
        {
          v21 = _NSMethodExceptionProem(self, a2);

          [a3 __failWithExceptionName:*MEMORY[0x1E695DA18] errorCode:4864 format:{@"%@: unable to allocate memory for size (%ld) and count (%ld)", v21, v11, v8}];
        }
      }

      else
      {
        v14 = _NSMethodExceptionProem(self, a2);

        [a3 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"%@: unable to decode array with invalid type (%d)", v14, v13}];
      }
    }
  }

  return 0;
}

@end