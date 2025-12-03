@interface UIImage
- (id)nb_scaleImageToSize:(CGSize)size;
@end

@implementation UIImage

- (id)nb_scaleImageToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  [(UIImage *)selfCopy size];
  if (v6 > 0.0)
  {
    [(UIImage *)selfCopy size];
    if (v7 > 0.0)
    {
      [(UIImage *)selfCopy size];
      v9 = width / v8;
      [(UIImage *)selfCopy size];
      if (v9 >= height / v10)
      {
        v11 = height / v10;
      }

      else
      {
        v11 = v9;
      }

      [(UIImage *)selfCopy size];
      v13 = v12 * v11;
      [(UIImage *)selfCopy size];
      v15 = v14 * v11;
      v19.width = width;
      v19.height = height;
      UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
      [(UIImage *)selfCopy drawInRect:(width - v13) * 0.5, (height - v15) * 0.5, v13, v15];
      v16 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      selfCopy = v16;
    }
  }

  return selfCopy;
}

@end