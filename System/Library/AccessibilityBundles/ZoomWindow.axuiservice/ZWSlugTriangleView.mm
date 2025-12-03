@interface ZWSlugTriangleView
- (CGSize)intrinsicContentSize;
- (ZWSlugTriangleView)initWithTriangle:(unint64_t)triangle;
- (void)layoutSubviews;
@end

@implementation ZWSlugTriangleView

- (ZWSlugTriangleView)initWithTriangle:(unint64_t)triangle
{
  v10.receiver = self;
  v10.super_class = ZWSlugTriangleView;
  v4 = [(ZWSlugTriangleView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(ZWSlugTriangleView *)v4 setTriangle:triangle];
    v6 = +[CAShapeLayer layer];
    layer = [(ZWSlugTriangleView *)v5 layer];
    [layer addSublayer:v6];

    [(ZWSlugTriangleView *)v5 setTriangleLayer:v6];
    v8 = +[UIColor whiteColor];
    [v6 setFillColor:{objc_msgSend(v8, "CGColor")}];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  if ([(ZWSlugTriangleView *)self triangle]== &dword_0 + 2)
  {
    v3 = 7.0;
    v4 = 15.0;
  }

  else
  {
    triangle = [(ZWSlugTriangleView *)self triangle];
    v4 = 15.0;
    if (triangle)
    {
      v3 = 15.0;
    }

    else
    {
      v3 = 7.0;
    }

    if (triangle)
    {
      v4 = 7.0;
    }
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = ZWSlugTriangleView;
  [(ZWSlugTriangleView *)&v21 layoutSubviews];
  [(ZWSlugTriangleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  triangleLayer = [(ZWSlugTriangleView *)self triangleLayer];
  [triangleLayer setBounds:{v4, v6, v8, v10}];

  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  MidY = CGRectGetMidY(v23);
  triangleLayer2 = [(ZWSlugTriangleView *)self triangleLayer];
  [triangleLayer2 setPosition:{MidX, MidY}];

  v15 = +[UIBezierPath bezierPath];
  triangle = [(ZWSlugTriangleView *)self triangle];
  if (triangle > 1)
  {
    if (triangle == 2)
    {
      [v15 moveToPoint:{0.0, 0.0}];
      [v15 addLineToPoint:{v8 * 0.5, v10}];
      v10 = 0.0;
      goto LABEL_11;
    }

    if (triangle != 3)
    {
      goto LABEL_12;
    }

    [v15 moveToPoint:{v8, 0.0}];
    v17 = v10 * 0.5;
    v18 = 0.0;
LABEL_9:
    [v15 addLineToPoint:{v18, v17}];
    goto LABEL_11;
  }

  if (!triangle)
  {
    [v15 moveToPoint:{0.0, v10}];
    v18 = v8 * 0.5;
    v17 = 0.0;
    goto LABEL_9;
  }

  if (triangle == 1)
  {
    [v15 moveToPoint:{0.0, 0.0}];
    [v15 addLineToPoint:{v8, v10 * 0.5}];
    v8 = 0.0;
LABEL_11:
    [v15 addLineToPoint:{v8, v10}];
    [v15 closePath];
  }

LABEL_12:
  cGPath = [v15 CGPath];
  triangleLayer3 = [(ZWSlugTriangleView *)self triangleLayer];
  [triangleLayer3 setPath:cGPath];
}

@end