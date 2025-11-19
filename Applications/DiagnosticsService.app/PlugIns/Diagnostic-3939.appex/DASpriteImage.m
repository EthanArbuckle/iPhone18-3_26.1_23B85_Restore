@interface DASpriteImage
+ (id)imagesFromSprite:(id)a3 inRange:(_NSRange)a4 withImageSize:(CGSize)a5;
@end

@implementation DASpriteImage

+ (id)imagesFromSprite:(id)a3 inRange:(_NSRange)a4 withImageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = v9;
  if (!v9 || (height == CGSizeZero.height ? (v11 = width == CGSizeZero.width) : (v11 = 0), !v11 ? (v12 = length == 0) : (v12 = 1), v12))
  {
    v15 = 0;
  }

  else
  {
    v14 = [v9 CGImage];
    v15 = [NSMutableArray arrayWithCapacity:length];
    v16 = CGImageGetWidth(v14);
    v17 = CGImageGetHeight(v14);
    v18 = (v16 / width);
    v19 = (height * (location / v18));
    if (v17 > v19)
    {
      v20 = v17;
      v21 = (width * (location % v18));
      do
      {
        v22 = v19;
        while (v16 > v21)
        {
          v23 = v21;
          v28.origin.x = v21;
          v28.origin.y = v22;
          v28.size.width = width;
          v28.size.height = height;
          v24 = CGImageCreateWithImageInRect(v14, v28);
          v25 = [UIImage imageWithCGImage:v24];
          [v15 addObject:v25];

          CGImageRelease(v24);
          v26 = [v15 count];
          v21 = (width + v23);
          if (v26 == length)
          {
            goto LABEL_11;
          }
        }

        v21 = 0;
        v19 = (height + v22);
      }

      while (v20 > v19);
    }
  }

LABEL_11:

  return v15;
}

@end