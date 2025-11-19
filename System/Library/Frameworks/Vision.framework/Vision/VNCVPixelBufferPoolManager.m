@interface VNCVPixelBufferPoolManager
- (VNCVPixelBufferPoolManager)init;
- (id).cxx_construct;
@end

@implementation VNCVPixelBufferPoolManager

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

- (VNCVPixelBufferPoolManager)init
{
  self->_poolsLock._os_unfair_lock_opaque = 0;
  v3.receiver = self;
  v3.super_class = VNCVPixelBufferPoolManager;
  return [(VNCVPixelBufferPoolManager *)&v3 init];
}

@end