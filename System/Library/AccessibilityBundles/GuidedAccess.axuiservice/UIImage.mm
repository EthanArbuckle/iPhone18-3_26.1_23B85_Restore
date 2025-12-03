@interface UIImage
- (id)gax_imageWithOrientation:(int64_t)orientation;
- (id)gax_subImageInRect:(CGRect)rect;
@end

@implementation UIImage

- (id)gax_imageWithOrientation:(int64_t)orientation
{
  cGImage = [(UIImage *)self CGImage];
  [(UIImage *)self scale];

  return [UIImage imageWithCGImage:cGImage scale:orientation orientation:?];
}

- (id)gax_subImageInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIImage *)self scale];
  v9 = v8;
  v10 = x * v8;
  v11 = y * v8;
  v12 = width * v8;
  v13 = height * v8;
  cGImage = [(UIImage *)self CGImage];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v15 = CGImageCreateWithImageInRect(cGImage, v20);
  if (v15)
  {
    v16 = v15;
    v17 = [UIImage imageWithCGImage:v15 scale:[(UIImage *)self imageOrientation] orientation:v9];
    CGImageRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end