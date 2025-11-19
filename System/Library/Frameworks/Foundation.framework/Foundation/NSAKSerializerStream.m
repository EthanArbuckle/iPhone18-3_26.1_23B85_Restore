@interface NSAKSerializerStream
- (BOOL)writeToPath:(id)a3 safely:(BOOL)a4;
- (unint64_t)writeAlignedDataSize:(unint64_t)a3;
- (unint64_t)writeData:(const void *)a3 length:(unint64_t)a4;
- (unint64_t)writeInt:(unint64_t)a3;
- (unint64_t)writeRoomForInt:(int *)a3;
- (void)copySerializationInto:(void *)a3;
- (void)dealloc;
- (void)writeDelayedInt:(unint64_t)a3 for:(int)a4;
@end

@implementation NSAKSerializerStream

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  roomForIntLocations = self->roomForIntLocations;
  if (roomForIntLocations)
  {
    CFRelease(roomForIntLocations);
  }

  unallocate(self->memory, self->max);
  v4.receiver = self;
  v4.super_class = NSAKSerializerStream;
  [(NSAKSerializerStream *)&v4 dealloc];
}

- (unint64_t)writeInt:(unint64_t)a3
{
  if (a3 >= 0x80000001)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSOtherSerializationException" reason:@"can't write int larger than INT_MAX" userInfo:0]);
  }

  v3 = a3;
  extendStreamFor(self, 4);
  *(self->memory + self->current) = v3;
  self->current += 4;
  return 4;
}

- (unint64_t)writeAlignedDataSize:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= a3 && (current = self->current, ((current + 4) & (v5 - 1)) != 0))
  {
    v7 = v5 - ((current + 12) & (v5 - 1));
    extendStreamFor(self, v7 + 12);
    [(NSAKSerializerStream *)self writeInt:0x80000000];
    [(NSAKSerializerStream *)self writeInt:a3];
    [(NSAKSerializerStream *)self writeInt:v7];
    bzero(self->memory + self->current, v7);
    self->current += v7;
    return v7 + 12;
  }

  else
  {

    return [(NSAKSerializerStream *)self writeInt:?];
  }
}

- (unint64_t)writeData:(const void *)a3 length:(unint64_t)a4
{
  extendStreamFor(self, a4);
  v7 = self->memory + self->current;
  if (a4 >= 0x80000)
  {
    v8 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (v7 | a3)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      v9 = a4;
    }

    else
    {
      v11 = -*v8 & a4;
      NSCopyMemoryPages(a3, v7, v11);
      a3 = a3 + v11;
      v7 += v11;
      v9 = a4 - v11;
      if (a4 == v11)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v9 = a4;
  if (a4)
  {
LABEL_6:
    memmove(v7, a3, v9);
  }

LABEL_7:
  self->current += a4;
  return a4;
}

- (unint64_t)writeRoomForInt:(int *)a3
{
  if (!self->roomForIntLocations)
  {
    self->roomForIntLocations = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
  }

  add = atomic_fetch_add(writeRoomForInt__globalSequence, 1u);
  *a3 = add;
  CFDictionarySetValue(self->roomForIntLocations, add, self->current);

  return [(NSAKSerializerStream *)self writeInt:0];
}

- (void)writeDelayedInt:(unint64_t)a3 for:(int)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x80000001)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = @"NSOtherSerializationException";
    v10 = @"can't write int larger than INT_MAX";
LABEL_7:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:{0, v11, v12}]);
  }

  v11 = 0;
  roomForIntLocations = self->roomForIntLocations;
  if (!roomForIntLocations || (v6 = a3, v7 = a4, !CFDictionaryGetValueIfPresent(roomForIntLocations, a4, &v11)))
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = @"NSSerializeException";
    v10 = @"writeDelayedInt:for:";
    goto LABEL_7;
  }

  CFDictionaryRemoveValue(self->roomForIntLocations, v7);
  *(self->memory + v11) = v6;
}

- (BOOL)writeToPath:(id)a3 safely:(BOOL)a4
{
  v4 = a4;
  if ([a3 isEqualToString:&stru_1EEEFDF90])
  {
    return 0;
  }

  roomForIntLocations = self->roomForIntLocations;
  if (roomForIntLocations)
  {
    if (CFDictionaryGetCount(roomForIntLocations))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSSerializeException" reason:@"missing writeDelayedInt:for:" userInfo:0]);
    }
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:self->memory length:self->current];
  v10 = [v9 writeToFile:a3 atomically:v4];

  return v10;
}

- (void)copySerializationInto:(void *)a3
{
  roomForIntLocations = self->roomForIntLocations;
  if (roomForIntLocations && CFDictionaryGetCount(roomForIntLocations))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSSerializeException" reason:@"missing writeDelayedInt:for:" userInfo:0]);
  }

  memory = self->memory;
  current = self->current;
  if (current < 0x80000)
  {
LABEL_7:
    if (!current)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = MEMORY[0x1E69E9AC8];
  if (((*MEMORY[0x1E69E9AC8] - 1) & (memory | a3)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v9 = current & -*v8;
      NSCopyMemoryPages(memory, a3, v9);
      memory += v9;
      a3 = a3 + v9;
      current -= v9;
      goto LABEL_7;
    }
  }

LABEL_8:

  memmove(a3, memory, current);
}

@end