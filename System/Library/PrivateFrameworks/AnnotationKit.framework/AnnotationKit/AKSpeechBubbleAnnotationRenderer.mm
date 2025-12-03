@interface AKSpeechBubbleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGPath)_newPathForAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (double)pointyBitPointWidthAngleGivenControlBasePoint:(CGPoint)point forAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
+ (void)basePointsOfPointyBit:(id)bit withUpdatedProperties:(id)properties firstPoint:(CGPoint *)point secondPoint:(CGPoint *)secondPoint;
@end

@implementation AKSpeechBubbleAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy pointyBitPoint];
  [AKGeometryHelper expandCGRect:v5 toContainPoint:v7, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [annotationCopy strokeWidth];
  v23 = v22 * -4.0;
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  v50 = CGRectInset(v49, v23, v23);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v28];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v30, v32, v34, v36];
    v30 = v37;
    v32 = v38;
    v34 = v39;
    v36 = v40;
  }

  v51.origin.x = v30;
  v51.origin.y = v32;
  v51.size.width = v34;
  v51.size.height = v36;
  v52 = CGRectInset(v51, -1.0, -1.0);
  v41 = v52.origin.x;
  v42 = v52.origin.y;
  v43 = v52.size.width;
  v44 = v52.size.height;

  v45 = v41;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
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
  v10 = v9 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v12 = v11;

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectInset(v20, v10 + v12 * 2.0, v10 + v12 * 2.0);
  v13 = v21.origin.x;
  v14 = v21.origin.y;
  v15 = v21.size.width;
  v16 = v21.size.height;
  Mutable = CGPathCreateMutable();
  if (![AKGeometryHelper isUnpresentableRect:v13, v14, v15, v16])
  {
    v22.origin.x = v13;
    v22.origin.y = v14;
    v22.size.width = v15;
    v22.size.height = v16;
    CGPathAddEllipseInRect(Mutable, 0, v22);
  }

  MutableCopy = CGPathCreateMutableCopy(Mutable);
  CGPathRelease(Mutable);
  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  [optionsCopy allowHDR];
  CGContextSaveGState(context);
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  memset(&v27[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  v27[0] = v27[1];
  CGContextConcatCTM(context, v27);
  CGContextSaveGState(context);
  v14 = [self _newPathForAnnotation:annotationCopy];
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {
    v16 = fillColor;
    fillColor2 = [annotationCopy fillColor];
    Alpha = CGColorGetAlpha([fillColor2 CGColor]);

    if (Alpha != 0.0)
    {
      v19 = [annotationCopy fillColorForOptions:optionsCopy];
      CGContextSetFillColorWithColor(context, [v19 CGColor]);

      CGContextAddPath(context, v14);
      CGContextFillPath(context);
    }
  }

  strokeColor = [annotationCopy strokeColor];

  if (strokeColor)
  {
    if ([annotationCopy brushStyle])
    {
      brushStyle = [annotationCopy brushStyle];
      v22 = [annotationCopy strokeColorForOptions:optionsCopy];
      [annotationCopy strokeWidth];
      v23 = [AKTSDBrushStroke strokeWithType:brushStyle color:v22 width:?];

      v24 = [AKTSDBezierPath bezierPathWithCGPath:v14];
      v25 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v25 setStroke:v23];
      [(AKTSDShape *)v25 setPath:v24];
      [(AKTSDShape *)v25 drawInContext:context];
    }

    else
    {
      v26 = [annotationCopy strokeColorForOptions:optionsCopy];
      CGContextSetStrokeColorWithColor(context, [v26 CGColor]);

      [annotationCopy strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
      if ([annotationCopy isDashed])
      {
        [annotationCopy strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
      }

      CGContextAddPath(context, v14);
      CGContextStrokePath(context);
    }
  }

  CGContextRestoreGState(context);
  [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
  CGContextRestoreGState(context);
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities endShadowInContext:context];
  }

  CGPathRelease(v14);
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  v10 = [self _newPathForAnnotation:annotationCopy];
  [annotationCopy strokeWidth];
  if (thicknessCopy <= thickness)
  {
    thicknessCopy = thickness;
  }

  v12 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v10 withStrokeWidth:thicknessCopy];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];

  v15 = m;
  CGAffineTransformInvert(&v16, &v15);
  m = v16;
  v18.x = x;
  v18.y = y;
  v13 = CGPathContainsPoint(v12, &m, v18, 0);
  CGPathRelease(v12);
  CGPathRelease(v10);
  return v13;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  v8 = [self _newPathForAnnotation:annotationCopy];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];

  v10 = m;
  CGAffineTransformInvert(&v11, &v10);
  m = v11;
  v13.x = x;
  v13.y = y;
  LOBYTE(annotationCopy) = CGPathContainsPoint(v8, &m, v13, 0);
  CGPathRelease(v8);
  return annotationCopy;
}

+ (double)pointyBitPointWidthAngleGivenControlBasePoint:(CGPoint)point forAnnotation:(id)annotation
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v14 = v13;
  [AKGeometryHelper ellipseToCenteredCircleTransform:v6, v8, v10, v12];
  [annotationCopy pointyBitPoint];
  v21 = v16;
  v22 = v15;

  [AKGeometryHelper intersectLineSegmentStartingAt:0 ending:vaddq_f64(0 withCircleWithCenter:vmlaq_n_f64(vmulq_n_f64(0 andRadius:v21) farthestResult:0, v22)), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v14];
  [AKGeometryHelper angleBetweenPoint:vaddq_f64(0 andPoint:vmlaq_n_f64(vmulq_n_f64(0, y), 0, x)), v17, v18];
  return (v19 + v19) * 180.0 / 3.14159265;
}

+ (void)basePointsOfPointyBit:(id)bit withUpdatedProperties:(id)properties firstPoint:(CGPoint *)point secondPoint:(CGPoint *)secondPoint
{
  bitCopy = bit;
  propertiesCopy = properties;
  if (point | secondPoint)
  {
    [bitCopy rectangle];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [bitCopy pointyBitBaseWidthAngle];
    v20 = v19;
    if (propertiesCopy)
    {
      v21 = [propertiesCopy objectForKey:@"pointyBitBaseWidthAngle"];

      if (v21)
      {
        v22 = [propertiesCopy objectForKey:@"pointyBitBaseWidthAngle"];
        [v22 doubleValue];
        v20 = v23;
      }
    }

    [AKGeometryHelper ellipseToCenteredCircleTransform:v12, v14, v16, v18];
    [AKGeometryHelper radiusOfCenteredCircleFor:v12, v14, v16, v18];
    v25 = v24;
    [bitCopy pointyBitPoint];
    v43 = v12;
    v44 = v16;
    v29 = *MEMORY[0x277CBF348];
    v28 = *(MEMORY[0x277CBF348] + 8);
    [AKGeometryHelper intersectLineSegmentStartingAt:0 ending:vaddq_f64(0 withCircleWithCenter:vmlaq_n_f64(vmulq_n_f64(0 andRadius:v26) farthestResult:0, v27)), *MEMORY[0x277CBF348], v28, *MEMORY[0x277CBF348], v28, v25];
    [AKGeometryHelper angleOfVector:?];
    v30 = v20 * 3.14159265 / 180.0;
    v31 = v18;
    v32 = v14;
    v34 = v33 + v30 * 0.5;
    [AKGeometryHelper pointAtAngle:v33 + v30 * -0.5 inCircleWithCenter:v29 andRadius:v28, v25];
    v36 = v35;
    v38 = v37;
    [AKGeometryHelper pointAtAngle:v34 inCircleWithCenter:v29 andRadius:v28, v25];
    v40 = v39;
    v42 = v41;
    [AKGeometryHelper centeredCircleToEllipseTransform:v43, v32, v44, v31];
    if (point)
    {
      point->x = v38 * 0.0 + 0.0 * v36 + 0.0;
      point->y = v38 * 0.0 + 0.0 * v36 + 0.0;
    }

    if (secondPoint)
    {
      secondPoint->x = v42 * 0.0 + 0.0 * v40 + 0.0;
      secondPoint->y = v42 * 0.0 + 0.0 * v40 + 0.0;
    }
  }
}

+ (CGPath)_newPathForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:annotationCopy withUpdatedProperties:0 firstPoint:&v23 secondPoint:&v21];
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [annotationCopy rectangle];
  [AKGeometryHelper ellipseToCenteredCircleTransform:?];
  [annotationCopy rectangle];
  [AKGeometryHelper centeredCircleToEllipseTransform:?];
  v5 = v21;
  v6 = v22;
  v7 = 0.0 * v22 + 0.0 * v21 + 0.0;
  v8 = atan2(v24 * 0.0 + 0.0 * v23 + 0.0, v24 * 0.0 + 0.0 * v23 + 0.0);
  v9 = atan2(v7, v7);
  CGPathMoveToPoint(Mutable, 0, v5, v6);
  if (vabdd_f64(v8, v9) >= 0.0005)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9 + -0.0005;
  }

  [annotationCopy rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  CGPathAddArc(Mutable, &v17, 0.0, 0.0, v11, v9, v10, 0);
  [annotationCopy pointyBitPoint];
  v13 = v12;
  [annotationCopy pointyBitPoint];
  v15 = v14;

  CGPathAddLineToPoint(Mutable, 0, v13, v15);
  CGPathAddLineToPoint(Mutable, 0, v21, v22);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end