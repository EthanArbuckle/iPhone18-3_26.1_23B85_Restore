@interface DASpriteImage
+ (id)imagesFromSprite:(id)sprite inRange:(_NSRange)range withImageSize:(CGSize)size;
@end

@implementation DASpriteImage

+ (id)imagesFromSprite:(id)sprite inRange:(_NSRange)range withImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  length = range.length;
  location = range.location;
  spriteCopy = sprite;
  v10 = spriteCopy;
  if (!spriteCopy || (height == CGSizeZero.height ? (v11 = width == CGSizeZero.width) : (v11 = 0), !v11 ? (v12 = length == 0) : (v12 = 1), v12))
  {
    v15 = 0;
  }

  else
  {
    cGImage = [spriteCopy CGImage];
    v15 = [NSMutableArray arrayWithCapacity:length];
    v16 = CGImageGetWidth(cGImage);
    v17 = CGImageGetHeight(cGImage);
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
          v24 = CGImageCreateWithImageInRect(cGImage, v28);
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