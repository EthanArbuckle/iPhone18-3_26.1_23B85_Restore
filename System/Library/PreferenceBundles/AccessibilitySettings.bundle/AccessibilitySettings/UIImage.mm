@interface UIImage
- (id)imageScaledToSize:(CGSize)size;
@end

@implementation UIImage

- (id)imageScaledToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, width, height];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

@end