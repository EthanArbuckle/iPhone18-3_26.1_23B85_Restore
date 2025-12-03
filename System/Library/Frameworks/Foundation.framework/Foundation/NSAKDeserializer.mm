@interface NSAKDeserializer
- (id)deserializeData:(id)data;
- (id)deserializeList:(id)list;
- (id)deserializeNewData;
- (id)deserializeNewKeyString;
- (id)deserializeNewList;
- (id)deserializeNewObject;
- (id)deserializeNewPList;
- (id)deserializeNewString;
- (id)deserializePList:(id)list;
- (id)deserializeString:(id)string;
- (id)initForDeserializerStream:(id)stream;
- (void)dealloc;
@end

@implementation NSAKDeserializer

- (id)initForDeserializerStream:(id)stream
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSAKDeserializer;
  v4 = [(NSAKDeserializer *)&v6 init];
  v4->ds = stream;
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAKDeserializer;
  [(NSAKDeserializer *)&v3 dealloc];
}

- (id)deserializeNewObject
{
  readInt = [self->ds readInt];
  if (readInt > 2)
  {
    if (readInt == 3)
    {

      return [(NSAKDeserializer *)self deserializeNewPList];
    }

    else
    {
      if (readInt != 4)
      {
        return 0;
      }

      return [(NSAKDeserializer *)self deserializeNewString];
    }
  }

  else
  {
    if (readInt != 1)
    {
      if (readInt == 2)
      {

        return [(NSAKDeserializer *)self deserializeNewList];
      }

      return 0;
    }

    return [(NSAKDeserializer *)self deserializeNewData];
  }
}

- (id)deserializeNewData
{
  v3 = [MEMORY[0x1E695DEF0] allocWithZone:{-[NSAKDeserializer zone](self, "zone")}];

  return [(NSAKDeserializer *)self deserializeData:v3];
}

- (id)deserializeData:(id)data
{
  readAlignedDataSize = [self->ds readAlignedDataSize];
  v6 = NSAllocateMemoryPages(readAlignedDataSize);
  [self->ds readData:v6 length:readAlignedDataSize];
  v7 = [data initWithBytes:v6 length:readAlignedDataSize];
  NSDeallocateMemoryPages(v6, readAlignedDataSize);
  return v7;
}

- (id)deserializeNewString
{
  v3 = [NSString allocWithZone:[(NSAKDeserializer *)self zone]];

  return [(NSAKDeserializer *)self deserializeString:v3];
}

- (id)deserializeNewKeyString
{
  v3 = [NSString allocWithZone:[(NSAKDeserializer *)self zone]];

  return [(NSAKDeserializer *)self deserializeString:v3];
}

- (id)deserializeString:(id)string
{
  readAlignedDataSize = [self->ds readAlignedDataSize];
  v6 = allocate(readAlignedDataSize);
  [self->ds readData:v6 length:readAlignedDataSize];
  v7 = [string initWithBytes:v6 length:readAlignedDataSize encoding:4];
  unallocate(v6, readAlignedDataSize);
  return v7;
}

- (id)deserializeNewList
{
  v3 = [MEMORY[0x1E695DF70] allocWithZone:{-[NSAKDeserializer zone](self, "zone")}];

  return [(NSAKDeserializer *)self deserializeList:v3];
}

- (id)deserializeList:(id)list
{
  readInt = [self->ds readInt];
  if (readInt < 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"count too large";
    goto LABEL_11;
  }

  v6 = readInt;
  v7 = malloc_type_malloc(8 * readInt, 0x100004000313F17uLL);
  if (!v7)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"unable to allocate memory";
LABEL_11:
    objc_exception_throw([v15 exceptionWithName:@"NSDeserializeException" reason:v16 userInfo:0]);
  }

  v8 = v7;
  v9 = [list init];
  if (v6)
  {
    v10 = v8;
    v11 = v6;
    do
    {
      *v10++ = [self->ds readInt];
      --v11;
    }

    while (v11);
    for (i = 0; i != v6; ++i)
    {
      v13 = [(NSAKDeserializer *)self deserializeListItemIn:v9 at:i length:v8[i]];
      [v9 addObject:v13];
    }
  }

  free(v8);
  return v9;
}

- (id)deserializeNewPList
{
  v3 = [MEMORY[0x1E695DF90] allocWithZone:{-[NSAKDeserializer zone](self, "zone")}];

  return [(NSAKDeserializer *)self deserializePList:v3];
}

- (id)deserializePList:(id)list
{
  v4 = [list init];
  readInt = [self->ds readInt];
  v6 = readInt;
  if (readInt < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"count too large" userInfo:0]);
  }

  v7 = readInt;
  v8 = malloc_type_malloc(8 * readInt, 0x100004000313F17uLL);
  v9 = malloc_default_zone();
  v10 = malloc_type_zone_calloc(v9, 1uLL, 8 * v6, 0x2C221C3EuLL);
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"unable to allocate memory" userInfo:0]);
  }

  if (v6)
  {
    v13 = v10;
    v14 = v7;
    do
    {
      *v13++ = [(NSAKDeserializer *)self deserializePListKeyIn:v4];
      --v14;
    }

    while (v14);
    v15 = v8;
    v16 = v7;
    do
    {
      *v15++ = [self->ds readInt];
      --v16;
    }

    while (v16);
    v17 = v8;
    v18 = v11;
    do
    {
      v19 = *v17++;
      v20 = *v18;
      v21 = [(NSAKDeserializer *)self deserializePListValueIn:v4 key:*v18 length:v19];
      v22 = v21;
      if (v20)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        [v4 setObject:v21 forKey:v20];
      }

      ++v18;
      --v7;
    }

    while (v7);
  }

  free(v8);
  free(v11);
  return v4;
}

@end