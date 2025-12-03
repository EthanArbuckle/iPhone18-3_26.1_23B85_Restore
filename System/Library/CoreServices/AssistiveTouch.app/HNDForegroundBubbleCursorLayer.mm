@interface HNDForegroundBubbleCursorLayer
- (id)_strokeColorForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier;
- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated;
@end

@implementation HNDForegroundBubbleCursorLayer

- (void)updatePath:(id)path frame:(CGRect)frame isSimpleRect:(BOOL)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  if (pathCopy)
  {
    v14 = pathCopy;
    [(HNDBubbleCursorLayer *)self valueForPointerSizeMultipler:4.0 withBaseValue:-2.0];
    if (rectCopy)
    {
      v16 = v15 + 1.0;
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v21 = CGRectInset(v20, v16, v16);
      width = v21.size.width;
      height = v21.size.height;
      y = v16 * 0.5;
      v17 = [UIBezierPath bezierPathWithRoundedRect:v16 * 0.5 cornerRadius:v16 * 0.5, v21.size.width, v21.size.height, sub_100042DE0() * 14.0 + 10.0];
      x = v16 * 0.5;
    }

    else
    {
      [v14 CGPath];
      v18 = AX_CGCreatePathPathWithUniformInset();
      v17 = [UIBezierPath bezierPathWithCGPath:v18];
      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v19.receiver = self;
  v19.super_class = HNDForegroundBubbleCursorLayer;
  [(HNDBubbleCursorLayer *)&v19 updatePath:v17 frame:rectCopy isSimpleRect:animatedCopy animated:x, y, width, height];
}

- (id)_strokeColorForTheme:(int)theme level:(int)level pointerSizeMultiplier:(double)multiplier
{
  if (_AXSPointerStrokeColor() && _AXSPointerStrokeColor() != 1 && (_AXSPointerStrokeColor(), _AXSPointerStrokeColorValues()))
  {
    v5 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  else
  {
    v5 = [UIColor colorWithWhite:0.2 alpha:0.6, 0, 0];
  }

  return v5;
}

@end