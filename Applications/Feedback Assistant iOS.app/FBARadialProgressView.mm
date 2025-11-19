@interface FBARadialProgressView
- (CGRect)circleRectForFrame:(CGRect)a3;
- (void)awakeFromNib;
- (void)drawRect:(CGRect)a3;
- (void)setProgress:(float)a3;
@end

@implementation FBARadialProgressView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = FBARadialProgressView;
  [(FBARadialProgressView *)&v4 awakeFromNib];
  v3 = +[UIColor clearColor];
  [(FBARadialProgressView *)self setBackgroundColor:v3];
}

- (void)setProgress:(float)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  self->_progress = fmaxf(a3, 0.0);
  [(FBARadialProgressView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(FBARadialProgressView *)self bounds];
  Height = CGRectGetHeight(v26);
  CGContextTranslateCTM(CurrentContext, 0.0, Height);
  v6 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v6, 1.0, -1.0);
  v24 = [(FBARadialProgressView *)self tintColor];
  [(FBARadialProgressView *)self bounds];
  [(FBARadialProgressView *)self circleRectForFrame:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [UIBezierPath bezierPathWithOvalInRect:?];
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v23 = CGRectGetWidth(v27) * 0.5;
  [v24 set];
  [v15 setLineWidth:1.0];
  [v15 stroke];
  [(FBARadialProgressView *)self progress];
  v17 = v16 * -2.0 * 3.14159265 + 1.57079633;
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  v19 = MinX + CGRectGetWidth(v29) * 0.5;
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v21 = MinY + CGRectGetHeight(v31) * 0.5;
  v22 = +[UIBezierPath bezierPath];
  [v22 moveToPoint:{v19, v21}];
  [v22 addArcWithCenter:0 radius:v19 startAngle:v21 endAngle:v23 clockwise:{1.57079633, v17}];
  [v22 addLineToPoint:{v19, v21}];
  [v22 closePath];
  [v22 fill];
}

- (CGRect)circleRectForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetWidth(a3);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = CGRectGetHeight(v15);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + -2.0;
  v11 = (v7 - (v9 + -2.0)) * 0.5;
  v12 = (v8 - (v9 + -2.0)) * 0.5;
  v13 = v11;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

@end