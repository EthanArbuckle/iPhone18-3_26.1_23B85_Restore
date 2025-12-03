@interface UIScrollView(AVAdditions)
- (uint64_t)avkit_isBeingScrollTested;
- (uint64_t)avkit_isBeingScrolled;
- (uint64_t)avkit_isBeingScrolledQuickly;
- (uint64_t)avkit_isDescendantOfNonPagingScrollView;
@end

@implementation UIScrollView(AVAdditions)

- (uint64_t)avkit_isBeingScrolledQuickly
{
  [self _horizontalVelocity];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 > 1.5)
  {
    return 1;
  }

  [self _verticalVelocity];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 1.5)
  {
    return 1;
  }

  superview = [self superview];
  avkit_isBeingScrolledQuickly = [superview avkit_isBeingScrolledQuickly];

  return avkit_isBeingScrolledQuickly;
}

- (uint64_t)avkit_isBeingScrolled
{
  if ([self isDecelerating] & 1) != 0 || (objc_msgSend(self, "isDragging") & 1) != 0 || (objc_msgSend(self, "isScrollAnimating") & 1) != 0 || (objc_msgSend(self, "_isAnimatingScrollTest"))
  {
    return 1;
  }

  superview = [self superview];
  avkit_isBeingScrolled = [superview avkit_isBeingScrolled];

  return avkit_isBeingScrolled;
}

- (uint64_t)avkit_isBeingScrollTested
{
  if ([self _isAnimatingScrollTest])
  {
    return 1;
  }

  superview = [self superview];
  avkit_isBeingScrollTested = [superview avkit_isBeingScrollTested];

  return avkit_isBeingScrollTested;
}

- (uint64_t)avkit_isDescendantOfNonPagingScrollView
{
  if (![self isPagingEnabled])
  {
    return 1;
  }

  superview = [self superview];
  avkit_isDescendantOfNonPagingScrollView = [superview avkit_isDescendantOfNonPagingScrollView];

  return avkit_isDescendantOfNonPagingScrollView;
}

@end