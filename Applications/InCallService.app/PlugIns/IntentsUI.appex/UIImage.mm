@interface UIImage
+ (id)voicemailPauseButtonImage;
+ (id)voicemailPlayButtonImage;
- (id)centerSquareImage;
- (id)shrinkToSize:(CGSize)size;
@end

@implementation UIImage

- (id)centerSquareImage
{
  [(UIImage *)self size];
  v4 = v3;
  [(UIImage *)self size];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  [(UIImage *)self size];
  v9 = v8;
  [(UIImage *)self size];
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = ((v12 - v7) * 0.5);
  cGImage = [(UIImage *)self CGImage];
  v19.origin.y = 0.0;
  v19.origin.x = v13;
  v19.size.width = v7;
  v19.size.height = v7;
  v15 = CGImageCreateWithImageInRect(cGImage, v19);
  v16 = [UIImage imageWithCGImage:v15 scale:[(UIImage *)self imageOrientation] orientation:1.0];
  CGImageRelease(v15);

  return v16;
}

- (id)shrinkToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContext(size);
  [(UIImage *)self drawInRect:0.0, 0.0, width, height];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

+ (id)voicemailPauseButtonImage
{
  if (qword_1000C6108 != -1)
  {
    sub_10007AC50();
  }

  v3 = qword_1000C6100;

  return v3;
}

+ (id)voicemailPlayButtonImage
{
  if (qword_1000C6118 != -1)
  {
    sub_10007AC64();
  }

  v3 = qword_1000C6110;

  return v3;
}

@end