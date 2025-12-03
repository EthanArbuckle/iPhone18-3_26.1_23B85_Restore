@interface AXColorCircle
- (void)drawRect:(CGRect)rect;
@end

@implementation AXColorCircle

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = 1.0;
  v9 = 1.0;
  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    if ([(AXColorCircle *)self fillCircle])
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 2.0;
    }

    v9 = 4.0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGRectInset(v15, v8, v8);
  AX_CGRectGetCenter();
  v13 = [UIBezierPath bezierPathWithArcCenter:"bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" radius:1 startAngle:? endAngle:? clockwise:?];
  [v13 setLineWidth:v9];
  AX_CGRectGetCenter();
  [v13 addArcWithCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  [v13 closePath];
  fillCircle = [(AXColorCircle *)self fillCircle];
  color = [(AXColorCircle *)self color];
  v12 = color;
  if (fillCircle)
  {
    [color setFill];

    [v13 fill];
  }

  else
  {
    [color setStroke];

    [v13 stroke];
  }
}

@end