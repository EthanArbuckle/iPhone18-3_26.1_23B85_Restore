@interface UIImage
+ (id)fr_gradientImageForTextSize:(CGSize)a3 withStartColor:(id)a4 endColor:(id)a5;
+ (id)fr_imageWithColor:(id)a3 size:(CGSize)a4 cornerRadius:(double)a5;
+ (id)fr_immediatelyLoadedImageWithData:(id)a3 scale:(double)a4;
+ (id)imageFromFileURL:(id)a3;
+ (int64_t)fr_estimatedImageTypeWithData:(id)a3;
- (CGRect)filledRectForRect:(CGRect)a3;
- (CGSize)fr_sizeThatFills:(CGSize)a3;
- (UIImage)imageWithCornerRadius:(double)a3;
- (UIImage)imageWithCornerRadius:(double)a3 scale:(double)a4 targetSize:(CGSize)a5;
- (id)applyBlurWithRadius:(double)a3 tintColor:(id)a4 saturationDeltaFactor:(double)a5 maskImage:(id)a6 targetSize:(CGSize)a7 screenScale:(double)a8 opaque:(BOOL)a9 logoRect:(CGRect)a10 logoImage:(id)a11 logoText:(id)a12 cornerRadius:(double)a13 punchThroughBanner:(BOOL)a14 allowAldenTint:(BOOL)a15;
- (id)fr_applyDarkEffect;
- (id)fr_bannerImageWithLogo:(id)a3;
- (id)fr_colorMonochromeImageWithColor:(id)a3;
- (id)fr_croppedImageWithAspectRatio:(double)a3;
- (id)fr_darkAndBlurredImageWithContext:(id)a3 withBlurRadius:(double)a4 vibrancyAmount:(double)a5 alpha:(double)a6;
- (id)fr_imageAspectFitToSize:(CGSize)a3 targetScale:(double)a4 croppedToCornerRadius:(double)a5 withMargin:(double)a6 withBackgroundColor:(id)a7 borderColor:(id)a8;
- (id)fr_imageByApplyingAlpha:(double)a3;
- (id)fr_imageByCroppingSubRect:(CGRect)a3;
- (id)fr_imageByScalingAndCroppingForSize:(CGSize)a3 scale:(double)a4;
- (id)fr_imageCroppedToCircleWithBackgroundColor:(id)a3;
- (id)fr_imageCroppedToCornerRadius:(double)a3 withBackgroundColor:(id)a4;
- (id)fr_opaqueImageWithFillColor:(id)a3;
- (id)fr_scaledImageWithMaximumSize:(CGSize)a3;
- (id)fr_scaledImageWithMaximumSize:(CGSize)a3 targetScale:(double)a4;
- (id)fr_tintedImageWithColor:(id)a3;
- (id)imageMaskWithColor:(id)a3;
- (id)imageMaskWithColor:(id)a3 size:(CGSize)a4;
@end

@implementation UIImage

- (id)imageMaskWithColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v7;
  [(UIImage *)self size];
  v10 = v9;
  v12 = v11;
  [(UIImage *)self scale];
  v14 = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001A400;
  v18[3] = &unk_1000C22B0;
  v20 = 0;
  v21 = 0;
  v22 = v6;
  v23 = v8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:1 forceSRGB:v18 scale:v10 contextBlock:v12, v14];

  return v16;
}

- (id)imageMaskWithColor:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(UIImage *)self scale];
  v9 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A5C4;
  v13[3] = &unk_1000C22D8;
  v15 = width;
  v16 = height;
  v17 = 0;
  v18 = 0;
  v19 = width;
  v20 = height;
  v13[4] = self;
  v14 = v7;
  v10 = v7;
  v11 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:1 forceSRGB:v13 scale:width contextBlock:height, v9];

  return v11;
}

+ (id)imageFromFileURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = CGImageSourceCreateWithURL(v3, 0)) != 0)
  {
    v6 = v5;
    v10 = kCGImageSourceShouldCacheImmediately;
    v11 = kCFBooleanTrue;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]);
    v8 = [UIImage imageWithCGImage:ImageAtIndex];
    CGImageRelease(ImageAtIndex);
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fr_opaqueImageWithFillColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  [(UIImage *)self scale];
  v10 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001A888;
  v14[3] = &unk_1000C1920;
  v14[4] = self;
  v15 = v4;
  v11 = v4;
  v12 = [FRMacros imageFromNewGraphicsContextWithSize:1 opaque:v14 scale:v6 contextBlock:v8, v10];

  return v12;
}

- (id)fr_imageByApplyingAlpha:(double)a3
{
  [(UIImage *)self size];
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIImage *)self size];
  v7 = v6;
  [(UIImage *)self size];
  v9 = v8;
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -v9);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  CGContextSetAlpha(CurrentContext, a3);
  v10 = [(UIImage *)self CGImage];
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v7;
  v15.size.height = v9;
  CGContextDrawImage(CurrentContext, v15, v10);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (id)fr_tintedImageWithColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  [(UIImage *)self scale];
  v10 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001AAF0;
  v14[3] = &unk_1000C1920;
  v15 = v4;
  v16 = self;
  v11 = v4;
  v12 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v14 scale:v6 contextBlock:v8, v10];

  return v12;
}

- (id)fr_imageCroppedToCircleWithBackgroundColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  [(UIImage *)self size];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(UIImage *)self fr_imageCroppedToCornerRadius:v4 withBackgroundColor:v8 * 0.5];

  return v9;
}

- (id)fr_imageCroppedToCornerRadius:(double)a3 withBackgroundColor:(id)a4
{
  v6 = a4;
  v7 = +[UIColor clearColor];
  v8 = [v6 isEqual:v7];

  if (v8)
  {

    v6 = 0;
  }

  [(UIImage *)self size];
  v10 = v9;
  [(UIImage *)self size];
  v15[1] = 3221225472;
  v15[0] = _NSConcreteStackBlock;
  v15[2] = sub_10001AD3C;
  v15[3] = &unk_1000C22D8;
  if (v10 >= v11)
  {
    v10 = v11;
  }

  v18 = 0;
  v19 = 0;
  v20 = v10;
  v21 = v10;
  v16 = v6;
  v17 = self;
  v22 = a3;
  v23 = v10;
  v12 = v6;
  v13 = [FRMacros imageFromNewGraphicsContextWithSize:v6 != 0 opaque:v15 scale:v10 contextBlock:v10, 0.0];

  return v13;
}

- (id)fr_imageAspectFitToSize:(CGSize)a3 targetScale:(double)a4 croppedToCornerRadius:(double)a5 withMargin:(double)a6 withBackgroundColor:(id)a7 borderColor:(id)a8
{
  height = a3.height;
  width = a3.width;
  v15 = a7;
  v16 = a8;
  v17 = +[UIColor clearColor];
  v18 = [v15 isEqual:v17];

  if (v18)
  {

    v15 = 0;
  }

  v19 = +[UIColor clearColor];
  v20 = [v16 isEqual:v19];

  if (v20)
  {

    v16 = 0;
  }

  [(UIImage *)self size];
  v22 = v21;
  v24 = v23;
  [(UIImage *)self scale];
  v26 = v25;
  v27 = [(UIImage *)self imageOrientation];
  v28 = width / v22;
  if (width / v22 >= height / v24)
  {
    v28 = height / v24;
  }

  v29 = a4 / v26 * v28;
  v30 = v22 * v26 * v29;
  v31 = v24 * v26 * v29;
  v32 = -(a6 * a4);
  v33 = v30 <= v31;
  v34 = v31 + v32 * 2.0;
  v35 = v30 * (v34 / v31);
  v36 = v30 + v32 * 2.0;
  v37 = v31 * (v36 / v30);
  if (v33)
  {
    v38 = v34;
  }

  else
  {
    v38 = v37;
  }

  v39 = width * a4;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_100009B38;
  v68 = sub_100009EF0;
  v69 = 0;
  v49 = _NSConcreteStackBlock;
  v50 = 3221225472;
  v51 = sub_10001B0FC;
  v52 = &unk_1000C2300;
  v40 = height * a4;
  v57 = v39;
  v58 = v40;
  if (v33)
  {
    v41 = v35;
  }

  else
  {
    v41 = v36;
  }

  v59 = a5;
  v60 = a4;
  v42 = v15;
  v61 = v41;
  v62 = v38;
  v53 = v42;
  v54 = self;
  v43 = v16;
  v55 = v43;
  v56 = &v64;
  v63 = v27;
  [FRMacros useManagedContextWithSize:0 opaque:&v49 scale:v39 contextBlock:v40, 1.0];
  v44 = v65[5];
  if (!v44)
  {
    v45 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v46 = [NSString alloc];
      [v46 initWithFormat:@"invalid nil value for '%s'", "scaledImage", v49, v50, v51, v52, v53, v54];
      sub_10006B838();
    }

    v44 = v65[5];
  }

  v47 = v44;

  _Block_object_dispose(&v64, 8);

  return v47;
}

- (id)fr_colorMonochromeImageWithColor:(id)a3
{
  v5 = self;
  v6 = a3;
  v7 = [CIImage imageWithCGImage:[(UIImage *)self CGImage]];
  v8 = [[CIColor alloc] initWithColor:v6];

  v9 = [CIFilter filterWithName:@"CIColorMonochrome" keysAndValues:@"inputImage", v7, @"inputColor", v8, @"inputIntensity", &off_1000CB4D0, 0];
  v10 = [v9 outputImage];
  v11 = [CIContext contextWithOptions:0];
  [v10 extent];
  v12 = [v11 createCGImage:v10 fromRect:?];
  v13 = [UIImage imageWithCGImage:v12];
  CGImageRelease(v12);

  return v13;
}

- (id)fr_scaledImageWithMaximumSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImage *)self scale];

  return [(UIImage *)self fr_scaledImageWithMaximumSize:width targetScale:height, v6];
}

- (id)fr_scaledImageWithMaximumSize:(CGSize)a3 targetScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(UIImage *)self size];
  v9 = v8;
  v11 = v10;
  [(UIImage *)self scale];
  v13 = v12;
  v14 = [(UIImage *)self imageOrientation];
  if (v9 < width && v11 < height)
  {
    v20 = self;
  }

  else
  {
    v16 = v14;
    v17 = width / v9;
    if (width / v9 >= height / v11)
    {
      v17 = height / v11;
    }

    v18 = a4 / v13 * v17;
    v19 = v18 * CGImageGetWidth([(UIImage *)self CGImage]);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100009B38;
    v27 = sub_100009EF0;
    v28 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001B678;
    v22[3] = &unk_1000C2328;
    *&v22[6] = v18 * CGImageGetHeight([(UIImage *)self CGImage]);
    *&v22[7] = v9 * v13 * v18;
    v22[4] = self;
    v22[5] = &v23;
    *&v22[8] = v11 * v13 * v18;
    *&v22[9] = a4;
    v22[10] = v16;
    [FRMacros useManagedContextWithSize:0 opaque:0 forceSRGB:v22 scale:v19 contextBlock:?];
    v20 = v24[5];
    _Block_object_dispose(&v23, 8);
  }

  return v20;
}

- (id)fr_croppedImageWithAspectRatio:(double)a3
{
  [(UIImage *)self scale];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v6 * v7;
  [(UIImage *)self size];
  v10 = v6 * v9;
  if (a3 <= 1.0)
  {
    v11 = v10 * a3;
    v12 = v10;
  }

  else
  {
    v11 = v8;
    v12 = v8 / a3;
  }

  v13 = (v10 - v12) * 0.5;
  v14 = [(UIImage *)self CGImage];
  v19.origin.x = (v8 - v11) * 0.5;
  v19.origin.y = v13;
  v19.size.width = v11;
  v19.size.height = v12;
  v15 = CGImageCreateWithImageInRect(v14, v19);
  v16 = [UIImage imageWithCGImage:v15];
  CGImageRelease(v15);

  return v16;
}

- (id)fr_imageByScalingAndCroppingForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  [(UIImage *)v7 size];
  v10 = 0.0;
  if (v8 == width && v9 == height)
  {
    v16 = 0.0;
    v15 = height;
    v14 = width;
  }

  else
  {
    v12 = height / v9;
    v13 = width / v8 < height / v9;
    if (width / v8 > height / v9)
    {
      v12 = width / v8;
    }

    v14 = v8 * v12;
    v15 = v9 * v12;
    if (v13)
    {
      v16 = (width - v14) * 0.5;
    }

    else
    {
      v16 = 0.0;
      v10 = fmin(-(v15 / 3.0 + height * -0.5), 0.0);
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B98C;
  v20[3] = &unk_1000C2350;
  v22 = v16;
  v23 = v10;
  v24 = v14;
  v25 = v15;
  v21 = v7;
  v17 = v7;
  v18 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v20 scale:width contextBlock:height, a4];

  return v18;
}

- (id)fr_imageByCroppingSubRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  [(UIImage *)v7 size];
  v9 = v8;
  v11 = v10;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (CGRectIsEmpty(v23) || (v24.origin.x = 0.0, v24.origin.y = 0.0, v24.size.width = v9, v24.size.height = v11, v25.origin.x = x, v25.origin.y = y, v25.size.width = width, v25.size.height = height, !CGRectContainsRect(v24, v25)))
  {
    v14 = 0;
  }

  else
  {
    [(UIImage *)v7 scale];
    v13 = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001BAF0;
    v16[3] = &unk_1000C2350;
    v17 = v7;
    v18 = x;
    v19 = y;
    v20 = width;
    v21 = height;
    v14 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v16 scale:width contextBlock:height, v13];
  }

  return v14;
}

- (id)fr_bannerImageWithLogo:(id)a3
{
  v4 = a3;
  [(UIImage *)self scale];
  v6 = v5;
  [(UIImage *)self size];
  v8 = v6 * v7;
  [(UIImage *)self size];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100009B38;
  v34 = sub_100009EF0;
  v35 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001BD60;
  v20 = &unk_1000C2378;
  v10 = (v6 * 17.0 * 0.5 + v6 * v9);
  v24 = v6 * 17.0 * 0.5;
  v25 = v8;
  v26 = v6 * v9;
  v21 = self;
  v27 = v8;
  v28 = v6 * 17.0;
  v11 = v4;
  v22 = v11;
  v23 = &v30;
  v29 = v6;
  [FRMacros useManagedContextWithSize:0 opaque:&v17 scale:v8 contextBlock:v10, 1.0];
  v12 = v31[5];
  if (!v12)
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [NSString alloc];
      [v14 initWithFormat:@"invalid nil value for '%s'", "bannerImage", v17, v18, v19, v20, v21];
      sub_10006B8A4();
    }

    v12 = v31[5];
  }

  v15 = v12;

  _Block_object_dispose(&v30, 8);

  return v15;
}

+ (id)fr_immediatelyLoadedImageWithData:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && (v7 = CGImageSourceCreateWithData(v5, 0)) != 0)
  {
    v8 = v7;
    v12 = kCGImageSourceShouldCacheImmediately;
    v13 = kCFBooleanTrue;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1]);
    if (a4 <= 1.0)
    {
      [UIImage imageWithCGImage:ImageAtIndex];
    }

    else
    {
      [UIImage imageWithCGImage:ImageAtIndex scale:0 orientation:a4];
    }
    v10 = ;
    CGImageRelease(ImageAtIndex);
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fr_imageWithColor:(id)a3 size:(CGSize)a4 cornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001C0E8;
  v11[3] = &unk_1000C23A0;
  v13 = 0;
  v14 = 0;
  v12 = a3;
  v15 = width;
  v16 = height;
  v17 = a5;
  v8 = v12;
  v9 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v11 scale:width contextBlock:height, 0.0];

  return v9;
}

- (id)fr_darkAndBlurredImageWithContext:(id)a3 withBlurRadius:(double)a4 vibrancyAmount:(double)a5 alpha:(double)a6
{
  v28 = a3;
  v27 = [[CIImage alloc] initWithImage:self];
  v10 = [CIFilter filterWithName:@"CIGaussianBlur"];
  [v10 setValue:v27 forKey:kCIInputImageKey];
  v11 = [NSNumber numberWithDouble:a4];
  [v10 setValue:v11 forKey:@"inputRadius"];

  v12 = [CIFilter filterWithName:@"CIVibrance"];
  v13 = [v10 outputImage];
  [v12 setValue:v13 forKey:kCIInputImageKey];

  v14 = [NSNumber numberWithDouble:a5];
  [v12 setValue:v14 forKey:@"inputAmount"];

  v15 = [CIFilter filterWithName:@"CIConstantColorGenerator"];
  v26 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:a6];
  [v15 setValue:v26 forKey:@"inputColor"];
  v16 = [v15 valueForKey:@"outputImage"];
  v17 = [CIFilter filterWithName:@"CIMultiplyBlendMode"];
  [v17 setValue:v16 forKey:@"inputImage"];
  v18 = [v12 outputImage];
  [v17 setValue:v18 forKey:@"inputBackgroundImage"];

  v19 = [v17 outputImage];
  [v27 extent];
  v20 = [v28 createCGImage:v19 fromRect:?];

  [(UIImage *)self scale];
  v22 = [UIImage imageWithCGImage:v20 scale:[(UIImage *)self imageOrientation] orientation:v21];
  CGImageRelease(v20);
  v23 = +[UIColor blackColor];
  v24 = [v22 fr_opaqueImageWithFillColor:v23];

  return v24;
}

- (id)fr_applyDarkEffect
{
  v3 = [UIColor colorWithRed:0.196078431 green:0.196078431 blue:0.196078431 alpha:0.45];
  LOBYTE(v6) = 0;
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:0 maskImage:0 targetSize:0 screenScale:0 opaque:44.0 logoRect:1.3 logoImage:CGSizeZero.width logoText:CGSizeZero.height cornerRadius:0.0 punchThroughBanner:*&CGRectZero.origin.x allowAldenTint:*&CGRectZero.origin.y, *&CGRectZero.size.width, *&CGRectZero.size.height, 0, v6];

  return v4;
}

- (CGRect)filledRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v9 = v8 / CGRectGetHeight(v29);
  [(UIImage *)self size];
  v11 = v10;
  [(UIImage *)self size];
  v13 = v11 / v12;
  v14 = v11 / v12 - v9;
  if (v14 < 0.0)
  {
    v14 = -v14;
  }

  if (v14 > 0.00000011920929)
  {
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;
    if (v9 <= v13)
    {
      v22 = CGRectGetHeight(*&v15);
      v23 = v13 * v22;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v24 = CGRectGetWidth(v32);
      y = 0.0;
      v33.origin.x = 0.0;
      v33.origin.y = 0.0;
      v33.size.width = v23;
      v33.size.height = v22;
      x = (v24 - CGRectGetWidth(v33)) * 0.5;
      height = v22;
      width = v23;
    }

    else
    {
      v19 = CGRectGetWidth(*&v15);
      v20 = v19 / v13;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v21 = CGRectGetHeight(v30);
      x = 0.0;
      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      v31.size.width = v19;
      v31.size.height = v20;
      y = (v21 - CGRectGetHeight(v31)) * 0.5;
      height = v20;
      width = v19;
    }
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (UIImage)imageWithCornerRadius:(double)a3
{
  +[FRMacros deviceScreenScaleFromPotentialBackgroundThread];
  v6 = v5;
  [(UIImage *)self size];

  return [(UIImage *)self imageWithCornerRadius:a3 scale:v6 targetSize:v7, v8];
}

- (UIImage)imageWithCornerRadius:(double)a3 scale:(double)a4 targetSize:(CGSize)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C7D4;
  v7[3] = &unk_1000C23C8;
  v8 = a5;
  v9 = a3;
  v7[4] = self;
  v5 = [FRMacros imageFromNewGraphicsContextWithSize:0 opaque:v7 scale:a5.width contextBlock:a5.height, a4];

  return v5;
}

- (id)applyBlurWithRadius:(double)a3 tintColor:(id)a4 saturationDeltaFactor:(double)a5 maskImage:(id)a6 targetSize:(CGSize)a7 screenScale:(double)a8 opaque:(BOOL)a9 logoRect:(CGRect)a10 logoImage:(id)a11 logoText:(id)a12 cornerRadius:(double)a13 punchThroughBanner:(BOOL)a14 allowAldenTint:(BOOL)a15
{
  height = a7.height;
  width = a7.width;
  v24 = a4;
  v25 = a6;
  v62 = a11;
  v63 = a12;
  if (width <= 0.0 || height <= 0.0)
  {
    [(UIImage *)self size];
    width = v26;
    height = v27;
  }

  if (fabs(a8) < 0.00999999978)
  {
    +[FRMacros deviceScreenScaleFromPotentialBackgroundThread];
    a8 = v28;
  }

  v29 = [v24 colorWithAlphaComponent:1.0];
  v30 = +[UIColor whiteColor];
  v31 = [v29 _isSimilarToColor:v30 withinPercentage:0.1];

  v32 = [v24 colorWithAlphaComponent:1.0];
  v33 = [UIColor colorWithWhite:0.392156863 alpha:1.0];
  v34 = [v32 _isSimilarToColor:v33 withinPercentage:0.1];

  v35 = v31 | v34;
  if (((v31 | v34) & 1) == 0 && a15)
  {
    v36 = [v24 colorWithAlphaComponent:0.5];

    v24 = v36;
  }

  if (width < 1.0 || height < 1.0)
  {
    v46 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006BAD8(v46, self);
    }

    goto LABEL_36;
  }

  if (![(UIImage *)self CGImage])
  {
    v47 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006BA60(self, v47);
    }

    goto LABEL_36;
  }

  if (v25 && ![v25 CGImage])
  {
    v56 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006B910(v25, v56);
    }

LABEL_36:
    v55 = 0;
    goto LABEL_37;
  }

  [(UIImage *)self filledRectForRect:CGPointZero.x, CGPointZero.y, width, height];
  v38 = v37;
  v59 = v40;
  v60 = v39;
  v58 = v41;
  v42 = self;
  v43 = v42;
  v44 = fabs(a5 + -1.0);
  if (a3 > 0.00000011920929 || v44 > 0.00000011920929)
  {
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = sub_100009B38;
    v106 = sub_100009EF0;
    v107 = 0;
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_10001D0BC;
    v99[3] = &unk_1000C2418;
    *&v99[6] = width;
    *&v99[7] = height;
    v99[8] = v38;
    v99[9] = v60;
    v99[10] = v59;
    v99[11] = v58;
    v100 = a3 > 0.00000011920929;
    *&v99[12] = a8;
    *&v99[13] = a3;
    v101 = v44 > 0.00000011920929;
    *&v99[14] = a5;
    v99[4] = v42;
    v99[5] = &v102;
    [FRMacros useManagedContextWithSize:0 opaque:1 forceSRGB:v99 scale:width contextBlock:height, a8];
    v48 = v103[5];
    if (!v48)
    {
      v49 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "resultImage"];
        sub_10006B988();
      }

      v48 = v103[5];
    }

    v45 = v48;

    _Block_object_dispose(&v102, 8);
  }

  else
  {
    v45 = v42;
  }

  v50 = [(UIImage *)v43 imageOrientation];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_100009B38;
  v106 = sub_100009EF0;
  v107 = 0;
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10001D48C;
  v78[3] = &unk_1000C2440;
  v79 = v24;
  v86 = a10;
  v87 = width;
  v88 = height;
  v89 = v38;
  v90 = v60;
  v91 = v59;
  v92 = v58;
  v80 = v63;
  v81 = v43;
  v95 = a3 > 0.00000011920929;
  v82 = v25;
  v51 = v45;
  v83 = v51;
  v96 = a14;
  v97 = (v35 & 1) == 0;
  v98 = a15;
  v84 = v62;
  v85 = &v102;
  v93 = a8;
  v94 = v50;
  [FRMacros useManagedContextWithSize:0 opaque:1 forceSRGB:v78 scale:width contextBlock:height, a8];
  if (!v103[5])
  {
    v52 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "outputImage"];
      sub_10006B9F4();
    }
  }

  if (a13 <= 0.00000011920929)
  {
    v55 = v103[5];
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    [UIBezierPath bezierPathWithRoundedRect:1.0 / (a8 + a8) cornerRadius:1.0 / (a8 + a8), width - 1.0 / a8, height - 1.0 / a8, a13];
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_100009B38;
    v76 = sub_100009EF0;
    v77 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10001DA34;
    v64[3] = &unk_1000C2490;
    v68 = DeviceRGB;
    v54 = v69 = a8;
    v65 = v54;
    v66 = &v102;
    v70 = width;
    v71 = height;
    v67 = &v72;
    [FRMacros useManagedContextWithSize:0 opaque:v64 scale:width contextBlock:height, a8];
    CGColorSpaceRelease(DeviceRGB);
    v55 = v73[5];

    _Block_object_dispose(&v72, 8);
  }

  _Block_object_dispose(&v102, 8);
LABEL_37:

  return v55;
}

- (CGSize)fr_sizeThatFills:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImage *)self size];
  v7 = v5 * (height / v6);
  if (v7 < width)
  {
    height = v6 * (width / v5);
    v7 = width;
  }

  v8 = v7;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)fr_gradientImageForTextSize:(CGSize)a3 withStartColor:(id)a4 endColor:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  v9 = a4;
  v22.width = width;
  v22.height = height;
  UIGraphicsBeginImageContext(v22);
  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  v11 = [v9 CGColor];

  v12 = [v8 CGColor];
  v13 = [NSArray arrayWithObjects:v11, v12, 0, 0, 0x3FF0000000000000];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15 = CGGradientCreateWithColors(DeviceRGB, v13, locations);
  v23.x = 0.0;
  v23.y = 0.0;
  v25.x = width;
  v25.y = height;
  CGContextDrawLinearGradient(CurrentContext, v15, v23, v25, 0);
  v16 = width + height * 0.5;
  v17 = ceilf(v16);
  v24.x = 0.0;
  v24.y = 0.0;
  v26.x = width;
  v26.y = height;
  CGContextDrawRadialGradient(CurrentContext, v15, v24, 0.0, v26, v17, 0);
  CGGradientRelease(v15);
  CGColorSpaceRelease(DeviceRGB);
  UIGraphicsPopContext();
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (int64_t)fr_estimatedImageTypeWithData:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    goto LABEL_6;
  }

  v6 = 0;
  v4 = 1;
  [v3 getBytes:&v6 length:1];
  if (v6 < 0x4Eu)
  {
    goto LABEL_6;
  }

  if (v6 != 255)
  {
    if (v6 == 137)
    {
      v4 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

@end