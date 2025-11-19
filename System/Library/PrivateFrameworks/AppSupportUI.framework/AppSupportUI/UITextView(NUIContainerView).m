@interface UITextView(NUIContainerView)
- (uint64_t)isLayoutSizeDependentOnPerpendicularAxis;
@end

@implementation UITextView(NUIContainerView)

- (uint64_t)isLayoutSizeDependentOnPerpendicularAxis
{
  v3.receiver = a1;
  v3.super_class = &off_282EC7C80;
  if (objc_msgSendSuper2(&v3, sel_isLayoutSizeDependentOnPerpendicularAxis))
  {
    return 1;
  }

  else
  {
    return [a1 isScrollEnabled] ^ 1;
  }
}

@end