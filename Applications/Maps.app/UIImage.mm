@interface UIImage
+ (CGRect)maps_collectionGlyphFractionalRectWithRTL:(BOOL)l;
+ (double)_maps_minSideLengthForShieldSize:(int64_t)size;
+ (id)_compositeImageFromImage:(id)image paddedToWidth:(double)width badge:(id)badge badgeOffset:(CGPoint)offset;
+ (id)_imageProcessingQueue;
+ (id)_mapsCar_privateSystemImageNamed:(id)named textStyle:(id)style scale:(int64_t)scale;
+ (id)_mapsCar_systemImageNamed:(id)named;
+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size;
+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight;
+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight paletteColors:(id)colors;
+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style;
+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style weight:(int64_t)weight;
+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style weight:(int64_t)weight paletteColors:(id)colors;
+ (id)_maps_applicationIconWithBundleIdentifier:(id)identifier;
+ (id)_maps_circleImageWithDiameter:(double)diameter color:(id)color;
+ (id)_maps_imageWithColor:(id)color;
+ (id)_maps_maneuverImageForTransitArrivalInfo:(id)info shieldSize:(int64_t)size forDarkBackground:(BOOL)background;
+ (id)_maps_radar_symbolCircleFilled;
+ (id)_maps_radar_symbolCircleUnfilled;
+ (id)_maps_radar_symbolFilled;
+ (id)_maps_radar_symbolUnfilled;
+ (id)chargeImageOfSize:(double)size batteryLevel:(unint64_t)level;
+ (id)imageNamed:(id)named ofSize:(double)size color:(id)color;
+ (id)interSystemTransferFromHexColor:(id)color toHexColor:(id)hexColor imageWithSize:(int64_t)size scale:(double)scale darkMode:(BOOL)mode;
+ (id)maps_emptyImageScale:(double)scale;
+ (id)maps_filledImageWithColor:(id)color scale:(double)scale;
+ (id)warningImageOfSize:(double)size;
- (CGContext)_contextWithDiameter:(double)diameter;
- (CGImage)_cgImageFromContext:(CGContext *)context toFit:(CGSize)fit;
- (id)_finaliseCircleImage:(id)image withContext:(CGContext *)context;
- (id)_maps_blurredImage:(id)image scale:(double)scale;
- (id)_maps_colorMonochromeImageWithColor:(id)color;
- (id)_maps_colorizedImageWithColor:(id)color;
- (id)_maps_composedImageScale:(double)scale isRTL:(BOOL)l;
- (id)_maps_horizontallyFlippedImage;
- (id)_maps_imageIconWithBackgroundConfiguration:(id)configuration;
- (id)_maps_imageInOrientation:(int64_t)orientation;
- (id)_maps_imageWithAspectFitScalingForMaximumSize:(CGSize)size;
- (id)_maps_invertedImage;
- (id)_maps_mostCommonColor;
- (id)_maps_scaleToFill:(id)fill size:(double)size scale:(double)scale;
- (id)_maps_scaleToFillRoundedImage:(id)image size:(double)size scale:(double)scale;
- (id)drawnInCircleWithDiameter:(double)diameter backgroundColor:(id)color;
- (id)imageScaledToSize:(CGSize)size;
- (void)_enumeratePixelsWithBlock:(id)block;
- (void)maps_blurredImageScale:(double)scale isRTL:(BOOL)l completion:(id)completion;
@end

@implementation UIImage

- (id)_maps_colorMonochromeImageWithColor:(id)color
{
  colorCopy = color;
  v5 = [CIImage imageWithCGImage:[(UIImage *)self CGImage]];
  v6 = v5;
  if (v5)
  {
    v17[0] = v5;
    v16[0] = kCIInputImageKey;
    v16[1] = kCIInputColorKey;
    v7 = [[CIColor alloc] initWithColor:colorCopy];
    v16[2] = kCIInputIntensityKey;
    v17[1] = v7;
    v17[2] = &off_1016EDCC8;
    v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v9 = [CIFilter filterWithName:@"CIColorMonochrome" withInputParameters:v8];

    outputImage = [v9 outputImage];
    if (outputImage)
    {
      v11 = [CIContext contextWithOptions:0];
      [outputImage extent];
      v12 = [v11 createCGImage:outputImage fromRect:?];
      [(UIImage *)self scale];
      selfCopy2 = [UIImage imageWithCGImage:v12 scale:[(UIImage *)self imageOrientation] orientation:v13];
      CGImageRelease(v12);
    }

    else
    {
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)_maps_imageInOrientation:(int64_t)orientation
{
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  v9 = *&CGAffineTransformIdentity.c;
  *&v22.a = *&CGAffineTransformIdentity.a;
  *&v22.c = v9;
  *&v22.tx = *&CGAffineTransformIdentity.tx;
  if (orientation <= 3)
  {
    if (orientation <= 1)
    {
      if (!orientation)
      {
        selfCopy = self;
        goto LABEL_25;
      }

      if (orientation != 1)
      {
        goto LABEL_19;
      }

      CGAffineTransformMakeTranslation(&v22, v5, v8);
      v20 = v22;
      CGAffineTransformRotate(&transform, &v20, 3.14159265);
      goto LABEL_18;
    }

    if (orientation != 2)
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

  if (orientation <= 5)
  {
    if (orientation == 4)
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

  if (orientation == 6)
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

  if (orientation == 7)
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
  selfCopy = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_25:

  return selfCopy;
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

- (id)_maps_colorizedImageWithColor:(id)color
{
  colorCopy = color;
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
  CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
  v19.origin.x = CGPointZero.x;
  v19.origin.y = y;
  v19.size.width = v7;
  v19.size.height = v9;
  CGContextFillRect(CurrentContext, v19);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationAtop);
  cGImage = [(UIImage *)self CGImage];
  v20.origin.x = CGPointZero.x;
  v20.origin.y = y;
  v20.size.width = v7;
  v20.size.height = v9;
  CGContextDrawImage(CurrentContext, v20, cGImage);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  objc_autoreleasePoolPop(v5);

  return v15;
}

- (id)_maps_imageIconWithBackgroundConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [UIView alloc];
  [configurationCopy iconSize];
  v7 = v6;
  [configurationCopy iconSize];
  v9 = [v5 initWithFrame:{0.0, 0.0, v7, v8}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  backgroundColor = [configurationCopy backgroundColor];
  [v9 setBackgroundColor:backgroundColor];

  [configurationCopy cornerRadius];
  v12 = v11;
  layer = [v9 layer];
  [layer setCornerRadius:v12];

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
  tintColor = [configurationCopy tintColor];

  [v14 setTintColor:tintColor];
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

  layer2 = [v9 layer];
  [layer2 renderInContext:UIGraphicsGetCurrentContext()];

  v35 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v35;
}

+ (id)_maps_circleImageWithDiameter:(double)diameter color:(id)color
{
  colorCopy = color;
  v11.width = diameter;
  v11.height = diameter;
  UIGraphicsBeginImageContext(v11);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = diameter;
  v12.size.height = diameter;
  CGContextFillEllipseInRect(CurrentContext, v12);
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (id)_maps_imageWithColor:(id)color
{
  colorCopy = color;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
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

+ (id)_compositeImageFromImage:(id)image paddedToWidth:(double)width badge:(id)badge badgeOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  imageCopy = image;
  badgeCopy = badge;
  [imageCopy size];
  widthCopy = width;
  if (v12 + x > width)
  {
    [imageCopy size];
    widthCopy = v14 + x;
  }

  [imageCopy size];
  v16 = v15 + y * 2.0;
  [imageCopy scale];
  v18 = v17;
  v30.width = widthCopy;
  v30.height = v16;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v18);
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  v20 = x;
  if ((IsRightToLeft & 1) == 0)
  {
    [imageCopy size];
    v22 = v21 + x;
    v20 = 0.0;
    if (v22 <= width)
    {
      [imageCopy size];
      v20 = width - (x + v23);
    }
  }

  [imageCopy drawAtPoint:{v20, y}];
  if (badgeCopy)
  {
    v24 = 0.0;
    if ((MKApplicationLayoutDirectionIsRightToLeft() & 1) == 0)
    {
      [badgeCopy size];
      v24 = widthCopy - v25;
    }

    [badgeCopy size];
    [badgeCopy drawAtPoint:{v24, v16 - v26}];
  }

  v27 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v27;
}

+ (id)_mapsCar_privateSystemImageNamed:(id)named textStyle:(id)style scale:(int64_t)scale
{
  namedCopy = named;
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  v8 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:scale];
  v9 = [UIImage _systemImageNamed:namedCopy withConfiguration:v8];

  return v9;
}

+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style weight:(int64_t)weight paletteColors:(id)colors
{
  colorsCopy = colors;
  styleCopy = style;
  namedCopy = named;
  v12 = [UIFont _mapsCar_fontForTextStyle:styleCopy weight:UIFontWeightForImageSymbolWeight(weight)];

  v13 = [UIImageSymbolConfiguration configurationWithFont:v12];
  v14 = [UIImageSymbolConfiguration configurationWithPaletteColors:colorsCopy];

  v15 = [v13 configurationByApplyingConfiguration:v14];
  v16 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v16 screenTraitCollection];
  v18 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v19 = [v18 imageByApplyingSymbolConfiguration:v15];
  v20 = [v19 imageWithRenderingMode:0];

  return v20;
}

+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style weight:(int64_t)weight
{
  styleCopy = style;
  namedCopy = named;
  v9 = [UIFont _mapsCar_fontForTextStyle:styleCopy weight:UIFontWeightForImageSymbolWeight(weight)];

  v10 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v10 screenTraitCollection];
  v12 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v13 = [UIImageSymbolConfiguration configurationWithFont:v9];
  v14 = [v12 imageByApplyingSymbolConfiguration:v13];

  return v14;
}

+ (id)_mapsCar_systemImageNamed:(id)named textStyle:(id)style
{
  styleCopy = style;
  namedCopy = named;
  v7 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v7 screenTraitCollection];
  v9 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v10 = [UIImageSymbolConfiguration configurationWithTextStyle:styleCopy];

  v11 = [v9 imageByApplyingSymbolConfiguration:v10];

  return v11;
}

+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight paletteColors:(id)colors
{
  colorsCopy = colors;
  namedCopy = named;
  v10 = [UIImageSymbolConfiguration configurationWithPointSize:size];
  v11 = [UIImageSymbolConfiguration configurationWithPaletteColors:colorsCopy];

  v12 = [v10 configurationByApplyingConfiguration:v11];
  v13 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v13 screenTraitCollection];
  v15 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v16 = [v15 imageByApplyingSymbolConfiguration:v12];
  v17 = [v16 imageWithRenderingMode:0];

  return v17;
}

+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight
{
  namedCopy = named;
  v8 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v8 screenTraitCollection];
  v10 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v11 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:size];
  v12 = [v10 imageByApplyingSymbolConfiguration:v11];

  return v12;
}

+ (id)_mapsCar_systemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v6 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v6 screenTraitCollection];
  v8 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  v9 = [UIImageSymbolConfiguration configurationWithPointSize:size];
  v10 = [v8 imageByApplyingSymbolConfiguration:v9];

  return v10;
}

+ (id)_mapsCar_systemImageNamed:(id)named
{
  namedCopy = named;
  v4 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v4 screenTraitCollection];
  v6 = [UIImage systemImageNamed:namedCopy compatibleWithTraitCollection:screenTraitCollection];

  return v6;
}

- (id)imageScaledToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
  [(UIImage *)self drawInRect:0.0, 0.0, width, height];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

- (id)_finaliseCircleImage:(id)image withContext:(CGContext *)context
{
  CGContextRestoreGState(context);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (CGImage)_cgImageFromContext:(CGContext *)context toFit:(CGSize)fit
{
  CGContextTranslateCTM(context, 0.0, fit.height);
  CGContextScaleCTM(context, 1.0, -1.0);
  selfCopy = self;

  return [(UIImage *)selfCopy CGImage];
}

- (CGContext)_contextWithDiameter:(double)diameter
{
  UIGraphicsBeginImageContextWithOptions(*&diameter, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  return CurrentContext;
}

- (id)drawnInCircleWithDiameter:(double)diameter backgroundColor:(id)color
{
  colorCopy = color;
  v7 = [(UIImage *)self _contextWithDiameter:diameter];
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(v7, cGColor);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = diameter;
  v25.size.height = diameter;
  CGContextFillEllipseInRect(v7, v25);
  v9 = +[UIColor whiteColor];
  [v9 setFill];

  [(UIImage *)self size];
  v11 = v10;
  [(UIImage *)self size];
  v13 = v12;
  [(UIImage *)self size];
  diameterCopy = diameter;
  if (v15 <= diameter)
  {
    [(UIImage *)self size];
    diameterCopy = v16;
  }

  [(UIImage *)self size];
  diameterCopy2 = diameter;
  if (v18 <= diameter)
  {
    [(UIImage *)self size];
    diameterCopy2 = v19;
  }

  v20 = (diameter - v13) * 0.5;
  v21 = (diameter - v11) * -0.5;
  diameterCopy2 = [(UIImage *)self _cgImageFromContext:v7 toFit:diameterCopy, diameterCopy2];
  v26.origin.x = v20;
  v26.origin.y = v21;
  v26.size.width = diameterCopy;
  v26.size.height = diameterCopy2;
  CGContextClipToMask(v7, v26, diameterCopy2);
  v27.origin.x = v20;
  v27.origin.y = v21;
  v27.size.width = diameterCopy;
  v27.size.height = diameterCopy2;
  CGContextFillRect(v7, v27);

  return [(UIImage *)self _finaliseCircleImage:0 withContext:v7];
}

- (id)_maps_blurredImage:(id)image scale:(double)scale
{
  memset(&buf, 0, sizeof(buf));
  cGImage = [image CGImage];
  ColorSpace = CGImageGetColorSpace(cGImage);
  v7 = CGColorSpaceRetain(ColorSpace);
  *&format.renderingIntent = 0;
  format.bitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
  if (CGImageGetAlphaInfo(cGImage))
  {
    v10 = NumberOfComponents + 1;
  }

  else
  {
    v10 = NumberOfComponents;
  }

  format.bitsPerPixel = v10 * BitsPerComponent;
  format.colorSpace = v7;
  format.bitmapInfo = CGImageGetBitmapInfo(cGImage);
  *&format.version = 0uLL;
  if (vImageBuffer_InitWithCGImage(&buf, &format, 0, cGImage, 0))
  {
    free(buf.data);
    v11 = 0;
  }

  else
  {
    BytesPerRow = CGImageGetBytesPerRow(cGImage);
    Height = CGImageGetHeight(cGImage);
    v14 = malloc_type_malloc(Height * BytesPerRow, 0x60346CC6uLL);
    dest.data = v14;
    dest.height = CGImageGetHeight(cGImage);
    dest.width = CGImageGetWidth(cGImage);
    dest.rowBytes = CGImageGetBytesPerRow(cGImage);
    *&v20.renderingIntent = 0;
    error = vImageBoxConvolve_ARGB8888(&buf, &dest, 0, 0, 0, (scale * 12.0) + 1, (scale * 12.0) + 1, 0, 8u);
    v20.bitsPerComponent = CGImageGetBitsPerComponent(cGImage);
    v15 = CGImageGetBitsPerComponent(cGImage);
    v16 = CGColorSpaceGetNumberOfComponents(v7);
    if (CGImageGetAlphaInfo(cGImage))
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v16;
    }

    v20.bitsPerPixel = v17 * v15;
    v20.colorSpace = v7;
    v20.bitmapInfo = CGImageGetBitmapInfo(cGImage);
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

- (id)_maps_scaleToFillRoundedImage:(id)image size:(double)size scale:(double)scale
{
  imageCopy = image;
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  v11 = size / fmin(v9, v10);
  v12 = v11 * v10;
  v13 = v11 * v9;
  v14 = (size - v11 * v10) * 0.5;
  v21.width = size;
  v21.height = size;
  UIGraphicsBeginImageContextWithOptions(v21, 0, scale);
  CurrentContext = UIGraphicsGetCurrentContext();
  v16 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, size, size, 7.19999981];
  cGPath = [v16 CGPath];

  CGContextSaveGState(CurrentContext);
  CGContextAddPath(CurrentContext, cGPath);
  CGContextClip(CurrentContext);
  CGContextClosePath(CurrentContext);
  [imageCopy drawInRect:{(size - v13) * 0.5, v14, v13, v12}];

  CGContextRestoreGState(CurrentContext);
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (id)_maps_scaleToFill:(id)fill size:(double)size scale:(double)scale
{
  fillCopy = fill;
  [fillCopy size];
  v9 = v8;
  [fillCopy size];
  v11 = size / fmin(v9, v10);
  v12 = v11 * v10;
  v13 = v11 * v9;
  v14 = (size - v11 * v10) * 0.5;
  v18.width = size;
  v18.height = size;
  UIGraphicsBeginImageContextWithOptions(v18, 0, scale);
  [fillCopy drawInRect:{(size - v13) * 0.5, v14, v13, v12}];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)_maps_composedImageScale:(double)scale isRTL:(BOOL)l
{
  lCopy = l;
  v7 = [(UIImage *)self _maps_scaleToFillRoundedImage:self size:64.0 scale:scale];
  v8 = [(UIImage *)self _maps_scaleToFill:self size:61.0 scale:scale];
  v9 = [(UIImage *)self _maps_blurredImage:v8 scale:scale];
  v10 = [(UIImage *)self _maps_scaleToFillRoundedImage:v9 size:61.0 scale:scale];

  if (v10)
  {
    v20.width = 72.0;
    v20.height = 72.0;
    UIGraphicsBeginImageContextWithOptions(v20, 0, scale);
    CurrentContext = UIGraphicsGetCurrentContext();
    if (lCopy)
    {
      v12 = 11.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = 5.0;
    if (lCopy)
    {
      v13 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v14 = 8.0;
    }

    v15 = [UIBezierPath bezierPathWithRoundedRect:v13 cornerRadius:5.0, 67.0, 67.0, 9.60000038];
    cGPath = [v15 CGPath];

    CGContextSaveGState(CurrentContext);
    CGContextBeginPath(CurrentContext);
    v21.origin.y = 0.0;
    v21.origin.x = v12;
    v21.size.width = 61.0;
    v21.size.height = 61.0;
    CGContextAddRect(CurrentContext, v21);
    CGContextAddPath(CurrentContext, cGPath);
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

- (void)maps_blurredImageScale:(double)scale isRTL:(BOOL)l completion:(id)completion
{
  completionCopy = completion;
  _imageProcessingQueue = [objc_opt_class() _imageProcessingQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10097D610;
  v11[3] = &unk_101630278;
  scaleCopy = scale;
  lCopy = l;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_imageProcessingQueue addOperationWithBlock:v11];
}

+ (CGRect)maps_collectionGlyphFractionalRectWithRTL:(BOOL)l
{
  v3 = 0.111111112;
  v4 = 0.0;
  if (!l)
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

+ (id)maps_filledImageWithColor:(id)color scale:(double)scale
{
  colorCopy = color;
  v6 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [v6 setScale:scale];
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:v6 format:{72.0, 72.0}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10097D864;
  v11[3] = &unk_101650960;
  v12 = colorCopy;
  v8 = colorCopy;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

+ (id)maps_emptyImageScale:(double)scale
{
  v8.width = 72.0;
  v8.height = 72.0;
  UIGraphicsBeginImageContextWithOptions(v8, 1, scale);
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

+ (double)_maps_minSideLengthForShieldSize:(int64_t)size
{
  result = 0.0;
  if (size <= 7)
  {
    return dbl_1012155A8[size];
  }

  return result;
}

+ (id)_maps_maneuverImageForTransitArrivalInfo:(id)info shieldSize:(int64_t)size forDarkBackground:(BOOL)background
{
  infoCopy = info;
  v9 = [[GuidanceManeuverView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [SignStyle arrowMetricsForStyle:0];
  memcpy(__dst, __src, sizeof(__dst));
  [(GuidanceManeuverView *)v9 setArrowMetrics:__dst];
  [SignStyle junctionArrowMetricsForStyle:0];
  memcpy(__dst, v20, sizeof(__dst));
  [(GuidanceManeuverView *)v9 setJunctionArrowMetrics:__dst];
  [(GuidanceManeuverView *)v9 setFraming:1];
  if (background)
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
  if (infoCopy)
  {
    destinationLocation = [infoCopy destinationLocation];
    if (destinationLocation == 2)
    {
      v13 = 34;
    }

    else
    {
      v13 = 18;
    }

    if (destinationLocation == 1)
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
  [self _maps_minSideLengthForShieldSize:size];
  UIRoundToViewScale();
  v16 = v15;
  UIRoundToViewScale();
  [(GuidanceManeuverView *)v9 setBounds:0.0, 0.0, v16, v17];
  imageRepresentation = [(GuidanceManeuverView *)v9 imageRepresentation];

  return imageRepresentation;
}

+ (id)interSystemTransferFromHexColor:(id)color toHexColor:(id)hexColor imageWithSize:(int64_t)size scale:(double)scale darkMode:(BOOL)mode
{
  modeCopy = mode;
  hexColorCopy = hexColor;
  v12 = [MKTransitArtwork stationNodeArtworkWithHexColor:color];
  v13 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:hexColorCopy];

  v14 = [UIImage _mapkit_transitArtworkImageWithDataSource:v12 size:size scale:modeCopy nightMode:scale];
  v15 = [UIImage _mapkit_transitArtworkImageWithDataSource:v13 size:size scale:modeCopy nightMode:scale];
  cGImage = [v14 CGImage];
  cGImage2 = [v15 CGImage];
  Width = CGImageGetWidth(cGImage);
  v19 = CGImageGetWidth(cGImage2);
  v20 = fmax(Width, v19);
  Height = CGImageGetHeight(cGImage);
  [v14 scale];
  v23 = Height + v22 * 4.0 + CGImageGetWidth(cGImage2);
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
  v37.size.height = CGImageGetHeight(cGImage);
  v37.origin.y = 0.0;
  v37.origin.x = (v20 - Width) * 0.5;
  v37.size.width = Width;
  CGContextDrawImage(v26, v37, cGImage);
  v27 = (v20 - v19) * 0.5;
  v28 = CGImageGetHeight(cGImage);
  [v14 scale];
  v30 = v28 + v29 * 4.0;
  v38.size.height = CGImageGetHeight(cGImage2);
  v38.origin.x = v27;
  v38.origin.y = v30;
  v38.size.width = v19;
  CGContextDrawImage(v26, v38, cGImage2);
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

+ (id)_maps_applicationIconWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v5 = [UIImage _applicationIconImageForBundleIdentifier:identifierCopy format:2 scale:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_maps_imageWithAspectFitScalingForMaximumSize:(CGSize)size
{
  width = size.width;
  v4 = size.width <= 0.00000011920929 || size.height <= 0.00000011920929;
  if (v4)
  {
    selfCopy = 0;
  }

  else
  {
    height = size.height;
    [(UIImage *)self size];
    if (v8 <= width && v9 <= height)
    {
      selfCopy = self;
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
      selfCopy = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  return selfCopy;
}

- (void)_enumeratePixelsWithBlock:(id)block
{
  blockCopy = block;
  cGImage = [(UIImage *)self CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
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
  CGContextDrawImage(v10, v27, cGImage);
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
      blockCopy[2](blockCopy, v18, &v26);
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

+ (id)imageNamed:(id)named ofSize:(double)size color:(id)color
{
  colorCopy = color;
  v8 = [UIImage systemImageNamed:named];
  v9 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:0 scale:size];
  v10 = [v8 imageWithConfiguration:v9];

  v11 = [v10 imageWithRenderingMode:2];
  v12 = [v11 _flatImageWithColor:colorCopy];

  v13 = [v12 imageWithRenderingMode:1];

  return v13;
}

+ (id)chargeImageOfSize:(double)size batteryLevel:(unint64_t)level
{
  v6 = [VehicleBatteryView colorForBatteryLevel:level];
  v7 = [self imageNamed:@"bolt.circle.fill" ofSize:v6 color:size];

  return v7;
}

+ (id)warningImageOfSize:(double)size
{
  v5 = +[UIColor systemYellowColor];
  v6 = [self imageNamed:@"exclamationmark.circle.fill" ofSize:v5 color:size];

  return v6;
}

@end