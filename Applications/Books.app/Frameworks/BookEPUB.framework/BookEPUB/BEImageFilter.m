@interface BEImageFilter
+ (BOOL)imageIsFilteringCandidate:(CGImage *)a3;
+ (id)invertedImage:(CGImage *)a3;
+ (id)pngDataForCIImage:(id)a3;
+ (int64_t)imageColorType:(CGImage *)a3;
@end

@implementation BEImageFilter

+ (BOOL)imageIsFilteringCandidate:(CGImage *)a3
{
  v4 = [BEImageFilter imageColorType:?];
  if (v4 == 2)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return CGImageGetHeight(a3) < 0x100;
  }

  return 0;
}

+ (int64_t)imageColorType:(CGImage *)a3
{
  v4 = malloc_type_calloc(1uLL, 0x9C40uLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = CGBitmapContextCreate(v5, 0x64uLL, 0x64uLL, 8uLL, 0x190uLL, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  if (v7)
  {
    CGContextSetInterpolationQuality(v7, kCGInterpolationNone);
    v22.size.width = 100.0;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.height = 100.0;
    CGContextDrawImage(v7, v22, a3);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = &v5[v11];
      if (v5[v11 + 3] >= 0xAu)
      {
        v13 = v12[1];
        v14 = *v12;
        ++v10;
        v15 = v14 - v13;
        if (v14 - v13 < 0)
        {
          v15 = v13 - v14;
        }

        if (v15 > 5)
        {
          goto LABEL_19;
        }

        v16 = v12[2];
        v17 = v14 - v16;
        if (v14 - v16 < 0)
        {
          v17 = v16 - v14;
        }

        if (v17 > 5)
        {
          goto LABEL_19;
        }

        v18 = v13 - v16;
        if (v13 - v16 < 0)
        {
          v18 = v16 - v13;
        }

        if (v18 >= 6)
        {
LABEL_19:
          ++v8;
        }

        else
        {
          v19 = v13 + v16 + v14;
          if (v19 > 0x284)
          {
            ++v9;
          }

          if (v19 - 123 < 0x20A)
          {
            ++v8;
          }
        }
      }

      if (v11 > 0x9C3B)
      {
        break;
      }

      v11 += 4;
    }

    while (v8 < 100);
    CGContextRelease(v7);
    v20 = 1;
    if (v9 <= 0)
    {
      v20 = 2 * (v10 > 0);
    }

    if (v8 >= 100)
    {
      v7 = 0;
    }

    else
    {
      v7 = v20;
    }
  }

  free(v5);
  return v7;
}

+ (id)invertedImage:(CGImage *)a3
{
  v4 = [CIFilter filterWithName:@"CIColorInvert"];
  [v4 setDefaults];
  v5 = [CIImage imageWithCGImage:a3];
  [v4 setValue:v5 forKey:@"inputImage"];

  v6 = [v4 outputImage];

  return v6;
}

+ (id)pngDataForCIImage:(id)a3
{
  v3 = a3;
  v4 = +[CIContext context];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = [v4 PNGRepresentationOfImage:v3 format:kCIFormatRGBA8 colorSpace:DeviceRGB options:&__NSDictionary0__struct];

  CGColorSpaceRelease(DeviceRGB);

  return v6;
}

@end