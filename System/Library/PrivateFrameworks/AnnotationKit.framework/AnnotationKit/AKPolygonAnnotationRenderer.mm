@interface AKPolygonAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGPath)_newPathForAnnotation:(id)a3;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKPolygonAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 strokeWidth];
  v13 = v12 * -4.0;
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  v40 = CGRectInset(v39, v13, v13);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  [v3 rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ([v3 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v3 onAnnotation:v20, v22, v24, v26];
    v20 = v27;
    v22 = v28;
    v24 = v29;
    v26 = v30;
  }

  v41.origin.x = v20;
  v41.origin.y = v22;
  v41.size.width = v24;
  v41.size.height = v26;
  v42 = CGRectInset(v41, -1.0, -1.0);
  v31 = v42.origin.x;
  v32 = v42.origin.y;
  v33 = v42.size.width;
  v34 = v42.size.height;

  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
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
  v9 = a3;
  [v9 strokeWidth];
  v11 = v10 * 0.5;
  [v9 originalModelBaseScaleFactor];
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
    v21 = [a1 _newPathForAnnotation:v9];
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

+ (CGPath)_newPathForAnnotation:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  if ([v3 pointCount] == 6)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = 0.0;
  }

  [v3 rectangle];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MidY = CGRectGetMidY(v28);
  v12 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v3 originalExifOrientation]);
  [AKGeometryHelper adjustRect:v12 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  v17 = +[AKGeometryHelper verticesOfPolygonWithPointCount:inRect:rotation:flippedVertically:](AKGeometryHelper, "verticesOfPolygonWithPointCount:inRect:rotation:flippedVertically:", [v3 pointCount], objc_msgSend(v3, "verticallyFlipped"), v13, v14, v15, v16, v5);
  if ([v3 pointCount])
  {
    v18 = 0;
    do
    {
      v19 = [v17 objectAtIndex:v18];
      [v19 akPointValue];
      v21 = v20;
      v23 = v22;

      [AKGeometryHelper adjustPoint:v12 forExifOrientation:v21 aboutCenter:v23, MidX, MidY];
      if (v18)
      {
        CGPathAddLineToPoint(Mutable, 0, v24, v25);
      }

      else
      {
        CGPathMoveToPoint(Mutable, 0, v24, v25);
      }

      ++v18;
    }

    while (v18 < [v3 pointCount]);
  }

  CGPathCloseSubpath(Mutable);

  return Mutable;
}

@end