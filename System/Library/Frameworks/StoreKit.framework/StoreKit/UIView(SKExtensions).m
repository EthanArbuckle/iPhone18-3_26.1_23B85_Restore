@interface UIView(SKExtensions)
- (BOOL)_sk_isAtLeast50PercentOnScreen;
@end

@implementation UIView(SKExtensions)

- (BOOL)_sk_isAtLeast50PercentOnScreen
{
  [a1 center];
  v3 = v2;
  v5 = v4;
  v6 = [a1 window];
  if (v6)
  {
    v7 = [a1 superview];
    [v6 convertPoint:v7 fromView:{v3, v5}];
    v9 = v8;
    v11 = v10;

    [v6 bounds];
    v14.x = v9;
    v14.y = v11;
    v12 = CGRectContainsPoint(v15, v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end