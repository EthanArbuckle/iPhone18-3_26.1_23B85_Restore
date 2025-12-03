@interface UIImage
+ (id)getCircleWithDiameter:(double)diameter withFillColor:(id)color;
+ (id)getFadedCircleWithDiameter:(double)diameter withFillColors:(id)colors;
@end

@implementation UIImage

+ (id)getCircleWithDiameter:(double)diameter withFillColor:(id)color
{
  colorCopy = color;
  v10.width = diameter;
  v10.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = diameter;
  v11.size.height = diameter;
  CGContextFillEllipseInRect(CurrentContext, v11);
  CGContextRestoreGState(CurrentContext);
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

+ (id)getFadedCircleWithDiameter:(double)diameter withFillColors:(id)colors
{
  colorsCopy = colors;
  v14.width = diameter;
  v14.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = colorsCopy;
  v12 = xmmword_10000AF70;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGGradientCreateWithColors(DeviceRGB, v7, &v12);
  v15.x = diameter * 0.5;
  v15.y = diameter * 0.5;
  v16.x = diameter * 0.5;
  v16.y = diameter * 0.5;
  CGContextDrawRadialGradient(CurrentContext, v9, v15, 0.0, v16, diameter * 0.5 / 1.5, 2u);
  CGContextRestoreGState(CurrentContext);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end