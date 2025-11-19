@interface UIImage
- (id)nb_scaleImageToSize:(CGSize)a3;
@end

@implementation UIImage

- (id)nb_scaleImageToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  [(UIImage *)v5 size];
  if (v6 > 0.0)
  {
    [(UIImage *)v5 size];
    if (v7 > 0.0)
    {
      [(UIImage *)v5 size];
      v9 = width / v8;
      [(UIImage *)v5 size];
      if (v9 >= height / v10)
      {
        v11 = height / v10;
      }

      else
      {
        v11 = v9;
      }

      [(UIImage *)v5 size];
      v13 = v12 * v11;
      [(UIImage *)v5 size];
      v15 = v14 * v11;
      v19.width = width;
      v19.height = height;
      UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
      [(UIImage *)v5 drawInRect:(width - v13) * 0.5, (height - v15) * 0.5, v13, v15];
      v16 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      v5 = v16;
    }
  }

  return v5;
}

@end