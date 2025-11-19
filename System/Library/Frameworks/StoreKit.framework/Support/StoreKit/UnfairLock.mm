@interface UnfairLock
- (UnfairLock)init;
@end

@implementation UnfairLock

- (UnfairLock)init
{
  v3.receiver = self;
  v3.super_class = UnfairLock;
  result = [(UnfairLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end