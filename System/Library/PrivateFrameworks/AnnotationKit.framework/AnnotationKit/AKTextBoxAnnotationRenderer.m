@interface AKTextBoxAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKTextBoxAnnotationRenderer

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
  v3 = a3;
  v4 = [v3 fillColor];
  if (v4)
  {

LABEL_3:
    v6 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_12;
  }

  v7 = [v3 strokeColor];
  if (v7)
  {
    v8 = v7;
    [v3 strokeWidth];
    v10 = v9;

    if (v10 > 0.0)
    {
      goto LABEL_3;
    }
  }

  v11 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v3 originalExifOrientation]);
  if (v11)
  {
    v5 = -5.0;
  }

  else
  {
    v5 = -1.0;
  }

  if (v11)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = -5.0;
  }

LABEL_12:

  v12 = v6;
  v13 = v5;
  result.height = v13;
  result.width = v12;
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
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (CGRectIsEmpty(v29))
  {
    [v9 rectangle];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = v11 * 0.5;
  [v9 originalModelBaseScaleFactor];
  v18 = v11 * 0.5 + v17 * 2.0;
  [v9 originalModelBaseScaleFactor];
  v20 = v16 + v19 * 2.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectInset(v30, v18, v20);
  v21 = v31.origin.x;
  v22 = v31.origin.y;
  v23 = v31.size.width;
  v24 = v31.size.height;

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
  v12 = -(v10 + v11 * 2.0);
  [v8 originalModelBaseScaleFactor];
  v14 = v13;

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGRectInset(*&v15, v12, -(v10 + v14 * 2.0));
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
  p_cache = &OBJC_METACLASS___AKCropAdornmentLayer.cache;
  if (v13)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  CGContextSaveGState(a4);
  v53[0] = 0;
  memset(&v52, 0, sizeof(v52));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:v53];
  transform = v52;
  CGContextConcatCTM(a4, &transform);
  CGContextSaveGState(a4);
  [v10 rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v10 highlightColor];
  if (v23 && (v24 = v23, v25 = [v11 forDisplay], v24, v25))
  {
    v26 = [v10 highlightColor];
  }

  else
  {
    v27 = [v10 fillColor];

    if (!v27)
    {
      goto LABEL_13;
    }

    v26 = [v10 fillColor];
  }

  v27 = v26;
  if (v26 && CGColorGetAlpha([v26 CGColor]) != 0.0)
  {
    v28 = v22;
    v29 = v20;
    v30 = v18;
    v31 = v16;
    if ((v53[0] & 1) == 0)
    {
      [AKGeometryHelper renderingStrokeAlignedRectForRect:v12 withStrokeWidth:a4 alignToScreenUsingPageController:v10 orAlignToContext:v16 usingAnnotation:v18, v20, v22, 0.0];
      v31 = v32;
      v30 = v33;
      v29 = v34;
      v28 = v35;
    }

    CGContextSetFillColorWithColor(a4, [v27 CGColor]);
    v54.origin.x = v31;
    v54.origin.y = v30;
    v54.size.width = v29;
    v54.size.height = v28;
    CGContextFillRect(a4, v54);
  }

LABEL_13:
  [v10 strokeWidth];
  if (v36 > 0.0)
  {
    v37 = [v10 strokeColor];

    if (v37)
    {
      if ([v10 brushStyle])
      {
        v55.origin.x = v16;
        v55.origin.y = v18;
        v55.size.width = v20;
        v55.size.height = v22;
        v38 = CGPathCreateWithRect(v55, 0);
        if (v38)
        {
          v39 = v38;
          v50 = [AKTSDBezierPath bezierPathWithCGPath:v38];
          v40 = [v10 brushStyle];
          v41 = [v10 strokeColorForOptions:v11];
          [v10 strokeWidth];
          v42 = [AKTSDBrushStroke strokeWithType:v40 color:v41 width:?];

          v43 = objc_alloc_init(AKTSDShape);
          [(AKTSDShape *)v43 setStroke:v42];
          [(AKTSDShape *)v43 setPath:v50];
          [(AKTSDShape *)v43 drawInContext:a4];
          CGPathRelease(v39);

          p_cache = (&OBJC_METACLASS___AKCropAdornmentLayer + 16);
        }
      }

      else
      {
        if ((v53[0] & 1) == 0)
        {
          [v10 strokeWidth];
          [AKGeometryHelper renderingStrokeAlignedRectForRect:v12 withStrokeWidth:a4 alignToScreenUsingPageController:v10 orAlignToContext:v16 usingAnnotation:v18, v20, v22, v44];
          v16 = v45;
          v18 = v46;
          v20 = v47;
          v22 = v48;
        }

        v49 = [v10 strokeColorForOptions:v11];
        CGContextSetStrokeColorWithColor(a4, [v49 CGColor]);

        [v10 strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:?];
        if ([v10 isDashed])
        {
          [v10 strokeWidth];
          [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:?];
        }

        v56.origin.x = v16;
        v56.origin.y = v18;
        v56.size.width = v20;
        v56.size.height = v22;
        CGContextStrokeRect(a4, v56);
      }
    }
  }

  CGContextRestoreGState(a4);
  [AKTextAnnotationRenderHelper renderAnnotationText:v10 intoContext:a4 options:v11 pageControllerOrNil:v12];
  CGContextRestoreGState(a4);
  if (v13)
  {
    [p_cache + 298 endShadowInContext:a4];
  }

  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  [v9 rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [a1 _concreteDraggingBoundsInsetsForAnnotation:v9];
  v19 = v18;
  v21 = v20;
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  v41 = CGRectInset(v40, v19, v21);
  v22 = v41.origin.x;
  v23 = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v36 = 0;
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v9 hasRotation:&v36, 0, 0, 0, 0, 0, 0];
  if (v36 == 1)
  {
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = width;
    v42.size.height = height;
    v26 = CGPathCreateWithRect(v42, &v35);
    v37.x = x;
    v37.y = y;
    if (CGPathContainsPoint(v26, 0, v37, 0))
    {
LABEL_3:
      v27 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v43.origin.x = v22;
    v43.origin.y = v23;
    v43.size.width = width;
    v43.size.height = height;
    v39.x = x;
    v39.y = y;
    v26 = 0;
    if (CGRectContainsPoint(v43, v39))
    {
      goto LABEL_3;
    }
  }

  [v9 strokeWidth];
  if (v28 <= 0.0 || ([v9 strokeColor], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75348], "clearColor"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "akIsEqualToColor:", v30), v30, v29, (v31 & 1) != 0))
  {
    v27 = 0;
  }

  else
  {
    [v9 strokeWidth];
    if (v32 > a5)
    {
      a5 = v32;
    }

    if (!v26)
    {
      v44.origin.x = v22;
      v44.origin.y = v23;
      v44.size.width = width;
      v44.size.height = height;
      v26 = CGPathCreateWithRect(v44, &v35);
    }

    v33 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v26 withStrokeWidth:a5];
    v38.x = x;
    v38.y = y;
    v27 = CGPathContainsPoint(v33, 0, v38, 0);
    CGPathRelease(v33);
  }

LABEL_13:
  CGPathRelease(v26);

  return v27;
}

@end