@interface AKRectAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGPath)_newPathForAnnotation:(id)annotation axisAlignedForStroke:(BOOL)stroke alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKRectAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy strokeWidth];
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
  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v20, v22, v24, v26];
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
  [annotationCopy cornerRadius];
  if (v10 <= 0.0001)
  {
    MutableCopy = 0;
  }

  else
  {
    [annotationCopy strokeWidth];
    v12 = v11 * 0.5;
    [annotationCopy originalModelBaseScaleFactor];
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
      v20 = [annotationCopy copy];
      [v20 setRectangle:{v15, v16, v17, v18}];
      [v20 cornerRadius];
      [v20 setCornerRadius:v21 - v12];
      v22 = [self _newPathForAnnotation:v20 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
      CGPathAddPath(Mutable, 0, v22);
      CGPathRelease(v22);
    }

    MutableCopy = CGPathCreateMutableCopy(Mutable);
    CGPathRelease(Mutable);
  }

  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  CGContextSaveGState(context);
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  memset(&v30[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  v30[0] = v30[1];
  CGContextConcatCTM(context, v30);
  CGContextSaveGState(context);
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {
    v15 = fillColor;
    fillColor2 = [annotationCopy fillColor];
    Alpha = CGColorGetAlpha([fillColor2 CGColor]);

    if (Alpha != 0.0)
    {
      v18 = [annotationCopy fillColorForOptions:optionsCopy];
      cGColor = [v18 CGColor];

      v20 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:nilCopy orAlignToContext:context];
      CGContextSetFillColorWithColor(context, cGColor);
      CGContextAddPath(context, v20);
      CGContextFillPath(context);
      CGPathRelease(v20);
    }
  }

  strokeColor = [annotationCopy strokeColor];

  if (strokeColor)
  {
    if ([annotationCopy brushStyle])
    {
      v22 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
      v23 = [annotationCopy strokeColorForOptions:optionsCopy];
      brushStyle = [annotationCopy brushStyle];
      [annotationCopy strokeWidth];
      v25 = [AKTSDBrushStroke strokeWithType:brushStyle color:v23 width:?];
      v26 = [AKTSDBezierPath bezierPathWithCGPath:v22];
      v27 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v27 setStroke:v25];
      [(AKTSDShape *)v27 setPath:v26];
      [(AKTSDShape *)v27 drawInContext:context];
      CGPathRelease(v22);
    }

    else
    {
      v28 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:1 alignToScreenUsingPageController:nilCopy orAlignToContext:context];
      v29 = [annotationCopy strokeColorForOptions:optionsCopy];
      CGContextSetStrokeColorWithColor(context, [v29 CGColor]);

      [annotationCopy strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
      if ([annotationCopy isDashed])
      {
        [annotationCopy strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
      }

      CGContextAddPath(context, v28);
      CGContextStrokePath(context);
      CGPathRelease(v28);
    }
  }

  CGContextRestoreGState(context);
  [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
  CGContextRestoreGState(context);
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities endShadowInContext:context];
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  v10 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
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
  v8 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
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

+ (CGPath)_newPathForAnnotation:(id)annotation axisAlignedForStroke:(BOOL)stroke alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context
{
  strokeCopy = stroke;
  annotationCopy = annotation;
  controllerCopy = controller;
  [annotationCopy rectangle];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (![AKGeometryHelper annotationHasRotation:annotationCopy outAngle:0])
  {
    v19 = 0.0;
    if (strokeCopy)
    {
      [annotationCopy strokeWidth];
      v19 = v20;
    }

    [AKGeometryHelper renderingStrokeAlignedRectForRect:controllerCopy withStrokeWidth:context alignToScreenUsingPageController:annotationCopy orAlignToContext:v12 usingAnnotation:v14, v16, v18, v19];
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  [annotationCopy cornerRadius];
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
    [annotationCopy cornerRadius];
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