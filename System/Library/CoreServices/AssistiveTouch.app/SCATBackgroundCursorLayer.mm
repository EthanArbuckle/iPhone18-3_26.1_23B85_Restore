@interface SCATBackgroundCursorLayer
- (double)_borderWidthForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (double)_boundsInsetForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (id)_fillColorForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
@end

@implementation SCATBackgroundCursorLayer

- (id)_fillColorForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  if (a3 == 4)
  {
    v7 = [(SCATCursorLayer *)self _strokeColorForTheme:4 level:a4 highVisibility:a5 options:*&a6];
    v8 = [(SCATCursorLayer *)self isDark];
    v9 = 0.34;
    if (!v8)
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

- (double)_boundsInsetForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  result = 0.0;
  if (a5)
  {
    return 14.0;
  }

  return result;
}

- (double)_borderWidthForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  v6 = a5;
  v8 = [(SCATCursorLayer *)self styleProvider:a3];
  [v8 cursorBackgroundBorderWidth];
  v10 = v9;

  if (v6)
  {
    v11 = [(SCATCursorLayer *)self styleProvider];
    [v11 cursorHighVisibilityMultiplier];
    v10 = v10 * v12;
  }

  return v10;
}

@end