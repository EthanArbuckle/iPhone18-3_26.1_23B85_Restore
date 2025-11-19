@interface SCNMTLBufferAllocatorSubBuffer
- (SCNMTLBufferAllocatorSubBuffer)initWithPage:(id)a3 allocator:(id)a4;
- (void)dealloc;
@end

@implementation SCNMTLBufferAllocatorSubBuffer

- (SCNMTLBufferAllocatorSubBuffer)initWithPage:(id)a3 allocator:(id)a4
{
  v6.receiver = self;
  v6.super_class = SCNMTLBufferAllocatorSubBuffer;
  result = [(SCNMTLBufferAllocatorSubBuffer *)&v6 init:a3];
  if (result)
  {
    result->_parentPage = a3;
  }

  return result;
}

- (void)dealloc
{
  [(SCNFixedSizePage *)self->_parentPage deallocateElementAtOffset:[(SCNMTLBuffer *)self offset]];
  v3.receiver = self;
  v3.super_class = SCNMTLBufferAllocatorSubBuffer;
  [(SCNMTLBuffer *)&v3 dealloc];
}

@end