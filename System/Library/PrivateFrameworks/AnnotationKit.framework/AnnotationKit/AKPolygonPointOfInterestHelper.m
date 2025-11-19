@interface AKPolygonPointOfInterestHelper
+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6;
+ (CGPoint)_pointForPointsControlOfPolygonWithNumberOfPoints:(unint64_t)a3 inAnnotation:(id)a4 onPageController:(id)a5;
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (unint64_t)numberOfPolygonPointsForControlPoint:(CGPoint)a3 inAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKPolygonPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v40 = 0;
  v41 = 0;
  v39.receiver = a1;
  v39.super_class = &OBJC_METACLASS___AKPolygonPointOfInterestHelper;
  v10 = a6;
  v11 = a5;
  objc_msgSendSuper2(&v39, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v41, &v40, v11, v10);
  v12 = v41;
  v13 = v40;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count") + 1}];
  [a1 _pointForPointsControlOfPolygonWithNumberOfPoints:objc_msgSend(v11 inAnnotation:"pointCount") onPageController:{v11, v10}];
  v37 = v17;
  v38 = v16;
  [v11 rectangle];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v11 rotationAngle];
  v27 = v26;

  [AKGeometryHelper rotationTransformForRect:v19 withAngle:v21, v23, v25, v27];
  v28 = [v10 geometryHelper];

  [v28 screenPixelAlignedPointForPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v37), 0, v38))}];
  v30 = v29;
  v32 = v31;

  v33 = [MEMORY[0x277CCAE60] akValueWithPoint:{v30, v32}];
  [v14 addObject:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v15 addObject:v34];

  [v14 addObjectsFromArray:v12];
  [v15 addObjectsFromArray:v13];
  v35 = v14;
  *a3 = v14;
  v36 = v15;
  *a4 = v15;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  if (!a3)
  {
    return 17;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKPolygonPointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, a3 - 1, a4, a5);
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)a3 ofDraggableArea:(unint64_t)a4 forAnnotation:(id)a5 onPageController:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a5;
  v12 = a6;
  if (a4 == 17)
  {
    v13 = [a1 numberOfPolygonPointsForControlPoint:v11 inAnnotation:v12 onPageController:{x, y}];
    v14 = [a1 minPolygonPoints];
    v15 = [a1 maxPolygonPoints];
    if (v13 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v13 >= v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v18 = [v11 pointCount];
    if (v18 == [a1 minPolygonPoints] && v17 != objc_msgSend(a1, "minPolygonPoints") + 1)
    {
      v20 = [a1 minPolygonPoints];
    }

    else
    {
      v19 = [v11 pointCount];
      if (v19 != [a1 maxPolygonPoints] || v17 == objc_msgSend(a1, "maxPolygonPoints") - 1)
      {
        goto LABEL_15;
      }

      v20 = [a1 maxPolygonPoints];
    }

    v17 = v20;
LABEL_15:
    [a1 _pointForPointsControlOfPolygonWithNumberOfPoints:v17 inAnnotation:v11 onPageController:v12];
    x = v21;
    y = v22;
  }

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

+ (unint64_t)numberOfPolygonPointsForControlPoint:(CGPoint)a3 inAnnotation:(id)a4 onPageController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a5;
  v8 = a4;
  [v8 rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LODWORD(a4) = [v8 verticallyFlipped];

  [AKGeometryHelper convertModelToScreenOrientationForRect:v7 withPageController:v10, v12, v14, v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [AKGeometryHelper convertModelToScreenOrientationForPoint:v7 relativeToRect:x withPageController:y, v10, v12, v14, v16];
  v43 = v26;
  v45 = v25;

  [AKGeometryHelper ellipseToCenteredCircleTransform:v18, v20, v22, v24];
  v27 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v43), 0, v45));
  v28 = v27.f64[1];
  if (a4)
  {
    v46 = v27.f64[0];
    [AKGeometryHelper radiusOfCenteredCircleFor:v18, v20, v22, v24];
    [AKGeometryHelper flipPointVertically:v46 inRect:v28, -v29, -v29, v29 + v29, v29 + v29];
    v27.f64[0] = v30;
    v28 = v31;
  }

  v32 = atan2(v28, v27.f64[0]) * 180.0 / 3.14159265;
  if (v32 <= 90.0)
  {
    v33 = v32 + -90.0;
  }

  else
  {
    v33 = v32 + -90.0 + -360.0;
  }

  v34 = fabs(v33);
  if (v34 >= 359.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34;
  }

  [a1 _degreesBetweenPointsForPointsControl];
  v37 = vcvtad_u64_f64(v35 / v36) + 3;
  v38 = [a1 minPolygonPoints];
  v39 = [a1 maxPolygonPoints];
  if (v37 >= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v37;
  }

  if (v37 >= v38)
  {
    return v40;
  }

  else
  {
    return v38;
  }
}

+ (CGPoint)_pointForPointsControlOfPolygonWithNumberOfPoints:(unint64_t)a3 inAnnotation:(id)a4 onPageController:(id)a5
{
  v8 = a5;
  v9 = a4;
  [v9 rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LODWORD(a4) = [v9 verticallyFlipped];

  [AKGeometryHelper convertModelToScreenOrientationForRect:v8 withPageController:v11, v13, v15, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [a1 pointsControlPointDistanceFactor];
  v27 = v26;
  [AKGeometryHelper radiusOfCenteredCircleFor:v19, v21, v23, v25];
  v29 = v27 * v28;
  [a1 _degreesForPointsControlGivenPolygonWithNumberOfPoints:a3];
  v32 = __sincos_stret(v30 * 3.14159265 / 180.0);
  v33 = v29 * v32.__sinval;
  if (a4)
  {
    [AKGeometryHelper flipPointVertically:v29 * v32.__cosval inRect:v33, -v29, -v29, v29 + v29, v29 + v29];
    v42 = v34;
  }

  else
  {
    v42 = v29 * v32.__cosval;
  }

  [AKGeometryHelper centeredCircleToEllipseTransform:v19, v21, v23, v25, *&v33, v31];
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v8 relativeToRect:vaddq_f64(0 withPageController:vmlaq_n_f64(vmulq_n_f64(0, v41), 0, v42)), v19, v21, v23, v25];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result.y = v40;
  result.x = v39;
  return result;
}

@end