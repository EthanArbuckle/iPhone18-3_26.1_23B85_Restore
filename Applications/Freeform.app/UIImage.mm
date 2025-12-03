@interface UIImage
+ (id)crl_accessibilityBoldTextAdaptiveImageNamed:(id)named;
+ (id)crl_bidiConsciousImageNamed:(id)named;
+ (id)crl_imageNamed:(id)named withPointSize:(double)size;
+ (id)crl_imageWithColor:(id)color size:(CGSize)size;
+ (id)crl_internalSystemImageNamed:(id)named pointSize:(double)size;
+ (id)crl_systemImageNamed:(id)named withFallbackCustomImageNamed:(id)imageNamed;
+ (id)crl_systemImageNamed:(id)named withFont:(id)font;
+ (id)crl_systemImageNamed:(id)named withPointSize:(double)size weight:(int64_t)weight;
+ (id)crl_systemImageNamed:(id)named withPointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale;
+ (id)crl_templateImageWithCGPath:(CGPath *)path scale:(double)scale;
- (id)crl_imageWithAlpha:(double)alpha renderingMode:(int64_t)mode;
- (id)crl_imageWithRTLMirroringForcedOn:(BOOL)on;
- (id)crl_resizableImage;
- (id)crl_tintedImageWithColor:(id)color;
@end

@implementation UIImage

+ (id)crl_templateImageWithCGPath:(CGPath *)path scale:(double)scale
{
  BoundingBox = CGPathGetBoundingBox(path);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v10 = sub_1000CDA34(1, BoundingBox.size.width, BoundingBox.size.height, scale);
  if (v10)
  {
    v11 = v10;
    CGContextSaveGState(v10);
    CGContextAddPath(v11, path);
    CGContextClip(v11);
    CGContextSetRGBFillColor(v11, 1.0, 1.0, 1.0, 1.0);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGContextFillRect(v11, v18);
    CGContextRestoreGState(v11);
    Image = CGBitmapContextCreateImage(v11);
    v13 = [UIImage imageWithCGImage:Image scale:0 orientation:scale];
    v14 = [v13 imageWithRenderingMode:2];

    CGImageRelease(Image);
    CGContextRelease(v11);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)crl_imageWithAlpha:(double)alpha renderingMode:(int64_t)mode
{
  v7 = [UIGraphicsImageRenderer alloc];
  [(UIImage *)self size];
  v8 = [v7 initWithSize:?];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004DCC38;
  v12[3] = &unk_101869590;
  v12[4] = self;
  *&v12[5] = alpha;
  v9 = [v8 imageWithActions:v12];
  v10 = [v9 imageWithRenderingMode:mode];

  return v10;
}

- (id)crl_tintedImageWithColor:(id)color
{
  colorCopy = color;
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  [(UIImage *)self scale];
  v10 = v9;
  v18.width = v6;
  v18.height = v8;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v10);
  [colorCopy setFill];

  [(UIImage *)self size];
  v12 = v11;
  [(UIImage *)self size];
  v14 = v13;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v12;
  v19.size.height = v14;
  UIRectFill(v19);
  [(UIImage *)self drawInRect:22 blendMode:0.0 alpha:0.0, v12, v14, 1.0];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)crl_resizableImage
{
  [(UIImage *)self size];

  return [(UIImage *)self resizableImageWithCapInsets:?];
}

+ (id)crl_imageWithColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004DCED0;
  v12[3] = &unk_1018695B8;
  v13 = colorCopy;
  v14 = width;
  v15 = height;
  v8 = colorCopy;
  v9 = [v7 imageWithActions:v12];
  v10 = [v9 imageWithRenderingMode:0];

  return v10;
}

+ (id)crl_accessibilityBoldTextAdaptiveImageNamed:(id)named
{
  namedCopy = named;
  if (!UIAccessibilityIsBoldTextEnabled() || ([namedCopy stringByAppendingString:@"-bold"], v4 = objc_claimAutoreleasedReturnValue(), +[UIImage imageNamed:](UIImage, "imageNamed:", v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [UIImage imageNamed:namedCopy];
  }

  return v5;
}

+ (id)crl_bidiConsciousImageNamed:(id)named
{
  v3 = [UIImage imageNamed:named];
  if (sub_1004A48FC())
  {
    imageWithHorizontallyFlippedOrientation = [v3 imageWithHorizontallyFlippedOrientation];

    v3 = imageWithHorizontallyFlippedOrientation;
  }

  return v3;
}

+ (id)crl_systemImageNamed:(id)named withFallbackCustomImageNamed:(id)imageNamed
{
  namedCopy = named;
  imageNamedCopy = imageNamed;
  if (namedCopy)
  {
    v7 = [UIImage systemImageNamed:namedCopy];
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385298();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013852AC(v8, v9);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385368();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v10, v8);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIImage(CRLAdditions) crl_systemImageNamed:withFallbackCustomImageNamed:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIImage_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:103 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];
  }

  v7 = [UIImage imageNamed:imageNamedCopy];
LABEL_13:

  return v7;
}

+ (id)crl_imageNamed:(id)named withPointSize:(double)size
{
  namedCopy = named;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:size];
  v7 = [UIImage imageNamed:namedCopy inBundle:0 withConfiguration:v6];

  return v7;
}

+ (id)crl_systemImageNamed:(id)named withPointSize:(double)size weight:(int64_t)weight
{
  namedCopy = named;
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:size];
  v9 = [UIImage systemImageNamed:namedCopy withConfiguration:v8];

  return v9;
}

+ (id)crl_systemImageNamed:(id)named withPointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale
{
  namedCopy = named;
  v10 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:scale scale:size];
  v11 = [UIImage systemImageNamed:namedCopy withConfiguration:v10];

  return v11;
}

+ (id)crl_systemImageNamed:(id)named withFont:(id)font
{
  namedCopy = named;
  v6 = [UIImageSymbolConfiguration configurationWithFont:font];
  v7 = [UIImage systemImageNamed:namedCopy withConfiguration:v6];

  return v7;
}

- (id)crl_imageWithRTLMirroringForcedOn:(BOOL)on
{
  onCopy = on;
  selfCopy = self;
  if (sub_1004A48FC())
  {
    imageFlippedForRightToLeftLayoutDirection = selfCopy;
    if (![(UIImage *)selfCopy imageOrientation])
    {
      imageFlippedForRightToLeftLayoutDirection = selfCopy;
      if (onCopy)
      {
        imageFlippedForRightToLeftLayoutDirection = [(UIImage *)selfCopy imageFlippedForRightToLeftLayoutDirection];
      }
    }

    if ([(UIImage *)selfCopy imageOrientation]!= 4 || onCopy)
    {
      selfCopy = imageFlippedForRightToLeftLayoutDirection;
    }

    else
    {
      selfCopy = [(UIImage *)selfCopy imageWithHorizontallyFlippedOrientation];
    }
  }

  return selfCopy;
}

+ (id)crl_internalSystemImageNamed:(id)named pointSize:(double)size
{
  namedCopy = named;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:size];
  v7 = [UIImage _systemImageNamed:namedCopy withConfiguration:v6];

  return v7;
}

@end