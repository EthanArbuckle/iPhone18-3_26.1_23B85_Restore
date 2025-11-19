@interface APUnfairRecursiveLock
- (APUnfairRecursiveLock)init;
@end

@implementation APUnfairRecursiveLock

- (APUnfairRecursiveLock)init
{
  v3.receiver = self;
  v3.super_class = APUnfairRecursiveLock;
  result = [(APUnfairRecursiveLock *)&v3 init];
  if (result)
  {
    result->_lock = 0;
  }

  return result;
}

@end