@interface GLKMeshBufferZone
- (GLKMeshBufferZone)initWithCapacity:(unint64_t)capacity allocator:(id)allocator;
- (id)newBufferWithLength:(unint64_t)length type:(unint64_t)type;
- (void)dealloc;
- (void)destroyBuffer:(id)buffer;
@end

@implementation GLKMeshBufferZone

- (GLKMeshBufferZone)initWithCapacity:(unint64_t)capacity allocator:(id)allocator
{
  allocatorCopy = allocator;
  v13.receiver = self;
  v13.super_class = GLKMeshBufferZone;
  v8 = [(GLKMeshBufferZone *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_allocator, allocator);
    v9->_capacity = capacity;
    v10 = objc_opt_new();
    buffers = v9->_buffers;
    v9->_buffers = v10;

    glGenBuffers(1, &v9->_glBufferName);
    glBindBuffer(0x8892u, v9->_glBufferName);
    glBufferData(0x8892u, capacity, 0, 0x88E4u);
    v9->_destroyInvoked = 0;
  }

  return v9;
}

- (id)newBufferWithLength:(unint64_t)length type:(unint64_t)type
{
  if (type == 1)
  {
    v7 = 256;
  }

  else
  {
    if (type != 2)
    {
      return 0;
    }

    v7 = 1;
  }

  destroyInvoked = self->_destroyInvoked;
  buffers = self->_buffers;
  if (!destroyInvoked)
  {
    lastObject = [(NSMutableOrderedSet *)buffers lastObject];
    buffer = [lastObject buffer];

    offset = [buffer offset];
    v10 = (v7 + offset + [buffer length] - 1) & -v7;

    goto LABEL_12;
  }

  v10 = 0;
  if (![(NSMutableOrderedSet *)buffers count])
  {
    goto LABEL_12;
  }

  v11 = 0;
  v12 = v7 - 1;
  v13 = ~v7;
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
      goto LABEL_12;
    }
  }

  v20 = [[GLKMeshBuffer alloc] _initWithLength:length offset:v10 zone:self type:type];
  v22 = objc_opt_new();
  [v22 setBuffer:v20];
  [(NSMutableOrderedSet *)self->_buffers insertObject:v22 atIndex:v11];

  if (!v20)
  {
LABEL_12:
    if (self->_capacity - v10 >= length)
    {
      v20 = [[GLKMeshBuffer alloc] _initWithLength:length offset:v10 zone:self type:type];
      if (v20)
      {
        v21 = objc_opt_new();
        [v21 setBuffer:v20];
        [(NSMutableOrderedSet *)self->_buffers addObject:v21];
      }

      return v20;
    }

    return 0;
  }

  return v20;
}

- (void)destroyBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = [bufferCopy zone];
  if (v4 != self)
  {
    [GLKMeshBufferZone destroyBuffer:];
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

- (void)dealloc
{
  glDeleteBuffers(1, &self->_glBufferName);
  v3.receiver = self;
  v3.super_class = GLKMeshBufferZone;
  [(GLKMeshBufferZone *)&v3 dealloc];
}

@end