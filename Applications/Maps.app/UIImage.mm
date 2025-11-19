@interface UIImage
+ (CGRect)maps_collectionGlyphFractionalRectWithRTL:(BOOL)a3;
+ (double)_maps_minSideLengthForShieldSize:(int64_t)a3;
+ (id)_compositeImageFromImage:(id)a3 paddedToWidth:(double)a4 badge:(id)a5 badgeOffset:(CGPoint)a6;
+ (id)_imageProcessingQueue;
+ (id)_mapsCar_privateSystemImageNamed:(id)a3 textStyle:(id)a4 scale:(int64_t)a5;
+ (id)_mapsCar_systemImageNamed:(id)a3;
+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4;
+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5;
+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5 paletteColors:(id)a6;
+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4;
+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4 weight:(int64_t)a5;
+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4 weight:(int64_t)a5 paletteColors:(id)a6;
+ (id)_maps_applicationIconWithBundleIdentifier:(id)a3;
+ (id)_maps_circleImageWithDiameter:(double)a3 color:(id)a4;
+ (id)_maps_imageWithColor:(id)a3;
+ (id)_maps_maneuverImageForTransitArrivalInfo:(id)a3 shieldSize:(int64_t)a4 forDarkBackground:(BOOL)a5;
+ (id)_maps_radar_symbolCircleFilled;
+ (id)_maps_radar_symbolCircleUnfilled;
+ (id)_maps_radar_symbolFilled;
+ (id)_maps_radar_symbolUnfilled;
+ (id)chargeImageOfSize:(double)a3 batteryLevel:(unint64_t)a4;
+ (id)imageNamed:(id)a3 ofSize:(double)a4 color:(id)a5;
+ (id)interSystemTransferFromHexColor:(id)a3 toHexColor:(id)a4 imageWithSize:(int64_t)a5 scale:(double)a6 darkMode:(BOOL)a7;
+ (id)maps_emptyImageScale:(double)a3;
+ (id)maps_filledImageWithColor:(id)a3 scale:(double)a4;
+ (id)warningImageOfSize:(double)a3;
- (CGContext)_contextWithDiameter:(double)a3;
- (CGImage)_cgImageFromContext:(CGContext *)a3 toFit:(CGSize)a4;
- (id)_finaliseCircleImage:(id)a3 withContext:(CGContext *)a4;
- (id)_maps_blurredImage:(id)a3 scale:(double)a4;
- (id)_maps_colorMonochromeImageWithColor:(id)a3;
- (id)_maps_colorizedImageWithColor:(id)a3;
- (id)_maps_composedImageScale:(double)a3 isRTL:(BOOL)a4;
- (id)_maps_horizontallyFlippedImage;
- (id)_maps_imageIconWithBackgroundConfiguration:(id)a3;
- (id)_maps_imageInOrientation:(int64_t)a3;
- (id)_maps_imageWithAspectFitScalingForMaximumSize:(CGSize)a3;
- (id)_maps_invertedImage;
- (id)_maps_mostCommonColor;
- (id)_maps_scaleToFill:(id)a3 size:(double)a4 scale:(double)a5;
- (id)_maps_scaleToFillRoundedImage:(id)a3 size:(double)a4 scale:(double)a5;
- (id)drawnInCircleWithDiameter:(double)a3 backgroundColor:(id)a4;
- (id)imageScaledToSize:(CGSize)a3;
- (void)_enumeratePixelsWithBlock:(id)a3;
- (void)maps_blurredImageScale:(double)a3 isRTL:(BOOL)a4 completion:(id)a5;
@end

@implementation UIImage

- (id)_maps_colorMonochromeImageWithColor:(id)a3
{
  v4 = a3;
  v5 = [CIImage imageWithCGImage:[(UIImage *)self CGImage]];
  v6 = v5;
  if (v5)
  {
    v17[0] = v5;
    v16[0] = kCIInputImageKey;
    v16[1] = kCIInputColorKey;
    v7 = [[CIColor alloc] initWithColor:v4];
    v16[2] = kCIInputIntensityKey;
    v17[1] = v7;
    v17[2] = &off_1016EDCC8;
    v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v9 = [CIFilter filterWithName:@"CIColorMonochrome" withInputParameters:v8];

    v10 = [v9 outputImage];
    if (v10)
    {
      v11 = [CIContext contextWithOptions:0];
      [v10 extent];
      v12 = [v11 createCGImage:v10 fromRect:?];
      [(UIImage *)self scale];
      v14 = [UIImage imageWithCGImage:v12 scale:[(UIImage *)self imageOrientation] orientation:v13];
      CGImageRelease(v12);
    }

    else
    {
      v14 = self;
    }
  }

  else
  {
    v14 = self;
  }

  return v14;
}

- (id)_maps_imageInOrientation:(int64_t)a3
{
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  v9 = *&CGAffineTransformIdentity.c;
  *&v22.a = *&CGAffineTransformIdentity.a;
  *&v22.c = v9;
  *&v22.tx = *&CGAffineTransformIdentity.tx;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v13 = self;
        goto LABEL_25;
      }

      if (a3 != 1)
      {
        goto LABEL_19;
      }

      CGAffineTransformMakeTranslation(&v22, v5, v8);
      v20 = v22;
      CGAffineTransformRotate(&transform, &v20, 3.14159265);
      goto LABEL_18;
    }

    if (a3 != 2)
    {
      CGAffineTransformMakeTranslation(&v22, v8, 0.0);
LABEL_14:
      v20 = v22;
      v12 = 1.57079633;
LABEL_23:
      CGAffineTransformRotate(&transform, &v20, v12);
      v22 = transform;
      v14 = v8;
      v8 = v6;
      goto LABEL_24;
    }

    CGAffineTransformMakeTranslation(&v22, 0.0, v5);
    *&v20.a = *&v22.a;
    *&v20.c = *&v22.c;
    v15 = *&v22.tx;
LABEL_22:
    *&v20.tx = v15;
    v12 = 4.71238898;
    goto LABEL_23;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      CGAffineTransformMakeTranslation(&v22, v5, 0.0);
      v20 = v22;
      v10 = -1.0;
      v11 = 1.0;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v22, 0.0, v8);
      v20 = v22;
      v10 = 1.0;
      v11 = -1.0;
    }

    CGAffineTransformScale(&transform, &v20, v10, v11);
LABEL_18:
    v22 = transform;
    goto LABEL_19;
  }

  if (a3 == 6)
  {
    CGAffineTransformMakeTranslation(&v22, v8, v5);
    v20 = v22;
    CGAffineTransformScale(&transform, &v20, -1.0, 1.0);
    v15 = *&transform.tx;
    v22 = transform;
    *&v20.a = *&transform.a;
    *&v20.c = *&transform.c;
    goto LABEL_22;
  }

  if (a3 == 7)
  {
    CGAffineTransformMakeScale(&v22, -1.0, 1.0);
    goto LABEL_14;
  }

LABEL_19:
  v14 = v6;
LABEL_24:
  [(UIImage *)self scale:*&v20.a];
  v17 = v16;
  v24.width = v14;
  v24.height = v8;
  UIGraphicsBeginImageContextWithOptions(v24, 0, v17);
  CurrentContext = UIGraphicsGetCurrentContext();
  transform = v22;
  CGContextConcatCTM(CurrentContext, &transform);
  [(UIImage *)self drawAtPoint:CGPointZero.x, CGPointZero.y];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_25:

  return v13;
}

- (id)_maps_horizontallyFlippedImage
{
  [(UIImage *)self size];
  v4 = v3;
  v6 = v5;
  [(UIImage *)self scale];
  v8 = v7;
  v15.width = v4;
  v15.height = v6;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v8);
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIImage *)self size];
  v13.a = -1.0;
  v13.b = 0.0;
  v13.c = 0.0;
  v13.d = 1.0;
  v13.tx = v10;
  v13.ty = 0.0;
  CGContextConcatCTM(CurrentContext, &v13);
  [(UIImage *)self drawAtPoint:CGPointZero.x, CGPointZero.y];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (id)_maps_colorizedImageWithColor:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(UIImage *)self size];
  v7 = v6;
  v9 = v8;
  y = CGPointZero.y;
  [(UIImage *)self scale];
  v12 = v11;
  v18.width = v7;
  v18.height = v9;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -v9);
  CGContextSetFillColorWithColor(CurrentContext, [v4 CGColor]);
  v19.origin.x = CGPointZero.x;
  v19.origin.y = y;
  v19.size.width = v7;
  v19.size.height = v9;
  CGContextFillRect(CurrentContext, v19);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationAtop);
  v14 = [(UIImage *)self CGImage];
  v20.origin.x = CGPointZero.x;
  v20.origin.y = y;
  v20.size.width = v7;
  v20.size.height = v9;
  CGContextDrawImage(CurrentContext, v20, v14);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  objc_autoreleasePoolPop(v5);

  return v15;
}

- (id)_maps_imageIconWithBackgroundConfiguration:(id)a3
{
  v4 = a3;
  v5 = [UIView alloc];
  [v4 iconSize];
  v7 = v6;
  [v4 iconSize];
  v9 = [v5 initWithFrame:{0.0, 0.0, v7, v8}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v4 backgroundColor];
  [v9 setBackgroundColor:v10];

  [v4 cornerRadius];
  v12 = v11;
  v13 = [v9 layer];
  [v13 setCornerRadius:v12];

  v14 = [[UIImageView alloc] initWithImage:self];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 frame];
  [v14 alignmentRectForFrame:?];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  MidX = CGRectGetMidX(v39);
  [v14 frame];
  v20 = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidY = CGRectGetMidY(v41);
  [v14 frame];
  v22 = CGRectGetMidY(v42);
  [v9 center];
  v24 = v20 - MidX + v23;
  [v9 center];
  [v14 setCenter:{v24, v22 - MidY + v25}];
  v26 = [v4 tintColor];

  [v14 setTintColor:v26];
  [v9 addSubview:v14];
  [v9 frame];
  v28 = v27;
  v30 = v29;
  v31 = +[UIScreen mainScreen];
  [v31 scale];
  v33 = v32;
  v38.width = v28;
  v38.height = v30;
  UIGraphicsBeginImageContextWithOptions(v38, 0, v33);

  v34 = [v9 layer];
  [v34 renderInContext:UIGraphicsGetCurrentContext()];

  v35 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v35;
}

+ (id)_maps_circleImageWithDiameter:(double)a3 color:(id)a4
{
  v5 = a4;
  v11.width = a3;
  v11.height = a3;
  UIGraphicsBeginImageContext(v11);
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = [v5 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v7);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = a3;
  v12.size.height = a3;
  CGContextFillEllipseInRect(CurrentContext, v12);
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (id)_maps_imageWithColor:(id)a3
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

- (id)_maps_invertedImage
{
  v3 = +[UIColor systemBlueColor];
  v4 = [(UIImage *)self imageWithTintColor:v3];
  [v4 size];
  v6 = v5;
  [v4 size];
  v8 = v7;
  [v4 size];
  v10 = v9;
  v12 = v11;
  [v4 scale];
  v14 = v13;
  v18.width = v10;
  v18.height = v12;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v14);
  [v4 drawInRect:{0.0, 0.0, v6, v8}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();

  return v15;
}

+ (id)_compositeImageFromImage:(id)a3 paddedToWidth:(double)a4 badge:(id)a5 badgeOffset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a5;
  [v10 size];
  v13 = a4;
  if (v12 + x > a4)
  {
    [v10 size];
    v13 = v14 + x;
  }

  [v10 size];
  v16 = v15 + y * 2.0;
  [v10 scale];
  v18 = v17;
  v30.width = v13;
  v30.height = v16;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v18);
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  v20 = x;
  if ((IsRightToLeft & 1) == 0)
  {
    [v10 size];
    v22 = v21 + x;
    v20 = 0.0;
    if (v22 <= a4)
    {
      [v10 size];
      v20 = a4 - (x + v23);
    }
  }

  [v10 drawAtPoint:{v20, y}];
  if (v11)
  {
    v24 = 0.0;
    if ((MKApplicationLayoutDirectionIsRightToLeft() & 1) == 0)
    {
      [v11 size];
      v24 = v13 - v25;
    }

    [v11 size];
    [v11 drawAtPoint:{v24, v16 - v26}];
  }

  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v27;
}

+ (id)_mapsCar_privateSystemImageNamed:(id)a3 textStyle:(id)a4 scale:(int64_t)a5
{
  v6 = a3;
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  v8 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:a5];
  v9 = [UIImage _systemImageNamed:v6 withConfiguration:v8];

  return v9;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4 weight:(int64_t)a5 paletteColors:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [UIFont _mapsCar_fontForTextStyle:v10 weight:UIFontWeightForImageSymbolWeight(a5)];

  v13 = [UIImageSymbolConfiguration configurationWithFont:v12];
  v14 = [UIImageSymbolConfiguration configurationWithPaletteColors:v9];

  v15 = [v13 configurationByApplyingConfiguration:v14];
  v16 = +[CarDisplayController sharedInstance];
  v17 = [v16 screenTraitCollection];
  v18 = [UIImage systemImageNamed:v11 compatibleWithTraitCollection:v17];

  v19 = [v18 imageByApplyingSymbolConfiguration:v15];
  v20 = [v19 imageWithRenderingMode:0];

  return v20;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4 weight:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [UIFont _mapsCar_fontForTextStyle:v7 weight:UIFontWeightForImageSymbolWeight(a5)];

  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 screenTraitCollection];
  v12 = [UIImage systemImageNamed:v8 compatibleWithTraitCollection:v11];

  v13 = [UIImageSymbolConfiguration configurationWithFont:v9];
  v14 = [v12 imageByApplyingSymbolConfiguration:v13];

  return v14;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 textStyle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 screenTraitCollection];
  v9 = [UIImage systemImageNamed:v6 compatibleWithTraitCollection:v8];

  v10 = [UIImageSymbolConfiguration configurationWithTextStyle:v5];

  v11 = [v9 imageByApplyingSymbolConfiguration:v10];

  return v11;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5 paletteColors:(id)a6
{
  v8 = a6;
  v9 = a3;
  v10 = [UIImageSymbolConfiguration configurationWithPointSize:a4];
  v11 = [UIImageSymbolConfiguration configurationWithPaletteColors:v8];

  v12 = [v10 configurationByApplyingConfiguration:v11];
  v13 = +[CarDisplayController sharedInstance];
  v14 = [v13 screenTraitCollection];
  v15 = [UIImage systemImageNamed:v9 compatibleWithTraitCollection:v14];

  v16 = [v15 imageByApplyingSymbolConfiguration:v12];
  v17 = [v16 imageWithRenderingMode:0];

  return v17;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5
{
  v7 = a3;
  v8 = +[CarDisplayController sharedInstance];
  v9 = [v8 screenTraitCollection];
  v10 = [UIImage systemImageNamed:v7 compatibleWithTraitCollection:v9];

  v11 = [UIImageSymbolConfiguration configurationWithPointSize:a5 weight:a4];
  v12 = [v10 imageByApplyingSymbolConfiguration:v11];

  return v12;
}

+ (id)_mapsCar_systemImageNamed:(id)a3 pointSize:(double)a4
{
  v5 = a3;
  v6 = +[CarDisplayController sharedInstance];
  v7 = [v6 screenTraitCollection];
  v8 = [UIImage systemImageNamed:v5 compatibleWithTraitCollection:v7];

  v9 = [UIImageSymbolConfiguration configurationWithPointSize:a4];
  v10 = [v8 imageByApplyingSymbolConfiguration:v9];

  return v10;
}

+ (id)_mapsCar_systemImageNamed:(id)a3
{
  v3 = a3;
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 screenTraitCollection];
  v6 = [UIImage systemImageNamed:v3 compatibleWithTraitCollection:v5];

  return v6;
}

- (id)imageScaledToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, width, height];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

- (id)_finaliseCircleImage:(id)a3 withContext:(CGContext *)a4
{
  CGContextRestoreGState(a4);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (CGImage)_cgImageFromContext:(CGContext *)a3 toFit:(CGSize)a4
{
  CGContextTranslateCTM(a3, 0.0, a4.height);
  CGContextScaleCTM(a3, 1.0, -1.0);
  v6 = self;

  return [(UIImage *)v6 CGImage];
}

- (CGContext)_contextWithDiameter:(double)a3
{
  UIGraphicsBeginImageContextWithOptions(*&a3, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  return CurrentContext;
}

- (id)drawnInCircleWithDiameter:(double)a3 backgroundColor:(id)a4
{
  v6 = a4;
  v7 = [(UIImage *)self _contextWithDiameter:a3];
  v8 = [v6 CGColor];

  CGContextSetFillColorWithColor(v7, v8);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = a3;
  v25.size.height = a3;
  CGContextFillEllipseInRect(v7, v25);
  v9 = +[UIColor whiteColor];
  [v9 setFill];

  [(UIImage *)self size];
  v11 = v10;
  [(UIImage *)self size];
  v13 = v12;
  [(UIImage *)self size];
  v14 = a3;
  if (v15 <= a3)
  {
    [(UIImage *)self size];
    v14 = v16;
  }

  [(UIImage *)self size];
  v17 = a3;
  if (v18 <= a3)
  {
    [(UIImage *)self size];
    v17 = v19;
  }

  v20 = (a3 - v13) * 0.5;
  v21 = (a3 - v11) * -0.5;
  v22 = [(UIImage *)self _cgImageFromContext:v7 toFit:v14, v17];
  v26.origin.x = v20;
  v26.origin.y = v21;
  v26.size.width = v14;
  v26.size.height = v17;
  CGContextClipToMask(v7, v26, v22);
  v27.origin.x = v20;
  v27.origin.y = v21;
  v27.size.width = v14;
  v27.size.height = v17;
  CGContextFillRect(v7, v27);

  return [(UIImage *)self _finaliseCircleImage:0 withContext:v7];
}

- (id)_maps_blurredImage:(id)a3 scale:(double)a4
{
  memset(&buf, 0, sizeof(buf));
  v5 = [a3 CGImage];
  ColorSpace = CGImageGetColorSpace(v5);
  v7 = CGColorSpaceRetain(ColorSpace);
  *&format.renderingIntent = 0;
  format.bitsPerComponent = CGImageGetBitsPerComponent(v5);
  BitsPerComponent = CGImageGetBitsPerComponent(v5);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
  if (CGImageGetAlphaInfo(v5))
  {
    v10 = NumberOfComponents + 1;
  }

  else
  {
    v10 = NumberOfComponents;
  }

  format.bitsPerPixel = v10 * BitsPerComponent;
  format.colorSpace = v7;
  format.bitmapInfo = CGImageGetBitmapInfo(v5);
  *&format.version = 0uLL;
  if (vImageBuffer_InitWithCGImage(&buf, &format, 0, v5, 0))
  {
    free(buf.data);
    v11 = 0;
  }

  else
  {
    BytesPerRow = CGImageGetBytesPerRow(v5);
    Height = CGImageGetHeight(v5);
    v14 = malloc_type_malloc(Height * BytesPerRow, 0x60346CC6uLL);
    dest.data = v14;
    dest.height = CGImageGetHeight(v5);
    dest.width = CGImageGetWidth(v5);
    dest.rowBytes = CGImageGetBytesPerRow(v5);
    *&v20.renderingIntent = 0;
    error = vImageBoxConvolve_ARGB8888(&buf, &dest, 0, 0, 0, (a4 * 12.0) + 1, (a4 * 12.0) + 1, 0, 8u);
    v20.bitsPerComponent = CGImageGetBitsPerComponent(v5);
    v15 = CGImageGetBitsPerComponent(v5);
    v16 = CGColorSpaceGetNumberOfComponents(v7);
    if (CGImageGetAlphaInfo(v5))
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v16;
    }

    v20.bitsPerPixel = v17 * v15;
    v20.colorSpace = v7;
    v20.bitmapInfo = CGImageGetBitmapInfo(v5);
    *&v20.version = 0uLL;
    v18 = vImageCreateCGImageFromBuffer(&dest, &v20, 0, 0, 0, &error);
    CGColorSpaceRelease(v7);
    v11 = [UIImage imageWithCGImage:v18];
    CGImageRelease(v18);
    free(buf.data);
    free(v14);
  }

  return v11;
}

- (id)_maps_scaleToFillRoundedImage:(id)a3 size:(double)a4 scale:(double)a5
{
  v7 = a3;
  [v7 size];
  v9 = v8;
  [v7 size];
  v11 = a4 / fmin(v9, v10);
  v12 = v11 * v10;
  v13 = v11 * v9;
  v14 = (a4 - v11 * v10) * 0.5;
  v21.width = a4;
  v21.height = a4;
  UIGraphicsBeginImageContextWithOptions(v21, 0, a5);
  CurrentContext = UIGraphicsGetCurrentContext();
  v16 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, a4, a4, 7.19999981];
  v17 = [v16 CGPath];

  CGContextSaveGState(CurrentContext);
  CGContextAddPath(CurrentContext, v17);
  CGContextClip(CurrentContext);
  CGContextClosePath(CurrentContext);
  [v7 drawInRect:{(a4 - v13) * 0.5, v14, v13, v12}];

  CGContextRestoreGState(CurrentContext);
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (id)_maps_scaleToFill:(id)a3 size:(double)a4 scale:(double)a5
{
  v7 = a3;
  [v7 size];
  v9 = v8;
  [v7 size];
  v11 = a4 / fmin(v9, v10);
  v12 = v11 * v10;
  v13 = v11 * v9;
  v14 = (a4 - v11 * v10) * 0.5;
  v18.width = a4;
  v18.height = a4;
  UIGraphicsBeginImageContextWithOptions(v18, 0, a5);
  [v7 drawInRect:{(a4 - v13) * 0.5, v14, v13, v12}];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)_maps_composedImageScale:(double)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIImage *)self _maps_scaleToFillRoundedImage:self size:64.0 scale:a3];
  v8 = [(UIImage *)self _maps_scaleToFill:self size:61.0 scale:a3];
  v9 = [(UIImage *)self _maps_blurredImage:v8 scale:a3];
  v10 = [(UIImage *)self _maps_scaleToFillRoundedImage:v9 size:61.0 scale:a3];

  if (v10)
  {
    v20.width = 72.0;
    v20.height = 72.0;
    UIGraphicsBeginImageContextWithOptions(v20, 0, a3);
    CurrentContext = UIGraphicsGetCurrentContext();
    if (v4)
    {
      v12 = 11.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = 5.0;
    if (v4)
    {
      v13 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v14 = 8.0;
    }

    v15 = [UIBezierPath bezierPathWithRoundedRect:v13 cornerRadius:5.0, 67.0, 67.0, 9.60000038];
    v16 = [v15 CGPath];

    CGContextSaveGState(CurrentContext);
    CGContextBeginPath(CurrentContext);
    v21.origin.y = 0.0;
    v21.origin.x = v12;
    v21.size.width = 61.0;
    v21.size.height = 61.0;
    CGContextAddRect(CurrentContext, v21);
    CGContextAddPath(CurrentContext, v16);
    CGContextEOClip(CurrentContext);
    [v10 drawInRect:0 blendMode:v12 alpha:{0.0, 61.0, 61.0, 0.649999976}];
    CGContextRestoreGState(CurrentContext);
    [v7 drawInRect:{v14, 8.0, 64.0, 64.0}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)maps_blurredImageScale:(double)a3 isRTL:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [objc_opt_class() _imageProcessingQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10097D610;
  v11[3] = &unk_101630278;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 addOperationWithBlock:v11];
}

+ (CGRect)maps_collectionGlyphFractionalRectWithRTL:(BOOL)a3
{
  v3 = 0.111111112;
  v4 = 0.0;
  if (!a3)
  {
    v4 = 0.111111112;
  }

  v5 = 0.888888896;
  v6 = 0.888888896;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v3;
  result.origin.x = v4;
  return result;
}

+ (id)_imageProcessingQueue
{
  if (qword_10195DEB8 != -1)
  {
    dispatch_once(&qword_10195DEB8, &stru_101630250);
  }

  v3 = qword_10195DEB0;

  return v3;
}

+ (id)maps_filledImageWithColor:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [v6 setScale:a4];
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:v6 format:{72.0, 72.0}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10097D864;
  v11[3] = &unk_101650960;
  v12 = v5;
  v8 = v5;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

+ (id)maps_emptyImageScale:(double)a3
{
  v8.width = 72.0;
  v8.height = 72.0;
  UIGraphicsBeginImageContextWithOptions(v8, 1, a3);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 72.0;
  v9.size.height = 72.0;
  CGContextStrokeRect(CurrentContext, v9);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

+ (double)_maps_minSideLengthForShieldSize:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 7)
  {
    return dbl_1012155A8[a3];
  }

  return result;
}

+ (id)_maps_maneuverImageForTransitArrivalInfo:(id)a3 shieldSize:(int64_t)a4 forDarkBackground:(BOOL)a5
{
  v8 = a3;
  v9 = [[GuidanceManeuverView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [SignStyle arrowMetricsForStyle:0];
  memcpy(__dst, __src, sizeof(__dst));
  [(GuidanceManeuverView *)v9 setArrowMetrics:__dst];
  [SignStyle junctionArrowMetricsForStyle:0];
  memcpy(__dst, v20, sizeof(__dst));
  [(GuidanceManeuverView *)v9 setJunctionArrowMetrics:__dst];
  [(GuidanceManeuverView *)v9 setFraming:1];
  if (a5)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v10 = ;
  [(GuidanceManeuverView *)v9 setArrowColor:v10];

  v11 = 18;
  if (v8)
  {
    v12 = [v8 destinationLocation];
    if (v12 == 2)
    {
      v13 = 34;
    }

    else
    {
      v13 = 18;
    }

    if (v12 == 1)
    {
      v11 = 33;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = [GuidanceManeuverArtwork artworkWithManeuver:v11];
  [(GuidanceManeuverView *)v9 setManeuverArtwork:v14];

  [(GuidanceManeuverView *)v9 intrinsicContentSize];
  [a1 _maps_minSideLengthForShieldSize:a4];
  UIRoundToViewScale();
  v16 = v15;
  UIRoundToViewScale();
  [(GuidanceManeuverView *)v9 setBounds:0.0, 0.0, v16, v17];
  v18 = [(GuidanceManeuverView *)v9 imageRepresentation];

  return v18;
}

+ (id)interSystemTransferFromHexColor:(id)a3 toHexColor:(id)a4 imageWithSize:(int64_t)a5 scale:(double)a6 darkMode:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = [MKTransitArtwork stationNodeArtworkWithHexColor:a3];
  v13 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:v11];

  v14 = [UIImage _mapkit_transitArtworkImageWithDataSource:v12 size:a5 scale:v7 nightMode:a6];
  v15 = [UIImage _mapkit_transitArtworkImageWithDataSource:v13 size:a5 scale:v7 nightMode:a6];
  v16 = [v14 CGImage];
  v17 = [v15 CGImage];
  Width = CGImageGetWidth(v16);
  v19 = CGImageGetWidth(v17);
  v20 = fmax(Width, v19);
  Height = CGImageGetHeight(v16);
  [v14 scale];
  v23 = Height + v22 * 4.0 + CGImageGetWidth(v17);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v26 = CGBitmapContextCreate(0, v20, v23, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  v34.b = 0.0;
  v34.c = 0.0;
  v34.a = 1.0;
  *&v34.d = xmmword_101212A30;
  v34.ty = v23;
  CGContextConcatCTM(v26, &v34);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v20;
  v36.size.height = v23;
  CGContextClearRect(v26, v36);
  v37.size.height = CGImageGetHeight(v16);
  v37.origin.y = 0.0;
  v37.origin.x = (v20 - Width) * 0.5;
  v37.size.width = Width;
  CGContextDrawImage(v26, v37, v16);
  v27 = (v20 - v19) * 0.5;
  v28 = CGImageGetHeight(v16);
  [v14 scale];
  v30 = v28 + v29 * 4.0;
  v38.size.height = CGImageGetHeight(v17);
  v38.origin.x = v27;
  v38.origin.y = v30;
  v38.size.width = v19;
  CGContextDrawImage(v26, v38, v17);
  Image = CGBitmapContextCreateImage(v26);
  [v14 scale];
  v32 = [UIImage imageWithCGImage:Image scale:0 orientation:?];
  CGImageRelease(Image);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v26);

  return v32;
}

+ (id)_maps_radar_symbolCircleUnfilled
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (+[NSBundle tapToRadarKit], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v4 = qword_10195EB08;
    v12 = qword_10195EB08;
    if (!qword_10195EB08)
    {
      v5 = sub_100BFC70C();
      v10[3] = dlsym(v5, "TapToRadarSymbolCircleUnfilled");
      qword_10195EB08 = v10[3];
      v4 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v4)
    {
      dlerror();
      v8 = abort_report_np();
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v6 = [UIImage imageNamed:*v4 inBundle:v3];
  }

  else
  {
    v6 = [UIImage systemImageNamed:@"ant.circle"];
  }

  return v6;
}

+ (id)_maps_radar_symbolCircleFilled
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (+[NSBundle tapToRadarKit], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v4 = qword_10195EB00;
    v12 = qword_10195EB00;
    if (!qword_10195EB00)
    {
      v5 = sub_100BFC70C();
      v10[3] = dlsym(v5, "TapToRadarSymbolCircleFilled");
      qword_10195EB00 = v10[3];
      v4 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v4)
    {
      dlerror();
      v8 = abort_report_np();
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v6 = [UIImage imageNamed:*v4 inBundle:v3];
  }

  else
  {
    v6 = [UIImage systemImageNamed:@"ant.circle.fill"];
  }

  return v6;
}

+ (id)_maps_radar_symbolUnfilled
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (+[NSBundle tapToRadarKit], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v4 = qword_10195EAF8;
    v12 = qword_10195EAF8;
    if (!qword_10195EAF8)
    {
      v5 = sub_100BFC70C();
      v10[3] = dlsym(v5, "TapToRadarSymbolUnfilled");
      qword_10195EAF8 = v10[3];
      v4 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v4)
    {
      dlerror();
      v8 = abort_report_np();
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v6 = [UIImage imageNamed:*v4 inBundle:v3];
  }

  else
  {
    v6 = [UIImage systemImageNamed:@"ant"];
  }

  return v6;
}

+ (id)_maps_radar_symbolFilled
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (+[NSBundle tapToRadarKit], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v4 = qword_10195EAE8;
    v12 = qword_10195EAE8;
    if (!qword_10195EAE8)
    {
      v5 = sub_100BFC70C();
      v10[3] = dlsym(v5, "TapToRadarSymbolFilled");
      qword_10195EAE8 = v10[3];
      v4 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v4)
    {
      dlerror();
      v8 = abort_report_np();
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v6 = [UIImage imageNamed:*v4 inBundle:v3];
  }

  else
  {
    v6 = [UIImage systemImageNamed:@"ant.fill"];
  }

  return v6;
}

+ (id)_maps_applicationIconWithBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:v3 format:2 scale:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_maps_imageWithAspectFitScalingForMaximumSize:(CGSize)a3
{
  width = a3.width;
  v4 = a3.width <= 0.00000011920929 || a3.height <= 0.00000011920929;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    height = a3.height;
    [(UIImage *)self size];
    if (v8 <= width && v9 <= height)
    {
      v5 = self;
    }

    else
    {
      v4 = v8 <= v9;
      v11 = v8 * height / v9;
      v12 = v9 * width / v8;
      if (v4)
      {
        width = v11;
      }

      else
      {
        height = v12;
      }

      [(UIImage *)self scale];
      v14 = v13;
      v17.width = width;
      v17.height = height;
      UIGraphicsBeginImageContextWithOptions(v17, 0, v14);
      [(UIImage *)self drawInRect:CGPointZero.x, CGPointZero.y, width, height];
      v5 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  return v5;
}

- (void)_enumeratePixelsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIImage *)self CGImage];
  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  v8 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v23 = v8;
  v10 = CGBitmapContextCreate(v8, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  v27.size.width = Width;
  v25 = Height;
  v27.size.height = Height;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  CGContextDrawImage(v10, v27, v5);
  CGContextRelease(v10);
  v11 = 0;
  v12 = 0;
  v26 = 0;
  do
  {
    while (1)
    {
      v13 = v11;
      v14 = qword_101212C70[v12];
      if (v14 < v25)
      {
        break;
      }

      v12 = 1;
      v11 = 1;
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v24 = v11;
    v15 = 0;
    v16 = &v23[(4 * Width + 4) * v14];
    v17 = qword_101212C70[v12];
    while (v14 >= Width)
    {
      v20 = 0;
LABEL_11:
      if ((v20 & 1) == 0)
      {
        v17 += v14;
        v16 += 4 * Width * v14;
        if (v17 < v25)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v18 = v16;
    v19 = 2 * v14;
    while (1)
    {
      v4[2](v4, v18, &v26);
      v15 = v26;
      if (v26)
      {
        break;
      }

      v18 += 4 * v14;
      v20 = v26;
      v21 = v19 >= Width;
      v19 += v14;
      if (v21)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v22 = v24 | v15;
    v11 = 1;
    v12 = 1;
  }

  while ((v22 & 1) == 0);
LABEL_16:
  free(v23);
}

- (id)_maps_mostCommonColor
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C935CC;
  v22[3] = &unk_10164FD10;
  v24 = &stru_10164FCE8;
  v3 = objc_alloc_init(NSMutableDictionary);
  v23 = v3;
  [(UIImage *)self _enumeratePixelsWithBlock:v22];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100C93690;
  v19 = sub_100C936A0;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C936A8;
  v14[3] = &unk_10164FD38;
  v14[4] = v21;
  v14[5] = &v15;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];
  v4 = [v16[5] componentsSeparatedByString:{@", "}];
  v5 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v6 = [v4 objectAtIndexedSubscript:0];
  *v5 = [v6 integerValue];

  v7 = [v4 objectAtIndexedSubscript:1];
  v5[1] = [v7 integerValue];

  v8 = [v4 objectAtIndexedSubscript:2];
  v5[2] = [v8 integerValue];

  v5[3] = 0;
  LOBYTE(v9) = *v5;
  LOBYTE(v10) = v5[1];
  LOBYTE(v11) = v5[2];
  v12 = [UIColor colorWithRed:v9 * 0.00392156863 green:v10 * 0.00392156863 blue:v11 * 0.00392156863 alpha:1.0];
  free(v5);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v21, 8);

  return v12;
}

+ (id)imageNamed:(id)a3 ofSize:(double)a4 color:(id)a5
{
  v7 = a5;
  v8 = [UIImage systemImageNamed:a3];
  v9 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:0 scale:a4];
  v10 = [v8 imageWithConfiguration:v9];

  v11 = [v10 imageWithRenderingMode:2];
  v12 = [v11 _flatImageWithColor:v7];

  v13 = [v12 imageWithRenderingMode:1];

  return v13;
}

+ (id)chargeImageOfSize:(double)a3 batteryLevel:(unint64_t)a4
{
  v6 = [VehicleBatteryView colorForBatteryLevel:a4];
  v7 = [a1 imageNamed:@"bolt.circle.fill" ofSize:v6 color:a3];

  return v7;
}

+ (id)warningImageOfSize:(double)a3
{
  v5 = +[UIColor systemYellowColor];
  v6 = [a1 imageNamed:@"exclamationmark.circle.fill" ofSize:v5 color:a3];

  return v6;
}

@end