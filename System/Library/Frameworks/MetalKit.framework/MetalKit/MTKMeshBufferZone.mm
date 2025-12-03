@interface MTKMeshBufferZone
- (MTKMeshBufferZone)initWithCapacity:(unint64_t)capacity allocator:(id)allocator;
- (id)newBufferWithLength:(unint64_t)length type:(unint64_t)type;
- (void)destroyBuffer:(id)buffer;
@end

@implementation MTKMeshBufferZone

- (MTKMeshBufferZone)initWithCapacity:(unint64_t)capacity allocator:(id)allocator
{
  allocatorCopy = allocator;
  v19.receiver = self;
  v19.super_class = MTKMeshBufferZone;
  v8 = [(MTKMeshBufferZone *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_allocator, allocator);
    v9->_capacity = capacity;
    device = [(MTKMeshBufferAllocator *)v9->_allocator device];
    capacity = v9->_capacity;
    if (capacity > [device maxBufferLength] || !v9->_capacity)
    {

      v17 = 0;
      goto LABEL_7;
    }

    device2 = [allocatorCopy device];
    v13 = [device2 newBufferWithLength:v9->_capacity options:0];
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

- (id)newBufferWithLength:(unint64_t)length type:(unint64_t)type
{
  if (type == 1)
  {
    device = [(MTKMeshBufferAllocator *)self->_allocator device];
    minConstantBufferAlignmentBytes = [device minConstantBufferAlignmentBytes];
  }

  else
  {
    minConstantBufferAlignmentBytes = 1;
  }

  buffers = self->_buffers;
  if (!self->_destroyInvoked)
  {
    lastObject = [(NSMutableOrderedSet *)buffers lastObject];
    buffer = [lastObject buffer];

    offset = [buffer offset];
    v10 = (minConstantBufferAlignmentBytes + offset + [buffer length] - 1) & -minConstantBufferAlignmentBytes;

    goto LABEL_11;
  }

  v10 = 0;
  if (![(NSMutableOrderedSet *)buffers count])
  {
LABEL_11:
    v20 = [(MTLBuffer *)self->_buffer length];
LABEL_12:
    if (v20 - v10 < length)
    {
      return 0;
    }

    v21 = [[MTKMeshBuffer alloc] _initWithLength:length offset:v10 zone:self type:type];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setBuffer:v21];
      [(NSMutableOrderedSet *)self->_buffers addObject:v22];
    }

    return v21;
  }

  v11 = 0;
  v12 = minConstantBufferAlignmentBytes - 1;
  v13 = -minConstantBufferAlignmentBytes;
  while (1)
  {
    v14 = [(NSMutableOrderedSet *)self->_buffers objectAtIndexedSubscript:v11];
    buffer2 = [v14 buffer];

    if ([buffer2 offset] - v10 >= length)
    {
      break;
    }

    offset2 = [buffer2 offset];
    v10 = (v12 + offset2 + [buffer2 length]) & v13;

    if (++v11 >= [(NSMutableOrderedSet *)self->_buffers count])
    {
      goto LABEL_11;
    }
  }

  v21 = [[MTKMeshBuffer alloc] _initWithLength:length offset:v10 zone:self type:type];
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

- (void)destroyBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = [bufferCopy zone];
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
      buffer = [v6 buffer];

      if (buffer == bufferCopy)
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