@interface AKTriangleAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGPath)_newPathScaledToModelSpaceForAnnotation:(id)a3;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKTriangleAnnotationRenderer

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
    v21 = [a1 _newPathScaledToModelSpaceForAnnotation:v9];
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
  CGContextSaveGState(a4);
  [v11 allowHDR];
  v13 = [a1 _newPathScaledToModelSpaceForAnnotation:v10];
  if (v13)
  {
    v14 = v13;
    [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
    v15 = [v10 hasShadow];
    if (v15)
    {
      [AKAnnotationRendererUtilities beginShadowInContext:a4 forAnnotation:v10];
    }

    CGContextSaveGState(a4);
    memset(&v30[1], 0, sizeof(CGAffineTransform));
    [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
    v30[0] = v30[1];
    CGContextConcatCTM(a4, v30);
    CGContextSaveGState(a4);
    v16 = [v10 fillColor];
    if (v16)
    {
      v17 = v16;
      v18 = [v10 fillColor];
      Alpha = CGColorGetAlpha([v18 CGColor]);

      if (Alpha != 0.0)
      {
        v20 = [v10 fillColorForOptions:v11];
        CGContextSetFillColorWithColor(a4, [v20 CGColor]);

        CGContextAddPath(a4, v14);
        CGContextFillPath(a4);
      }
    }

    v21 = [v10 strokeColor];

    if (v21)
    {
      if ([v10 brushStyle])
      {
        v22 = [v10 brushStyle];
        v23 = [v10 strokeColor];
        [v10 strokeWidth];
        v24 = [AKTSDBrushStroke strokeWithType:v22 color:v23 width:?];

        v25 = [AKTSDBezierPath bezierPathWithCGPath:v14];
        v26 = objc_alloc_init(AKTSDShape);
        [(AKTSDShape *)v26 setStroke:v24];
        [(AKTSDShape *)v26 setPath:v25];
        [(AKTSDShape *)v26 drawInContext:a4];
      }

      else
      {
        [v10 strokeWidth];
        v28 = v27;
        v29 = [v10 strokeColorForOptions:v11];
        CGContextSetStrokeColorWithColor(a4, [v29 CGColor]);

        [AKAnnotationRendererUtilities setStandardLineStateInContext:a4 forLineWidth:v28];
        if ([v10 isDashed])
        {
          [AKAnnotationRendererUtilities setStandardLineDashInContext:a4 forLineWidth:v28];
        }

        CGContextAddPath(a4, v14);
        CGContextStrokePath(a4);
      }
    }

    CGContextRestoreGState(a4);
    [AKTextAnnotationRenderHelper renderAnnotationText:v10 intoContext:a4 options:v11 pageControllerOrNil:v12];
    CGContextRestoreGState(a4);
    if (v15)
    {
      [AKAnnotationRendererUtilities endShadowInContext:a4];
    }

    CGPathRelease(v14);
  }

  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [a1 _newPathScaledToModelSpaceForAnnotation:v9];
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
  v8 = [a1 _newPathScaledToModelSpaceForAnnotation:v7];
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

+ (CGPath)_newPathScaledToModelSpaceForAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v4 = v48.origin.x;
  v5 = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  MidX = CGRectGetMidX(v48);
  v49.origin.x = v4;
  v49.origin.y = v5;
  v49.size.width = width;
  v49.size.height = height;
  MidY = CGRectGetMidY(v49);
  v10 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v3 originalExifOrientation]);
  [AKGeometryHelper adjustRect:v10 forExifOrientation:v4 aboutCenter:v5, width, height, MidX, MidY];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v3 path];

  v20 = MEMORY[0x277CBF2C0];
  if (v19)
  {
    v21 = [v3 path];
    v22 = [v21 newCGPathForPlatformBezierPath];

    BoundingBox = CGPathGetBoundingBox(v22);
    v23 = v16 / fmax(BoundingBox.size.width, 0.0005);
    *yb = v20[1];
    *&v47.a = *v20;
    *xb = *&v47.a;
    *&v47.c = *yb;
    v24 = v18 / fmax(BoundingBox.size.height, 0.0005);
    *&v47.tx = v20[2];
    *v34 = *&v47.tx;
    CGAffineTransformMakeTranslation(&t2, -BoundingBox.origin.x, -BoundingBox.origin.y);
    *&t1.a = *xb;
    *&t1.c = *yb;
    *&t1.tx = *v34;
    CGAffineTransformConcat(&v47, &t1, &t2);
    CGAffineTransformMakeScale(&t1, v23, v24);
    v44 = v47;
    CGAffineTransformConcat(&t2, &v44, &t1);
    v47 = t2;
    CGAffineTransformMakeTranslation(&t1, v12, v14);
    v44 = v47;
    CGAffineTransformConcat(&t2, &v44, &t1);
    v47 = t2;
    v25 = MEMORY[0x245CAE590](v22, &v47);
    CGPathRelease(v22);
  }

  else
  {
    v51.origin.x = v12;
    v51.origin.y = v14;
    v51.size.width = v16;
    v51.size.height = v18;
    x = CGRectGetMinX(v51);
    v52.origin.x = v12;
    v52.origin.y = v14;
    v52.size.width = v16;
    v52.size.height = v18;
    y = CGRectGetMinY(v52);
    v53.origin.x = v12;
    v53.origin.y = v14;
    v53.size.width = v16;
    v53.size.height = v18;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    v27 = CGRectGetMidX(v55);
    v56.origin.x = v12;
    v56.origin.y = v14;
    v56.size.width = v16;
    v56.size.height = v18;
    MaxY = CGRectGetMaxY(v56);
    Mutable = CGPathCreateMutable();
    v25 = Mutable;
    if (Mutable)
    {
      CGPathMoveToPoint(Mutable, 0, x, y);
      CGPathAddLineToPoint(v25, 0, MaxX, MinY);
      CGPathAddLineToPoint(v25, 0, v27, MaxY);
      CGPathCloseSubpath(v25);
    }
  }

  *ya = v20[1];
  *xa = *v20;
  *&v47.a = *v20;
  *&v47.c = *ya;
  *&v47.tx = v20[2];
  v36[1] = v47.ty;
  [AKGeometryHelper affineTransformForExifOrientation:v10 aboutCenter:MidX, MidY, *&v47.tx];
  t1 = v47;
  CGAffineTransformConcat(&v47, &t1, &t2);
  if (([v3 horizontallyFlipped] & 1) != 0 || objc_msgSend(v3, "verticallyFlipped"))
  {
    *&t2.a = *xa;
    *&t2.c = *ya;
    *&t2.tx = *v36;
    CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
    *&v44.a = *xa;
    *&v44.c = *ya;
    *&v44.tx = *v36;
    CGAffineTransformConcat(&t2, &v44, &t1);
    if ([v3 horizontallyFlipped])
    {
      v30 = -1.0;
    }

    else
    {
      v30 = 1.0;
    }

    if ([v3 verticallyFlipped])
    {
      v31 = -1.0;
    }

    else
    {
      v31 = 1.0;
    }

    CGAffineTransformMakeScale(&v44, v30, v31);
    v43 = t2;
    CGAffineTransformConcat(&t1, &v43, &v44);
    t2 = t1;
    CGAffineTransformMakeTranslation(&v44, MidX, MidY);
    v43 = t2;
    CGAffineTransformConcat(&t1, &v43, &v44);
    t2 = t1;
    v44 = v47;
    v43 = t1;
    CGAffineTransformConcat(&t1, &v44, &v43);
    v47 = t1;
  }

  if (v25)
  {
    v32 = MEMORY[0x245CAE590](v25, &v47);
    CGPathRelease(v25);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end