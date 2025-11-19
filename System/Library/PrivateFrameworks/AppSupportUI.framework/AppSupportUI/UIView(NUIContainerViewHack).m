@interface UIView(NUIContainerViewHack)
- (uint64_t)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack;
@end

@implementation UIView(NUIContainerViewHack)

- (uint64_t)_intrinsicContentSizeInvalidatedForChildView:()NUIContainerViewHack
{
  result = [a3 invalidatingIntrinsicContentSizeAlsoInvalidatesSuperview];
  if (result)
  {
    [a1 invalidateIntrinsicContentSize];

    return [a1 setNeedsLayout];
  }

  return result;
}

@end