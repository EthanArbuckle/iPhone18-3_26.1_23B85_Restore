@interface AKThoughtBubbleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newCloudPathScaledToModelSpaceForAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGPath)_newLargestBubblePathScaledToModelSpaceForAnnotation:(id)annotation;
+ (CGPath)_newPathTransformedFromUnitToModelSpace:(CGPath *)space forAnnotation:(id)annotation;
+ (CGPath)_newSmallBubblePathForAnnotation:(id)annotation atCenter:(CGPoint)center withSize:(CGSize)size;
+ (CGPath)_newSmallestBubblePathScaledToModelSpaceForAnnotation:(id)annotation;
+ (CGPoint)_templatePointyPointToCircleIntersect;
+ (CGPoint)_unitAnnotationPointyPointForAnnotation:(id)annotation;
+ (CGPoint)_unitCloudCenter;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (double)_templateToUnitPointyPointScaleForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
+ (void)_fillAndStrokePath:(CGPath *)path forAnnotation:(id)annotation inContext:(CGContext *)context options:(id)options;
@end

@implementation AKThoughtBubbleAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy pointyBitPoint];
  v13 = v12;
  [annotationCopy pointyBitPoint];
  v53.origin.y = v14;
  v53.size.width = 0.0;
  v53.size.height = 0.0;
  v46.origin.x = v5;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  v53.origin.x = v13;
  v47 = CGRectUnion(v46, v53);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  [annotationCopy strokeWidth];
  v20 = v19 * -4.0;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v49 = CGRectInset(v48, v20, v20);
  v21 = v49.origin.x;
  v22 = v49.origin.y;
  v23 = v49.size.width;
  v24 = v49.size.height;
  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:v21 angle:v22, v23, v24, v25];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v27, v29, v31, v33];
    v27 = v34;
    v29 = v35;
    v31 = v36;
    v33 = v37;
  }

  v50.origin.x = v27;
  v50.origin.y = v29;
  v50.size.width = v31;
  v50.size.height = v33;
  v51 = CGRectInset(v50, -1.0, -1.0);
  v38 = v51.origin.x;
  v39 = v51.origin.y;
  v40 = v51.size.width;
  v41 = v51.size.height;

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
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

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsEmpty(v26))
  {
    [annotationCopy rectangle];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, v11 * 0.5 + v13 * 2.0, v11 * 0.5 + v13 * 2.0);
  v18 = v28.origin.x;
  v19 = v28.origin.y;
  v20 = v28.size.width;
  v21 = v28.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v10 = v9 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v12 = v11;

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, -(v10 + v12 * 2.0), -(v10 + v12 * 2.0));
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v11 + v12 * 2.0;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectInset(v37, v13, v13);
  v14 = v38.origin.x;
  v15 = v38.origin.y;
  v16 = v38.size.width;
  v17 = v38.size.height;
  v32 = CGRectGetWidth(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = CGRectGetWidth(v39);
  Mutable = CGPathCreateMutable();
  if (![AKGeometryHelper isUnpresentableRect:v14, v15, v16, v17])
  {
    v20 = v32 / v18;
    v21 = [self _newCloudPathScaledToModelSpaceForAnnotation:annotationCopy];
    BoundingBox = CGPathGetBoundingBox(v21);
    v22 = BoundingBox.origin.x;
    v23 = BoundingBox.origin.y;
    v24 = BoundingBox.size.width;
    v25 = BoundingBox.size.height;
    memset(&m, 0, sizeof(m));
    v26 = -CGRectGetMidX(BoundingBox);
    v41.origin.x = v22;
    v41.origin.y = v23;
    v41.size.width = v24;
    v41.size.height = v25;
    MidY = CGRectGetMidY(v41);
    CGAffineTransformMakeTranslation(&m, v26, -MidY);
    CGAffineTransformMakeScale(&t2, v20, v20);
    t1 = m;
    CGAffineTransformConcat(&v35, &t1, &t2);
    m = v35;
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v25;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v22;
    v43.origin.y = v23;
    v43.size.width = v24;
    v43.size.height = v25;
    v29 = CGRectGetMidY(v43);
    CGAffineTransformMakeTranslation(&t2, MidX, v29);
    t1 = m;
    CGAffineTransformConcat(&v35, &t1, &t2);
    m = v35;
    CGPathAddPath(Mutable, &m, v21);
    CGPathRelease(v21);
  }

  MutableCopy = CGPathCreateMutableCopy(Mutable);
  CGPathRelease(Mutable);

  return MutableCopy;
}

+ (void)_fillAndStrokePath:(CGPath *)path forAnnotation:(id)annotation inContext:(CGContext *)context options:(id)options
{
  annotationCopy = annotation;
  optionsCopy = options;
  [optionsCopy allowHDR];
  CGContextSaveGState(context);
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {
    v11 = fillColor;
    fillColor2 = [annotationCopy fillColor];
    Alpha = CGColorGetAlpha([fillColor2 CGColor]);

    if (Alpha != 0.0)
    {
      v14 = [annotationCopy fillColorForOptions:optionsCopy];
      CGContextSetFillColorWithColor(context, [v14 CGColor]);

      CGContextAddPath(context, path);
      CGContextFillPath(context);
    }
  }

  strokeColor = [annotationCopy strokeColor];

  if (strokeColor)
  {
    if ([annotationCopy brushStyle])
    {
      brushStyle = [annotationCopy brushStyle];
      strokeColor2 = [annotationCopy strokeColor];
      [annotationCopy strokeWidth];
      v18 = [AKTSDBrushStroke strokeWithType:brushStyle color:strokeColor2 width:?];

      v19 = [AKTSDBezierPath bezierPathWithCGPath:path];
      v20 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v20 setStroke:v18];
      [(AKTSDShape *)v20 setPath:v19];
      [(AKTSDShape *)v20 drawInContext:context];
    }

    else
    {
      [annotationCopy strokeWidth];
      v22 = v21;
      v23 = [annotationCopy strokeColorForOptions:optionsCopy];
      CGContextSetStrokeColorWithColor(context, [v23 CGColor]);

      [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:v22];
      if ([annotationCopy isDashed])
      {
        [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:v22];
      }

      CGContextAddPath(context, path);
      CGContextStrokePath(context);
    }
  }

  CGContextRestoreGState(context);
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  CGContextSaveGState(context);
  v13 = [self _newCloudPathScaledToModelSpaceForAnnotation:annotationCopy];
  v14 = [self _newLargestBubblePathScaledToModelSpaceForAnnotation:annotationCopy];
  v15 = [self _newSmallestBubblePathScaledToModelSpaceForAnnotation:annotationCopy];
  v16 = v15;
  if (v13 && v14 && v15)
  {
    [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
    CGContextSaveGState(context);
    memset(&v17[1], 0, sizeof(CGAffineTransform));
    [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
    v17[0] = v17[1];
    CGContextConcatCTM(context, v17);
    CGContextSaveGState(context);
    if ([annotationCopy hasShadow])
    {
      [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
      [self _fillAndStrokePath:v13 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      [self _fillAndStrokePath:v14 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      [self _fillAndStrokePath:v16 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      CGContextRestoreGState(context);
      [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
      CGContextRestoreGState(context);
      [AKAnnotationRendererUtilities endShadowInContext:context];
    }

    else
    {
      [self _fillAndStrokePath:v13 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      [self _fillAndStrokePath:v14 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      [self _fillAndStrokePath:v16 forAnnotation:annotationCopy inContext:context options:optionsCopy];
      CGContextRestoreGState(context);
      [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
      CGContextRestoreGState(context);
    }
  }

  CGPathRelease(v13);
  CGPathRelease(v14);
  CGPathRelease(v16);
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  if (v10 > thickness)
  {
    thickness = v10;
  }

  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  v27 = m;
  CGAffineTransformInvert(&v28, &v27);
  m = v28;
  v11 = [self _newCloudPathScaledToModelSpaceForAnnotation:annotationCopy];
  if (v11)
  {
    v12 = v11;
    v13 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v11 withStrokeWidth:thickness];
    if (v13)
    {
      v14 = v13;
      v30.x = x;
      v30.y = y;
      v15 = CGPathContainsPoint(v13, &m, v30, 0);
      CGPathRelease(v14);
      CGPathRelease(v12);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      CGPathRelease(v12);
    }
  }

  v16 = [self _newLargestBubblePathScaledToModelSpaceForAnnotation:annotationCopy];
  if (v16)
  {
    v17 = v16;
    v18 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v16 withStrokeWidth:thickness];
    if (v18)
    {
      v19 = v18;
      v31.x = x;
      v31.y = y;
      v20 = CGPathContainsPoint(v18, &m, v31, 0);
      CGPathRelease(v19);
      CGPathRelease(v17);
      if (v20)
      {
LABEL_11:
        v21 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      CGPathRelease(v17);
    }
  }

  v22 = [self _newSmallestBubblePathScaledToModelSpaceForAnnotation:annotationCopy];
  if (v22)
  {
    v23 = v22;
    v24 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v22 withStrokeWidth:thickness];
    if (v24)
    {
      v25 = v24;
      v32.x = x;
      v32.y = y;
      v21 = CGPathContainsPoint(v24, &m, v32, 0);
      CGPathRelease(v25);
    }

    else
    {
      v21 = 0;
    }

    CGPathRelease(v23);
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  return v21;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  v18 = m;
  CGAffineTransformInvert(&v19, &v18);
  m = v19;
  v8 = [self _newCloudPathScaledToModelSpaceForAnnotation:annotationCopy];
  if (v8 && (v9 = v8, v21.x = x, v21.y = y, v10 = CGPathContainsPoint(v8, &m, v21, 0), CGPathRelease(v9), v10) || (v11 = [self _newLargestBubblePathScaledToModelSpaceForAnnotation:annotationCopy]) != 0 && (v12 = v11, v22.x = x, v22.y = y, v13 = CGPathContainsPoint(v11, &m, v22, 0), CGPathRelease(v12), v13))
  {
    v14 = 1;
  }

  else
  {
    v15 = [self _newSmallestBubblePathScaledToModelSpaceForAnnotation:annotationCopy];
    if (v15)
    {
      v16 = v15;
      v23.x = x;
      v23.y = y;
      v14 = CGPathContainsPoint(v15, &m, v23, 0);
      CGPathRelease(v16);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (CGPoint)_unitAnnotationPointyPointForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  v10 = *(MEMORY[0x277CBF2C0] + 40);
  v11 = -CGRectGetMinX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinY = CGRectGetMinY(v37);
  CGAffineTransformMakeTranslation(&t2, v11, -MinY);
  v13 = v8[1];
  *&t1.a = *v8;
  *&t1.c = v13;
  t1.tx = v9;
  t1.ty = v10;
  CGAffineTransformConcat(&v34, &t1, &t2);
  tx = v34.tx;
  ty = v34.ty;
  v30 = *&v34.c;
  v31 = *&v34.a;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v16 = 1.0 / CGRectGetWidth(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v17 = CGRectGetHeight(v39);
  CGAffineTransformMakeScale(&t2, v16, 1.0 / v17);
  *&t1.a = v31;
  *&t1.c = v30;
  t1.tx = tx;
  t1.ty = ty;
  CGAffineTransformConcat(&v34, &t1, &t2);
  a = v34.a;
  b = v34.b;
  c = v34.c;
  d = v34.d;
  v22 = v34.tx;
  v23 = v34.ty;
  [annotationCopy pointyBitPoint];
  v25 = v24;
  v27 = v26;

  v28 = v22 + c * v27 + a * v25;
  v29 = v23 + d * v27 + b * v25;
  result.y = v29;
  result.x = v28;
  return result;
}

+ (CGPoint)_unitCloudCenter
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)_templatePointyPointToCircleIntersect
{
  [self _unitCloudCenter];
  v4 = v3;
  v6 = v5;
  [self _unitCloudRadius];
  v8 = v7;
  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);

  [AKGeometryHelper intersectLineSegmentStartingAt:0 ending:v9 withCircleWithCenter:v10 andRadius:v4 farthestResult:v6, v4, v6, v8];
  result.y = v12;
  result.x = v11;
  return result;
}

+ (double)_templateToUnitPointyPointScaleForAnnotation:(id)annotation
{
  [self _unitAnnotationPointyPointForAnnotation:annotation];
  v5 = v4;
  v7 = v6;
  [self _templatePointyPointToCircleIntersect];
  v9 = v8;
  v11 = v10;
  [self _unitCloudCenter];
  v13 = v12;
  v15 = v14;
  [self _unitCloudRadius];
  [AKGeometryHelper intersectLineSegmentStartingAt:0 ending:v5 withCircleWithCenter:v7 andRadius:v13 farthestResult:v15, v13, v15, v16];
  v19 = v18;
  result = 1.0;
  if (v19 != v5 && v17 != v7 && v9 != 0.0 && v11 != 0.0)
  {
    v21 = hypot(v19 - v5, v17 - v7);
    return v21 / hypot(v9, v11);
  }

  return result;
}

+ (CGPath)_newSmallestBubblePathScaledToModelSpaceForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [self _unitAnnotationPointyPointForAnnotation:annotationCopy];
  v14 = v6;
  v15 = v5;
  [self _unitCloudCenter];
  v8 = v7;
  v10 = v9;
  [AKGeometryHelper angleBetweenPoint:-v7 andPoint:-v9, v15 - v7, v14 - v9];
  [AKGeometryHelper rotationTransformAroundPoint:v8 withAngle:v10, -v11];
  v12 = [self _newSmallBubblePathForAnnotation:annotationCopy atCenter:vaddq_f64(vaddq_f64(v18 withSize:{vmlaq_n_f64(vmulq_n_f64(v17, v14), v16, v15)), vdupq_n_s64(0x3FA47AE147AE147BuLL)), 0.08, 0.08}];

  return v12;
}

+ (CGPath)_newLargestBubblePathScaledToModelSpaceForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [self _templateToUnitPointyPointScaleForAnnotation:annotationCopy];
  v6 = v5;
  [self _templatePointyPointToCircleIntersect];
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v13 = *(MEMORY[0x277CBF2C0] + 40);
  CGAffineTransformMakeTranslation(&t2, -v7, -v9);
  v14 = v11[1];
  *&t1.a = *v11;
  *&t1.c = v14;
  t1.tx = v12;
  t1.ty = v13;
  CGAffineTransformConcat(&v28, &t1, &t2);
  tx = v28.tx;
  ty = v28.ty;
  v22 = *&v28.c;
  v24 = *&v28.a;
  CGAffineTransformMakeScale(&t2, v6, v6);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = tx;
  t1.ty = ty;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v17 = v28.tx;
  v18 = v28.ty;
  v23 = *&v28.c;
  v25 = *&v28.a;
  CGAffineTransformMakeTranslation(&t2, v8, v10);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v19 = vdupq_n_s64(0x3FB999999999999AuLL);
  v20 = [self _newSmallBubblePathForAnnotation:annotationCopy atCenter:vaddq_f64(*&v28.tx withSize:{vmlaq_f64(vmulq_f64(*&v28.c, v19), v19, *&v28.a)), 0.13, 0.11}];

  return v20;
}

+ (CGPath)_newSmallBubblePathForAnnotation:(id)annotation atCenter:(CGPoint)center withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  annotationCopy = annotation;
  [self _unitCloudCenter];
  v12 = v11;
  v14 = v13;
  [self _unitAnnotationPointyPointForAnnotation:annotationCopy];
  [AKGeometryHelper angleBetweenPoint:-v12 andPoint:-v14, v15 - v12, v16 - v14];
  [AKGeometryHelper rotationTransformAroundPoint:v12 withAngle:v14, v17];
  v18 = y * 0.0 + 0.0 * x + 0.0;
  Mutable = CGPathCreateMutable();
  v22.origin.x = v18 + width * -0.5;
  v22.origin.y = v18 + height * -0.5;
  v22.size.width = width;
  v22.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v22);
  v20 = [self _newPathTransformedFromUnitToModelSpace:Mutable forAnnotation:annotationCopy];

  CGPathRelease(Mutable);
  return v20;
}

+ (CGPath)_newCloudPathScaledToModelSpaceForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.30244827, 0.01343505);
  CGPathAddCurveToPoint(Mutable, 0, 0.35887423, -0.00959289, 0.42427887, 0.00619094, 0.47937859, 0.04929641);
  CGPathAddCurveToPoint(Mutable, 0, 0.53032459, 0.00214956, 0.59395242, -0.01865431, 0.652297, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, 0.71073129, 0.01868303, 0.7508165, 0.07273387, 0.76546521, 0.14101983);
  CGPathAddCurveToPoint(Mutable, 0, 0.83514999, 0.13778761, 0.89767936, 0.16238721, 0.93065127, 0.21400945);
  CGPathAddCurveToPoint(Mutable, 0, 0.9636971, 0.26574732, 0.95984616, 0.33276261, 0.9270475, 0.39417562);
  CGPathAddCurveToPoint(Mutable, 0, 0.98279027, 0.436392, 1.0, 0.49515658, 1.0, 0.55554747);
  CGPathAddCurveToPoint(Mutable, 0, 0.99918663, 0.61594457, 0.95336502, 0.66440709, 0.88878699, 0.69017171);
  CGPathAddCurveToPoint(Mutable, 0, 0.90457535, 0.75805935, 0.89117571, 0.82360221, 0.84620553, 0.86454625);
  CGPathAddCurveToPoint(Mutable, 0, 0.80122828, 0.90549673, 0.7345451, 0.9130876, 0.66813488, 0.89126836);
  CGPathAddCurveToPoint(Mutable, 0, 0.63656157, 0.95307559, 0.5838518, 0.99421009, 0.5227851, 0.99653725);
  CGPathAddCurveToPoint(Mutable, 0, 0.46172753, 0.99886408, 0.40591285, 0.9615682, 0.36877061, 0.90239532);
  CGPathAddCurveToPoint(Mutable, 0, 0.3045019, 0.9293305, 0.23732643, 0.92697529, 0.18866412, 0.88952898);
  CGPathAddCurveToPoint(Mutable, 0, 0.14002093, 0.85209719, 0.12074766, 0.78785582, 0.13033697, 0.71889516);
  CGPathAddCurveToPoint(Mutable, 0, 0.06360102, 0.69813851, 0.01336473, 0.65341583, 0.0, 0.59381692);
  CGPathAddCurveToPoint(Mutable, 0, -0.01339382, 0.53408908, 0.01328839, 0.47315176, 0.06520553, 0.42680233);
  CGPathAddCurveToPoint(Mutable, 0, 0.02695239, 0.36813353, 0.01654879, 0.30199402, 0.04470275, 0.24796491);
  CGPathAddCurveToPoint(Mutable, 0, 0.07287601, 0.19389922, 0.13305774, 0.16448633, 0.20298753, 0.16251968);
  CGPathAddCurveToPoint(Mutable, 0, 0.2105341, 0.094648, 0.24368711, 0.04628048, 0.30244827, 0.01343505);
  CGPathCloseSubpath(Mutable);
  v6 = [self _newPathTransformedFromUnitToModelSpace:Mutable forAnnotation:annotationCopy];

  CGPathRelease(Mutable);
  return v6;
}

+ (CGPath)_newPathTransformedFromUnitToModelSpace:(CGPath *)space forAnnotation:(id)annotation
{
  [annotation rectangle];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *&v20.a = *MEMORY[0x277CBF2C0];
  v16 = *&v20.a;
  *&v20.c = v15;
  *&v20.tx = *(MEMORY[0x277CBF2C0] + 32);
  v14 = *&v20.tx;
  v9 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = CGRectGetHeight(v22);
  CGAffineTransformMakeScale(&t2, v9, v10);
  *&t1.a = v16;
  *&t1.c = v15;
  *&t1.tx = v14;
  CGAffineTransformConcat(&v20, &t1, &t2);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  CGAffineTransformMakeTranslation(&t1, MinX, MinY);
  v17 = v20;
  CGAffineTransformConcat(&t2, &v17, &t1);
  v20 = t2;
  return MEMORY[0x245CAE590](space, &v20);
}

@end