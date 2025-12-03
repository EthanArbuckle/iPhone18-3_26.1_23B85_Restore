@interface UIImage
- (id)imageByCombiningWithImage:(id)image;
- (id)imageByMaskingWithImage:(id)image;
- (id)scaledImageToHeight:(double)height;
- (id)scaledImageToWidth:(double)width;
- (id)scaledImageWithScale:(double)scale;
@end

@implementation UIImage

- (id)scaledImageToHeight:(double)height
{
  [(UIImage *)self size];

  return [(UIImage *)self scaledImageWithScale:height / v5];
}

- (id)scaledImageToWidth:(double)width
{
  [(UIImage *)self size];
  v6 = width / v5;

  return [(UIImage *)self scaledImageWithScale:v6];
}

- (id)scaledImageWithScale:(double)scale
{
  [(UIImage *)self size];
  v12 = v6;
  v13 = v5;
  CGAffineTransformMakeScale(&v14, scale, scale);
  v7 = vmlaq_n_f64(vmulq_n_f64(*&v14.c, v12), *&v14.a, v13);
  v8 = v7;
  height = v7.height;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, v8];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)imageByCombiningWithImage:(id)image
{
  imageCopy = image;
  [(UIImage *)self size];
  v6 = v5;
  [imageCopy size];
  if (v6 < v7)
  {
    v6 = v7;
  }

  [(UIImage *)self size];
  v9 = v8;
  [imageCopy size];
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
  [imageCopy size];
  *&v18 = (v6 - v18) * 0.5;
  v19 = roundf(*&v18);
  [imageCopy size];
  v21 = (v9 - v20) * 0.5;
  [imageCopy drawAtPoint:{v19, roundf(v21)}];

  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v22;
}

- (id)imageByMaskingWithImage:(id)image
{
  imageCopy = image;
  cGImage = [image CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
  BytesPerRow = CGImageGetBytesPerRow(cGImage);
  DataProvider = CGImageGetDataProvider(cGImage);
  v13 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  v14 = CGImageCreateWithMask([(UIImage *)self CGImage], v13);
  CGImageRelease(v13);
  v15 = [UIImage imageWithCGImage:v14];
  CGImageRelease(v14);

  return v15;
}

@end