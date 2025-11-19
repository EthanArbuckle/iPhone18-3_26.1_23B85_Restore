@interface PXUIScrollViewController(EnsureSubview)
- (void)ae_ensureSubview:()EnsureSubview;
@end

@implementation PXUIScrollViewController(EnsureSubview)

- (void)ae_ensureSubview:()EnsureSubview
{
  v6 = a3;
  v4 = [v6 superview];
  v5 = [a1 scrollView];

  if (v4 != v5)
  {
    [a1 addSubview:v6];
  }
}

@end