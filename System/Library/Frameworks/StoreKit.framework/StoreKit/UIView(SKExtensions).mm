@interface UIView(SKExtensions)
- (BOOL)_sk_isAtLeast50PercentOnScreen;
@end

@implementation UIView(SKExtensions)

- (BOOL)_sk_isAtLeast50PercentOnScreen
{
  [self center];
  v3 = v2;
  v5 = v4;
  window = [self window];
  if (window)
  {
    superview = [self superview];
    [window convertPoint:superview fromView:{v3, v5}];
    v9 = v8;
    v11 = v10;

    [window bounds];
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