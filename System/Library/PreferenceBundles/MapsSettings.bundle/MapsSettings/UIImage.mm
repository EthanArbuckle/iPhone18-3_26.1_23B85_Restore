@interface UIImage
+ (id)_maps_circleImageWithDiameter:(double)diameter color:(id)color;
+ (id)_maps_imageWithColor:(id)color;
- (id)_maps_colorMonochromeImageWithColor:(id)color;
- (id)_maps_colorizedImageWithColor:(id)color;
- (id)_maps_horizontallyFlippedImage;
- (id)_maps_imageIconWithBackgroundConfiguration:(id)configuration;
- (id)_maps_imageInOrientation:(int64_t)orientation;
@end

@implementation UIImage

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
  v20 = MidX - CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidY = CGRectGetMidY(v41);
  [v14 frame];
  v22 = MidY - CGRectGetMidY(v42);
  [v9 center];
  v24 = v23 - v20;
  [v9 center];
  [v14 setCenter:{v24, v25 - v22}];
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
    v17[2] = &off_8BA38;
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

@end