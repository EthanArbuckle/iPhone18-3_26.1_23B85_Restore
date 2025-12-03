@interface AKTextBoxAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKTextBoxAnnotationRenderer

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
  annotationCopy = annotation;
  fillColor = [annotationCopy fillColor];
  if (fillColor)
  {

LABEL_3:
    v6 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_12;
  }

  strokeColor = [annotationCopy strokeColor];
  if (strokeColor)
  {
    v8 = strokeColor;
    [annotationCopy strokeWidth];
    v10 = v9;

    if (v10 > 0.0)
    {
      goto LABEL_3;
    }
  }

  v11 = +[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [annotationCopy originalExifOrientation]);
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

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (CGRectIsEmpty(v29))
  {
    [annotationCopy rectangle];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = v11 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v18 = v11 * 0.5 + v17 * 2.0;
  [annotationCopy originalModelBaseScaleFactor];
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
  v12 = -(v10 + v11 * 2.0);
  [annotationCopy originalModelBaseScaleFactor];
  v14 = v13;

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGRectInset(*&v15, v12, -(v10 + v14 * 2.0));
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
  p_cache = &OBJC_METACLASS___AKCropAdornmentLayer.cache;
  if (hasShadow)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
  }

  CGContextSaveGState(context);
  v53[0] = 0;
  memset(&v52, 0, sizeof(v52));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:v53];
  transform = v52;
  CGContextConcatCTM(context, &transform);
  CGContextSaveGState(context);
  [annotationCopy rectangle];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  highlightColor = [annotationCopy highlightColor];
  if (highlightColor && (v24 = highlightColor, v25 = [optionsCopy forDisplay], v24, v25))
  {
    highlightColor2 = [annotationCopy highlightColor];
  }

  else
  {
    fillColor = [annotationCopy fillColor];

    if (!fillColor)
    {
      goto LABEL_13;
    }

    highlightColor2 = [annotationCopy fillColor];
  }

  fillColor = highlightColor2;
  if (highlightColor2 && CGColorGetAlpha([highlightColor2 CGColor]) != 0.0)
  {
    v28 = v22;
    v29 = v20;
    v30 = v18;
    v31 = v16;
    if ((v53[0] & 1) == 0)
    {
      [AKGeometryHelper renderingStrokeAlignedRectForRect:nilCopy withStrokeWidth:context alignToScreenUsingPageController:annotationCopy orAlignToContext:v16 usingAnnotation:v18, v20, v22, 0.0];
      v31 = v32;
      v30 = v33;
      v29 = v34;
      v28 = v35;
    }

    CGContextSetFillColorWithColor(context, [fillColor CGColor]);
    v54.origin.x = v31;
    v54.origin.y = v30;
    v54.size.width = v29;
    v54.size.height = v28;
    CGContextFillRect(context, v54);
  }

LABEL_13:
  [annotationCopy strokeWidth];
  if (v36 > 0.0)
  {
    strokeColor = [annotationCopy strokeColor];

    if (strokeColor)
    {
      if ([annotationCopy brushStyle])
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
          brushStyle = [annotationCopy brushStyle];
          v41 = [annotationCopy strokeColorForOptions:optionsCopy];
          [annotationCopy strokeWidth];
          v42 = [AKTSDBrushStroke strokeWithType:brushStyle color:v41 width:?];

          v43 = objc_alloc_init(AKTSDShape);
          [(AKTSDShape *)v43 setStroke:v42];
          [(AKTSDShape *)v43 setPath:v50];
          [(AKTSDShape *)v43 drawInContext:context];
          CGPathRelease(v39);

          p_cache = (&OBJC_METACLASS___AKCropAdornmentLayer + 16);
        }
      }

      else
      {
        if ((v53[0] & 1) == 0)
        {
          [annotationCopy strokeWidth];
          [AKGeometryHelper renderingStrokeAlignedRectForRect:nilCopy withStrokeWidth:context alignToScreenUsingPageController:annotationCopy orAlignToContext:v16 usingAnnotation:v18, v20, v22, v44];
          v16 = v45;
          v18 = v46;
          v20 = v47;
          v22 = v48;
        }

        v49 = [annotationCopy strokeColorForOptions:optionsCopy];
        CGContextSetStrokeColorWithColor(context, [v49 CGColor]);

        [annotationCopy strokeWidth];
        [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:?];
        if ([annotationCopy isDashed])
        {
          [annotationCopy strokeWidth];
          [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:?];
        }

        v56.origin.x = v16;
        v56.origin.y = v18;
        v56.size.width = v20;
        v56.size.height = v22;
        CGContextStrokeRect(context, v56);
      }
    }
  }

  CGContextRestoreGState(context);
  [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
  CGContextRestoreGState(context);
  if (hasShadow)
  {
    [p_cache + 298 endShadowInContext:context];
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [self _concreteDraggingBoundsInsetsForAnnotation:annotationCopy];
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
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:&v36, 0, 0, 0, 0, 0, 0];
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

  [annotationCopy strokeWidth];
  if (v28 <= 0.0 || ([annotationCopy strokeColor], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D75348], "clearColor"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "akIsEqualToColor:", v30), v30, v29, (v31 & 1) != 0))
  {
    v27 = 0;
  }

  else
  {
    [annotationCopy strokeWidth];
    if (v32 > thickness)
    {
      thickness = v32;
    }

    if (!v26)
    {
      v44.origin.x = v22;
      v44.origin.y = v23;
      v44.size.width = width;
      v44.size.height = height;
      v26 = CGPathCreateWithRect(v44, &v35);
    }

    v33 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v26 withStrokeWidth:thickness];
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