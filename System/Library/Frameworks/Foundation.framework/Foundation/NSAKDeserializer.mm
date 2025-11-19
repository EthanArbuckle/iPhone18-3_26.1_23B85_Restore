@interface NSAKDeserializer
- (id)deserializeData:(id)a3;
- (id)deserializeList:(id)a3;
- (id)deserializeNewData;
- (id)deserializeNewKeyString;
- (id)deserializeNewList;
- (id)deserializeNewObject;
- (id)deserializeNewPList;
- (id)deserializeNewString;
- (id)deserializePList:(id)a3;
- (id)deserializeString:(id)a3;
- (id)initForDeserializerStream:(id)a3;
- (void)dealloc;
@end

@implementation NSAKDeserializer

- (id)initForDeserializerStream:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSAKDeserializer;
  v4 = [(NSAKDeserializer *)&v6 init];
  v4->ds = a3;
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
  v3 = [self->ds readInt];
  if (v3 > 2)
  {
    if (v3 == 3)
    {

      return [(NSAKDeserializer *)self deserializeNewPList];
    }

    else
    {
      if (v3 != 4)
      {
        return 0;
      }

      return [(NSAKDeserializer *)self deserializeNewString];
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
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

- (id)deserializeData:(id)a3
{
  v5 = [self->ds readAlignedDataSize];
  v6 = NSAllocateMemoryPages(v5);
  [self->ds readData:v6 length:v5];
  v7 = [a3 initWithBytes:v6 length:v5];
  NSDeallocateMemoryPages(v6, v5);
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

- (id)deserializeString:(id)a3
{
  v5 = [self->ds readAlignedDataSize];
  v6 = allocate(v5);
  [self->ds readData:v6 length:v5];
  v7 = [a3 initWithBytes:v6 length:v5 encoding:4];
  unallocate(v6, v5);
  return v7;
}

- (id)deserializeNewList
{
  v3 = [MEMORY[0x1E695DF70] allocWithZone:{-[NSAKDeserializer zone](self, "zone")}];

  return [(NSAKDeserializer *)self deserializeList:v3];
}

- (id)deserializeList:(id)a3
{
  v5 = [self->ds readInt];
  if (v5 < 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"count too large";
    goto LABEL_11;
  }

  v6 = v5;
  v7 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  if (!v7)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = @"unable to allocate memory";
LABEL_11:
    objc_exception_throw([v15 exceptionWithName:@"NSDeserializeException" reason:v16 userInfo:0]);
  }

  v8 = v7;
  v9 = [a3 init];
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

- (id)deserializePList:(id)a3
{
  v4 = [a3 init];
  v5 = [self->ds readInt];
  v6 = v5;
  if (v5 < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSDeserializeException" reason:@"count too large" userInfo:0]);
  }

  v7 = v5;
  v8 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
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