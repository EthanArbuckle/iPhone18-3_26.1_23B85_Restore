@interface UIImage
- (id)imageByCombiningWithImage:(id)a3;
- (id)imageByMaskingWithImage:(id)a3;
- (id)scaledImageToHeight:(double)a3;
- (id)scaledImageToWidth:(double)a3;
- (id)scaledImageWithScale:(double)a3;
@end

@implementation UIImage

- (id)scaledImageToHeight:(double)a3
{
  [(UIImage *)self size];

  return [(UIImage *)self scaledImageWithScale:a3 / v5];
}

- (id)scaledImageToWidth:(double)a3
{
  [(UIImage *)self size];
  v6 = a3 / v5;

  return [(UIImage *)self scaledImageWithScale:v6];
}

- (id)scaledImageWithScale:(double)a3
{
  [(UIImage *)self size];
  v12 = v6;
  v13 = v5;
  CGAffineTransformMakeScale(&v14, a3, a3);
  v7 = vmlaq_n_f64(vmulq_n_f64(*&v14.c, v12), *&v14.a, v13);
  v8 = v7;
  height = v7.height;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, v8];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)imageByCombiningWithImage:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  [v4 size];
  if (v6 < v7)
  {
    v6 = v7;
  }

  [(UIImage *)self size];
  v9 = v8;
  [v4 size];
  if (v9 < v10)
  {
    v9 = v10;
  }

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;
  v25.width = v6;
  v25.height = v9;
  UIGraphicsBeginImageContextWithOptions(v25, 0, v13);

  [(UIImage *)self size];
  *&v14 = (v6 - v14) * 0.5;
  v15 = roundf(*&v14);
  [(UIImage *)self size];
  v17 = (v9 - v16) * 0.5;
  [(UIImage *)self drawAtPoint:v15, roundf(v17)];
  [v4 size];
  *&v18 = (v6 - v18) * 0.5;
  v19 = roundf(*&v18);
  [v4 size];
  v21 = (v9 - v20) * 0.5;
  [v4 drawAtPoint:{v19, roundf(v21)}];

  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v22;
}

- (id)imageByMaskingWithImage:(id)a3
{
  v5 = a3;
  v6 = [a3 CGImage];
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  BitsPerComponent = CGImageGetBitsPerComponent(v6);
  BitsPerPixel = CGImageGetBitsPerPixel(v6);
  BytesPerRow = CGImageGetBytesPerRow(v6);
  DataProvider = CGImageGetDataProvider(v6);
  v13 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  v14 = CGImageCreateWithMask([(UIImage *)self CGImage], v13);
  CGImageRelease(v13);
  v15 = [UIImage imageWithCGImage:v14];
  CGImageRelease(v14);

  return v15;
}

@end