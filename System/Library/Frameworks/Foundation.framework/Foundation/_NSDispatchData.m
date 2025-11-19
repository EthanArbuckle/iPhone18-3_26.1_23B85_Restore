@interface _NSDispatchData
- (id)subdataWithRange:(_NSRange)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateByteRangesUsingBlock:(id)a3;
- (void)getBytes:(void *)a3;
- (void)getBytes:(void *)a3 length:(unint64_t)a4;
- (void)getBytes:(void *)a3 range:(_NSRange)a4;
@end

@implementation _NSDispatchData

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  size = dispatch_data_get_size(&self->super.super);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __23___NSDispatchData_hash__block_invoke;
  applier[3] = &unk_1E69FAB70;
  applier[4] = &v13;
  applier[5] = size;
  v4 = dispatch_data_apply(&self->super.super, applier);
  v5 = v14[3];
  if (!v5)
  {
    if (size >= 0x50)
    {
      size = 80;
    }

    v6 = MEMORY[0x1EEE9AC00](v4);
    [(_NSDispatchData *)self getBytes:&applier[-1] - v7 range:0, size, v6];
    v8 = CFHashBytes();
    v9 = v14;
    v14[3] = v8;
    v5 = v9[3];
  }

  _Block_object_dispose(&v13, 8);
  return v5;
}

- (void)getBytes:(void *)a3
{
  size = dispatch_data_get_size(&self->super.super);

  [(_NSDispatchData *)self getBytes:a3 range:0, size];
}

- (void)getBytes:(void *)a3 length:(unint64_t)a4
{
  v4 = a4;
  if ([(NSData *)self length]< a4)
  {
    v4 = [(NSData *)self length];
  }

  [(_NSDispatchData *)self getBytes:a3 range:0, v4];
}

- (void)enumerateByteRangesUsingBlock:(id)a3
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___NSDispatchData_enumerateByteRangesUsingBlock___block_invoke;
  v3[3] = &unk_1E69FAB20;
  v3[4] = a3;
  dispatch_data_apply(&self->super.super, v3);
}

- (void)getBytes:(void *)a3 range:(_NSRange)a4
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v9 = [(NSData *)self length];
    if (__CFADD__(length, location))
    {
      v10 = _NSMethodExceptionProem(self, a2);
      v17.location = location;
      v17.length = length;
      v11 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v10, NSStringFromRange(v17), v14];
    }

    else
    {
      if (location + length <= v9)
      {
        v16[0] = 0;
        v16[1] = v16;
        v16[2] = 0x2020000000;
        v16[3] = a3;
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __34___NSDispatchData_getBytes_range___block_invoke;
        applier[3] = &unk_1E69FAB48;
        applier[5] = location;
        applier[6] = length;
        applier[4] = v16;
        dispatch_data_apply(&self->super.super, applier);
        _Block_object_dispose(v16, 8);
        return;
      }

      v12 = v9;
      v13 = _NSMethodExceptionProem(self, a2);
      v18.location = location;
      v18.length = length;
      v11 = [NSString stringWithFormat:@"%@: range %@ exceeds data length %lu", v13, NSStringFromRange(v18), v12];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v11 userInfo:0]);
  }
}

- (id)subdataWithRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v7 = [(NSData *)self length];
    if (__CFADD__(length, location))
    {
      v11 = _NSMethodExceptionProem(self, a2);
      v17.location = location;
      v17.length = length;
      v12 = [NSString stringWithFormat:@"%@: range %@ causes integer overflow", v11, NSStringFromRange(v17), v15];
    }

    else
    {
      if (location + length <= v7)
      {
        subrange = dispatch_data_create_subrange(&self->super.super, location, length);

        return subrange;
      }

      v13 = v7;
      v14 = _NSMethodExceptionProem(self, a2);
      v18.location = location;
      v18.length = length;
      v12 = [NSString stringWithFormat:@"%@: range %@ exceeds data length %lu", v14, NSStringFromRange(v18), v13];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v12 userInfo:0]);
  }

  v10 = MEMORY[0x1E695DEF0];

  return [v10 data];
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = xpc_data_create_with_dispatch_data(&self->super.super);
      [a3 encodeXPCObject:v5 forKey:@"NS.xpcdata"];

      xpc_release(v5);
    }

    else
    {
      v6 = [(NSData *)self length];
      if ([(NSData *)self _isCompact])
      {
        v7 = [(NSData *)self bytes];

        [a3 encodeBytes:v7 length:v6 forKey:@"NS.bytes"];
      }

      else
      {
        v8 = malloc_type_malloc(v6, 0x55DED7EAuLL);
        [(_NSDispatchData *)self getBytes:v8 length:v6];
        [a3 encodeBytes:v8 length:v6 forKey:@"NS.bytes"];

        free(v8);
      }
    }
  }

  else
  {

    [a3 encodeDataObject:self];
  }
}

@end