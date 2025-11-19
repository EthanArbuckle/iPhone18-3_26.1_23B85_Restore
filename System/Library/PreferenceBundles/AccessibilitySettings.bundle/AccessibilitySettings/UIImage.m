@interface UIImage
- (id)imageScaledToSize:(CGSize)a3;
@end

@implementation UIImage

- (id)imageScaledToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, width, height];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

@end