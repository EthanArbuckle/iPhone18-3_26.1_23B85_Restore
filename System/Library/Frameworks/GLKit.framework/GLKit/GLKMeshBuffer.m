@interface GLKMeshBuffer
- (id)_initWithBytes:(const void *)a3 length:(unint64_t)a4 offset:(unint64_t)a5 allocator:(id)a6 zone:(id)a7 type:(unint64_t)a8;
- (id)_initWithData:(id)a3 allocator:(id)a4 type:(unint64_t)a5;
- (id)_initWithLength:(unint64_t)a3 offset:(unint64_t)a4 zone:(id)a5 type:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)a3 offset:(unint64_t)a4;
@end

@implementation GLKMeshBuffer

- (id)_initWithLength:(unint64_t)a3 offset:(unint64_t)a4 zone:(id)a5 type:(unint64_t)a6
{
  v10 = a5;
  v11 = [v10 allocator];
  v12 = [(GLKMeshBuffer *)self _initWithBytes:0 length:a3 offset:a4 allocator:v11 zone:v10 type:a6];

  return v12;
}

- (id)_initWithData:(id)a3 allocator:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a3;
  v12 = [v11 bytes];
  v13 = [v11 length];

  v14 = [(GLKMeshBuffer *)self _initWithBytes:v12 length:v13 offset:0 allocator:v10 zone:0 type:a5];
  return v14;
}

- (id)_initWithBytes:(const void *)a3 length:(unint64_t)a4 offset:(unint64_t)a5 allocator:(id)a6 zone:(id)a7 type:(unint64_t)a8
{
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = GLKMeshBuffer;
  v17 = [(GLKMeshBuffer *)&v22 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  v17->_mapCount = 0;
  v17->_type = a8;
  objc_storeStrong(&v17->_zone, a7);
  v18->_length = a4;
  objc_storeStrong(&v18->_allocator, a6);
  v18->_offset = a5;
  if (a8 == 1)
  {
    v19 = 34962;
LABEL_6:
    v18->_target = v19;
    if (v18->_zone)
    {
      v18->_glBufferName = [v16 glBufferName];
    }

    else
    {
      glGenBuffers(1, &v18->_glBufferName);
      glBindBuffer(v18->_target, v18->_glBufferName);
      glBufferData(v18->_target, a4, a3, 0x88E4u);
    }

LABEL_10:
    v20 = v18;
    goto LABEL_11;
  }

  if (a8 == 2)
  {
    v19 = 34963;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (void)fillData:(id)a3 offset:(unint64_t)a4
{
  if (self->_length >= a4)
  {
    v7 = a3;
    v8 = [v7 length];
    length = self->_length;
    v10 = v8 + a4 - length;
    if (v8 + a4 < length)
    {
      v10 = 0;
    }

    v11 = v8 - v10;
    glBindBuffer(self->_target, self->_glBufferName);
    target = self->_target;
    offset = self->_offset;
    v14 = [v7 bytes];

    glBufferSubData(target, offset + a4, v11, v14);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GLKMeshBuffer);
  v5 = [(GLKMeshBuffer *)self map];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:objc_msgSend(v5 length:"bytes") freeWhenDone:{-[GLKMeshBuffer length](self, "length"), 0}];
  v7 = [(GLKMeshBuffer *)self allocator];
  v8 = [v7 newBufferWithData:v6 type:self->_type];

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