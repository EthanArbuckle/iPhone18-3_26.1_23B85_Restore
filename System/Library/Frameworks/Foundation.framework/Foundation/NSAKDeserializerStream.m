@interface NSAKDeserializerStream
- (id)initFromMemoryNoCopy:(const void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (id)initFromPath:(id)a3;
- (int)readInt;
- (unint64_t)readAlignedDataSize;
- (void)dealloc;
- (void)readData:(void *)a3 length:(unint64_t)a4;
@end

@implementation NSAKDeserializerStream

- (id)initFromMemoryNoCopy:(const void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  *(self + 1) = a3;
  *(self + 2) = a3;
  *(self + 3) = a4;
  *(self + 4) = a4;
  *(self + 40) = a5;
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->freeWhenDone)
  {
    unallocate(self->memory, self->max);
  }

  v3.receiver = self;
  v3.super_class = NSAKDeserializerStream;
  [(NSAKDeserializerStream *)&v3 dealloc];
}

- (id)initFromPath:(id)a3
{
  if ([a3 isEqualToString:&stru_1EEEFDF90] || (v5 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E695DEF0]), "initWithContentsOfFile:options:error:", a3, 1, 0)) == 0)
  {
    [(NSAKDeserializerStream *)self dealloc];
    return 0;
  }

  v6 = v5;
  v7 = [v5 length];
  v8 = allocate(v7);
  v9 = [v6 bytes];
  v10 = v9;
  if (v7 >= 0x80000)
  {
    v11 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (v9 | v8)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      v12 = v8;
      v13 = v7;
    }

    else
    {
      v15 = v7 & -*v11;
      NSCopyMemoryPages(v10, v8, v15);
      v10 += v15;
      v12 = (v8 + v15);
      v13 = v7 - v15;
      if (v7 == v15)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v13 = v7;
  v12 = v8;
  if (v7)
  {
LABEL_9:
    memmove(v12, v10, v13);
  }

LABEL_10:

  return [(NSAKDeserializerStream *)self initFromMemoryNoCopy:v8 length:v7 freeWhenDone:1];
}

- (int)readInt
{
  left = self->left;
  if (left <= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"deserialization string too short" userInfo:{0, v2, v3}]);
  }

  current = self->current;
  v6 = *current;
  self->current = current + 4;
  self->left = left - 4;
  return v6;
}

- (unint64_t)readAlignedDataSize
{
  v3 = [(NSAKDeserializerStream *)self readInt];
  if (v3 == 0x80000000)
  {
    v4 = [(NSAKDeserializerStream *)self readInt];
    v5 = [(NSAKDeserializerStream *)self readInt];
    left = self->left;
    if (left < v5)
    {
      goto LABEL_7;
    }

    v7 = left - v5;
    self->current += v5;
    self->left = v7;
  }

  else
  {
    v4 = v3;
    v7 = self->left;
  }

  if (v7 < v4)
  {
LABEL_7:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"deserialization string too short" userInfo:0]);
  }

  return v4;
}

- (void)readData:(void *)a3 length:(unint64_t)a4
{
  if (self->left < a4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"deserialization string too short" userInfo:0]);
  }

  v5 = a3;
  current = self->current;
  if (a4 >= 0x80000)
  {
    v8 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (current | a3)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      v9 = a4;
    }

    else
    {
      v11 = -*v8 & a4;
      NSCopyMemoryPages(current, v5, v11);
      current += v11;
      v5 += v11;
      v9 = a4 - v11;
      if (a4 == v11)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  v9 = a4;
  if (a4)
  {
LABEL_7:
    memmove(v5, current, v9);
  }

LABEL_8:
  v10 = self->left - a4;
  self->current += a4;
  self->left = v10;
}

@end