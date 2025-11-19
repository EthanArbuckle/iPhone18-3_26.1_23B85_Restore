@interface AAFImage
+ (CGImage)circularImage:(CGImage *)a3 withDiameter:(double)a4 crop:(CGRect)a5;
+ (CGRect)tranformedRectForImageSize:(CGSize)a3 withDiameter:(double)a4 crop:(CGRect)a5;
+ (id)circularImageData:(id)a3 withDiameter:(double)a4 crop:(CGRect)a5;
@end

@implementation AAFImage

+ (id)circularImageData:(id)a3 withDiameter:(double)a4 crop:(CGRect)a5
{
  v5 = +[AAFImage circularImage:withDiameter:crop:](AAFImage, "circularImage:withDiameter:crop:", [a3 aaf_toImageRef], a4, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height);
  if (v5)
  {
    v5 = [MEMORY[0x1E695DEF0] aaf_fromImageRef:v5];
  }

  return v5;
}

+ (CGImage)circularImage:(CGImage *)a3 withDiameter:(double)a4 crop:(CGRect)a5
{
  if (!a3)
  {
    return 0;
  }

  if (a4 <= 0.0)
  {
    v18 = _AAFLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAFImage circularImage:v18 withDiameter:a4 crop:?];
    }

    return 0;
  }

  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v12 = DeviceRGB;
  v13 = CGBitmapContextCreate(0, a4, a4, 8uLL, 0, DeviceRGB, 1u);
  CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a4;
  v20.size.height = a4;
  v14 = CGPathCreateWithEllipseInRect(v20, 0);
  CGContextAddPath(v13, v14);
  CGContextClip(v13);
  v15 = CGImageGetWidth(a3);
  [AAFImage tranformedRectForImageSize:v15 withDiameter:CGImageGetHeight(a3) crop:a4, x, y, width, height];
  CGContextDrawImage(v13, v21, a3);
  Image = CGBitmapContextCreateImage(v13);
  CGPathRelease(v14);
  CGContextRelease(v13);
  CGColorSpaceRelease(v12);
  if (!Image)
  {
    return 0;
  }

  return CFAutorelease(Image);
}

+ (CGRect)tranformedRectForImageSize:(CGSize)a3 withDiameter:(double)a4 crop:(CGRect)a5
{
  v5 = a4;
  height = a3.height;
  v7 = 0.0;
  if (a5.size.width <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    width = a3.width;
    v9 = a4 / a5.size.width;
    v10 = -(a5.origin.x * (a4 / a5.size.width));
    v7 = -((height - CGRectGetMaxY(a5)) * (a4 / a5.size.width));
    a4 = width * v9;
    v5 = height * v9;
  }

  v11 = v10;
  v12 = v5;
  result.size.height = v12;
  result.size.width = a4;
  result.origin.y = v7;
  result.origin.x = v11;
  return result;
}

+ (void)circularImage:(os_log_t)log withDiameter:(double)a2 crop:.cold.1(os_log_t log, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "+[AAFImage circularImage:withDiameter:crop:]";
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1C8644000, log, OS_LOG_TYPE_ERROR, "AAFImage %s invalid diameter %f", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end