@interface AKRectAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGPath)_newPathForAnnotation:(id)a3 axisAlignedForStroke:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKRectAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 strokeWidth];
  v13 = v12 * -0.5;
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
  [v9 cornerRadius];
  if (v10 <= 0.0001)
  {
    MutableCopy = 0;
  }

  else
  {
    [v9 strokeWidth];
    v12 = v11 * 0.5;
    [v9 originalModelBaseScaleFactor];
    v14 = v12 + v13 * 2.0;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectInset(v25, v14, v14);
    v15 = v26.origin.x;
    v16 = v26.origin.y;
    v17 = v26.size.width;
    v18 = v26.size.height;
    Mutable = CGPathCreateMutable();
    if (![AKGeometryHelper isUnpresentableRect:v15, v16, v17, v18])
    {
      v20 = [v9 copy];
      [v20 setRectangle:{v15, v16, v17, v18}];
      [v20 cornerRadius];
      [v20 setCornerRadius:v21 - v12];
      v22 = [a1 _newPathForAnnotation:v20 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
      CGPathAddPath(Mutable, 0, v22);
      CGPathRelease(v22);
    }

    MutableCopy = CGPathCreateMutableCopy(Mutable);
    CGPathRelease(Mutable);
  }

  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  CGContextSaveGState(a4);
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
  v13 = [v10 hasShadow];
  if (v13)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  CGContextSaveGState(a4);
  memset(&v30[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  v30[0] = v30[1];
  CGContextConcatCTM(a4, v30);
  CGContextSaveGState(a4);
  v14 = [v10 fillColor];
  if (v14)
  {
    v15 = v14;
    v16 = [v10 fillColor];
    Alpha = CGColorGetAlpha([v16 CGColor]);

    if (Alpha != 0.0)
    {
      v18 = [v10 fillColorForOptions:v11];
      v19 = [v18 CGColor];

      v20 = [a1 _newPathForAnnotation:v10 axisAlignedForStroke:0 alignToScreenUsingPageController:v12 orAlignToContext:a4];
      CGContextSetFillColorWithColor(a4, v19);
      CGContextAddPath(a4, v20);
      CGContextFillPath(a4);
      CGPathRelease(v20);
    }
  }

  v21 = [v10 strokeColor];

  if (v21)
  {
    if ([v10 brushStyle])
    {
      v22 = [a1 _newPathForAnnotation:v10 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
      v23 = [v10 strokeColorForOptions:v11];
      v24 = [v10 brushStyle];
      [v10 strokeWidth];
      v25 = [AKTSDBrushStroke strokeWithType:v24 color:v23 width:?];
      v26 = [AKTSDBezierPath bezierPathWithCGPath:v22];
      v27 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v27 setStroke:v25];
      [(AKTSDShape *)v27 setPath:v26];
      [(AKTSDShape *)v27 drawInContext:a4];
      CGPathRelease(v22);
    }

    else
    {
      v28 = [a1 _newPathForAnnotation:v10 axisAlignedForStroke:1 alignToScreenUsingPageController:v12 orAlignToContext:a4];
      v29 = [v10 strokeColorForOptions:v11];
      CGContextSetStrokeColorWithColor(a4, [v29 CGColor]);

      [v10 strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
      if ([v10 isDashed])
      {
        [v10 strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
      }

      CGContextAddPath(a4, v28);
      CGContextStrokePath(a4);
      CGPathRelease(v28);
    }
  }

  CGContextRestoreGState(a4);
  [AKTextAnnotationRenderHelper renderAnnotationText:v10 intoContext:a4 options:v11 pageControllerOrNil:v12];
  CGContextRestoreGState(a4);
  if (v13)
  {
    [AKAnnotationRendererUtilities endShadowInContext:a4];
  }

  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [a1 _newPathForAnnotation:v9 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
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
  v8 = [a1 _newPathForAnnotation:v7 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
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

+ (CGPath)_newPathForAnnotation:(id)a3 axisAlignedForStroke:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  [v9 rectangle];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (![AKGeometryHelper annotationHasRotation:v9 outAngle:0])
  {
    v19 = 0.0;
    if (v8)
    {
      [v9 strokeWidth];
      v19 = v20;
    }

    [AKGeometryHelper renderingStrokeAlignedRectForRect:v10 withStrokeWidth:a6 alignToScreenUsingPageController:v9 orAlignToContext:v12 usingAnnotation:v14, v16, v18, v19];
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  [v9 cornerRadius];
  if (v25 <= 0.0)
  {
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v29 = CGPathCreateWithRect(v33, 0);
  }

  else
  {
    [v9 cornerRadius];
    v27 = v18 / 2.01;
    if (v16 / 2.01 < v18 / 2.01)
    {
      v27 = v16 / 2.01;
    }

    if (v26 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v16;
    v32.size.height = v18;
    v29 = CGPathCreateWithRoundedRect(v32, v28, v28, 0);
  }

  v30 = v29;

  return v30;
}

@end