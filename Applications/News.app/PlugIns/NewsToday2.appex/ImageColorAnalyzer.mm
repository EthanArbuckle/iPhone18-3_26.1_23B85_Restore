@interface ImageColorAnalyzer
+ (id)colorsForImage:(id)image;
- (NSArray)dominantColors;
- (void)analyzeImage:(id)image;
@end

@implementation ImageColorAnalyzer

+ (id)colorsForImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc_init(self);
  [v4 analyzeImage:imageCopy];
  backgroundColor = [v4 backgroundColor];
  dominantColors = [v4 dominantColors];
  v5 = +[NSMutableArray array];
  [v5 addObject:backgroundColor];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = dominantColors;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = [v5 copy];
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v11)
        {
          v12 = *v29;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if ([v4 color:v9 isCloseToOtherColor:*(*(&v28 + 1) + 8 * j)])
              {

                goto LABEL_16;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        [v5 addObject:v9];
LABEL_16:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  if ([v5 count] <= 7)
  {
    [v5 removeAllObjects];
    [v5 addObject:backgroundColor];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = obj;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        for (k = 0; k != v15; k = k + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v24 + 1) + 8 * k);
          if (([v4 color:v18 isCloseToOtherColor:{backgroundColor, imageCopy}] & 1) == 0)
          {
            [v5 addObject:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (void)analyzeImage:(id)image
{
  imageCopy = image;
  cGImage = [image CGImage];
  SRGB = CGColorSpaceGetSRGB();
  if (SRGB)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(cGImage, SRGB);
    v9 = CopyWithColorSpace;
    if (CopyWithColorSpace)
    {
      cGImage = CopyWithColorSpace;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = TSDBitmapContextCreate(3, 102.0, 102.0);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  if (v10)
  {
    v12.origin.x = CGPointZero.x;
    v12.origin.y = CGPointZero.y;
    v12.size.width = 102.0;
    v12.size.height = 102.0;
    CGContextDrawImage(v10, v12, cGImage);
  }

  if (v9)
  {
    CGImageRelease(v9);
  }

  AnalyzeImagePlease(v10, &self->_analyzedColors);
  if (v10)
  {

    CGContextRelease(v10);
  }
}

- (NSArray)dominantColors
{
  v3 = +[NSMutableArray array];
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_100017130(&__p, self->_analyzedColors.completeColorList.__begin_, self->_analyzedColors.completeColorList.__end_, self->_analyzedColors.completeColorList.__end_ - self->_analyzedColors.completeColorList.__begin_);
  v4 = __p;
  if (v10 != __p)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [UIColor colorWithRed:*&v4[v5] green:*&v4[v5 + 8] blue:*&v4[v5 + 16] alpha:*&v4[v5 + 24]];
      [v3 addObject:v7];

      ++v6;
      v4 = __p;
      v5 += 32;
    }

    while (v6 < (v10 - __p) >> 5);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v3;
}

@end