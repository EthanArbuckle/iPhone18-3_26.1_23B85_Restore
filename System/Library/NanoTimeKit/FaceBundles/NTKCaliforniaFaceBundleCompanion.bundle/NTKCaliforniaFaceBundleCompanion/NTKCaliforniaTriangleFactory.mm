@interface NTKCaliforniaTriangleFactory
+ (id)triangleWithSize:(CGSize)size radius:(double)radius;
@end

@implementation NTKCaliforniaTriangleFactory

+ (id)triangleWithSize:(CGSize)size radius:(double)radius
{
  height = size.height;
  width = size.width;
  v7 = size.width * 0.5;
  v8 = atan2(size.height, size.width * 0.5) * 0.5;
  v9 = -(radius - radius * tan(v8));
  v10 = height + radius / sin(v8) - radius;
  v11 = +[CAShapeLayer layer];
  [v11 setBounds:{0.0, 0.0, (width + v9 * 2.0), v10}];
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, radius, radius, radius, 3.14159265 - v8, 4.71238898, 0);
  CGPathAddArc(Mutable, 0, width - radius, radius, radius, -1.57079633, v8, 0);
  CGPathAddArc(Mutable, 0, v7, height - radius, radius, 1.57079633 - v8, v8 + 1.57079633, 0);
  [v11 setPath:Mutable];
  v13 = +[UIColor whiteColor];
  [v11 setFillColor:{objc_msgSend(v13, "CGColor")}];

  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  [v11 renderInContext:UIGraphicsGetCurrentContext()];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  CGPathRelease(Mutable);
  UIGraphicsEndImageContext();

  return v14;
}

@end