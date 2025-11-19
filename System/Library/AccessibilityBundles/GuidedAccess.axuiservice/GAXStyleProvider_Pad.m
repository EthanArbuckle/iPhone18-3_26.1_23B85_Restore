@interface GAXStyleProvider_Pad
- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3;
@end

@implementation GAXStyleProvider_Pad

- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    v3 = 52.0;
  }

  else
  {
    v3 = 63.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v3 + 1.0 / v5;

  v7 = 84.0;
  v8 = v3;
  v9 = v6;
  v10 = 84.0;
  result.right = v10;
  result.bottom = v9;
  result.left = v7;
  result.top = v8;
  return result;
}

@end