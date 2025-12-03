@interface BKImageColorAnalyzer
+ (double)colorLuminance:(CGColor *)luminance;
+ (id)analyzeColor:(id)color;
@end

@implementation BKImageColorAnalyzer

+ (id)analyzeColor:(id)color
{
  cGImage = [color CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v6 = 0;
  if (Width && Height)
  {
    v7 = sub_1000A4730();
    if (v7)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(cGImage, v7);
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

    v10 = TSDBitmapContextCreate();
    CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
    if (v10)
    {
      v14.origin.x = CGPointZero.x;
      v14.origin.y = CGPointZero.y;
      v14.size.width = 22.0;
      v14.size.height = 22.0;
      CGContextDrawImage(v10, v14, cGImage);
    }

    if (v9)
    {
      CGImageRelease(v9);
    }

    sub_10011D024(v12);
    if (sub_10012C8D4(v10, v12))
    {
      v6 = [UIColor colorWithRed:v12[0] green:v12[1] blue:v12[2] alpha:v12[3]];
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = 0;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    CGContextRelease(v10);
  }

LABEL_17:

  return v6;
}

+ (double)colorLuminance:(CGColor *)luminance
{
  sub_1000576C0(v4, luminance);
  sub_1000579F4(v4);
  return result;
}

@end