@interface AVTAvatarDidUpdateAtTimeCallbackItem
- (double)firstExecutionTime;
- (uint64_t)firstExecutionHasCompleted;
- (uint64_t)setFirstExecutionHasCompleted:(uint64_t)result;
- (uint64_t)setFirstExecutionTime:(uint64_t)result;
- (void)setBlock:(void *)block;
- (void)setKey:(void *)key;
@end

@implementation AVTAvatarDidUpdateAtTimeCallbackItem

- (uint64_t)firstExecutionHasCompleted
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setFirstExecutionHasCompleted:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (double)firstExecutionTime
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setFirstExecutionTime:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (void)setKey:(void *)key
{
  if (key)
  {
    objc_setProperty_nonatomic_copy(key, newValue, newValue, 24);
  }
}

- (void)setBlock:(void *)block
{
  if (block)
  {
    objc_setProperty_nonatomic_copy(block, newValue, newValue, 32);
  }
}

@end