@interface NSAKSerializerStream
- (BOOL)writeToPath:(id)path safely:(BOOL)safely;
- (unint64_t)writeAlignedDataSize:(unint64_t)size;
- (unint64_t)writeData:(const void *)data length:(unint64_t)length;
- (unint64_t)writeInt:(unint64_t)int;
- (unint64_t)writeRoomForInt:(int *)int;
- (void)copySerializationInto:(void *)into;
- (void)dealloc;
- (void)writeDelayedInt:(unint64_t)int for:(int)for;
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

- (unint64_t)writeInt:(unint64_t)int
{
  if (int >= 0x80000001)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSOtherSerializationException" reason:@"can't write int larger than INT_MAX" userInfo:0]);
  }

  intCopy = int;
  extendStreamFor(self, 4);
  *(self->memory + self->current) = intCopy;
  self->current += 4;
  return 4;
}

- (unint64_t)writeAlignedDataSize:(unint64_t)size
{
  v5 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= size && (current = self->current, ((current + 4) & (v5 - 1)) != 0))
  {
    v7 = v5 - ((current + 12) & (v5 - 1));
    extendStreamFor(self, v7 + 12);
    [(NSAKSerializerStream *)self writeInt:0x80000000];
    [(NSAKSerializerStream *)self writeInt:size];
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

- (unint64_t)writeData:(const void *)data length:(unint64_t)length
{
  extendStreamFor(self, length);
  v7 = self->memory + self->current;
  if (length >= 0x80000)
  {
    v8 = MEMORY[0x1E69E9AC8];
    if (((*MEMORY[0x1E69E9AC8] - 1) & (v7 | data)) != 0 || (malloc_default_zone(), malloc_zone_claimed_address()))
    {
      lengthCopy2 = length;
    }

    else
    {
      v11 = -*v8 & length;
      NSCopyMemoryPages(data, v7, v11);
      data = data + v11;
      v7 += v11;
      lengthCopy2 = length - v11;
      if (length == v11)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  lengthCopy2 = length;
  if (length)
  {
LABEL_6:
    memmove(v7, data, lengthCopy2);
  }

LABEL_7:
  self->current += length;
  return length;
}

- (unint64_t)writeRoomForInt:(int *)int
{
  if (!self->roomForIntLocations)
  {
    self->roomForIntLocations = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
  }

  add = atomic_fetch_add(writeRoomForInt__globalSequence, 1u);
  *int = add;
  CFDictionarySetValue(self->roomForIntLocations, add, self->current);

  return [(NSAKSerializerStream *)self writeInt:0];
}

- (void)writeDelayedInt:(unint64_t)int for:(int)for
{
  v12 = *MEMORY[0x1E69E9840];
  if (int >= 0x80000001)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = @"NSOtherSerializationException";
    v10 = @"can't write int larger than INT_MAX";
LABEL_7:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:{0, v11, v12}]);
  }

  v11 = 0;
  roomForIntLocations = self->roomForIntLocations;
  if (!roomForIntLocations || (v6 = int, v7 = for, !CFDictionaryGetValueIfPresent(roomForIntLocations, for, &v11)))
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = @"NSSerializeException";
    v10 = @"writeDelayedInt:for:";
    goto LABEL_7;
  }

  CFDictionaryRemoveValue(self->roomForIntLocations, v7);
  *(self->memory + v11) = v6;
}

- (BOOL)writeToPath:(id)path safely:(BOOL)safely
{
  safelyCopy = safely;
  if ([path isEqualToString:&stru_1EEEFDF90])
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
  v10 = [v9 writeToFile:path atomically:safelyCopy];

  return v10;
}

- (void)copySerializationInto:(void *)into
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
  if (((*MEMORY[0x1E69E9AC8] - 1) & (memory | into)) == 0)
  {
    malloc_default_zone();
    if (!malloc_zone_claimed_address())
    {
      v9 = current & -*v8;
      NSCopyMemoryPages(memory, into, v9);
      memory += v9;
      into = into + v9;
      current -= v9;
      goto LABEL_7;
    }
  }

LABEL_8:

  memmove(into, memory, current);
}

@end