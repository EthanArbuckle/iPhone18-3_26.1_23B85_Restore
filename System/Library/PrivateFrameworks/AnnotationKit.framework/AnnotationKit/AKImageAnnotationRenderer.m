@interface AKImageAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKImageAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:v5 angle:v7, v9, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([v3 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v3 onAnnotation:v14, v16, v18, v20];
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  CGContextSaveGState(a4);
  v13 = [v12 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v13 pageControllerOrNil:v11];
  v14 = [v10 hasShadow];
  if (v14)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  CGContextSaveGState(a4);
  memset(&v38, 0, sizeof(v38));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  transform = v38;
  CGContextConcatCTM(a4, &transform);
  [v10 rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (([v10 horizontallyFlipped] & 1) != 0 || objc_msgSend(v10, "verticallyFlipped"))
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
    CGContextConcatCTM(a4, &transform);
    if ([v10 horizontallyFlipped])
    {
      v24 = -1.0;
    }

    else
    {
      v24 = 1.0;
    }

    if ([v10 verticallyFlipped])
    {
      v25 = -1.0;
    }

    else
    {
      v25 = 1.0;
    }

    CGAffineTransformMakeScale(&transform, v24, v25);
    CGContextConcatCTM(a4, &transform);
    CGAffineTransformMakeTranslation(&transform, -MidX, -MidY);
    CGContextConcatCTM(a4, &transform);
  }

  CGAffineTransformMakeTranslation(&transform, v16, v18);
  CGContextConcatCTM(a4, &transform);
  v26 = *MEMORY[0x277CBF348];
  v27 = *(MEMORY[0x277CBF348] + 8);
  v28 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v10 originalExifOrientation]);
  memset(&transform, 0, sizeof(transform));
  [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:v28 withOriginalSize:v20, v22];
  v36 = transform;
  CGContextConcatCTM(a4, &v36);
  [AKGeometryHelper adjustRect:v28 forExifOrientation:v26 aboutCenter:v27, v20, v22, v26, v27];
  v30 = v29;
  v32 = v31;
  CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
  v33 = [v10 image];
  v34 = [v33 akCGImage];
  v41.origin.x = v26;
  v41.origin.y = v27;
  v41.size.width = v30;
  v41.size.height = v32;
  CGContextDrawImage(a4, v41, v34);

  CGContextRestoreGState(a4);
  if (v14)
  {
    [AKAnnotationRendererUtilities endShadowInContext:a4];
  }

  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 rectangle];
  v7 = CGPathCreateWithRect(v13, 0);
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v6 hasRotation:0];

  v9 = m;
  CGAffineTransformInvert(&v10, &v9);
  m = v10;
  v12.x = x;
  v12.y = y;
  LOBYTE(v6) = CGPathContainsPoint(v7, &m, v12, 0);
  CGPathRelease(v7);
  return v6;
}

@end