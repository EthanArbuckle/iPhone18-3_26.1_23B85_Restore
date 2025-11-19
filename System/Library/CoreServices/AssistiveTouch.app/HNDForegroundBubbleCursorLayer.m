@interface HNDForegroundBubbleCursorLayer
- (id)_strokeColorForTheme:(int)a3 level:(int)a4 pointerSizeMultiplier:(double)a5;
- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6;
@end

@implementation HNDForegroundBubbleCursorLayer

- (void)updatePath:(id)a3 frame:(CGRect)a4 isSimpleRect:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  if (v13)
  {
    v14 = v13;
    [(HNDBubbleCursorLayer *)self valueForPointerSizeMultipler:4.0 withBaseValue:-2.0];
    if (v7)
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
  [(HNDBubbleCursorLayer *)&v19 updatePath:v17 frame:v7 isSimpleRect:v6 animated:x, y, width, height];
}

- (id)_strokeColorForTheme:(int)a3 level:(int)a4 pointerSizeMultiplier:(double)a5
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