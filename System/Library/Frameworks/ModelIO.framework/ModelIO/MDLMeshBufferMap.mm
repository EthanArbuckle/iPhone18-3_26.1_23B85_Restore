@interface MDLMeshBufferMap
- (MDLMeshBufferMap)initWithBytes:(void *)bytes deallocator:(void *)deallocator;
- (void)dealloc;
@end

@implementation MDLMeshBufferMap

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, a2);
  }

  v4.receiver = self;
  v4.super_class = MDLMeshBufferMap;
  [(MDLMeshBufferMap *)&v4 dealloc];
}

- (MDLMeshBufferMap)initWithBytes:(void *)bytes deallocator:(void *)deallocator
{
  v6 = deallocator;
  v12.receiver = self;
  v12.super_class = MDLMeshBufferMap;
  v7 = [(MDLMeshBufferMap *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_bytes = bytes;
    v9 = MEMORY[0x23EE80910](v6);
    v10 = v8->_deallocator;
    v8->_deallocator = v9;
  }

  return v8;
}

@end