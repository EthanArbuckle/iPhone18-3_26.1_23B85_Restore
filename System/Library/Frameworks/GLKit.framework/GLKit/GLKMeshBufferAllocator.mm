@interface GLKMeshBufferAllocator
- (BOOL)isEqual:(id)equal;
- (GLKMeshBufferAllocator)init;
- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type;
- (id)newBufferWithData:(id)data type:(unint64_t)type;
- (id)newZone:(unint64_t)zone;
- (id)newZoneForBuffersWithSize:(id)size andType:(id)type;
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

  currentContext = [MEMORY[0x277CD9388] currentContext];
  v4 = currentContext;
  if (currentContext)
  {
    sharegroup = [(GLKMeshBufferAllocator *)currentContext sharegroup];
    sharegroup = v2->_sharegroup;
    v2->_sharegroup = sharegroup;

LABEL_4:
    v4 = v2;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_sharegroup == equalCopy[1];

  return v5;
}

- (id)newZone:(unint64_t)zone
{
  v5 = [GLKMeshBufferZone alloc];

  return [(GLKMeshBufferZone *)v5 initWithCapacity:zone allocator:self];
}

- (id)newZoneForBuffersWithSize:(id)size andType:(id)type
{
  sizeCopy = size;
  typeCopy = type;
  v8 = [sizeCopy count];
  if (v8 == [typeCopy count])
  {
    if ([sizeCopy count])
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [sizeCopy objectAtIndexedSubscript:v9];
        v12 = [v11 unsignedIntegerValue] + v10;

        v13 = [typeCopy objectAtIndexedSubscript:v9];
        unsignedIntegerValue = [v13 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          v10 = v12 + 255;
        }

        else
        {
          v10 = v12;
        }

        ++v9;
      }

      while (v9 < [sizeCopy count]);
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

- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type
{
  v7 = [GLKMeshBuffer alloc];

  return [(GLKMeshBuffer *)v7 _initWithLength:buffer allocator:self type:type];
}

- (id)newBufferWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v7 = [[GLKMeshBuffer alloc] _initWithData:dataCopy allocator:self type:type];

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
    v12 = [(GLKMeshBufferAllocator *)self newBuffer:length type:type];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type
{
  dataCopy = data;
  zoneCopy = zone;
  v10 = -[GLKMeshBufferAllocator newBufferFromZone:length:type:](self, "newBufferFromZone:length:type:", zoneCopy, [dataCopy length], type);

  if (v10)
  {
    v11 = [v10 map];
    memcpy([v11 bytes], objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"));
  }

  return v10;
}

@end