@interface ASDUnfairLock
- (ASDUnfairLock)init;
@end

@implementation ASDUnfairLock

- (ASDUnfairLock)init
{
  v3.receiver = self;
  v3.super_class = ASDUnfairLock;
  result = [(ASDUnfairLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end