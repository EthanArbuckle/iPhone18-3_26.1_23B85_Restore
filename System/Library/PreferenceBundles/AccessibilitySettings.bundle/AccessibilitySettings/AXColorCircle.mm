@interface AXColorCircle
- (void)drawRect:(CGRect)a3;
@end

@implementation AXColorCircle

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v10 = [(AXColorCircle *)self fillCircle];
  v11 = [(AXColorCircle *)self color];
  v12 = v11;
  if (v10)
  {
    [v11 setFill];

    [v13 fill];
  }

  else
  {
    [v11 setStroke];

    [v13 stroke];
  }
}

@end