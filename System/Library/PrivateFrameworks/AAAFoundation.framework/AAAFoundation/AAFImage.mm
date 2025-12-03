@interface AAFImage
+ (CGImage)circularImage:(CGImage *)image withDiameter:(double)diameter crop:(CGRect)crop;
+ (CGRect)tranformedRectForImageSize:(CGSize)size withDiameter:(double)diameter crop:(CGRect)crop;
+ (id)circularImageData:(id)data withDiameter:(double)diameter crop:(CGRect)crop;
@end

@implementation AAFImage

+ (id)circularImageData:(id)data withDiameter:(double)diameter crop:(CGRect)crop
{
  v5 = +[AAFImage circularImage:withDiameter:crop:](AAFImage, "circularImage:withDiameter:crop:", [data aaf_toImageRef], diameter, crop.origin.x, crop.origin.y, crop.size.width, crop.size.height);
  if (v5)
  {
    v5 = [MEMORY[0x1E695DEF0] aaf_fromImageRef:v5];
  }

  return v5;
}

+ (CGImage)circularImage:(CGImage *)image withDiameter:(double)diameter crop:(CGRect)crop
{
  if (!image)
  {
    return 0;
  }

  if (diameter <= 0.0)
  {
    v18 = _AAFLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAFImage circularImage:v18 withDiameter:diameter crop:?];
    }

    return 0;
  }

  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v12 = DeviceRGB;
  v13 = CGBitmapContextCreate(0, diameter, diameter, 8uLL, 0, DeviceRGB, 1u);
  CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = diameter;
  v20.size.height = diameter;
  v14 = CGPathCreateWithEllipseInRect(v20, 0);
  CGContextAddPath(v13, v14);
  CGContextClip(v13);
  v15 = CGImageGetWidth(image);
  [AAFImage tranformedRectForImageSize:v15 withDiameter:CGImageGetHeight(image) crop:diameter, x, y, width, height];
  CGContextDrawImage(v13, v21, image);
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

+ (CGRect)tranformedRectForImageSize:(CGSize)size withDiameter:(double)diameter crop:(CGRect)crop
{
  diameterCopy = diameter;
  height = size.height;
  v7 = 0.0;
  if (crop.size.width <= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    width = size.width;
    v9 = diameter / crop.size.width;
    v10 = -(crop.origin.x * (diameter / crop.size.width));
    v7 = -((height - CGRectGetMaxY(crop)) * (diameter / crop.size.width));
    diameter = width * v9;
    diameterCopy = height * v9;
  }

  v11 = v10;
  v12 = diameterCopy;
  result.size.height = v12;
  result.size.width = diameter;
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