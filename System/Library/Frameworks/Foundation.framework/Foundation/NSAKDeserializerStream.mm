@interface NSAKDeserializerStream
- (id)initFromMemoryNoCopy:(const void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (id)initFromPath:(id)path;
- (int)readInt;
- (unint64_t)readAlignedDataSize;
- (void)dealloc;
- (void)readData:(void *)data length:(unint64_t)length;
@end

@implementation NSAKDeserializerStream

- (id)initFromMemoryNoCopy:(const void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  *(self + 1) = copy;
  *(self + 2) = copy;
  *(self + 3) = length;
  *(self + 4) = length;
  *(self + 40) = done;
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

- (id)initFromPath:(id)path
{
  if ([path isEqualToString:&stru_1EEEFDF90] || (v5 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E695DEF0]), "initWithContentsOfFile:options:error:", path, 1, 0)) == 0)
  {
    [(NSAKDeserializerStream *)self dealloc];
    return 0;
  }

  v6 = v5;
  v7 = [v5 length];
  v8 = allocate(v7);
  bytes = [v6 bytes];
  v10 = bytes;
  if (v7 >= 0x80000)
  {
    v11 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (bytes | v8)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
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
  readInt = [(NSAKDeserializerStream *)self readInt];
  if (readInt == 0x80000000)
  {
    readInt2 = [(NSAKDeserializerStream *)self readInt];
    readInt3 = [(NSAKDeserializerStream *)self readInt];
    left = self->left;
    if (left < readInt3)
    {
      goto LABEL_7;
    }

    v7 = left - readInt3;
    self->current += readInt3;
    self->left = v7;
  }

  else
  {
    readInt2 = readInt;
    v7 = self->left;
  }

  if (v7 < readInt2)
  {
LABEL_7:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"deserialization string too short" userInfo:0]);
  }

  return readInt2;
}

- (void)readData:(void *)data length:(unint64_t)length
{
  if (self->left < length)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"deserialization string too short" userInfo:0]);
  }

  dataCopy = data;
  current = self->current;
  if (length >= 0x80000)
  {
    v8 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (current | data)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      lengthCopy2 = length;
    }

    else
    {
      v11 = -*v8 & length;
      NSCopyMemoryPages(current, dataCopy, v11);
      current += v11;
      dataCopy += v11;
      lengthCopy2 = length - v11;
      if (length == v11)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  lengthCopy2 = length;
  if (length)
  {
LABEL_7:
    memmove(dataCopy, current, lengthCopy2);
  }

LABEL_8:
  v10 = self->left - length;
  self->current += length;
  self->left = v10;
}

@end