@interface AKImageAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKImageAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:v5 angle:v7, v9, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v14, v16, v18, v20];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v34 = CGRectInset(v33, -1.0, -1.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  memset(&v38, 0, sizeof(v38));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  transform = v38;
  CGContextConcatCTM(context, &transform);
  [annotationCopy rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (([annotationCopy horizontallyFlipped] & 1) != 0 || objc_msgSend(annotationCopy, "verticallyFlipped"))
  {
    v39.origin.x = v16;
    v39.origin.y = v18;
    v39.size.width = v20;
    v39.size.height = v22;
    MidX = CGRectGetMidX(v39);
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    MidY = CGRectGetMidY(v40);
    CGAffineTransformMakeTranslation(&transform, MidX, MidY);
    CGContextConcatCTM(context, &transform);
    if ([annotationCopy horizontallyFlipped])
    {
      v24 = -1.0;
    }

    else
    {
      v24 = 1.0;
    }

    if ([annotationCopy verticallyFlipped])
    {
      v25 = -1.0;
    }

    else
    {
      v25 = 1.0;
    }

    CGAffineTransformMakeScale(&transform, v24, v25);
    CGContextConcatCTM(context, &transform);
    CGAffineTransformMakeTranslation(&transform, -MidX, -MidY);
    CGContextConcatCTM(context, &transform);
  }

  CGAffineTransformMakeTranslation(&transform, v16, v18);
  CGContextConcatCTM(context, &transform);
  v26 = *MEMORY[0x277CBF348];
  v27 = *(MEMORY[0x277CBF348] + 8);
  v28 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotationCopy originalExifOrientation]);
  memset(&transform, 0, sizeof(transform));
  [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:v28 withOriginalSize:v20, v22];
  v36 = transform;
  CGContextConcatCTM(context, &v36);
  [AKGeometryHelper adjustRect:v28 forExifOrientation:v26 aboutCenter:v27, v20, v22, v26, v27];
  v30 = v29;
  v32 = v31;
  CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
  image = [annotationCopy image];
  akCGImage = [image akCGImage];
  v41.origin.x = v26;
  v41.origin.y = v27;
  v41.size.width = v30;
  v41.size.height = v32;
  CGContextDrawImage(context, v41, akCGImage);

  CGContextRestoreGState(context);
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities endShadowInContext:context];
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v7 = CGPathCreateWithRect(v13, 0);
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];

  v9 = m;
  CGAffineTransformInvert(&v10, &v9);
  m = v10;
  v12.x = x;
  v12.y = y;
  LOBYTE(annotationCopy) = CGPathContainsPoint(v7, &m, v12, 0);
  CGPathRelease(v7);
  return annotationCopy;
}

@end