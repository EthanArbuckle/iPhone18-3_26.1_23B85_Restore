@interface UIImage
+ (id)getCircleWithDiameter:(double)a3 withFillColor:(id)a4;
+ (id)getFadedCircleWithDiameter:(double)a3 withFillColors:(id)a4;
@end

@implementation UIImage

+ (id)getCircleWithDiameter:(double)a3 withFillColor:(id)a4
{
  v5 = a4;
  v10.width = a3;
  v10.height = a3;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a3;
  v11.size.height = a3;
  CGContextFillEllipseInRect(CurrentContext, v11);
  CGContextRestoreGState(CurrentContext);
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

+ (id)getFadedCircleWithDiameter:(double)a3 withFillColors:(id)a4
{
  v5 = a4;
  v14.width = a3;
  v14.height = a3;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = v5;
  v12 = xmmword_10000AF70;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGGradientCreateWithColors(DeviceRGB, v7, &v12);
  v15.x = a3 * 0.5;
  v15.y = a3 * 0.5;
  v16.x = a3 * 0.5;
  v16.y = a3 * 0.5;
  CGContextDrawRadialGradient(CurrentContext, v9, v15, 0.0, v16, a3 * 0.5 / 1.5, 2u);
  CGContextRestoreGState(CurrentContext);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end