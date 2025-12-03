@interface UIAccessibilityPanAlternateCustomAction
- (uint64_t)isSecondAlternate;
- (uint64_t)setIsSecondAlternate:(uint64_t)result;
@end

@implementation UIAccessibilityPanAlternateCustomAction

- (uint64_t)isSecondAlternate
{
  if (self)
  {
    v2 = *(self + 56) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setIsSecondAlternate:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2 & 1;
  }

  return result;
}

@end