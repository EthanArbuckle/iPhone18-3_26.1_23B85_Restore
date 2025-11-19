@interface SCATForegroundCursorLayer
- (double)_borderWidthForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (double)_boundsInsetForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (id)_borderPatternForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8;
@end

@implementation SCATForegroundCursorLayer

- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8
{
  v8 = *&a8;
  v9 = a7;
  v10 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  if (v17)
  {
    v18 = v17;
    v19 = -2.0;
    if ([(SCATCursorLayer *)self usesHighVisibility])
    {
      v20 = [(SCATCursorLayer *)self styleProvider];
      [v20 cursorHighVisibilityMultiplier];
      v19 = v21 * -2.0;
    }

    if (v10)
    {
      v22 = v19 + 1.0;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v27 = CGRectInset(v26, v22, v22);
      width = v27.size.width;
      height = v27.size.height;
      y = v22 * 0.5;
      v23 = [UIBezierPath bezierPathWithRoundedRect:v22 * 0.5 cornerRadius:v22 * 0.5];

      x = v22 * 0.5;
    }

    else
    {
      [v18 CGPath];
      v24 = AX_CGCreatePathPathWithUniformInset();
      v23 = [UIBezierPath bezierPathWithCGPath:v24];

      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v25.receiver = self;
  v25.super_class = SCATForegroundCursorLayer;
  [(SCATCursorLayer *)&v25 updatePath:v23 frame:v10 cornerRadius:v9 isSimpleRect:v8 animated:x options:y, width, height, a5];
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
  [v8 cursorForegroundBorderWidth];
  v10 = v9;

  if (v6)
  {
    v11 = [(SCATCursorLayer *)self styleProvider];
    [v11 cursorHighVisibilityMultiplier];
    v10 = v10 * v12;
  }

  return v10;
}

- (id)_borderPatternForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return &off_1001E4E90;
  }

  else
  {
    return 0;
  }
}

@end