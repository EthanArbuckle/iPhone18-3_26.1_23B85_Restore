@interface MTKMeshBufferAllocator
- (BOOL)isEqual:(id)a3;
- (MTKMeshBufferAllocator)initWithDevice:(id)device;
- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4;
- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5;
- (id)newBufferFromZone:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5;
- (id)newBufferWithData:(id)a3 type:(unint64_t)a4;
- (id)newZone:(unint64_t)a3;
- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4;
@end

@implementation MTKMeshBufferAllocator

- (MTKMeshBufferAllocator)initWithDevice:(id)device
{
  v5 = device;
  v9.receiver = self;
  v9.super_class = MTKMeshBufferAllocator;
  v6 = [(MTKMeshBufferAllocator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[1] == self->_device;

  return v5;
}

- (id)newZone:(unint64_t)a3
{
  v5 = [MTKMeshBufferZone alloc];

  return [(MTKMeshBufferZone *)v5 initWithCapacity:a3 allocator:self];
}

- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    v9 = [(MTLDevice *)self->_device minConstantBufferAlignmentBytes];
    if ([v6 count])
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 - 1;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:v10];
        v14 = [v13 unsignedIntegerValue] + v11;

        v15 = [v7 objectAtIndexedSubscript:v10];
        v16 = [v15 unsignedIntegerValue];

        if (v16 == 1)
        {
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }

        v11 = v14 + v17;
        ++v10;
      }

      while (v10 < [v6 count]);
    }

    else
    {
      v11 = 0;
    }

    v18 = [[MTKMeshBufferZone alloc] initWithCapacity:v11 allocator:self];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4
{
  v7 = [MTKMeshBuffer alloc];

  return [(MTKMeshBuffer *)v7 _initWithLength:a3 allocator:self type:a4];
}

- (id)newBufferWithData:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [[MTKMeshBuffer alloc] _initWithData:v6 allocator:self type:a4];

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
    v12 = [(MTKMeshBufferAllocator *)self newBuffer:a4 type:a5];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = -[MTKMeshBufferAllocator newBufferFromZone:length:type:](self, "newBufferFromZone:length:type:", v9, [v8 length], a5);

  [v10 fillData:v8 offset:0];
  return v10;
}

@end