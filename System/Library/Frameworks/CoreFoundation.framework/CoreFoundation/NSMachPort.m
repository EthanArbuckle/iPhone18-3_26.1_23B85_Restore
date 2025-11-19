@interface NSMachPort
- (void)_decreaseRetainCountAndMaybeDeallocWithLock:(os_unfair_lock_s *)a3 andPerformWhenZero:(id)a4;
- (void)_increaseRetainCountWithLock:(os_unfair_lock_s *)a3;
@end

@implementation NSMachPort

- (void)_increaseRetainCountWithLock:(os_unfair_lock_s *)a3
{
  os_unfair_lock_lock(a3);
  retainCount = self->_retainCount;
  if (retainCount != -1)
  {
    self->_retainCount = retainCount + 1;
  }

  os_unfair_lock_unlock(a3);
}

- (void)_decreaseRetainCountAndMaybeDeallocWithLock:(os_unfair_lock_s *)a3 andPerformWhenZero:(id)a4
{
  os_unfair_lock_lock(a3);
  retainCount = self->_retainCount;
  if (!retainCount)
  {
    os_unfair_lock_unlock(a3);
    (*(a4 + 2))(a4);
    os_unfair_lock_lock(a3);
    retainCount = self->_retainCount;
  }

  if (retainCount != -1)
  {
    if (!retainCount)
    {
      os_unfair_lock_unlock(a3);

      [(NSMachPort *)self dealloc];
      return;
    }

    self->_retainCount = retainCount - 1;
  }

  os_unfair_lock_unlock(a3);
}

@end