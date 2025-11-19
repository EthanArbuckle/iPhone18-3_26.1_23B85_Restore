@interface UIImage
- (id)gax_imageWithOrientation:(int64_t)a3;
- (id)gax_subImageInRect:(CGRect)a3;
@end

@implementation UIImage

- (id)gax_imageWithOrientation:(int64_t)a3
{
  v5 = [(UIImage *)self CGImage];
  [(UIImage *)self scale];

  return [UIImage imageWithCGImage:v5 scale:a3 orientation:?];
}

- (id)gax_subImageInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIImage *)self scale];
  v9 = v8;
  v10 = x * v8;
  v11 = y * v8;
  v12 = width * v8;
  v13 = height * v8;
  v14 = [(UIImage *)self CGImage];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  v15 = CGImageCreateWithImageInRect(v14, v20);
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