@interface AVTAvatarDidUpdateAtTimeCallbackItem
- (double)firstExecutionTime;
- (uint64_t)firstExecutionHasCompleted;
- (uint64_t)setFirstExecutionHasCompleted:(uint64_t)result;
- (uint64_t)setFirstExecutionTime:(uint64_t)result;
- (void)setBlock:(void *)a1;
- (void)setKey:(void *)a1;
@end

@implementation AVTAvatarDidUpdateAtTimeCallbackItem

- (uint64_t)firstExecutionHasCompleted
{
  if (a1)
  {
    v1 = *(a1 + 8);
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
  if (a1)
  {
    return *(a1 + 16);
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

- (void)setKey:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 24);
  }
}

- (void)setBlock:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

@end