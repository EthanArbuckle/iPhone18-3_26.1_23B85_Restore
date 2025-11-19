@interface UILabel(NUIContainerView)
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
@end

@implementation UILabel(NUIContainerView)

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  v3.receiver = a1;
  v3.super_class = &off_282EB6DD0;
  return (objc_msgSendSuper2(&v3, sel_isLayoutSizeDependentOnPerpendicularAxis) & 1) != 0 || [a1 numberOfLines] != 1;
}

@end