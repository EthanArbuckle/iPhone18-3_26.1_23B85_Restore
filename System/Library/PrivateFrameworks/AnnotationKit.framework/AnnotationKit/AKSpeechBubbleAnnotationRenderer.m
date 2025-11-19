@interface AKSpeechBubbleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGPath)_newPathForAnnotation:(id)a3;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (double)pointyBitPointWidthAngleGivenControlBasePoint:(CGPoint)a3 forAnnotation:(id)a4;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
+ (void)basePointsOfPointyBit:(id)a3 withUpdatedProperties:(id)a4 firstPoint:(CGPoint *)a5 secondPoint:(CGPoint *)a6;
@end

@implementation AKSpeechBubbleAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 pointyBitPoint];
  [AKGeometryHelper expandCGRect:v5 toContainPoint:v7, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v3 strokeWidth];
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
  [v3 rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v28];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  if ([v3 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v3 onAnnotation:v30, v32, v34, v36];
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 strokeWidth];
  v11 = v10;
  [v9 originalModelBaseScaleFactor];
  v13 = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsEmpty(v26))
  {
    [v9 rectangle];
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

+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 strokeWidth];
  v10 = v9 * 0.5;
  [v8 originalModelBaseScaleFactor];
  v12 = v11;

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, -(v10 + v12 * 2.0), -(v10 + v12 * 2.0));
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 strokeWidth];
  v10 = v9 * 0.5;
  [v8 originalModelBaseScaleFactor];
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

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [v11 allowHDR];
  CGContextSaveGState(a4);
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
  v13 = [v10 hasShadow];
  if (v13)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  CGContextSaveGState(a4);
  memset(&v27[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  v27[0] = v27[1];
  CGContextConcatCTM(a4, v27);
  CGContextSaveGState(a4);
  v14 = [a1 _newPathForAnnotation:v10];
  v15 = [v10 fillColor];
  if (v15)
  {
    v16 = v15;
    v17 = [v10 fillColor];
    Alpha = CGColorGetAlpha([v17 CGColor]);

    if (Alpha != 0.0)
    {
      v19 = [v10 fillColorForOptions:v11];
      CGContextSetFillColorWithColor(a4, [v19 CGColor]);

      CGContextAddPath(a4, v14);
      CGContextFillPath(a4);
    }
  }

  v20 = [v10 strokeColor];

  if (v20)
  {
    if ([v10 brushStyle])
    {
      v21 = [v10 brushStyle];
      v22 = [v10 strokeColorForOptions:v11];
      [v10 strokeWidth];
      v23 = [AKTSDBrushStroke strokeWithType:v21 color:v22 width:?];

      v24 = [AKTSDBezierPath bezierPathWithCGPath:v14];
      v25 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v25 setStroke:v23];
      [(AKTSDShape *)v25 setPath:v24];
      [(AKTSDShape *)v25 drawInContext:a4];
    }

    else
    {
      v26 = [v10 strokeColorForOptions:v11];
      CGContextSetStrokeColorWithColor(a4, [v26 CGColor]);

      [v10 strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
      if ([v10 isDashed])
      {
        [v10 strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
      }

      CGContextAddPath(a4, v14);
      CGContextStrokePath(a4);
    }
  }

  CGContextRestoreGState(a4);
  [AKTextAnnotationRenderHelper renderAnnotationText:v10 intoContext:a4 options:v11 pageControllerOrNil:v12];
  CGContextRestoreGState(a4);
  if (v13)
  {
    [AKAnnotationRendererUtilities endShadowInContext:a4];
  }

  CGPathRelease(v14);
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [a1 _newPathForAnnotation:v9];
  [v9 strokeWidth];
  if (v11 <= a5)
  {
    v11 = a5;
  }

  v12 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v10 withStrokeWidth:v11];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v9 hasRotation:0];

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

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [a1 _newPathForAnnotation:v7];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v7 hasRotation:0];

  v10 = m;
  CGAffineTransformInvert(&v11, &v10);
  m = v11;
  v13.x = x;
  v13.y = y;
  LOBYTE(v7) = CGPathContainsPoint(v8, &m, v13, 0);
  CGPathRelease(v8);
  return v7;
}

+ (double)pointyBitPointWidthAngleGivenControlBasePoint:(CGPoint)a3 forAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v4 = a4;
  [v4 rectangle];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v14 = v13;
  [AKGeometryHelper ellipseToCenteredCircleTransform:v6, v8, v10, v12];
  [v4 pointyBitPoint];
  v21 = v16;
  v22 = v15;

  [AKGeometryHelper intersectLineSegmentStartingAt:0 ending:vaddq_f64(0 withCircleWithCenter:vmlaq_n_f64(vmulq_n_f64(0 andRadius:v21) farthestResult:0, v22)), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v14];
  [AKGeometryHelper angleBetweenPoint:vaddq_f64(0 andPoint:vmlaq_n_f64(vmulq_n_f64(0, y), 0, x)), v17, v18];
  return (v19 + v19) * 180.0 / 3.14159265;
}

+ (void)basePointsOfPointyBit:(id)a3 withUpdatedProperties:(id)a4 firstPoint:(CGPoint *)a5 secondPoint:(CGPoint *)a6
{
  v9 = a3;
  v10 = a4;
  if (a5 | a6)
  {
    [v9 rectangle];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 pointyBitBaseWidthAngle];
    v20 = v19;
    if (v10)
    {
      v21 = [v10 objectForKey:@"pointyBitBaseWidthAngle"];

      if (v21)
      {
        v22 = [v10 objectForKey:@"pointyBitBaseWidthAngle"];
        [v22 doubleValue];
        v20 = v23;
      }
    }

    [AKGeometryHelper ellipseToCenteredCircleTransform:v12, v14, v16, v18];
    [AKGeometryHelper radiusOfCenteredCircleFor:v12, v14, v16, v18];
    v25 = v24;
    [v9 pointyBitPoint];
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
    if (a5)
    {
      a5->x = v38 * 0.0 + 0.0 * v36 + 0.0;
      a5->y = v38 * 0.0 + 0.0 * v36 + 0.0;
    }

    if (a6)
    {
      a6->x = v42 * 0.0 + 0.0 * v40 + 0.0;
      a6->y = v42 * 0.0 + 0.0 * v40 + 0.0;
    }
  }
}

+ (CGPath)_newPathForAnnotation:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  [AKSpeechBubbleAnnotationRenderer basePointsOfPointyBit:v3 withUpdatedProperties:0 firstPoint:&v23 secondPoint:&v21];
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [v3 rectangle];
  [AKGeometryHelper ellipseToCenteredCircleTransform:?];
  [v3 rectangle];
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

  [v3 rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  CGPathAddArc(Mutable, &v17, 0.0, 0.0, v11, v9, v10, 0);
  [v3 pointyBitPoint];
  v13 = v12;
  [v3 pointyBitPoint];
  v15 = v14;

  CGPathAddLineToPoint(Mutable, 0, v13, v15);
  CGPathAddLineToPoint(Mutable, 0, v21, v22);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end