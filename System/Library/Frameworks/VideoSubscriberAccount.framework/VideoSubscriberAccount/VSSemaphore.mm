@interface VSSemaphore
- (VSSemaphore)init;
@end

@implementation VSSemaphore

- (VSSemaphore)init
{
  v6.receiver = self;
  v6.super_class = VSSemaphore;
  v2 = [(VSSemaphore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v3;
  }

  return v2;
}

@end