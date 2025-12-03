@interface UIView(NUIContainerViewHack)
- (uint64_t)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack;
@end

@implementation UIView(NUIContainerViewHack)

- (uint64_t)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack
{
  result = [a3 invalidatingIntrinsicContentSizeAlsoInvalidatesSuperview];
  if (result)
  {
    [self invalidateIntrinsicContentSize];

    return [self setNeedsLayout];
  }

  return result;
}

@end