@interface AKAnnotationImageHelper
+ (CGImage)createImageOfAnnotation:(id)a3 withScale:(double)a4;
+ (id)_imageOfSize:(CGSize)a3 forAnnotation:(id)a4 strokeWidth:(double)a5 withFillColor:(BOOL)a6;
+ (id)imageForShapeTag:(int64_t)a3;
+ (id)imageOfSize:(CGSize)a3 forAnnotation:(id)a4;
+ (id)imageOfSize:(CGSize)a3 forAnnotationTag:(int64_t)a4;
+ (id)imageOfSize:(CGSize)a3 forPath:(id)a4;
+ (id)imageOfSize:(CGSize)a3 withFillColor:(id)a4 forSignature:(id)a5;
+ (void)_drawFilledShapeImageForAnnotation:(id)a3 inRect:(CGRect)a4 inContext:(CGContext *)a5;
+ (void)_drawImageForPath:(id)a3 inRect:(CGRect)a4 inContext:(CGContext *)a5;
+ (void)_drawImageForSignature:(id)a3 withFillColor:(id)a4 scale:(double)a5 pathOffset:(CGPoint)a6 inContext:(CGContext *)a7;
@end

@implementation AKAnnotationImageHelper

+ (id)imageForShapeTag:(int64_t)a3
{
  if ((a3 - 764000) > 0x15)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278C7C000[a3 - 764000];
  }

  v4 = MEMORY[0x277D755B8];
  v5 = +[AKController akBundle];
  v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)imageOfSize:(CGSize)a3 forAnnotationTag:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [MEMORY[0x277D75348] blackColor];
  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = 0;
  if (a4 > 764004)
  {
    if (a4 > 764007)
    {
      if (a4 == 764008)
      {
        v9 = objc_opt_new();
        [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
        [(AKShapeAnnotation *)v9 setFillColor:v8];
        [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
        [(AKRectangularShapeAnnotation *)v9 setStrokeColor:v7];
        [(AKOvalAnnotation *)v9 setPointCount:5];
        [AKStarAnnotationRenderer defaultInnerRadiusForStar:v9];
        [(AKOvalAnnotation *)v9 setInnerRadiusFactor:?];
        goto LABEL_18;
      }

      if (a4 != 765110)
      {
        goto LABEL_18;
      }

      v12 = 3;
    }

    else
    {
      if (a4 != 764005)
      {
        if (a4 == 764007)
        {
          v9 = objc_opt_new();
          [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
          [(AKRectangularShapeAnnotation *)v9 rectangle];
          v11 = CGRectGetMinX(v19) + -10.0;
          [(AKRectangularShapeAnnotation *)v9 rectangle];
          [(AKOvalAnnotation *)v9 setPointyBitPoint:v11, CGRectGetMinY(v20) + -10.0];
          [(AKShapeAnnotation *)v9 setFillColor:v8];
          [(AKRectangularShapeAnnotation *)v9 setStrokeColor:v7];
          [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
          [(AKOvalAnnotation *)v9 setPointyBitBaseWidthAngle:25.0];
        }

        goto LABEL_18;
      }

      v12 = 2;
    }

LABEL_17:
    v9 = objc_opt_new();
    [(AKOvalAnnotation *)v9 setArrowHeadStyle:v12];
    [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
    [(AKRectangularShapeAnnotation *)v9 setStrokeColor:v7];
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = width;
    v21.size.height = height;
    MinX = CGRectGetMinX(v21);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = width;
    v22.size.height = height;
    [(AKOvalAnnotation *)v9 setStartPoint:MinX, CGRectGetMinY(v22)];
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = width;
    v23.size.height = height;
    MidX = CGRectGetMidX(v23);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = width;
    v24.size.height = height;
    [(AKOvalAnnotation *)v9 setMidPoint:MidX, CGRectGetMidY(v24)];
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = width;
    v25.size.height = height;
    MaxX = CGRectGetMaxX(v25);
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = width;
    v26.size.height = height;
    [(AKOvalAnnotation *)v9 setEndPoint:MaxX, CGRectGetMaxY(v26)];
    goto LABEL_18;
  }

  if (a4 > 764002)
  {
    v12 = a4 != 764003;
    goto LABEL_17;
  }

  if (a4 == 764000)
  {
    v10 = objc_opt_new();
    v9 = v10;
  }

  else
  {
    if (a4 != 764002)
    {
      goto LABEL_18;
    }

    v9 = objc_alloc_init(AKOvalAnnotation);
    [(AKStrokedAnnotation *)v9 setHasShadow:0];
    v10 = v9;
  }

  [(AKShapeAnnotation *)v10 setFillColor:v8];
  [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
  [(AKRectangularShapeAnnotation *)v9 setStrokeColor:v7];
  [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
LABEL_18:
  [(AKAnnotation *)v9 setOriginalModelBaseScaleFactor:1.0];
  [(AKAnnotation *)v9 setOriginalExifOrientation:1];
  v16 = [objc_opt_class() _imageOfSize:v9 forAnnotation:0 strokeWidth:width withFillColor:{height, 1.5}];

  return v16;
}

+ (id)imageOfSize:(CGSize)a3 forAnnotation:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [objc_opt_class() _imageOfSize:v6 forAnnotation:1 strokeWidth:width withFillColor:{height, 1.0}];

  return v7;
}

+ (id)_imageOfSize:(CGSize)a3 forAnnotation:(id)a4 strokeWidth:(double)a5 withFillColor:(BOOL)a6
{
  v6 = a6;
  height = a3.height;
  width = a3.width;
  v10 = a4;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 setHasShadow:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setStrokeWidth:a5];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setDashed:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [MEMORY[0x277D75348] blackColor];
      [v10 performSelector:sel_setStrokeColor_ withObject:v11];
    }

    if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v12 = [MEMORY[0x277D75348] akColorWithWhite:0.2 alpha:0.2];
      [v10 performSelector:sel_setFillColor_ withObject:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [objc_alloc(MEMORY[0x277D742D8]) initWithString:&stru_28519E870];
      [v10 performSelector:sel_setAnnotationText_ withObject:v13];
    }
  }

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  v16 = v15;
  v21.width = width;
  v21.height = height;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v16);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [objc_opt_class() _drawFilledShapeImageForAnnotation:v10 inRect:CurrentContext inContext:{0.0, 0.0, width, height}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (void)_drawFilledShapeImageForAnnotation:(id)a3 inRect:(CGRect)a4 inContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  CGContextSaveGState(a5);
  v11 = [v10 originalExifOrientation];
  v12 = objc_getAssociatedObject(v10, @"com.apple.AnnotationKit.AnnotationImageHelperAdditionalExifHintKey");
  v13 = v12;
  if (v12)
  {
    v11 = [v12 integerValue];
  }

  memset(&v43, 0, sizeof(v43));
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  [AKGeometryHelper affineTransformForExifOrientation:v11 aboutCenter:MidX, CGRectGetMidY(v46)];
  transform = v43;
  CGContextConcatCTM(a5, &transform);
  v44.width = 1.0;
  v44.height = 1.0;
  v15 = CGContextConvertSizeToDeviceSpace(a5, v44);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectInset(v47, 4.0, 4.0);
  v16 = v48.size.width;
  v17 = v48.size.height;
  [AKAnnotationRenderer drawingBoundsOfAnnotation:v10, v48.origin.x, v48.origin.y];
  v39 = width;
  v40 = height;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  if (v16 / v20 >= v17 / v21)
  {
    v26 = v17 / v21;
  }

  else
  {
    v26 = v16 / v20;
  }

  v27 = CGRectGetWidth(*&v18) * v26;
  v41 = v22;
  v49.origin.x = v22;
  v49.origin.y = v23;
  v49.size.width = v24;
  v49.size.height = v25;
  v28 = CGRectGetHeight(v49) * v26;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v39;
  v50.size.height = v40;
  v29 = (CGRectGetWidth(v50) - v27) * 0.5;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v39;
  v51.size.height = v40;
  v30 = CGRectGetHeight(v51);
  CGContextTranslateCTM(a5, v29, (v30 - v28) * 0.5);
  CGContextScaleCTM(a5, v26, v26);
  *&v31 = *&CGContextConvertSizeToUserSpace(a5, v15);
  v32 = v10;
  v33 = v32;
  if (objc_opt_respondsToSelector())
  {
    v33 = [v32 copy];

    [v33 strokeWidth];
    if (v34 == 0.0)
    {
      v35 = v31;
    }

    else
    {
      v35 = v31 * v34;
    }

    [v33 setStrokeWidth:{v35, *&v39, *&v40}];
  }

  [AKAnnotationRenderer drawingBoundsOfAnnotation:v33, *&v39, *&v40];
  CGContextTranslateCTM(a5, v36 - v41, v37 - v23);
  v38 = [AKAnnotationRenderer _optionsForContext:a5 forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:v33 intoContext:a5 options:v38 pageControllerOrNil:0];
  CGContextRestoreGState(a5);
}

+ (id)imageOfSize:(CGSize)a3 forPath:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x277D759A0];
  v7 = a4;
  v8 = [v6 mainScreen];
  [v8 scale];
  v10 = v9;
  v15.width = width;
  v15.height = height;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v10);

  CurrentContext = UIGraphicsGetCurrentContext();
  [objc_opt_class() _drawImageForPath:v7 inRect:CurrentContext inContext:{0.0, 0.0, width, height}];

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

+ (void)_drawImageForPath:(id)a3 inRect:(CGRect)a4 inContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  [v10 bounds];
  v26 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(a5);
  v28.width = 1.0;
  v28.height = 1.0;
  v18 = CGContextConvertSizeToDeviceSpace(a5, v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  CGContextTranslateCTM(a5, MidX, MidY);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectInset(v31, 3.0, 3.0);
  v21 = v32.size.width / v15;
  if (v32.size.width / v15 >= v32.size.height / v17)
  {
    v21 = v32.size.height / v17;
  }

  CGContextScaleCTM(a5, v21, v21);
  v33.origin.x = v26;
  v33.origin.y = v13;
  v33.size.width = v15;
  v33.size.height = v17;
  v22 = -CGRectGetMidX(v33);
  v34.origin.x = v26;
  v34.origin.y = v13;
  v34.size.width = v15;
  v34.size.height = v17;
  v23 = CGRectGetMidY(v34);
  CGContextTranslateCTM(a5, v22, -v23);
  *&v24 = *&CGContextConvertSizeToUserSpace(a5, v18);
  v25 = [MEMORY[0x277D75348] blackColor];
  [v25 set];

  [v10 setLineWidth:v24];
  [v10 stroke];

  CGContextRestoreGState(a5);
}

+ (id)imageOfSize:(CGSize)a3 withFillColor:(id)a4 forSignature:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v9 = a5;
  if ([v9 path] && !CGPathIsEmpty(objc_msgSend(v9, "path")))
  {
    [v9 pathBounds];
    v14 = v13;
    v16 = v15;
    if (width / v11 >= height / v12)
    {
      v17 = height / v12;
    }

    else
    {
      v17 = width / v11;
    }

    v23.width = ceil(v11 * v17);
    v18 = ceil(v12 * v17);
    v23.height = v18;
    UIGraphicsBeginImageContextWithOptions(v23, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v21.b = 0.0;
    v21.c = 0.0;
    v21.a = 1.0;
    *&v21.d = xmmword_23F4D9490;
    v21.ty = v18;
    CGContextConcatCTM(CurrentContext, &v21);
    [objc_opt_class() _drawImageForSignature:v9 withFillColor:v8 scale:CurrentContext pathOffset:v17 inContext:{v14, v16}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_drawImageForSignature:(id)a3 withFillColor:(id)a4 scale:(double)a5 pathOffset:(CGPoint)a6 inContext:(CGContext *)a7
{
  y = a6.y;
  x = a6.x;
  v14 = a3;
  v12 = a4;
  CGContextSaveGState(a7);
  CGContextScaleCTM(a7, a5, a5);
  CGContextTranslateCTM(a7, -x, -y);
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(a7, v13);
  if ([v14 path])
  {
    CGContextAddPath(a7, [v14 path]);
    CGContextFillPath(a7);
  }

  CGContextRestoreGState(a7);
}

+ (CGImage)createImageOfAnnotation:(id)a3 withScale:(double)a4
{
  v5 = a3;
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v6)
  {
    v7 = v6;
    [v5 drawingBounds];
    v9 = vcvtpd_u64_f64(v8 * a4);
    v11 = CGBitmapContextCreate(0, v9, vcvtpd_u64_f64(v10 * a4), 8uLL, 4 * v9, v7, 2u);
    if (v11)
    {
      v12 = v11;
      v13 = [AKAnnotationRenderer _optionsForContext:v11 forDisplay:0];
      CGContextScaleCTM(v12, a4, a4);
      [AKAnnotationRenderer renderAnnotation:v5 intoContext:v12 options:v13 pageControllerOrNil:0];
      Image = CGBitmapContextCreateImage(v12);
      CGContextRelease(v12);
    }

    else
    {
      Image = 0;
    }

    CGColorSpaceRelease(v7);
  }

  else
  {
    Image = 0;
  }

  return Image;
}

@end