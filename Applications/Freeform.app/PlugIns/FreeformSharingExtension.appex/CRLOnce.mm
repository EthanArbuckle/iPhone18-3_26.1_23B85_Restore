@interface CRLOnce
- (CRLOnce)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)performBlockOnce:(id)once;
@end

@implementation CRLOnce

- (CRLOnce)init
{
  v3.receiver = self;
  v3.super_class = CRLOnce;
  result = [(CRLOnce *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_didPerformOnce = 0;
    __dmb(0xBu);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRLOnce);
  os_unfair_lock_lock(&self->_lock);
  v4->_didPerformOnce = self->_didPerformOnce;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)performBlockOnce:(id)once
{
  onceCopy = once;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_didPerformOnce)
  {
    self->_didPerformOnce = 1;
    onceCopy[2]();
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end