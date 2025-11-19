@interface ACDUnfairLockWrapper
- (ACDUnfairLockWrapper)init;
@end

@implementation ACDUnfairLockWrapper

- (ACDUnfairLockWrapper)init
{
  v3.receiver = self;
  v3.super_class = ACDUnfairLockWrapper;
  result = [(ACDUnfairLockWrapper *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end