@interface UIImage
+ (id)crl_accessibilityBoldTextAdaptiveImageNamed:(id)a3;
+ (id)crl_bidiConsciousImageNamed:(id)a3;
+ (id)crl_imageNamed:(id)a3 withPointSize:(double)a4;
+ (id)crl_imageWithColor:(id)a3 size:(CGSize)a4;
+ (id)crl_internalSystemImageNamed:(id)a3 pointSize:(double)a4;
+ (id)crl_systemImageNamed:(id)a3 withFallbackCustomImageNamed:(id)a4;
+ (id)crl_systemImageNamed:(id)a3 withFont:(id)a4;
+ (id)crl_systemImageNamed:(id)a3 withPointSize:(double)a4 weight:(int64_t)a5;
+ (id)crl_systemImageNamed:(id)a3 withPointSize:(double)a4 weight:(int64_t)a5 scale:(int64_t)a6;
+ (id)crl_templateImageWithCGPath:(CGPath *)a3 scale:(double)a4;
- (id)crl_imageWithAlpha:(double)a3 renderingMode:(int64_t)a4;
- (id)crl_imageWithRTLMirroringForcedOn:(BOOL)a3;
- (id)crl_resizableImage;
- (id)crl_tintedImageWithColor:(id)a3;
@end

@implementation UIImage

+ (id)crl_templateImageWithCGPath:(CGPath *)a3 scale:(double)a4
{
  BoundingBox = CGPathGetBoundingBox(a3);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v10 = CRLCreateRGBABitmapContext(1, BoundingBox.size.width, BoundingBox.size.height, a4);
  if (v10)
  {
    v11 = v10;
    CGContextSaveGState(v10);
    CGContextAddPath(v11, a3);
    CGContextClip(v11);
    CGContextSetRGBFillColor(v11, 1.0, 1.0, 1.0, 1.0);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGContextFillRect(v11, v18);
    CGContextRestoreGState(v11);
    Image = CGBitmapContextCreateImage(v11);
    v13 = [UIImage imageWithCGImage:Image scale:0 orientation:a4];
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

- (id)crl_imageWithAlpha:(double)a3 renderingMode:(int64_t)a4
{
  v7 = [UIGraphicsImageRenderer alloc];
  [(UIImage *)self size];
  v8 = [v7 initWithSize:?];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002488;
  v12[3] = &unk_1000A5D98;
  v12[4] = self;
  *&v12[5] = a3;
  v9 = [v8 imageWithActions:v12];
  v10 = [v9 imageWithRenderingMode:a4];

  return v10;
}

- (id)crl_tintedImageWithColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  [(UIImage *)self scale];
  v10 = v9;
  v18.width = v6;
  v18.height = v8;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v10);
  [v4 setFill];

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

+ (id)crl_imageWithColor:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002720;
  v12[3] = &unk_1000A5DC0;
  v13 = v6;
  v14 = width;
  v15 = height;
  v8 = v6;
  v9 = [v7 imageWithActions:v12];
  v10 = [v9 imageWithRenderingMode:0];

  return v10;
}

+ (id)crl_accessibilityBoldTextAdaptiveImageNamed:(id)a3
{
  v3 = a3;
  if (!UIAccessibilityIsBoldTextEnabled() || ([v3 stringByAppendingString:@"-bold"], v4 = objc_claimAutoreleasedReturnValue(), +[UIImage imageNamed:](UIImage, "imageNamed:", v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [UIImage imageNamed:v3];
  }

  return v5;
}

+ (id)crl_bidiConsciousImageNamed:(id)a3
{
  v3 = [UIImage imageNamed:a3];
  if (CRLUILayoutIsRTL())
  {
    v4 = [v3 imageWithHorizontallyFlippedOrientation];

    v3 = v4;
  }

  return v3;
}

+ (id)crl_systemImageNamed:(id)a3 withFallbackCustomImageNamed:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [UIImage systemImageNamed:v5];
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007B8C0();
    }

    v9 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007B8D4(v8, v9);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007B990();
    }

    v10 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007B9B8(v10, v8);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[UIImage(CRLAdditions) crl_systemImageNamed:withFallbackCustomImageNamed:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIImage_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:103 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];
  }

  v7 = [UIImage imageNamed:v6];
LABEL_13:

  return v7;
}

+ (id)crl_imageNamed:(id)a3 withPointSize:(double)a4
{
  v5 = a3;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:a4];
  v7 = [UIImage imageNamed:v5 inBundle:0 withConfiguration:v6];

  return v7;
}

+ (id)crl_systemImageNamed:(id)a3 withPointSize:(double)a4 weight:(int64_t)a5
{
  v7 = a3;
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:a5 weight:a4];
  v9 = [UIImage systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

+ (id)crl_systemImageNamed:(id)a3 withPointSize:(double)a4 weight:(int64_t)a5 scale:(int64_t)a6
{
  v9 = a3;
  v10 = [UIImageSymbolConfiguration configurationWithPointSize:a5 weight:a6 scale:a4];
  v11 = [UIImage systemImageNamed:v9 withConfiguration:v10];

  return v11;
}

+ (id)crl_systemImageNamed:(id)a3 withFont:(id)a4
{
  v5 = a3;
  v6 = [UIImageSymbolConfiguration configurationWithFont:a4];
  v7 = [UIImage systemImageNamed:v5 withConfiguration:v6];

  return v7;
}

- (id)crl_imageWithRTLMirroringForcedOn:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (CRLUILayoutIsRTL())
  {
    v5 = v4;
    if (![(UIImage *)v4 imageOrientation])
    {
      v5 = v4;
      if (v3)
      {
        v5 = [(UIImage *)v4 imageFlippedForRightToLeftLayoutDirection];
      }
    }

    if ([(UIImage *)v4 imageOrientation]!= 4 || v3)
    {
      v4 = v5;
    }

    else
    {
      v4 = [(UIImage *)v4 imageWithHorizontallyFlippedOrientation];
    }
  }

  return v4;
}

+ (id)crl_internalSystemImageNamed:(id)a3 pointSize:(double)a4
{
  v5 = a3;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:a4];
  v7 = [UIImage _systemImageNamed:v5 withConfiguration:v6];

  return v7;
}

@end