@interface UIScrollBarIndicatorAccessibilityElement
- (uint64_t)orientation;
- (uint64_t)setOrientation:(uint64_t)result;
@end

@implementation UIScrollBarIndicatorAccessibilityElement

- (uint64_t)orientation
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setOrientation:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

@end