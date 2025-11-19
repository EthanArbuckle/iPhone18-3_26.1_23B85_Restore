@interface NSAKSerializer
- (id)initForSerializerStream:(id)a3;
- (unint64_t)serializeData:(id)a3;
- (unint64_t)serializeList:(id)a3;
- (unint64_t)serializeListItemIn:(id)a3 at:(unint64_t)a4;
- (unint64_t)serializeObject:(id)a3;
- (unint64_t)serializePropertyList:(id)a3;
- (unint64_t)serializeString:(id)a3;
- (void)dealloc;
@end

@implementation NSAKSerializer

- (id)initForSerializerStream:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSAKSerializer;
  v4 = [(NSAKSerializer *)&v6 init];
  v4->ss = a3;
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAKSerializer;
  [(NSAKSerializer *)&v3 dealloc];
}

- (unint64_t)serializeObject:(id)a3
{
  if (_NSIsNSData())
  {
    v5 = [self->ss writeInt:1];
    v6 = [(NSAKSerializer *)self serializeData:a3];
    return v6 + v5;
  }

  if (_NSIsNSArray())
  {
    v5 = [self->ss writeInt:2];
    v6 = [(NSAKSerializer *)self serializeList:a3];
    return v6 + v5;
  }

  if (_NSIsNSDictionary())
  {
    v5 = [self->ss writeInt:3];
    v6 = [(NSAKSerializer *)self serializePropertyList:a3];
    return v6 + v5;
  }

  if (_NSIsNSString())
  {
    v5 = [self->ss writeInt:4];
    v6 = [(NSAKSerializer *)self serializeString:a3];
    return v6 + v5;
  }

  if (a3)
  {
    v8 = objc_opt_class();
    NSLog(@"Serializing object of class %@\n", v8);
  }

  ss = self->ss;

  return [ss writeInt:0];
}

- (unint64_t)serializeData:(id)a3
{
  v5 = [a3 length];
  v6 = [a3 bytes];
  v7 = [self->ss writeAlignedDataSize:v5];
  return [self->ss writeData:v6 length:v5] + v7;
}

- (unint64_t)serializeString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4 allowLossyConversion:1];
  v5 = [v4 length];
  v6 = [self->ss writeAlignedDataSize:v5];
  return [self->ss writeData:objc_msgSend(v4 length:{"bytes"), v5}] + v6;
}

- (unint64_t)serializeList:(id)a3
{
  v5 = [a3 count];
  v6 = [self->ss writeInt:v5];
  v7 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  if (!v7)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSSerializeException" reason:@"unable to allocate memory" userInfo:0]);
  }

  v8 = v7;
  if (v5)
  {
    v9 = v7;
    v10 = v5;
    do
    {
      v6 += [self->ss writeRoomForInt:v9];
      v9 += 4;
      --v10;
    }

    while (v10);
    for (i = 0; i != v5; ++i)
    {
      v12 = [(NSAKSerializer *)self serializeListItemIn:a3 at:i];
      [self->ss writeDelayedInt:v12 for:v8[i]];
      v6 += v12;
    }
  }

  free(v8);
  return v6;
}

- (unint64_t)serializeListItemIn:(id)a3 at:(unint64_t)a4
{
  v5 = [a3 objectAtIndex:a4];

  return [(NSAKSerializer *)self serializeObject:v5];
}

- (unint64_t)serializePropertyList:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = [self->ss writeInt:v5];
  v6 = malloc_type_malloc(4 * v5, 0x623B2528uLL);
  if (!v6)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSSerializeException" reason:@"unable to allocate memory" userInfo:0]);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__NSAKSerializer_serializePropertyList___block_invoke;
  v13[3] = &unk_1E69F7698;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = &v14;
  [a3 enumerateKeysAndObjectsUsingBlock:v13];
  bzero(v6, 4 * v5);
  if (v5)
  {
    v7 = v6;
    do
    {
      v8 = [self->ss writeRoomForInt:v7];
      v15[3] += v8;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__NSAKSerializer_serializePropertyList___block_invoke_2;
  v11[3] = &unk_1E69F76C0;
  v11[4] = self;
  v11[5] = a3;
  v11[7] = v12;
  v11[8] = v6;
  v11[6] = &v14;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  free(v6);
  v9 = v15[3];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __40__NSAKSerializer_serializePropertyList___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) serializePListKeyIn:*(a1 + 40) key:a2 value:a3];
  *(*(*(a1 + 48) + 8) + 24) += result;
  return result;
}

uint64_t __40__NSAKSerializer_serializePropertyList___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) serializePListValueIn:*(a1 + 40) key:a2 value:a3];
  *(*(*(a1 + 48) + 8) + 24) += v4;
  return [*(*(a1 + 32) + 8) writeDelayedInt:v4 for:*(*(a1 + 64) + 4 * (*(*(*(a1 + 56) + 8) + 24))++)];
}

@end