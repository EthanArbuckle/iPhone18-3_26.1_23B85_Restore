@interface MTKMeshBufferAllocator
- (BOOL)isEqual:(id)equal;
- (MTKMeshBufferAllocator)initWithDevice:(id)device;
- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type;
- (id)newBufferWithData:(id)data type:(unint64_t)type;
- (id)newZone:(unint64_t)zone;
- (id)newZoneForBuffersWithSize:(id)size andType:(id)type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_device;

  return v5;
}

- (id)newZone:(unint64_t)zone
{
  v5 = [MTKMeshBufferZone alloc];

  return [(MTKMeshBufferZone *)v5 initWithCapacity:zone allocator:self];
}

- (id)newZoneForBuffersWithSize:(id)size andType:(id)type
{
  sizeCopy = size;
  typeCopy = type;
  v8 = [sizeCopy count];
  if (v8 == [typeCopy count])
  {
    minConstantBufferAlignmentBytes = [(MTLDevice *)self->_device minConstantBufferAlignmentBytes];
    if ([sizeCopy count])
    {
      v10 = 0;
      v11 = 0;
      v12 = minConstantBufferAlignmentBytes - 1;
      do
      {
        v13 = [sizeCopy objectAtIndexedSubscript:v10];
        v14 = [v13 unsignedIntegerValue] + v11;

        v15 = [typeCopy objectAtIndexedSubscript:v10];
        unsignedIntegerValue = [v15 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
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

      while (v10 < [sizeCopy count]);
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

- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type
{
  v7 = [MTKMeshBuffer alloc];

  return [(MTKMeshBuffer *)v7 _initWithLength:buffer allocator:self type:type];
}

- (id)newBufferWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v7 = [[MTKMeshBuffer alloc] _initWithData:dataCopy allocator:self type:type];

  return v7;
}

- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type
{
  zoneCopy = zone;
  v9 = zoneCopy;
  if (zoneCopy)
  {
    allocator = [zoneCopy allocator];
    v11 = [allocator isEqual:self];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v9 newBufferWithLength:length type:type];
  }

  else
  {
    v12 = [(MTKMeshBufferAllocator *)self newBuffer:length type:type];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type
{
  dataCopy = data;
  zoneCopy = zone;
  v10 = -[MTKMeshBufferAllocator newBufferFromZone:length:type:](self, "newBufferFromZone:length:type:", zoneCopy, [dataCopy length], type);

  [v10 fillData:dataCopy offset:0];
  return v10;
}

@end