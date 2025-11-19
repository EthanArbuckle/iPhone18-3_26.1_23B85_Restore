@interface MTKMeshBuffer
- (id)_initWithBytes:(const void *)a3 length:(unint64_t)a4 offset:(unint64_t)a5 allocator:(id)a6 zone:(id)a7 type:(unint64_t)a8;
- (id)_initWithData:(id)a3 allocator:(id)a4 type:(unint64_t)a5;
- (id)_initWithLength:(unint64_t)a3 offset:(unint64_t)a4 zone:(id)a5 type:(unint64_t)a6;
- (id)_newMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)a3 offset:(unint64_t)a4;
@end

@implementation MTKMeshBuffer

- (id)_initWithLength:(unint64_t)a3 offset:(unint64_t)a4 zone:(id)a5 type:(unint64_t)a6
{
  v11 = [a5 allocator];

  return [(MTKMeshBuffer *)self _initWithBytes:0 length:a3 offset:a4 allocator:v11 zone:a5 type:a6];
}

- (id)_initWithData:(id)a3 allocator:(id)a4 type:(unint64_t)a5
{
  v9 = [a3 bytes];
  v10 = [a3 length];

  return [(MTKMeshBuffer *)self _initWithBytes:v9 length:v10 offset:0 allocator:a4 zone:0 type:a5];
}

- (id)_initWithBytes:(const void *)a3 length:(unint64_t)a4 offset:(unint64_t)a5 allocator:(id)a6 zone:(id)a7 type:(unint64_t)a8
{
  v18.receiver = self;
  v18.super_class = MTKMeshBuffer;
  result = [(MTKMeshBuffer *)&v18 init];
  if (result)
  {
    v15 = result;
    v16 = [objc_msgSend(a6 "device")];
    result = 0;
    if (a8 - 3 >= 0xFFFFFFFFFFFFFFFELL && a4 - 1 < v16)
    {
      v15[2] = a4;
      v15[3] = a6;
      v15[1] = a7;
      v15[5] = a5;
      v15[6] = a8;
      if (a7)
      {
        v17 = [a7 buffer];
      }

      else
      {
        v17 = [objc_msgSend(a6 "device")];
      }

      v15[4] = v17;
      if (a3)
      {
        memcpy([v17 contents], a3, a4);
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

- (void)fillData:(id)a3 offset:(unint64_t)a4
{
  if (self->_length >= a4)
  {
    v8 = [a3 length];
    v9 = v8;
    length = self->_length;
    if (v8 + a4 >= length)
    {
      v11 = v8 + a4 - length;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(MTLBuffer *)self->_buffer contents];
    v13 = self->_offset + a4;
    v14 = [a3 bytes];

    memcpy((v12 + v13), v14, v11 + v9);
  }
}

- (id)_newMap
{
  v3 = self->_buffer;
  v4 = objc_alloc(getMDLMeshBufferMapClass());
  v5 = [(MTLBuffer *)v3 contents];
  offset = self->_offset;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__MTKMeshBuffer__newMap__block_invoke;
  v8[3] = &unk_1E8580DD8;
  v8[4] = v3;
  return [v4 initWithBytes:v5 + offset deallocator:v8];
}

- (id)map
{
  v2 = [(MTKMeshBuffer *)self _newMap];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MTKMeshBuffer alloc] _initWithLength:self->_length allocator:self->_allocator type:self->_type];
  memcpy([v4[4] contents], -[MTLBuffer contents](self->_buffer, "contents"), self->_length);
  return v4;
}

@end