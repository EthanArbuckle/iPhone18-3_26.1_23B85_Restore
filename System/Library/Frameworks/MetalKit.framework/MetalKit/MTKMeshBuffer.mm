@interface MTKMeshBuffer
- (id)_initWithBytes:(const void *)bytes length:(unint64_t)length offset:(unint64_t)offset allocator:(id)allocator zone:(id)zone type:(unint64_t)type;
- (id)_initWithData:(id)data allocator:(id)allocator type:(unint64_t)type;
- (id)_initWithLength:(unint64_t)length offset:(unint64_t)offset zone:(id)zone type:(unint64_t)type;
- (id)_newMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)data offset:(unint64_t)offset;
@end

@implementation MTKMeshBuffer

- (id)_initWithLength:(unint64_t)length offset:(unint64_t)offset zone:(id)zone type:(unint64_t)type
{
  allocator = [zone allocator];

  return [(MTKMeshBuffer *)self _initWithBytes:0 length:length offset:offset allocator:allocator zone:zone type:type];
}

- (id)_initWithData:(id)data allocator:(id)allocator type:(unint64_t)type
{
  bytes = [data bytes];
  v10 = [data length];

  return [(MTKMeshBuffer *)self _initWithBytes:bytes length:v10 offset:0 allocator:allocator zone:0 type:type];
}

- (id)_initWithBytes:(const void *)bytes length:(unint64_t)length offset:(unint64_t)offset allocator:(id)allocator zone:(id)zone type:(unint64_t)type
{
  v18.receiver = self;
  v18.super_class = MTKMeshBuffer;
  result = [(MTKMeshBuffer *)&v18 init];
  if (result)
  {
    v15 = result;
    v16 = [objc_msgSend(allocator "device")];
    result = 0;
    if (type - 3 >= 0xFFFFFFFFFFFFFFFELL && length - 1 < v16)
    {
      v15[2] = length;
      v15[3] = allocator;
      v15[1] = zone;
      v15[5] = offset;
      v15[6] = type;
      if (zone)
      {
        buffer = [zone buffer];
      }

      else
      {
        buffer = [objc_msgSend(allocator "device")];
      }

      v15[4] = buffer;
      if (bytes)
      {
        memcpy([buffer contents], bytes, length);
      }

      return v15;
    }
  }

  return result;
}

- (void)dealloc
{
  [(MTKMeshBufferZone *)self->_zone destroyBuffer:self];

  v3.receiver = self;
  v3.super_class = MTKMeshBuffer;
  [(MTKMeshBuffer *)&v3 dealloc];
}

- (void)fillData:(id)data offset:(unint64_t)offset
{
  if (self->_length >= offset)
  {
    v8 = [data length];
    v9 = v8;
    length = self->_length;
    if (v8 + offset >= length)
    {
      v11 = v8 + offset - length;
    }

    else
    {
      v11 = 0;
    }

    contents = [(MTLBuffer *)self->_buffer contents];
    v13 = self->_offset + offset;
    bytes = [data bytes];

    memcpy((contents + v13), bytes, v11 + v9);
  }
}

- (id)_newMap
{
  v3 = self->_buffer;
  v4 = objc_alloc(getMDLMeshBufferMapClass());
  contents = [(MTLBuffer *)v3 contents];
  offset = self->_offset;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__MTKMeshBuffer__newMap__block_invoke;
  v8[3] = &unk_1E8580DD8;
  v8[4] = v3;
  return [v4 initWithBytes:contents + offset deallocator:v8];
}

- (id)map
{
  _newMap = [(MTKMeshBuffer *)self _newMap];

  return _newMap;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MTKMeshBuffer alloc] _initWithLength:self->_length allocator:self->_allocator type:self->_type];
  memcpy([v4[4] contents], -[MTLBuffer contents](self->_buffer, "contents"), self->_length);
  return v4;
}

@end