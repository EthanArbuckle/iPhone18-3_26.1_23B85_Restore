@interface SCATBackgroundCursorLayer
- (double)_borderWidthForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (double)_boundsInsetForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (id)_fillColorForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
@end

@implementation SCATBackgroundCursorLayer

- (id)_fillColorForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  if (theme == 4)
  {
    v7 = [(SCATCursorLayer *)self _strokeColorForTheme:4 level:level highVisibility:visibility options:*&options];
    isDark = [(SCATCursorLayer *)self isDark];
    v9 = 0.34;
    if (!isDark)
    {
      v9 = 0.5;
    }

    v10 = [v7 colorWithAlphaComponent:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)_boundsInsetForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  result = 0.0;
  if (visibility)
  {
    return 14.0;
  }

  return result;
}

- (double)_borderWidthForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  visibilityCopy = visibility;
  v8 = [(SCATCursorLayer *)self styleProvider:theme];
  [v8 cursorBackgroundBorderWidth];
  v10 = v9;

  if (visibilityCopy)
  {
    styleProvider = [(SCATCursorLayer *)self styleProvider];
    [styleProvider cursorHighVisibilityMultiplier];
    v10 = v10 * v12;
  }

  return v10;
}

@end