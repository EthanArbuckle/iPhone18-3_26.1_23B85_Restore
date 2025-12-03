@interface NSMachPort
- (void)_decreaseRetainCountAndMaybeDeallocWithLock:(os_unfair_lock_s *)lock andPerformWhenZero:(id)zero;
- (void)_increaseRetainCountWithLock:(os_unfair_lock_s *)lock;
@end

@implementation NSMachPort

- (void)_increaseRetainCountWithLock:(os_unfair_lock_s *)lock
{
  os_unfair_lock_lock(lock);
  retainCount = self->_retainCount;
  if (retainCount != -1)
  {
    self->_retainCount = retainCount + 1;
  }

  os_unfair_lock_unlock(lock);
}

- (void)_decreaseRetainCountAndMaybeDeallocWithLock:(os_unfair_lock_s *)lock andPerformWhenZero:(id)zero
{
  os_unfair_lock_lock(lock);
  retainCount = self->_retainCount;
  if (!retainCount)
  {
    os_unfair_lock_unlock(lock);
    (*(zero + 2))(zero);
    os_unfair_lock_lock(lock);
    retainCount = self->_retainCount;
  }

  if (retainCount != -1)
  {
    if (!retainCount)
    {
      os_unfair_lock_unlock(lock);

      [(NSMachPort *)self dealloc];
      return;
    }

    self->_retainCount = retainCount - 1;
  }

  os_unfair_lock_unlock(lock);
}

@end