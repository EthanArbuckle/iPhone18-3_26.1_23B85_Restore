@interface GLKMeshBufferAllocator
- (BOOL)isEqual:(id)a3;
- (GLKMeshBufferAllocator)init;
- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4;
- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5;
- (id)newBufferFromZone:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5;
- (id)newBufferWithData:(id)a3 type:(unint64_t)a4;
- (id)newZone:(unint64_t)a3;
- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4;
@end

@implementation GLKMeshBufferAllocator

- (GLKMeshBufferAllocator)init
{
  v8.receiver = self;
  v8.super_class = GLKMeshBufferAllocator;
  v2 = [(GLKMeshBufferAllocator *)&v8 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = [MEMORY[0x277CD9388] currentContext];
  v4 = v3;
  if (v3)
  {
    v5 = [(GLKMeshBufferAllocator *)v3 sharegroup];
    sharegroup = v2->_sharegroup;
    v2->_sharegroup = v5;

LABEL_4:
    v4 = v2;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_sharegroup == v4[1];

  return v5;
}

- (id)newZone:(unint64_t)a3
{
  v5 = [GLKMeshBufferZone alloc];

  return [(GLKMeshBufferZone *)v5 initWithCapacity:a3 allocator:self];
}

- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    if ([v6 count])
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [v6 objectAtIndexedSubscript:v9];
        v12 = [v11 unsignedIntegerValue] + v10;

        v13 = [v7 objectAtIndexedSubscript:v9];
        v14 = [v13 unsignedIntegerValue];

        if (v14 == 1)
        {
          v10 = v12 + 255;
        }

        else
        {
          v10 = v12;
        }

        ++v9;
      }

      while (v9 < [v6 count]);
    }

    else
    {
      v10 = 0;
    }

    v15 = [[GLKMeshBufferZone alloc] initWithCapacity:v10 allocator:self];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4
{
  v7 = [GLKMeshBuffer alloc];

  return [(GLKMeshBuffer *)v7 _initWithLength:a3 allocator:self type:a4];
}

- (id)newBufferWithData:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [[GLKMeshBuffer alloc] _initWithData:v6 allocator:self type:a4];

  return v7;
}

- (id)newBufferFromZone:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 allocator];
    v11 = [v10 isEqual:self];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v9 newBufferWithLength:a4 type:a5];
  }

  else
  {
    v12 = [(GLKMeshBufferAllocator *)self newBuffer:a4 type:a5];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = -[GLKMeshBufferAllocator newBufferFromZone:length:type:](self, "newBufferFromZone:length:type:", v9, [v8 length], a5);

  if (v10)
  {
    v11 = [v10 map];
    memcpy([v11 bytes], objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"));
  }

  return v10;
}

@end