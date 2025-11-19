@interface AKArrowShapeAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
+ (void)_drawPathForArrowShape:(id)a3 inContext:(CGContext *)a4 options:(id)a5 inPath:(CGPath *)Mutable;
@end

@implementation AKArrowShapeAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v4 = a3;
  Mutable = CGPathCreateMutable();
  v6 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrowShape:v4 inContext:0 options:v6 inPath:Mutable];

  BoundingBox = CGPathGetBoundingBox(Mutable);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(Mutable);
  [v4 strokeWidth];
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
  if ([v4 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v4 onAnnotation:v13, v14, v15, v16];
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4
{
  v5 = a3;
  Mutable = CGPathCreateMutable();
  v7 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrowShape:v5 inContext:0 options:v7 inPath:Mutable];

  v8 = CGPathCreateMutable();
  CGPathAddPath(v8, 0, Mutable);
  CGPathRelease(Mutable);
  MutableCopy = CGPathCreateMutableCopy(v8);
  CGPathRelease(v8);
  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v26 = a3;
  v10 = a5;
  v11 = a6;
  CGContextSaveGState(a4);
  [v10 allowHDR];
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v26 forDisplay:objc_msgSend(v10 pageControllerOrNil:{"forDisplay"), v11}];
  v12 = [v26 hasShadow];
  if (v12)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v26];
  }

  CGContextSaveGState(a4);
  Mutable = CGPathCreateMutable();
  [a1 _drawPathForArrowShape:v26 inContext:0 options:v10 inPath:Mutable];
  v14 = [v26 fillColor];
  if (v14)
  {
    v15 = v14;
    v16 = [v26 fillColor];
    Alpha = CGColorGetAlpha([v16 CGColor]);

    if (Alpha != 0.0)
    {
      v18 = [v26 fillColorForOptions:v10];
      CGContextSetFillColorWithColor(a4, [v18 CGColor]);

      CGContextAddPath(a4, Mutable);
      CGContextFillPath(a4);
    }
  }

  v19 = [v26 strokeColor];

  if (v19)
  {
    if ([v26 brushStyle])
    {
      v20 = [v26 brushStyle];
      v21 = [v26 strokeColor];
      [v26 strokeWidth];
      v22 = [AKTSDBrushStroke strokeWithType:v20 color:v21 width:?];

      v23 = [AKTSDBezierPath bezierPathWithCGPath:Mutable];
      v24 = objc_alloc_init(AKTSDShape);
      [(AKTSDShape *)v24 setStroke:v22];
      [(AKTSDShape *)v24 setPath:v23];
      [(AKTSDShape *)v24 drawInContext:a4];
    }

    else
    {
      v25 = [v26 strokeColorForOptions:v10];
      CGContextSetStrokeColorWithColor(a4, [v25 CGColor]);

      [v26 strokeWidth];
      [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
      if ([v26 isDashed])
      {
        [v26 strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
      }

      CGContextAddPath(a4, Mutable);
      CGContextStrokePath(a4);
    }
  }

  CGPathRelease(Mutable);
  CGContextRestoreGState(a4);
  [AKTextAnnotationRenderHelper renderAnnotationText:v26 intoContext:a4 options:v10 pageControllerOrNil:v11];
  if (v12)
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
  Mutable = CGPathCreateMutable();
  v11 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrowShape:v9 inContext:0 options:v11 inPath:Mutable];

  [v9 strokeWidth];
  v13 = v12;

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  v15 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:Mutable withStrokeWidth:v14];
  v18.x = x;
  v18.y = y;
  v16 = CGPathContainsPoint(v15, 0, v18, 0);
  CGPathRelease(v15);
  CGPathRelease(Mutable);
  return v16;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  Mutable = CGPathCreateMutable();
  v9 = +[AKAnnotationRendererOptions defaultOptions];
  [a1 _drawPathForArrowShape:v7 inContext:0 options:v9 inPath:Mutable];

  v11.x = x;
  v11.y = y;
  LOBYTE(a1) = CGPathContainsPoint(Mutable, 0, v11, 0);
  CGPathRelease(Mutable);
  return a1;
}

+ (void)_drawPathForArrowShape:(id)a3 inContext:(CGContext *)a4 options:(id)a5 inPath:(CGPath *)Mutable
{
  v40 = a3;
  [v40 startPoint];
  v9 = v8;
  v11 = v10;
  [v40 endPoint];
  v13 = v12;
  v15 = v14;
  [v40 arrowHeadLength];
  v17 = v16;
  [v40 arrowHeadWidth];
  v38 = v18;
  [v40 arrowLineWidth];
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
    if (([v40 arrowHeadStyle] & 2) != 0)
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
      if (a4)
      {
        v31 = [v40 fillColor];
        if (v31)
        {
          v32 = v31;
          v33 = [v40 fillColor];
          Alpha = CGColorGetAlpha([v33 CGColor]);

          if (Alpha != 0.0)
          {
            CGContextAddPath(a4, Mutable);
            CGContextFillPath(a4);
          }
        }

        v35 = [v40 strokeColor];

        if (v35)
        {
          CGContextAddPath(a4, Mutable);
          CGContextStrokePath(a4);
        }
      }
    }
  }

  CGPathRelease(Mutable);
}

@end