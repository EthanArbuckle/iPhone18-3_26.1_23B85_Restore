@interface AKStarAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newPathForAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (double)_segLengthOfStarWithPoints:(id)points;
+ (double)defaultInnerRadiusForStar:(id)star;
+ (double)innerRadiusFactorForPoint:(CGPoint)point inAnnotation:(id)annotation onPageController:(id)controller;
+ (id)_innerStarPoints:(id)points withInnerRadiusFactor:(double)factor;
+ (id)innerStarPoints:(id)points;
+ (id)starPoints:(id)points;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKStarAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v7, sel__concreteDrawingBoundsOfAnnotation_, annotation);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v9, sel__concreteTextBoundsOfAnnotation_withOptionalAnnotationRect_optionalText_, annotation, text, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v8, sel__concreteRectangleForAnnotation_withTextBounds_, annotation, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  objc_msgSendSuper2(&v6, sel__concreteRenderAnnotation_intoContext_options_pageControllerOrNil_, annotation, context, options, nil);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  return objc_msgSendSuper2(&v6, sel__concretePointIsOnBorder_ofAnnotation_minimumBorderThickness_, annotation, border.x, border.y, thickness);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AKStarAnnotationRenderer;
  return objc_msgSendSuper2(&v5, sel__concretePointIsOnInside_ofAnnotation_, annotation, inside.x, inside.y);
}

+ (double)defaultInnerRadiusForStar:(id)star
{
  starCopy = star;
  pointCount = [starCopy pointCount];
  [starCopy rectangle];
  v5 = [AKGeometryHelper verticesOfPolygonWithPointCount:"verticesOfPolygonWithPointCount:inRect:rotation:flippedVertically:" inRect:pointCount rotation:0 flippedVertically:?];
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
  if ([starCopy pointCount] >= 4)
  {
    v23 = [v5 objectAtIndex:3];
    [v23 akPointValue];
    v22 = v24;
    v21 = v25;
  }

  [AKGeometryHelper intersectLineSegmentStartingAt:v8 ending:v10 withAnotherSegmentStartingAt:v18 ending:v20, v13, v15, v22, v21];
  v27 = v26;
  v29 = v28;
  [starCopy rectangle];
  [AKGeometryHelper ellipseToCenteredCircleTransform:?];
  [starCopy rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v31 = hypot(v29 * 0.0 + 0.0 * v27 + 0.0, v29 * 0.0 + 0.0 * v27 + 0.0) / v30;

  return v31;
}

+ (double)innerRadiusFactorForPoint:(CGPoint)point inAnnotation:(id)annotation onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  v8 = [self _innerStarPoints:annotationCopy withInnerRadiusFactor:0.5];
  lastObject = [v8 lastObject];
  [lastObject akPointValue];
  v11 = v10;
  v13 = v12;

  [annotationCopy rectangle];
  v14 = v40.origin.x;
  v15 = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v14;
  v41.origin.y = v15;
  v41.size.width = width;
  v41.size.height = height;
  +[AKGeometryHelper adjustPoint:forExifOrientation:aboutCenter:](AKGeometryHelper, "adjustPoint:forExifOrientation:aboutCenter:", +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotationCopy originalExifOrientation]), v11, v13, MidX, CGRectGetMidY(v41));
  v37 = v20;
  v38 = v19;
  [annotationCopy rectangle];
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v22 = v21;
  [annotationCopy rectangle];
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

+ (id)starPoints:(id)points
{
  pointsCopy = points;
  [pointsCopy rectangle];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  +[AKGeometryHelper adjustRect:forExifOrientation:aboutCenter:](AKGeometryHelper, "adjustRect:forExifOrientation:aboutCenter:", +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [pointsCopy originalExifOrientation]), x, y, width, height, MidX, CGRectGetMidY(v21));
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  pointCount = [pointsCopy pointCount];

  return [AKGeometryHelper verticesOfPolygonWithPointCount:pointCount inRect:0 rotation:v10 flippedVertically:v12, v14, v16, 0.0];
}

+ (id)innerStarPoints:(id)points
{
  pointsCopy = points;
  [pointsCopy innerRadiusFactor];
  v5 = [self _innerStarPoints:pointsCopy withInnerRadiusFactor:?];

  return v5;
}

+ (id)_innerStarPoints:(id)points withInnerRadiusFactor:(double)factor
{
  pointsCopy = points;
  pointCount = [pointsCopy pointCount];
  [pointsCopy rectangle];
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
  originalExifOrientation = [pointsCopy originalExifOrientation];

  [AKGeometryHelper adjustRect:[AKGeometryHelper inverseExifOrientation:originalExifOrientation] forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  v14 = v26.origin.x;
  v15 = v26.origin.y;
  v16 = v26.size.width;
  v17 = v26.size.height;
  v18 = 1.0 - factor;
  v19 = (1.0 - factor) * CGRectGetHeight(v26) * 0.5;
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
  v21 = vcvtd_n_f64_u64(0x168 / pointCount, 1uLL);

  return [AKGeometryHelper verticesOfPolygonWithPointCount:pointCount inRect:0 rotation:v29.origin.x flippedVertically:v29.origin.y, v29.size.width, v29.size.height, v21];
}

+ (double)_segLengthOfStarWithPoints:(id)points
{
  pointsCopy = points;
  v4 = [pointsCopy objectAtIndex:0];
  [v4 akPointValue];
  v6 = v5;
  v8 = v7;

  v9 = [pointsCopy objectAtIndex:2];
  [v9 akPointValue];
  v11 = v10;
  v13 = v12;

  v14 = [pointsCopy objectAtIndex:4];
  [v14 akPointValue];
  v16 = v15;
  v18 = v17;

  v19 = [pointsCopy objectAtIndex:1];

  [v19 akPointValue];
  v21 = v20;
  v23 = v22;

  [AKGeometryHelper intersectLineSegmentStartingAt:v6 ending:v8 withAnotherSegmentStartingAt:v11 ending:v13, v16, v18, v21, v23];
  v25 = v24 - v6;
  v27 = v26 - v8;

  return hypot(v25, v27);
}

+ (CGPath)_newPathForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  Mutable = CGPathCreateMutable();
  v5 = [AKStarAnnotationRenderer starPoints:annotationCopy];
  v6 = [AKStarAnnotationRenderer innerStarPoints:annotationCopy];
  [annotationCopy rectangle];
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
  v13 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotationCopy originalExifOrientation]);
  if ([annotationCopy pointCount])
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

    while (v14 < [annotationCopy pointCount]);
  }

  CGPathCloseSubpath(Mutable);

  return Mutable;
}

@end