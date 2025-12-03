@interface SCATForegroundCursorLayer
- (double)_borderWidthForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (double)_boundsInsetForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (id)_borderPatternForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options;
@end

@implementation SCATForegroundCursorLayer

- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options
{
  v8 = *&options;
  animatedCopy = animated;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  if (pathCopy)
  {
    v18 = pathCopy;
    v19 = -2.0;
    if ([(SCATCursorLayer *)self usesHighVisibility])
    {
      styleProvider = [(SCATCursorLayer *)self styleProvider];
      [styleProvider cursorHighVisibilityMultiplier];
      v19 = v21 * -2.0;
    }

    if (rectCopy)
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
  [(SCATCursorLayer *)&v25 updatePath:v23 frame:rectCopy cornerRadius:animatedCopy isSimpleRect:v8 animated:x options:y, width, height, radius];
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
  [v8 cursorForegroundBorderWidth];
  v10 = v9;

  if (visibilityCopy)
  {
    styleProvider = [(SCATCursorLayer *)self styleProvider];
    [styleProvider cursorHighVisibilityMultiplier];
    v10 = v10 * v12;
  }

  return v10;
}

- (id)_borderPatternForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  if ((theme & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return &off_1001E4E90;
  }

  else
  {
    return 0;
  }
}

@end