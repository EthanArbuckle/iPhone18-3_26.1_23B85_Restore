@interface SCNFixedSizePage
- (SCNFixedSizePage)initWithBuffer:(id)a3 elementSize:(unint64_t)a4;
- (id)newSubBufferForAllocator:(id)a3;
- (unint64_t)_allocateElement;
- (void)dealloc;
- (void)deallocateElementAtOffset:(unint64_t)a3;
@end

@implementation SCNFixedSizePage

- (SCNFixedSizePage)initWithBuffer:(id)a3 elementSize:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = SCNFixedSizePage;
  v6 = [(SCNFixedSizePage *)&v10 init];
  v7 = [a3 length] / a4;
  v6->_buffer = a3;
  v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, v7}];
  v6->_elementSize = a4;
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
    v12 = [(NSMutableIndexSet *)self->_freeIndices firstIndex];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(SCNFixedSizePage *)v13 _allocateElement:v14];
      }
    }

    [(NSMutableIndexSet *)self->_freeIndices removeIndex:v12];
    return self->_elementSize * v12;
  }

  return v11;
}

- (void)deallocateElementAtOffset:(unint64_t)a3
{
  elementSize = self->_elementSize;
  v5 = a3 / elementSize;
  if (a3 % elementSize)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v6 deallocateElementAtOffset:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  [(NSMutableIndexSet *)self->_freeIndices addIndex:v5];
}

- (id)newSubBufferForAllocator:(id)a3
{
  v4 = [[SCNMTLBufferAllocatorSubBuffer alloc] initWithPage:self allocator:a3];
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