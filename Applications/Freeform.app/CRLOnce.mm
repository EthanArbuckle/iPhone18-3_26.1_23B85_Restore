@interface CRLOnce
- (CRLOnce)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)performBlockOnce:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRLOnce);
  os_unfair_lock_lock(&self->_lock);
  v4->_didPerformOnce = self->_didPerformOnce;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)performBlockOnce:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_didPerformOnce)
  {
    self->_didPerformOnce = 1;
    v4[2]();
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end