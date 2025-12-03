@interface AMSDeallocGuard
- (AMSDeallocGuard)initWithDeallocGuardBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AMSDeallocGuard

- (void)dealloc
{
  os_unfair_lock_lock_with_options();
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_invalidationLock);
  if (!invalidated)
  {
    block = [(AMSDeallocGuard *)self block];
    block[2]();
  }

  v5.receiver = self;
  v5.super_class = AMSDeallocGuard;
  [(AMSDeallocGuard *)&v5 dealloc];
}

- (AMSDeallocGuard)initWithDeallocGuardBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = AMSDeallocGuard;
  v5 = [(AMSDeallocGuard *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v5->_invalidated = 0;
    v5->_invalidationLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)invalidate
{
  os_unfair_lock_assert_not_owner(&self->_invalidationLock);
  os_unfair_lock_lock_with_options();
  self->_invalidated = 1;

  os_unfair_lock_unlock(&self->_invalidationLock);
}

@end