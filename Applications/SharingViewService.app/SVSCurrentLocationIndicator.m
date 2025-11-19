@interface SVSCurrentLocationIndicator
- (void)drawRect:(CGRect)a3;
@end

@implementation SVSCurrentLocationIndicator

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetAlpha(CurrentContext, 0.2);
  v8 = +[UIColor systemBlueColor];
  Components = CGColorGetComponents([v8 CGColor]);
  CGContextSetFillColor(CurrentContext, Components);

  CGContextBeginPath(CurrentContext);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextAddEllipseInRect(CurrentContext, v14);
  CGContextDrawPath(CurrentContext, kCGPathFill);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetMidX(v15) + -4.0;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v11 = CGRectGetMidY(v16) + -4.0;
  CGContextSetAlpha(CurrentContext, 1.0);
  CGContextSetLineWidth(CurrentContext, 1.0);
  v12 = +[UIColor whiteColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v12 CGColor]);

  CGContextBeginPath(CurrentContext);
  v17.size.width = 8.0;
  v17.size.height = 8.0;
  v17.origin.x = v10;
  v17.origin.y = v11;
  CGContextAddEllipseInRect(CurrentContext, v17);

  CGContextDrawPath(CurrentContext, kCGPathFillStroke);
}

@end