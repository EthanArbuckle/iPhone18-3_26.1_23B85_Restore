@interface SCNMTLBufferAllocatorSubBuffer
- (SCNMTLBufferAllocatorSubBuffer)initWithPage:(id)page allocator:(id)allocator;
- (void)dealloc;
@end

@implementation SCNMTLBufferAllocatorSubBuffer

- (SCNMTLBufferAllocatorSubBuffer)initWithPage:(id)page allocator:(id)allocator
{
  v6.receiver = self;
  v6.super_class = SCNMTLBufferAllocatorSubBuffer;
  result = [(SCNMTLBufferAllocatorSubBuffer *)&v6 init:page];
  if (result)
  {
    result->_parentPage = page;
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