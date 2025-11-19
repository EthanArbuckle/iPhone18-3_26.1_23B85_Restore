@interface AKHeartAnnotationRenderer
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

@implementation AKHeartAnnotationRenderer

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
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  MidX = CGRectGetMidX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MidY = CGRectGetMidY(v67);
  v10 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v3 originalExifOrientation]);
  [AKGeometryHelper adjustRect:v10 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v68.origin.x = v12;
    v68.origin.y = v14;
    v68.size.width = v16;
    v68.size.height = v18;
    v20 = CGRectGetMidX(v68);
    v69.origin.x = v12;
    v69.origin.y = v14;
    v69.size.width = v16;
    v69.size.height = v18;
    MinY = CGRectGetMinY(v69);
    CGPathMoveToPoint(Mutable, 0, v20, MinY);
    v70.origin.x = v12;
    v70.origin.y = v14;
    v70.size.width = v16;
    v70.size.height = v18;
    MinX = CGRectGetMinX(v70);
    v71.origin.x = v12;
    v71.origin.y = v14;
    v71.size.width = v16;
    v71.size.height = v18;
    v23 = CGRectGetMinY(v71);
    v72.origin.x = v12;
    v72.origin.y = v14;
    v72.size.width = v16;
    v72.size.height = v18;
    v59 = 0x3FD6666666666666;
    v24 = v23 + CGRectGetHeight(v72) * 0.35;
    v73.origin.x = v12;
    v73.origin.y = v14;
    v73.size.width = v16;
    v73.size.height = v18;
    v61 = MidX;
    v25 = CGRectGetMinX(v73);
    v74.origin.x = v12;
    v74.origin.y = v14;
    v74.size.width = v16;
    v74.size.height = v18;
    v60 = MidY;
    v26 = CGRectGetMinY(v74);
    v75.origin.x = v12;
    v75.origin.y = v14;
    v75.size.width = v16;
    v75.size.height = v18;
    v27 = CGRectGetHeight(v75);
    CGPathAddQuadCurveToPoint(Mutable, 0, MinX, v24, v25, v26 + v27 * 0.7);
    v76.origin.x = v12;
    v76.origin.y = v14;
    v76.size.width = v16;
    v76.size.height = v18;
    v28 = CGRectGetMinX(v76);
    v77.origin.x = v12;
    v77.origin.y = v14;
    v77.size.width = v16;
    v77.size.height = v18;
    v29 = v28 + CGRectGetWidth(v77) * 0.01;
    v78.origin.x = v12;
    v78.origin.y = v14;
    v78.size.width = v16;
    v78.size.height = v18;
    MaxY = CGRectGetMaxY(v78);
    v79.origin.x = v12;
    v79.origin.y = v14;
    v79.size.width = v16;
    v79.size.height = v18;
    v31 = CGRectGetMinX(v79);
    v80.origin.x = v12;
    v80.origin.y = v14;
    v80.size.width = v16;
    v80.size.height = v18;
    v32 = v31 + CGRectGetWidth(v80) * 0.25;
    v81.origin.x = v12;
    v81.origin.y = v14;
    v81.size.width = v16;
    v81.size.height = v18;
    v33 = CGRectGetMaxY(v81);
    CGPathAddQuadCurveToPoint(Mutable, 0, v29, MaxY, v32, v33);
    v82.origin.x = v12;
    v82.origin.y = v14;
    v82.size.width = v16;
    v82.size.height = v18;
    v34 = CGRectGetMidX(v82);
    v83.origin.x = v12;
    v83.origin.y = v14;
    v83.size.width = v16;
    v83.size.height = v18;
    v35 = CGRectGetMaxY(v83);
    v84.origin.x = v12;
    v84.origin.y = v14;
    v84.size.width = v16;
    v84.size.height = v18;
    v36 = CGRectGetMidX(v84);
    v85.origin.x = v12;
    v85.origin.y = v14;
    v85.size.width = v16;
    v85.size.height = v18;
    v37 = CGRectGetMinY(v85);
    v86.origin.x = v12;
    v86.origin.y = v14;
    v86.size.width = v16;
    v86.size.height = v18;
    v38 = CGRectGetHeight(v86);
    CGPathAddQuadCurveToPoint(Mutable, 0, v34, v35, v36, v37 + v38 * 0.7);
    v87.origin.x = v12;
    v87.origin.y = v14;
    v87.size.width = v16;
    v87.size.height = v18;
    v39 = CGRectGetMidX(v87);
    v88.origin.x = v12;
    v88.origin.y = v14;
    v88.size.width = v16;
    v88.size.height = v18;
    v40 = CGRectGetMaxY(v88);
    v89.origin.x = v12;
    v89.origin.y = v14;
    v89.size.width = v16;
    v89.size.height = v18;
    v41 = CGRectGetMinX(v89);
    v90.origin.x = v12;
    v90.origin.y = v14;
    v90.size.width = v16;
    v90.size.height = v18;
    v42 = v41 + CGRectGetWidth(v90) * 0.75;
    v91.origin.x = v12;
    v91.origin.y = v14;
    v91.size.width = v16;
    v91.size.height = v18;
    v43 = CGRectGetMaxY(v91);
    CGPathAddQuadCurveToPoint(Mutable, 0, v39, v40, v42, v43);
    v92.origin.x = v12;
    v92.origin.y = v14;
    v92.size.width = v16;
    v92.size.height = v18;
    MaxX = CGRectGetMaxX(v92);
    v93.origin.x = v12;
    v93.origin.y = v14;
    v93.size.width = v16;
    v93.size.height = v18;
    v45 = CGRectGetMaxY(v93);
    v94.origin.x = v12;
    v94.origin.y = v14;
    v94.size.width = v16;
    v94.size.height = v18;
    v46 = CGRectGetMaxX(v94);
    v95.origin.x = v12;
    v95.origin.y = v14;
    v95.size.width = v16;
    v95.size.height = v18;
    v47 = CGRectGetMinY(v95);
    v96.origin.x = v12;
    v96.origin.y = v14;
    v96.size.width = v16;
    v96.size.height = v18;
    v48 = CGRectGetHeight(v96);
    CGPathAddQuadCurveToPoint(Mutable, 0, MaxX, v45, v46, v47 + v48 * 0.7);
    v97.origin.x = v12;
    v97.origin.y = v14;
    v97.size.width = v16;
    v97.size.height = v18;
    v49 = CGRectGetMaxX(v97);
    v98.origin.x = v12;
    v98.origin.y = v14;
    v98.size.width = v16;
    v98.size.height = v18;
    v50 = CGRectGetMinY(v98);
    v99.origin.x = v12;
    v99.origin.y = v14;
    v99.size.width = v16;
    v99.size.height = v18;
    v51 = v50 + CGRectGetHeight(v99) * 0.35;
    v100.origin.x = v12;
    v100.origin.y = v14;
    v100.size.width = v16;
    v100.size.height = v18;
    v52 = CGRectGetMidX(v100);
    v101.origin.x = v12;
    v101.origin.y = v14;
    v101.size.width = v16;
    v101.size.height = v18;
    v53 = CGRectGetMinY(v101);
    v54 = v49;
    v55 = v51;
    MidY = v60;
    MidX = v61;
    CGPathAddQuadCurveToPoint(Mutable, 0, v54, v55, v52, v53);
    CGPathCloseSubpath(Mutable);
  }

  v56 = *(MEMORY[0x277CBF2C0] + 16);
  *&v65.a = *MEMORY[0x277CBF2C0];
  *&v65.c = v56;
  *&v65.tx = *(MEMORY[0x277CBF2C0] + 32);
  if ([v3 verticallyFlipped])
  {
    [v3 rectangle];
    [AKGeometryHelper verticalFlipTransformForRect:?];
    t1 = v65;
    CGAffineTransformConcat(&v65, &t1, &t2);
  }

  [AKGeometryHelper affineTransformForExifOrientation:v10 aboutCenter:MidX, MidY];
  v62 = v65;
  CGAffineTransformConcat(&t2, &v62, &t1);
  v65 = t2;
  if (Mutable)
  {
    v57 = MEMORY[0x245CAE590](Mutable, &v65);
    CGPathRelease(Mutable);
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

@end