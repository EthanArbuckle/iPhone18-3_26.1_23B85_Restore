@interface GLKMeshBuffer
- (id)_initWithBytes:(const void *)bytes length:(unint64_t)length offset:(unint64_t)offset allocator:(id)allocator zone:(id)zone type:(unint64_t)type;
- (id)_initWithData:(id)data allocator:(id)allocator type:(unint64_t)type;
- (id)_initWithLength:(unint64_t)length offset:(unint64_t)offset zone:(id)zone type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)data offset:(unint64_t)offset;
@end

@implementation GLKMeshBuffer

- (id)_initWithLength:(unint64_t)length offset:(unint64_t)offset zone:(id)zone type:(unint64_t)type
{
  zoneCopy = zone;
  allocator = [zoneCopy allocator];
  v12 = [(GLKMeshBuffer *)self _initWithBytes:0 length:length offset:offset allocator:allocator zone:zoneCopy type:type];

  return v12;
}

- (id)_initWithData:(id)data allocator:(id)allocator type:(unint64_t)type
{
  dataCopy = data;
  allocatorCopy = allocator;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v13 = [dataCopy2 length];

  v14 = [(GLKMeshBuffer *)self _initWithBytes:bytes length:v13 offset:0 allocator:allocatorCopy zone:0 type:type];
  return v14;
}

- (id)_initWithBytes:(const void *)bytes length:(unint64_t)length offset:(unint64_t)offset allocator:(id)allocator zone:(id)zone type:(unint64_t)type
{
  allocatorCopy = allocator;
  zoneCopy = zone;
  v22.receiver = self;
  v22.super_class = GLKMeshBuffer;
  v17 = [(GLKMeshBuffer *)&v22 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  v17->_mapCount = 0;
  v17->_type = type;
  objc_storeStrong(&v17->_zone, zone);
  v18->_length = length;
  objc_storeStrong(&v18->_allocator, allocator);
  v18->_offset = offset;
  if (type == 1)
  {
    v19 = 34962;
LABEL_6:
    v18->_target = v19;
    if (v18->_zone)
    {
      v18->_glBufferName = [zoneCopy glBufferName];
    }

    else
    {
      glGenBuffers(1, &v18->_glBufferName);
      glBindBuffer(v18->_target, v18->_glBufferName);
      glBufferData(v18->_target, length, bytes, 0x88E4u);
    }

LABEL_10:
    v20 = v18;
    goto LABEL_11;
  }

  if (type == 2)
  {
    v19 = 34963;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (void)fillData:(id)data offset:(unint64_t)offset
{
  if (self->_length >= offset)
  {
    dataCopy = data;
    v8 = [dataCopy length];
    length = self->_length;
    v10 = v8 + offset - length;
    if (v8 + offset < length)
    {
      v10 = 0;
    }

    v11 = v8 - v10;
    glBindBuffer(self->_target, self->_glBufferName);
    target = self->_target;
    offset = self->_offset;
    bytes = [dataCopy bytes];

    glBufferSubData(target, offset + offset, v11, bytes);
  }
}

- (id)map
{
  mapCount = self->_mapCount;
  if (!mapCount)
  {
    glBindBuffer(self->_target, self->_glBufferName);
    self->_mapPtr = glMapBufferRange(self->_target, 0, self->_length, 1u);
    mapCount = self->_mapCount;
  }

  self->_mapCount = mapCount + 1;
  v4 = objc_alloc(getMDLMeshBufferMapClass());
  mapPtr = self->_mapPtr;
  offset = self->_offset;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__GLKMeshBuffer_map__block_invoke;
  v9[3] = &unk_278A57DE0;
  v9[4] = self;
  v7 = [v4 initWithBytes:&mapPtr[offset] deallocator:v9];

  return v7;
}

uint64_t __20__GLKMeshBuffer_map__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[2];
  if (v2 == 1)
  {
    v3 = result;
    glBindBuffer(v1[6], v1[10]);
    result = glUnmapBuffer(*(*(v3 + 32) + 24));
    *(*(v3 + 32) + 16) = 0;
    v1 = *(v3 + 32);
    v2 = v1[2];
  }

  v1[2] = v2 - 1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GLKMeshBuffer);
  v5 = [(GLKMeshBuffer *)self map];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:objc_msgSend(v5 length:"bytes") freeWhenDone:{-[GLKMeshBuffer length](self, "length"), 0}];
  allocator = [(GLKMeshBuffer *)self allocator];
  v8 = [allocator newBufferWithData:v6 type:self->_type];

  return v8;
}

- (void)dealloc
{
  zone = self->_zone;
  if (zone)
  {
    [(GLKMeshBufferZone *)zone destroyBuffer:self];
  }

  else
  {
    glDeleteBuffers(1, &self->_glBufferName);
  }

  v4.receiver = self;
  v4.super_class = GLKMeshBuffer;
  [(GLKMeshBuffer *)&v4 dealloc];
}

@end