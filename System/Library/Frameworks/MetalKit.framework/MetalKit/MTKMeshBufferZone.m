@interface MTKMeshBufferZone
- (MTKMeshBufferZone)initWithCapacity:(unint64_t)a3 allocator:(id)a4;
- (id)newBufferWithLength:(unint64_t)a3 type:(unint64_t)a4;
- (void)destroyBuffer:(id)a3;
@end

@implementation MTKMeshBufferZone

- (MTKMeshBufferZone)initWithCapacity:(unint64_t)a3 allocator:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MTKMeshBufferZone;
  v8 = [(MTKMeshBufferZone *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_allocator, a4);
    v9->_capacity = a3;
    v10 = [(MTKMeshBufferAllocator *)v9->_allocator device];
    capacity = v9->_capacity;
    if (capacity > [v10 maxBufferLength] || !v9->_capacity)
    {

      v17 = 0;
      goto LABEL_7;
    }

    v12 = [v7 device];
    v13 = [v12 newBufferWithLength:v9->_capacity options:0];
    buffer = v9->_buffer;
    v9->_buffer = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    buffers = v9->_buffers;
    v9->_buffers = v15;

    v9->_destroyInvoked = 0;
  }

  v17 = v9;
LABEL_7:

  return v17;
}

- (id)newBufferWithLength:(unint64_t)a3 type:(unint64_t)a4
{
  if (a4 == 1)
  {
    v7 = [(MTKMeshBufferAllocator *)self->_allocator device];
    v8 = [v7 minConstantBufferAlignmentBytes];
  }

  else
  {
    v8 = 1;
  }

  buffers = self->_buffers;
  if (!self->_destroyInvoked)
  {
    v17 = [(NSMutableOrderedSet *)buffers lastObject];
    v18 = [v17 buffer];

    v19 = [v18 offset];
    v10 = (v8 + v19 + [v18 length] - 1) & -v8;

    goto LABEL_11;
  }

  v10 = 0;
  if (![(NSMutableOrderedSet *)buffers count])
  {
LABEL_11:
    v20 = [(MTLBuffer *)self->_buffer length];
LABEL_12:
    if (v20 - v10 < a3)
    {
      return 0;
    }

    v21 = [[MTKMeshBuffer alloc] _initWithLength:a3 offset:v10 zone:self type:a4];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setBuffer:v21];
      [(NSMutableOrderedSet *)self->_buffers addObject:v22];
    }

    return v21;
  }

  v11 = 0;
  v12 = v8 - 1;
  v13 = -v8;
  while (1)
  {
    v14 = [(NSMutableOrderedSet *)self->_buffers objectAtIndexedSubscript:v11];
    v15 = [v14 buffer];

    if ([v15 offset] - v10 >= a3)
    {
      break;
    }

    v16 = [v15 offset];
    v10 = (v12 + v16 + [v15 length]) & v13;

    if (++v11 >= [(NSMutableOrderedSet *)self->_buffers count])
    {
      goto LABEL_11;
    }
  }

  v21 = [[MTKMeshBuffer alloc] _initWithLength:a3 offset:v10 zone:self type:a4];
  v23 = objc_opt_new();
  [v23 setBuffer:v21];
  [(NSMutableOrderedSet *)self->_buffers insertObject:v23 atIndex:v11];

  v20 = [(MTLBuffer *)self->_buffer length];
  if (!v21)
  {
    goto LABEL_12;
  }

  return v21;
}

- (void)destroyBuffer:(id)a3
{
  v8 = a3;
  v4 = [v8 zone];
  if (v4 != self)
  {
    [MTKMeshBufferZone destroyBuffer:];
  }

  self->_destroyInvoked = 1;
  if ([(NSMutableOrderedSet *)self->_buffers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableOrderedSet *)self->_buffers objectAtIndexedSubscript:v5];
      v7 = [v6 buffer];

      if (v7 == v8)
      {
        break;
      }

      if (++v5 >= [(NSMutableOrderedSet *)self->_buffers count])
      {
        goto LABEL_8;
      }
    }

    [(NSMutableOrderedSet *)self->_buffers removeObjectAtIndex:v5];
  }

LABEL_8:
}

@end