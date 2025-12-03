@interface SCNFixedSizePage
- (SCNFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size;
- (id)newSubBufferForAllocator:(id)allocator;
- (unint64_t)_allocateElement;
- (void)dealloc;
- (void)deallocateElementAtOffset:(unint64_t)offset;
@end

@implementation SCNFixedSizePage

- (SCNFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = SCNFixedSizePage;
  v6 = [(SCNFixedSizePage *)&v10 init];
  v7 = [buffer length] / size;
  v6->_buffer = buffer;
  v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, v7}];
  v6->_elementSize = size;
  v6->_freeIndices = v8;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNFixedSizePage;
  [(SCNFixedSizePage *)&v3 dealloc];
}

- (unint64_t)_allocateElement
{
  if (![(NSMutableIndexSet *)self->_freeIndices count])
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v3 _allocateElement:v4];
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableIndexSet *)self->_freeIndices count])
  {
    firstIndex = [(NSMutableIndexSet *)self->_freeIndices firstIndex];
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(SCNFixedSizePage *)v13 _allocateElement:v14];
      }
    }

    [(NSMutableIndexSet *)self->_freeIndices removeIndex:firstIndex];
    return self->_elementSize * firstIndex;
  }

  return v11;
}

- (void)deallocateElementAtOffset:(unint64_t)offset
{
  elementSize = self->_elementSize;
  v5 = offset / elementSize;
  if (offset % elementSize)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v6 deallocateElementAtOffset:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  [(NSMutableIndexSet *)self->_freeIndices addIndex:v5];
}

- (id)newSubBufferForAllocator:(id)allocator
{
  v4 = [[SCNMTLBufferAllocatorSubBuffer alloc] initWithPage:self allocator:allocator];
  [(SCNMTLBuffer *)v4 setBuffer:self->_buffer];
  [(SCNMTLBuffer *)v4 setOffset:[(SCNFixedSizePage *)self _allocateElement]];
  if ([(SCNMTLBuffer *)v4 offset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v5 newSubBufferForAllocator:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  return v4;
}

@end