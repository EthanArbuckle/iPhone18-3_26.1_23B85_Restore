@interface UIImage
+ (UIImage)imageWithColor:(id)a3;
+ (UIImage)imageWithSolidColor:(id)a3 atSize:(CGSize)a4;
+ (id)im_imageWithCGImage:(CGImage *)a3;
+ (id)im_imageWithCGImages:(id)a3 size:(CGSize)a4;
+ (id)im_imageWithCenteredIconImage:(id)a3 iconColor:(id)a4 size:(CGSize)a5;
+ (id)invisibleImage;
- (BOOL)im_isLikelyBlank;
- (CGImage)im_CGImage;
- (UIImage)imageWithTint:(id)a3;
- (id)bc_imageWithConfiguration:(id)a3 limitedToContentSizeCategory:(id)a4;
- (id)im_CGImages;
- (id)im_imageWithAlpha:(double)a3;
- (id)im_imageWithPixelSize:(CGSize)a3;
- (id)im_imageWithSize:(CGSize)a3 options:(int)a4;
- (id)imageMaskWithColor:(id)a3;
- (id)imageMaskWithColor:(id)a3 forTraitCollection:(id)a4;
- (unint64_t)colorAtPixelX:(unint64_t)a3 y:(unint64_t)a4;
- (unint64_t)im_averageColor;
- (void)dumpAsPNGToCachesNamed:(id)a3;
@end

@implementation UIImage

+ (id)im_imageWithCGImage:(CGImage *)a3
{
  v3 = [[UIImage alloc] initWithCGImage:a3];

  return v3;
}

- (CGImage)im_CGImage
{
  v2 = self;

  return [(UIImage *)v2 CGImage];
}

- (id)im_imageWithSize:(CGSize)a3 options:(int)a4
{
  height = a3.height;
  width = a3.width;
  [(UIImage *)self size];
  if (width == v9 && height == v8)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    [(UIImage *)self size];
    v12 = width / v11;
    [(UIImage *)self size];
    v14 = height / v13;
    if (a4 == 1)
    {
      if (v12 >= v14)
      {
        v15 = height / v13;
      }

      else
      {
        v15 = v12;
      }
    }

    else
    {
      v15 = 1.0;
      if (a4 == 2)
      {
        if (v12 >= v14)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14;
        }
      }
    }

    [(UIImage *)self size];
    width = v15 * v16;
    [(UIImage *)self size];
    height = v15 * v17;
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectIntegral(v26);
  v18 = v27.size.width;
  v19 = v27.size.height;
  [(UIImage *)self size:v27.origin.x];
  if (v18 == v21 && v19 == v20)
  {
LABEL_20:
    v23 = self;
  }

  else
  {
    v23 = [(UIImage *)self im_imageWithPixelSize:v18, v19];
  }

  return v23;
}

- (id)im_imageWithPixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIImage *)self im_CGImage];
  if (v6)
  {
    v7 = v6;
    v17.width = width;
    v17.height = height;
    UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, 0.0, height);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    if (CurrentContext)
    {
      CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
      v19.origin.x = CGPointZero.x;
      v19.origin.y = CGPointZero.y;
      v19.size.width = width;
      v19.size.height = height;
      CGContextDrawImage(CurrentContext, v19, v7);
    }

    else
    {
      v18.width = width;
      v18.height = height;
      v10 = NSStringFromCGSize(v18);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[IMImage im_imageWithPixelSize:] could not create bitmap context with size %@", &v14, 0xCu);
      }
    }

    Image = CGBitmapContextCreateImage(CurrentContext);
    [(UIImage *)self scale];
    v9 = [UIImage imageWithCGImage:Image scale:[(UIImage *)self imageOrientation] orientation:v12];
    UIGraphicsEndImageContext();
    CGImageRelease(Image);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)im_CGImages
{
  v2 = [(UIImage *)self CGImage];
  if (v2)
  {
    v2 = [NSArray arrayWithObject:v2];
  }

  return v2;
}

+ (id)im_imageWithCGImages:(id)a3 size:(CGSize)a4
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 >= 2)
  {
    sub_1E8F40(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [v4 lastObject];
  if (v13)
  {
    v13 = [[UIImage alloc] initWithCGImage:v13];
  }

  return v13;
}

- (UIImage)imageWithTint:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v7;
  v9 = +[UIGraphicsImageRendererFormat preferredFormat];
  v10 = [v9 copy];

  [(UIImage *)self scale];
  [v10 setScale:?];
  v11 = [UIGraphicsImageRenderer alloc];
  [(UIImage *)self size];
  v12 = [v11 initWithSize:v10 format:?];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_B5640;
  v16[3] = &unk_2CC520;
  v19 = 0;
  v20 = 0;
  v21 = v6;
  v22 = v8;
  v17 = v4;
  v18 = self;
  v13 = v4;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

- (id)imageMaskWithColor:(id)a3 forTraitCollection:(id)a4
{
  v5 = [a3 resolvedColorWithTraitCollection:a4];
  v6 = [(UIImage *)self imageMaskWithColor:v5];

  return v6;
}

- (id)imageMaskWithColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v7;
  [(UIImage *)self size];
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [(UIImage *)self size];
  CGContextTranslateCTM(CurrentContext, 0.0, -v10);
  CGContextSaveGState(CurrentContext);
  v11 = [(UIImage *)self CGImage];
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v6;
  v17.size.height = v8;
  CGContextClipToMask(CurrentContext, v17, v11);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  v12 = [v4 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v12);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v6;
  v18.size.height = v8;
  CGContextFillRect(CurrentContext, v18);
  CGContextRestoreGState(CurrentContext);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

+ (UIImage)imageWithSolidColor:(id)a3 atSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v12.width = width;
  v12.height = height;
  UIGraphicsBeginImageContext(v12);
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [v6 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v8);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  CGContextFillRect(CurrentContext, v13);
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

+ (id)im_imageWithCenteredIconImage:(id)a3 iconColor:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v12 = +[UIGraphicsImageRendererFormat preferredFormat];
    v13 = [v12 copy];

    [v8 scale];
    [v13 setScale:?];
    CGRectMakeWithSize();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v8 size];
    CGRectMakeWithSize();
    CGRectCenterRectInRect();
    v23 = v22;
    v25 = v24;
    v30 = v27;
    v31 = v26;
    v28 = [[UIGraphicsImageRenderer alloc] initWithSize:v13 format:{width, height}];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_B5AB8;
    v32[3] = &unk_2CC548;
    v35 = v15;
    v36 = v17;
    v37 = v19;
    v38 = v21;
    v39 = v23;
    v40 = v25;
    v41 = v31;
    v42 = v30;
    v33 = v8;
    v34 = v10;
    v11 = [v28 imageWithActions:v32];
  }

  return v11;
}

- (id)im_imageWithAlpha:(double)a3
{
  v5 = +[UIGraphicsImageRendererFormat preferredFormat];
  v6 = [v5 copy];

  [(UIImage *)self scale];
  [v6 setScale:?];
  [(UIImage *)self size];
  v8 = v7;
  v10 = v9;
  v11 = [[UIGraphicsImageRenderer alloc] initWithSize:v6 format:{v7, v9}];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B5C88;
  v14[3] = &unk_2CC570;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = self;
  *&v14[7] = v8;
  *&v14[8] = v10;
  *&v14[9] = a3;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (unint64_t)colorAtPixelX:(unint64_t)a3 y:(unint64_t)a4
{
  [(UIImage *)self scale];
  v8 = v7;
  v9 = [(UIImage *)self CGImage];
  v16.origin.x = v8 * a3;
  v16.origin.y = v8 * a4;
  v16.size.width = 1.0;
  v16.size.height = 1.0;
  v10 = CGImageCreateWithImageInRect(v9, v16);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  data = 0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, DeviceRGB, 0x4002u);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 1.0;
  v17.size.height = 1.0;
  CGContextDrawImage(v13, v17, v11);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v13);
  CGImageRelease(v11);
  return bswap32(data);
}

- (void)dumpAsPNGToCachesNamed:(id)a3
{
  v10 = a3;
  v4 = [v10 lowercaseString];
  v5 = [v4 hasSuffix:@"png"];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 stringByAppendingPathExtension:@"png"];

    v10 = v6;
  }

  v7 = +[UIApplication applicationCacheDirectory];
  v8 = [v7 stringByAppendingPathComponent:v10];

  v9 = UIImagePNGRepresentation(self);
  [v9 writeToFile:v8 atomically:0];
}

+ (UIImage)imageWithColor:(id)a3
{
  v3 = a3;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [v3 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v5);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  CGContextFillRect(CurrentContext, v10);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

+ (id)invisibleImage
{
  if (qword_3427E0 != -1)
  {
    sub_1E8F90();
  }

  v3 = qword_3427D8;

  return v3;
}

- (unint64_t)im_averageColor
{
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v7, 1, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationMedium);
  [(UIImage *)self drawInRect:0.0, 0.0, 1.0, 1.0];
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v5 = [v4 colorAtPixelX:0 y:0];

  return v5;
}

- (BOOL)im_isLikelyBlank
{
  v2 = [(UIImage *)self CGImage];
  v3 = malloc_type_calloc(1uLL, 0x9C40uLL, 0x7769C865uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = CGBitmapContextCreate(v4, 0x64uLL, 0x64uLL, 8uLL, 0x190uLL, DeviceRGB, 5u);
  CGColorSpaceRelease(DeviceRGB);
  if (!v6)
  {
    v9 = 0;
    goto LABEL_34;
  }

  v7 = 1;
  CGContextSetInterpolationQuality(v6, kCGInterpolationNone);
  v19.size.width = 100.0;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.height = 100.0;
  CGContextDrawImage(v6, v19, v2);
  v8 = 0;
  v9 = 1;
  while (!v7)
  {
    if (!v9 || v8 >> 6 >= 0x271)
    {
      goto LABEL_33;
    }

    v7 = 0;
    v10 = v4[v8];
    v11 = v4[v8 + 1];
    v12 = v4[v8 + 2];
LABEL_17:
    v17 = v10 < 2 && v11 < 2 && v12 < 2;
    v9 = v9 && v17;
    v8 += 4;
  }

  if (v8 >> 6 < 0x271)
  {
    v10 = v4[v8];
    v11 = v4[v8 + 1];
    v12 = v4[v8 + 2];
    v7 = v10 > 0xFD && v11 > 0xFD && v12 > 0xFD;
    goto LABEL_17;
  }

  v9 = 1;
LABEL_33:
  CGContextRelease(v6);
LABEL_34:
  free(v4);
  return v9;
}

- (id)bc_imageWithConfiguration:(id)a3 limitedToContentSizeCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UITraitCollection currentTraitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v9, v7);

  if (v10 == NSOrderedDescending)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_B62D8;
    v14[3] = &unk_2CC5B8;
    v15 = v7;
    v11 = [v8 traitCollectionByModifyingTraits:v14];
    [UITraitCollection setCurrentTraitCollection:v11];
  }

  v12 = [(UIImage *)self imageWithConfiguration:v6];
  [UITraitCollection setCurrentTraitCollection:v8];

  return v12;
}

@end