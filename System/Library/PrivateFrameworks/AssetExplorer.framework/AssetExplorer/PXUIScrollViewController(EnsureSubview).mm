@interface PXUIScrollViewController(EnsureSubview)
- (void)ae_ensureSubview:()EnsureSubview;
@end

@implementation PXUIScrollViewController(EnsureSubview)

- (void)ae_ensureSubview:()EnsureSubview
{
  v6 = a3;
  superview = [v6 superview];
  scrollView = [self scrollView];

  if (superview != scrollView)
  {
    [self addSubview:v6];
  }
}

@end