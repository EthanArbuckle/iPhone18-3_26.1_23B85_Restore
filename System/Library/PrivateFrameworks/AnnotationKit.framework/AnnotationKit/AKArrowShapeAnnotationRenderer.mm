@interface AKArrowShapeAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
+ (void)_drawPathForArrowShape:(id)shape inContext:(CGContext *)context options:(id)options inPath:(CGPath *)Mutable;
@end

@implementation AKArrowShapeAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v6 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrowShape:annotationCopy inContext:0 options:v6 inPath:Mutable];

  BoundingBox = CGPathGetBoundingBox(Mutable);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(Mutable);
  [annotationCopy strokeWidth];
  v12 = v11 * -4.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectInset(v30, v12, v12);
  v13 = v31.origin.x;
  v14 = v31.origin.y;
  v15 = v31.size.width;
  v16 = v31.size.height;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v13, v14, v15, v16];
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  v32.origin.x = v13;
  v32.origin.y = v14;
  v32.size.width = v15;
  v32.size.height = v16;
  v33 = CGRectInset(v32, -1.0, -1.0);
  v21 = v33.origin.x;
  v22 = v33.origin.y;
  v23 = v33.size.width;
  v24 = v33.size.height;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
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

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v7 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrowShape:annotationCopy inContext:0 options:v7 inPath:Mutable];

  v8 = CGPathCreateMutable();
  CGPathAddPath(v8, 0, Mutable);
  CGPathRelease(Mutable);
  MutableCopy = CGPathCreateMutableCopy(v8);
  CGPathRelease(v8);
  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  CGContextSaveGState(context);
  [optionsCopy allowHDR];
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
  hasShadow = [annotationCopy hasShadow];
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  Mutable = CGPathCreateMutable();
  [self _drawPathForArrowShape:annotationCopy inContext:0 options:optionsCopy inPath:Mutable];
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {
    v15 = fillColor;
    fillColor2 = [annotationCopy fillColor];
    Alpha = CGColorGetAlpha([fillColor2 CGColor]);

    if (Alpha != 0.0)
    {
      v18 = [annotationCopy fillColorForOptions:optionsCopy];
      CGContextSetFillColorWithColor(context, [v18 CGColor]);

      CGContextAddPath(context, Mutable);
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
      v22 = [AKTSDBrushStroke strokeWithType:brushStyle color:strokeColor2 width:?];

      v23 = [AKTSDBezierPath bezierPathWithCGPath:Mutable];
      v24 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v24 setStroke:v22];
      [(AKTSDShape *)v24 setPath:v23];
      [(AKTSDShape *)v24 drawInContext:context];
    }

    else
    {
      v25 = [annotationCopy strokeColorForOptions:optionsCopy];
      CGContextSetStrokeColorWithColor(context, [v25 CGColor]);

      [annotationCopy strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
      if ([annotationCopy isDashed])
      {
        [annotationCopy strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
      }

      CGContextAddPath(context, Mutable);
      CGContextStrokePath(context);
    }
  }

  CGPathRelease(Mutable);
  CGContextRestoreGState(context);
  [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
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
  Mutable = CGPathCreateMutable();
  v11 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrowShape:annotationCopy inContext:0 options:v11 inPath:Mutable];

  [annotationCopy strokeWidth];
  v13 = v12;

  if (v13 <= thickness)
  {
    thicknessCopy = thickness;
  }

  else
  {
    thicknessCopy = v13;
  }

  v15 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:Mutable withStrokeWidth:thicknessCopy];
  v18.x = x;
  v18.y = y;
  v16 = CGPathContainsPoint(v15, 0, v18, 0);
  CGPathRelease(v15);
  CGPathRelease(Mutable);
  return v16;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v9 = +[AKAnnotationRendererOptions defaultOptions];
  [self _drawPathForArrowShape:annotationCopy inContext:0 options:v9 inPath:Mutable];

  v11.x = x;
  v11.y = y;
  LOBYTE(self) = CGPathContainsPoint(Mutable, 0, v11, 0);
  CGPathRelease(Mutable);
  return self;
}

+ (void)_drawPathForArrowShape:(id)shape inContext:(CGContext *)context options:(id)options inPath:(CGPath *)Mutable
{
  shapeCopy = shape;
  [shapeCopy startPoint];
  v9 = v8;
  v11 = v10;
  [shapeCopy endPoint];
  v13 = v12;
  v15 = v14;
  [shapeCopy arrowHeadLength];
  v17 = v16;
  [shapeCopy arrowHeadWidth];
  v38 = v18;
  [shapeCopy arrowLineWidth];
  v20 = v19;
  if (Mutable)
  {
    CGPathRetain(Mutable);
  }

  else
  {
    Mutable = CGPathCreateMutable();
  }

  v21 = v13 - v9;
  v39 = v11;
  v22 = v15 - v11;
  v23 = hypot(v13 - v9, v15 - v11);
  if (v23 > 0.0)
  {
    v24 = v23;
    if (([shapeCopy arrowHeadStyle] & 2) != 0)
    {
      v25 = v24 + -0.1;
      if (v24 >= v17)
      {
        v25 = v17;
      }

      v26 = v13 - v21 * v25 / v24;
      v37 = v9;
      v27 = v15 - v22 * v25 / v24;
      v36 = v22 * (v20 * 0.5) / v24;
      v28 = v21 * (v20 * 0.5) / v24;
      CGPathMoveToPoint(Mutable, 0, v26 - v36, v28 + v27);
      v29 = v22 * (v38 * 0.5) / v24;
      v30 = v21 * (v38 * 0.5) / v24;
      CGPathAddLineToPoint(Mutable, 0, v26 - v29, v30 + v27);
      CGPathAddLineToPoint(Mutable, 0, v13, v15);
      CGPathAddLineToPoint(Mutable, 0, v29 + v26, v27 - v30);
      CGPathAddLineToPoint(Mutable, 0, v36 + v26, v27 - v28);
      CGPathAddLineToPoint(Mutable, 0, v37 + v36, v39 - v28);
      CGPathAddLineToPoint(Mutable, 0, v37 - v36, v39 + v28);
      CGPathAddLineToPoint(Mutable, 0, v26 - v36, v28 + v27);
      if (context)
      {
        fillColor = [shapeCopy fillColor];
        if (fillColor)
        {
          v32 = fillColor;
          fillColor2 = [shapeCopy fillColor];
          Alpha = CGColorGetAlpha([fillColor2 CGColor]);

          if (Alpha != 0.0)
          {
            CGContextAddPath(context, Mutable);
            CGContextFillPath(context);
          }
        }

        strokeColor = [shapeCopy strokeColor];

        if (strokeColor)
        {
          CGContextAddPath(context, Mutable);
          CGContextStrokePath(context);
        }
      }
    }
  }

  CGPathRelease(Mutable);
}

@end