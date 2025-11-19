@interface UIImage
+ (id)hw_pluginImageNamed:(id)a3;
- (id)hw_flippedImage;
@end

@implementation UIImage

+ (id)hw_pluginImageNamed:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle hw_handwritingPluginBundle];
  v5 = [UIImage imageNamed:v3 inBundle:v4 compatibleWithTraitCollection:0];

  return v5;
}

- (id)hw_flippedImage
{
  [(UIImage *)self size];
  v4 = v3;
  v6 = v5;
  [(UIImage *)self scale];
  v8 = v7;
  v14.width = v4;
  v14.height = v6;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v8);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, v4, 0.0);
  CGContextScaleCTM(CurrentContext, -1.0, 1.0);
  v10 = [(UIImage *)self CGImage];
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v4;
  v15.size.height = v6;
  CGContextDrawImage(CurrentContext, v15, v10);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

@end