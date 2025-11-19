@interface UIColor(BaseBoardUI)
- (id)BSColor;
@end

@implementation UIColor(BaseBoardUI)

- (id)BSColor
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  if ([a1 getRed:&v8 green:&v7 blue:&v6 alpha:&v5])
  {
    v1 = [MEMORY[0x1E698E650] colorWithRed:v8 green:v7 blue:v6 alpha:v5];
  }

  else
  {
    v2 = BSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1A2D36000, v2, OS_LOG_TYPE_ERROR, "UIColor is not in a RGBA-compatible color-space.", v4, 2u);
    }

    v1 = 0;
  }

  return v1;
}

@end