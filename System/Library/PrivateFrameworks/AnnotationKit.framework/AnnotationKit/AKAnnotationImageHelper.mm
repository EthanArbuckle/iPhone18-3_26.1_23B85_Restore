@interface AKAnnotationImageHelper
+ (CGImage)createImageOfAnnotation:(id)annotation withScale:(double)scale;
+ (id)_imageOfSize:(CGSize)size forAnnotation:(id)annotation strokeWidth:(double)width withFillColor:(BOOL)color;
+ (id)imageForShapeTag:(int64_t)tag;
+ (id)imageOfSize:(CGSize)size forAnnotation:(id)annotation;
+ (id)imageOfSize:(CGSize)size forAnnotationTag:(int64_t)tag;
+ (id)imageOfSize:(CGSize)size forPath:(id)path;
+ (id)imageOfSize:(CGSize)size withFillColor:(id)color forSignature:(id)signature;
+ (void)_drawFilledShapeImageForAnnotation:(id)annotation inRect:(CGRect)rect inContext:(CGContext *)context;
+ (void)_drawImageForPath:(id)path inRect:(CGRect)rect inContext:(CGContext *)context;
+ (void)_drawImageForSignature:(id)signature withFillColor:(id)color scale:(double)scale pathOffset:(CGPoint)offset inContext:(CGContext *)context;
@end

@implementation AKAnnotationImageHelper

+ (id)imageForShapeTag:(int64_t)tag
{
  if ((tag - 764000) > 0x15)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278C7C000[tag - 764000];
  }

  v4 = MEMORY[0x277D755B8];
  v5 = +[AKController akBundle];
  v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)imageOfSize:(CGSize)size forAnnotationTag:(int64_t)tag
{
  height = size.height;
  width = size.width;
  blackColor = [MEMORY[0x277D75348] blackColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v9 = 0;
  if (tag > 764004)
  {
    if (tag > 764007)
    {
      if (tag == 764008)
      {
        v9 = objc_opt_new();
        [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
        [(AKShapeAnnotation *)v9 setFillColor:clearColor];
        [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
        [(AKRectangularShapeAnnotation *)v9 setStrokeColor:blackColor];
        [(AKOvalAnnotation *)v9 setPointCount:5];
        [AKStarAnnotationRenderer defaultInnerRadiusForStar:v9];
        [(AKOvalAnnotation *)v9 setInnerRadiusFactor:?];
        goto LABEL_18;
      }

      if (tag != 765110)
      {
        goto LABEL_18;
      }

      v12 = 3;
    }

    else
    {
      if (tag != 764005)
      {
        if (tag == 764007)
        {
          v9 = objc_opt_new();
          [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
          [(AKRectangularShapeAnnotation *)v9 rectangle];
          v11 = CGRectGetMinX(v19) + -10.0;
          [(AKRectangularShapeAnnotation *)v9 rectangle];
          [(AKOvalAnnotation *)v9 setPointyBitPoint:v11, CGRectGetMinY(v20) + -10.0];
          [(AKShapeAnnotation *)v9 setFillColor:clearColor];
          [(AKRectangularShapeAnnotation *)v9 setStrokeColor:blackColor];
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
    [(AKRectangularShapeAnnotation *)v9 setStrokeColor:blackColor];
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

  if (tag > 764002)
  {
    v12 = tag != 764003;
    goto LABEL_17;
  }

  if (tag == 764000)
  {
    v10 = objc_opt_new();
    v9 = v10;
  }

  else
  {
    if (tag != 764002)
    {
      goto LABEL_18;
    }

    v9 = objc_alloc_init(AKOvalAnnotation);
    [(AKStrokedAnnotation *)v9 setHasShadow:0];
    v10 = v9;
  }

  [(AKShapeAnnotation *)v10 setFillColor:clearColor];
  [(AKStrokedAnnotation *)v9 setStrokeWidth:1.5];
  [(AKRectangularShapeAnnotation *)v9 setStrokeColor:blackColor];
  [(AKRectangularShapeAnnotation *)v9 setRectangle:0.0, 0.0, width, height];
LABEL_18:
  [(AKAnnotation *)v9 setOriginalModelBaseScaleFactor:1.0];
  [(AKAnnotation *)v9 setOriginalExifOrientation:1];
  v16 = [objc_opt_class() _imageOfSize:v9 forAnnotation:0 strokeWidth:width withFillColor:{height, 1.5}];

  return v16;
}

+ (id)imageOfSize:(CGSize)size forAnnotation:(id)annotation
{
  height = size.height;
  width = size.width;
  annotationCopy = annotation;
  v7 = [objc_opt_class() _imageOfSize:annotationCopy forAnnotation:1 strokeWidth:width withFillColor:{height, 1.0}];

  return v7;
}

+ (id)_imageOfSize:(CGSize)size forAnnotation:(id)annotation strokeWidth:(double)width withFillColor:(BOOL)color
{
  colorCopy = color;
  height = size.height;
  width = size.width;
  annotationCopy = annotation;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      [annotationCopy setHasShadow:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [annotationCopy setStrokeWidth:width];
    }

    if (objc_opt_respondsToSelector())
    {
      [annotationCopy setDashed:0];
    }

    if (objc_opt_respondsToSelector())
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [annotationCopy performSelector:sel_setStrokeColor_ withObject:blackColor];
    }

    if (colorCopy && (objc_opt_respondsToSelector() & 1) != 0 && ([annotationCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v12 = [MEMORY[0x277D75348] akColorWithWhite:0.2 alpha:0.2];
      [annotationCopy performSelector:sel_setFillColor_ withObject:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [objc_alloc(MEMORY[0x277D742D8]) initWithString:&stru_28519E870];
      [annotationCopy performSelector:sel_setAnnotationText_ withObject:v13];
    }
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v16 = v15;
  v21.width = width;
  v21.height = height;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v16);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [objc_opt_class() _drawFilledShapeImageForAnnotation:annotationCopy inRect:CurrentContext inContext:{0.0, 0.0, width, height}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (void)_drawFilledShapeImageForAnnotation:(id)annotation inRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  CGContextSaveGState(context);
  originalExifOrientation = [annotationCopy originalExifOrientation];
  v12 = objc_getAssociatedObject(annotationCopy, @"com.apple.AnnotationKit.AnnotationImageHelperAdditionalExifHintKey");
  v13 = v12;
  if (v12)
  {
    originalExifOrientation = [v12 integerValue];
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
  [AKGeometryHelper affineTransformForExifOrientation:originalExifOrientation aboutCenter:MidX, CGRectGetMidY(v46)];
  transform = v43;
  CGContextConcatCTM(context, &transform);
  v44.width = 1.0;
  v44.height = 1.0;
  v15 = CGContextConvertSizeToDeviceSpace(context, v44);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectInset(v47, 4.0, 4.0);
  v16 = v48.size.width;
  v17 = v48.size.height;
  [AKAnnotationRenderer drawingBoundsOfAnnotation:annotationCopy, v48.origin.x, v48.origin.y];
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
  CGContextTranslateCTM(context, v29, (v30 - v28) * 0.5);
  CGContextScaleCTM(context, v26, v26);
  *&v31 = *&CGContextConvertSizeToUserSpace(context, v15);
  v32 = annotationCopy;
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
  CGContextTranslateCTM(context, v36 - v41, v37 - v23);
  v38 = [AKAnnotationRenderer _optionsForContext:context forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:v33 intoContext:context options:v38 pageControllerOrNil:0];
  CGContextRestoreGState(context);
}

+ (id)imageOfSize:(CGSize)size forPath:(id)path
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277D759A0];
  pathCopy = path;
  mainScreen = [v6 mainScreen];
  [mainScreen scale];
  v10 = v9;
  v15.width = width;
  v15.height = height;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v10);

  CurrentContext = UIGraphicsGetCurrentContext();
  [objc_opt_class() _drawImageForPath:pathCopy inRect:CurrentContext inContext:{0.0, 0.0, width, height}];

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

+ (void)_drawImageForPath:(id)path inRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  [pathCopy bounds];
  v26 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(context);
  v28.width = 1.0;
  v28.height = 1.0;
  v18 = CGContextConvertSizeToDeviceSpace(context, v28);
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
  CGContextTranslateCTM(context, MidX, MidY);
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

  CGContextScaleCTM(context, v21, v21);
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
  CGContextTranslateCTM(context, v22, -v23);
  *&v24 = *&CGContextConvertSizeToUserSpace(context, v18);
  blackColor = [MEMORY[0x277D75348] blackColor];
  [blackColor set];

  [pathCopy setLineWidth:v24];
  [pathCopy stroke];

  CGContextRestoreGState(context);
}

+ (id)imageOfSize:(CGSize)size withFillColor:(id)color forSignature:(id)signature
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  signatureCopy = signature;
  if ([signatureCopy path] && !CGPathIsEmpty(objc_msgSend(signatureCopy, "path")))
  {
    [signatureCopy pathBounds];
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
    [objc_opt_class() _drawImageForSignature:signatureCopy withFillColor:colorCopy scale:CurrentContext pathOffset:v17 inContext:{v14, v16}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_drawImageForSignature:(id)signature withFillColor:(id)color scale:(double)scale pathOffset:(CGPoint)offset inContext:(CGContext *)context
{
  y = offset.y;
  x = offset.x;
  signatureCopy = signature;
  colorCopy = color;
  CGContextSaveGState(context);
  CGContextScaleCTM(context, scale, scale);
  CGContextTranslateCTM(context, -x, -y);
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(context, cGColor);
  if ([signatureCopy path])
  {
    CGContextAddPath(context, [signatureCopy path]);
    CGContextFillPath(context);
  }

  CGContextRestoreGState(context);
}

+ (CGImage)createImageOfAnnotation:(id)annotation withScale:(double)scale
{
  annotationCopy = annotation;
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v6)
  {
    v7 = v6;
    [annotationCopy drawingBounds];
    v9 = vcvtpd_u64_f64(v8 * scale);
    v11 = CGBitmapContextCreate(0, v9, vcvtpd_u64_f64(v10 * scale), 8uLL, 4 * v9, v7, 2u);
    if (v11)
    {
      v12 = v11;
      v13 = [AKAnnotationRenderer _optionsForContext:v11 forDisplay:0];
      CGContextScaleCTM(v12, scale, scale);
      [AKAnnotationRenderer renderAnnotation:annotationCopy intoContext:v12 options:v13 pageControllerOrNil:0];
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