@interface AKDoodleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKDoodleAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (([v3 pathIsPrestroked] & 1) == 0)
  {
    [v3 strokeWidth];
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

  [v3 rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v14];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if ([v3 hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:v3 onAnnotation:v16, v18, v20, v22];
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  CGContextSaveGState(a4);
  [v11 allowHDR];
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];

  v13 = [v10 hasShadow];
  if (v13)
  {
    [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
  }

  CGContextSaveGState(a4);
  memset(&v47[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  v47[0] = v47[1];
  CGContextConcatCTM(a4, v47);
  [v10 rectangle];
  CGContextTranslateCTM(a4, v14, v15);
  v16 = [v10 path];

  if (v16)
  {
    v17 = [v10 path];
    v18 = [v17 newCGPathForPlatformBezierPath];

    if (v18)
    {
      v19 = [v10 strokeColor];

      if (v19)
      {
        v20 = [v10 originalExifOrientation];
        if (v20 != 1)
        {
          v21 = [AKGeometryHelper inverseExifOrientation:v20];
          BoundingBox = CGPathGetBoundingBox(v18);
          x = BoundingBox.origin.x;
          y = BoundingBox.origin.y;
          width = BoundingBox.size.width;
          height = BoundingBox.size.height;
          MidX = CGRectGetMidX(BoundingBox);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v27 = [AKGeometryHelper newPathWithPath:v18 applyingExifOrientation:v21 aboutCenter:MidX, CGRectGetMidY(v49)];
          CGPathRelease(v18);
          v18 = v27;
        }

        v50 = CGPathGetBoundingBox(v18);
        v28 = v50.origin.x;
        v29 = v50.origin.y;
        v30 = v50.size.width;
        v31 = v50.size.height;
        [v10 rectangle];
        v33 = v32 / fmax(v30, 0.0005);
        [v10 rectangle];
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

        [v10 strokeWidth];
        v38 = v37 / v36;
        v39 = [v10 pathIsPrestroked];
        v40 = [v10 strokeColorForOptions:v11];
        v41 = [v40 CGColor];
        if (v39)
        {
          CGContextSetFillColorWithColor(a4, v41);
        }

        else
        {
          CGContextSetStrokeColorWithColor(a4, v41);

          [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:v38];
          if ([v10 isDashed])
          {
            [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:v38];
          }
        }

        CGContextScaleCTM(a4, v36, v36);
        CGContextTranslateCTM(a4, -v28, -v29);
        if (([v10 pathIsPrestroked] & 1) != 0 || !objc_msgSend(v10, "brushStyle"))
        {
          CGContextAddPath(a4, v18);
          if ([v10 pathIsPrestroked])
          {
            CGContextFillPath(a4);
          }

          else
          {
            CGContextStrokePath(a4);
          }
        }

        else
        {
          v42 = [v10 brushStyle];
          v43 = [v10 strokeColor];
          v44 = [AKTSDBrushStroke strokeWithType:v42 color:v43 width:v38];

          v45 = [AKTSDBezierPath bezierPathWithCGPath:v18];
          v46 = objc_alloc_init(AKTSDShape);
          [(AKTSDShape *)v46 setStroke:v44];
          [(AKTSDShape *)v46 setPath:v45];
          [(AKTSDShape *)v46 drawInContext:a4];
        }
      }
    }

    CGPathRelease(v18);
  }

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
  v8 = a4;
  v9 = [v8 path];

  if (v9)
  {
    v10 = [v8 path];
    v11 = [v10 newCGPathForPlatformBezierPath];

    v12 = [v8 originalExifOrientation];
    point = x;
    v13 = y;
    if (v12 != 1)
    {
      v15 = [AKGeometryHelper inverseExifOrientation:v12];
      BoundingBox = CGPathGetBoundingBox(v11);
      v16 = BoundingBox.origin.x;
      v17 = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      MidX = CGRectGetMidX(BoundingBox);
      v58.origin.x = v16;
      v58.origin.y = v17;
      v58.size.width = width;
      v58.size.height = height;
      v21 = [AKGeometryHelper newPathWithPath:v11 applyingExifOrientation:v15 aboutCenter:MidX, CGRectGetMidY(v58)];
      CGPathRelease(v11);
      v11 = v21;
    }

    v59 = CGPathGetBoundingBox(v11);
    v22 = v59.origin.x;
    v23 = v59.origin.y;
    v24 = v59.size.width;
    v25 = v59.size.height;
    [v8 rectangle];
    v27 = v26 / fmax(v24, 0.0005);
    [v8 rectangle];
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
    [v8 rectangle];
    CGAffineTransformMakeTranslation(&t1, v31, v32);
    v52 = v55;
    CGAffineTransformConcat(&t2, &v52, &t1);
    v55 = t2;
    v33 = MEMORY[0x245CAE590](v11, &v55);
    if (!v33)
    {
      v14 = 0;
LABEL_34:
      CGPathRelease(v11);
      goto LABEL_35;
    }

    v34 = v33;
    memset(&t2, 0, sizeof(t2));
    [AKGeometryHelper rotationTransformForRectangularAnnotation:v8 hasRotation:0];
    v52 = t2;
    CGAffineTransformInvert(&t1, &v52);
    t2 = t1;
    [v8 strokeWidth];
    if (v35 <= a5)
    {
      v36 = a5;
    }

    else
    {
      v36 = v35;
    }

    if ([v8 pathIsPrestroked])
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

      if ([v8 pathIsDot])
      {
        v60 = CGPathGetBoundingBox(v34);
        v40 = v60.origin.x;
        v41 = v60.origin.y;
        v42 = v60.size.width;
        v43 = v60.size.height;
        v44 = CGRectGetWidth(v60);
        if (v44 > a5)
        {
          a5 = v44;
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
        [AKGeometryHelper rectWithSize:a5 centeredAtPoint:a5, v45, CGRectGetMidY(v62)];
        v37 = CGPathCreateWithEllipseInRect(v63, 0);
        goto LABEL_30;
      }

      v37 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v34 withStrokeWidth:v36 * 0.5];
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
      v37 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v34 withStrokeWidth:v36];
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