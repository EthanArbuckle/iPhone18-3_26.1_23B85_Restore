@interface AKDoodleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKDoodleAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (([annotationCopy pathIsPrestroked] & 1) == 0)
  {
    [annotationCopy strokeWidth];
    v13 = -v12;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectInset(v35, v13, v13);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v14];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v16, v18, v20, v22];
    v16 = v23;
    v18 = v24;
    v20 = v25;
    v22 = v26;
  }

  v37.origin.x = v16;
  v37.origin.y = v18;
  v37.size.width = v20;
  v37.size.height = v22;
  v38 = CGRectInset(v37, -1.0, -1.0);
  v27 = v38.origin.x;
  v28 = v38.origin.y;
  v29 = v38.size.width;
  v30 = v38.size.height;

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
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
  memset(&v47[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  v47[0] = v47[1];
  CGContextConcatCTM(context, v47);
  [annotationCopy rectangle];
  CGContextTranslateCTM(context, v14, v15);
  path = [annotationCopy path];

  if (path)
  {
    path2 = [annotationCopy path];
    newCGPathForPlatformBezierPath = [path2 newCGPathForPlatformBezierPath];

    if (newCGPathForPlatformBezierPath)
    {
      strokeColor = [annotationCopy strokeColor];

      if (strokeColor)
      {
        originalExifOrientation = [annotationCopy originalExifOrientation];
        if (originalExifOrientation != 1)
        {
          v21 = [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
          BoundingBox = CGPathGetBoundingBox(newCGPathForPlatformBezierPath);
          x = BoundingBox.origin.x;
          y = BoundingBox.origin.y;
          width = BoundingBox.size.width;
          height = BoundingBox.size.height;
          MidX = CGRectGetMidX(BoundingBox);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v27 = [AKGeometryHelper newPathWithPath:newCGPathForPlatformBezierPath applyingExifOrientation:v21 aboutCenter:MidX, CGRectGetMidY(v49)];
          CGPathRelease(newCGPathForPlatformBezierPath);
          newCGPathForPlatformBezierPath = v27;
        }

        v50 = CGPathGetBoundingBox(newCGPathForPlatformBezierPath);
        v28 = v50.origin.x;
        v29 = v50.origin.y;
        v30 = v50.size.width;
        v31 = v50.size.height;
        [annotationCopy rectangle];
        v33 = v32 / fmax(v30, 0.0005);
        [annotationCopy rectangle];
        v35 = v34 / fmax(v31, 0.0005);
        if (v33 >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v33;
        }

        if (v36 < 0.0005)
        {
          v36 = v33 >= v35 ? v33 : v35;
          if (v36 < 0.0005)
          {
            v36 = 1.0;
          }
        }

        [annotationCopy strokeWidth];
        v38 = v37 / v36;
        pathIsPrestroked = [annotationCopy pathIsPrestroked];
        v40 = [annotationCopy strokeColorForOptions:optionsCopy];
        cGColor = [v40 CGColor];
        if (pathIsPrestroked)
        {
          CGContextSetFillColorWithColor(context, cGColor);
        }

        else
        {
          CGContextSetStrokeColorWithColor(context, cGColor);

          [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:v38];
          if ([annotationCopy isDashed])
          {
            [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:v38];
          }
        }

        CGContextScaleCTM(context, v36, v36);
        CGContextTranslateCTM(context, -v28, -v29);
        if (([annotationCopy pathIsPrestroked] & 1) != 0 || !objc_msgSend(annotationCopy, "brushStyle"))
        {
          CGContextAddPath(context, newCGPathForPlatformBezierPath);
          if ([annotationCopy pathIsPrestroked])
          {
            CGContextFillPath(context);
          }

          else
          {
            CGContextStrokePath(context);
          }
        }

        else
        {
          brushStyle = [annotationCopy brushStyle];
          strokeColor2 = [annotationCopy strokeColor];
          v44 = [AKTSDBrushStroke strokeWithType:brushStyle color:strokeColor2 width:v38];

          v45 = [AKTSDBezierPath bezierPathWithCGPath:newCGPathForPlatformBezierPath];
          v46 = objc_alloc_init(AKTSDShape);
          [(AKTSDShape *)v46 setStroke:v44];
          [(AKTSDShape *)v46 setPath:v45];
          [(AKTSDShape *)v46 drawInContext:context];
        }
      }
    }

    CGPathRelease(newCGPathForPlatformBezierPath);
  }

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
  path = [annotationCopy path];

  if (path)
  {
    path2 = [annotationCopy path];
    newCGPathForPlatformBezierPath = [path2 newCGPathForPlatformBezierPath];

    originalExifOrientation = [annotationCopy originalExifOrientation];
    point = x;
    v13 = y;
    if (originalExifOrientation != 1)
    {
      v15 = [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
      BoundingBox = CGPathGetBoundingBox(newCGPathForPlatformBezierPath);
      v16 = BoundingBox.origin.x;
      v17 = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      MidX = CGRectGetMidX(BoundingBox);
      v58.origin.x = v16;
      v58.origin.y = v17;
      v58.size.width = width;
      v58.size.height = height;
      v21 = [AKGeometryHelper newPathWithPath:newCGPathForPlatformBezierPath applyingExifOrientation:v15 aboutCenter:MidX, CGRectGetMidY(v58)];
      CGPathRelease(newCGPathForPlatformBezierPath);
      newCGPathForPlatformBezierPath = v21;
    }

    v59 = CGPathGetBoundingBox(newCGPathForPlatformBezierPath);
    v22 = v59.origin.x;
    v23 = v59.origin.y;
    v24 = v59.size.width;
    v25 = v59.size.height;
    [annotationCopy rectangle];
    v27 = v26 / fmax(v24, 0.0005);
    [annotationCopy rectangle];
    v29 = v28 / fmax(v25, 0.0005);
    if (v27 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v27;
    }

    if (v30 < 0.0005)
    {
      v30 = v27 >= v29 ? v27 : v29;
      if (v30 < 0.0005)
      {
        v30 = 1.0;
      }
    }

    v50 = *(MEMORY[0x277CBF2C0] + 16);
    *&v55.a = *MEMORY[0x277CBF2C0];
    v51 = *&v55.a;
    *&v55.c = v50;
    *&v55.tx = *(MEMORY[0x277CBF2C0] + 32);
    point_8 = *&v55.tx;
    CGAffineTransformMakeTranslation(&t2, -v22, -v23);
    *&t1.a = v51;
    *&t1.c = v50;
    *&t1.tx = point_8;
    CGAffineTransformConcat(&v55, &t1, &t2);
    CGAffineTransformMakeScale(&t1, v30, v30);
    v52 = v55;
    CGAffineTransformConcat(&t2, &v52, &t1);
    v55 = t2;
    [annotationCopy rectangle];
    CGAffineTransformMakeTranslation(&t1, v31, v32);
    v52 = v55;
    CGAffineTransformConcat(&t2, &v52, &t1);
    v55 = t2;
    v33 = MEMORY[0x245CAE590](newCGPathForPlatformBezierPath, &v55);
    if (!v33)
    {
      v14 = 0;
LABEL_34:
      CGPathRelease(newCGPathForPlatformBezierPath);
      goto LABEL_35;
    }

    v34 = v33;
    memset(&t2, 0, sizeof(t2));
    [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
    v52 = t2;
    CGAffineTransformInvert(&t1, &v52);
    t2 = t1;
    [annotationCopy strokeWidth];
    if (v35 <= thickness)
    {
      thicknessCopy = thickness;
    }

    else
    {
      thicknessCopy = v35;
    }

    if ([annotationCopy pathIsPrestroked])
    {
      v56.x = point;
      v56.y = v13;
      if (CGPathContainsPoint(v34, &t2, v56, 0))
      {
        v14 = 1;
LABEL_33:
        CGPathRelease(v34);
        goto LABEL_34;
      }

      if ([annotationCopy pathIsDot])
      {
        v60 = CGPathGetBoundingBox(v34);
        v40 = v60.origin.x;
        v41 = v60.origin.y;
        v42 = v60.size.width;
        v43 = v60.size.height;
        v44 = CGRectGetWidth(v60);
        if (v44 > thickness)
        {
          thickness = v44;
        }

        v61.origin.x = v40;
        v61.origin.y = v41;
        v61.size.width = v42;
        v61.size.height = v43;
        v45 = CGRectGetMidX(v61);
        v62.origin.x = v40;
        v62.origin.y = v41;
        v62.size.width = v42;
        v62.size.height = v43;
        [AKGeometryHelper rectWithSize:thickness centeredAtPoint:thickness, v45, CGRectGetMidY(v62)];
        v37 = CGPathCreateWithEllipseInRect(v63, 0);
        goto LABEL_30;
      }

      v37 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v34 withStrokeWidth:thicknessCopy * 0.5];
      if (v37)
      {
LABEL_30:
        v39 = v37;
        v38 = point;
        goto LABEL_31;
      }
    }

    else
    {
      v37 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v34 withStrokeWidth:thicknessCopy];
      v38 = point;
      if (v37)
      {
        v39 = v37;
LABEL_31:
        v46 = v13;
        v14 = CGPathContainsPoint(v37, &t2, *&v38, 0);
        CGPathRelease(v39);
        goto LABEL_33;
      }
    }

    v14 = 0;
    goto LABEL_33;
  }

  v14 = 0;
LABEL_35:

  return v14;
}

@end