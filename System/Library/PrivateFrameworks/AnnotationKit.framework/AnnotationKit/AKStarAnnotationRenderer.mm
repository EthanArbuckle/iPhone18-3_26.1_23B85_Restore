@interface AKStarAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newPathForAnnotation:(id)a3;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (double)_segLengthOfStarWithPoints:(id)a3;
+ (double)defaultInnerRadiusForStar:(id)a3;
+ (double)innerRadiusFactorForPoint:(CGPoint)a3 inAnnotation:(id)a4 onPageController:(id)a5;
+ (id)_innerStarPoints:(id)a3 withInnerRadiusFactor:(double)a4;
+ (id)innerStarPoints:(id)a3;
+ (id)starPoints:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKStarAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v7, sel__concreteDrawingBoundsOfAnnotation_, a3);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v9, sel__concreteTextBoundsOfAnnotation_withOptionalAnnotationRect_optionalText_, a3, a5, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v8, sel__concreteRectangleForAnnotation_withTextBounds_, a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v6, sel__concreteRenderAnnotation_intoContext_options_pageControllerOrNil_, a3, a4, a5, a6);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  return objc_msgSendSuper2(&v6, sel__concretePointIsOnBorder_ofAnnotation_minimumBorderThickness_, a4, a3.x, a3.y, a5);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  return objc_msgSendSuper2(&v5, sel__concretePointIsOnInside_ofAnnotation_, a4, a3.x, a3.y);
}

+ (double)defaultInnerRadiusForStar:(id)a3
{
  v3 = a3;
  v4 = [v3 pointCount];
  [v3 rectangle];
  v5 = [AKGeometryHelper verticesOfPolygonWithPointCount:"verticesOfPolygonWithPointCount:inRect:rotation:flippedVertically:" inRect:v4 rotation:0 flippedVertically:?];
  v6 = [v5 objectAtIndex:0];
  [v6 akPointValue];
  v8 = v7;
  v10 = v9;

  v11 = [v5 objectAtIndex:1];
  [v11 akPointValue];
  v13 = v12;
  v15 = v14;

  v16 = [v5 objectAtIndex:2];
  [v16 akPointValue];
  v18 = v17;
  v20 = v19;

  v21 = v10;
  v22 = v8;
  if ([v3 pointCount] >= 4)
  {
    v23 = [v5 objectAtIndex:3];
    [v23 akPointValue];
    v22 = v24;
    v21 = v25;
  }

  [AKGeometryHelper intersectLineSegmentStartingAt:v8 ending:v10 withAnotherSegmentStartingAt:v18 ending:v20, v13, v15, v22, v21];
  v27 = v26;
  v29 = v28;
  [v3 rectangle];
  [AKGeometryHelper ellipseToCenteredCircleTransform:?];
  [v3 rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v31 = hypot(v29 * 0.0 + 0.0 * v27 + 0.0, v29 * 0.0 + 0.0 * v27 + 0.0) / v30;

  return v31;
}

+ (double)innerRadiusFactorForPoint:(CGPoint)a3 inAnnotation:(id)a4 onPageController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [a1 _innerStarPoints:v7 withInnerRadiusFactor:0.5];
  v9 = [v8 lastObject];
  [v9 akPointValue];
  v11 = v10;
  v13 = v12;

  [v7 rectangle];
  v14 = v40.origin.x;
  v15 = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v14;
  v41.origin.y = v15;
  v41.size.width = width;
  v41.size.height = height;
  +[AKGeometryHelper adjustPoint:forExifOrientation:aboutCenter:](AKGeometryHelper, "adjustPoint:forExifOrientation:aboutCenter:", +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v7 originalExifOrientation]), v11, v13, MidX, CGRectGetMidY(v41));
  v37 = v20;
  v38 = v19;
  [v7 rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v22 = v21;
  [v7 rectangle];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [AKGeometryHelper ellipseToCenteredCircleTransform:v24, v26, v28, v30];
  [AKGeometryHelper normalizeVectorPoint:vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v37), 0, v38))];
  v33 = (v31 * (y * 0.0 + 0.0 * x + 0.0) + (y * 0.0 + 0.0 * x + 0.0) * v32) / v22;
  v34 = 1.0;
  if (v33 <= 1.0)
  {
    v34 = v33;
  }

  v35 = v33 < 0.0;
  result = 0.0;
  if (!v35)
  {
    return v34;
  }

  return result;
}

+ (id)starPoints:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  +[AKGeometryHelper adjustRect:forExifOrientation:aboutCenter:](AKGeometryHelper, "adjustRect:forExifOrientation:aboutCenter:", +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v3 originalExifOrientation]), x, y, width, height, MidX, CGRectGetMidY(v21));
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v3 pointCount];

  return [AKGeometryHelper verticesOfPolygonWithPointCount:v17 inRect:0 rotation:v10 flippedVertically:v12, v14, v16, 0.0];
}

+ (id)innerStarPoints:(id)a3
{
  v4 = a3;
  [v4 innerRadiusFactor];
  v5 = [a1 _innerStarPoints:v4 withInnerRadiusFactor:?];

  return v5;
}

+ (id)_innerStarPoints:(id)a3 withInnerRadiusFactor:(double)a4
{
  v5 = a3;
  v6 = [v5 pointCount];
  [v5 rectangle];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  v13 = [v5 originalExifOrientation];

  [AKGeometryHelper adjustRect:[AKGeometryHelper inverseExifOrientation:v13] forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  v14 = v26.origin.x;
  v15 = v26.origin.y;
  v16 = v26.size.width;
  v17 = v26.size.height;
  v18 = 1.0 - a4;
  v19 = (1.0 - a4) * CGRectGetHeight(v26) * 0.5;
  v27.origin.x = v14;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v17;
  v20 = v18 * CGRectGetWidth(v27) * 0.5;
  v28.origin.x = v14;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  v29 = CGRectInset(v28, v20, v19);
  v21 = vcvtd_n_f64_u64(0x168 / v6, 1uLL);

  return [AKGeometryHelper verticesOfPolygonWithPointCount:v6 inRect:0 rotation:v29.origin.x flippedVertically:v29.origin.y, v29.size.width, v29.size.height, v21];
}

+ (double)_segLengthOfStarWithPoints:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndex:0];
  [v4 akPointValue];
  v6 = v5;
  v8 = v7;

  v9 = [v3 objectAtIndex:2];
  [v9 akPointValue];
  v11 = v10;
  v13 = v12;

  v14 = [v3 objectAtIndex:4];
  [v14 akPointValue];
  v16 = v15;
  v18 = v17;

  v19 = [v3 objectAtIndex:1];

  [v19 akPointValue];
  v21 = v20;
  v23 = v22;

  [AKGeometryHelper intersectLineSegmentStartingAt:v6 ending:v8 withAnotherSegmentStartingAt:v11 ending:v13, v16, v18, v21, v23];
  v25 = v24 - v6;
  v27 = v26 - v8;

  return hypot(v25, v27);
}

+ (CGPath)_newPathForAnnotation:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  v5 = [AKStarAnnotationRenderer starPoints:v3];
  v6 = [AKStarAnnotationRenderer innerStarPoints:v3];
  [v3 rectangle];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidY = CGRectGetMidY(v35);
  v13 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v3 originalExifOrientation]);
  if ([v3 pointCount])
  {
    v14 = 0;
    do
    {
      v15 = [v5 objectAtIndex:v14];
      [v15 akPointValue];
      v17 = v16;
      v19 = v18;

      v20 = [v6 objectAtIndex:v14];
      [v20 akPointValue];
      v22 = v21;
      v24 = v23;

      [AKGeometryHelper adjustPoint:v13 forExifOrientation:v17 aboutCenter:v19, MidX, MidY];
      v26 = v25;
      v28 = v27;
      [AKGeometryHelper adjustPoint:v13 forExifOrientation:v22 aboutCenter:v24, MidX, MidY];
      v30 = v29;
      v32 = v31;
      if (v14)
      {
        CGPathAddLineToPoint(Mutable, 0, v26, v28);
      }

      else
      {
        CGPathMoveToPoint(Mutable, 0, v26, v28);
      }

      CGPathAddLineToPoint(Mutable, 0, v30, v32);
      ++v14;
    }

    while (v14 < [v3 pointCount]);
  }

  CGPathCloseSubpath(Mutable);

  return Mutable;
}

@end