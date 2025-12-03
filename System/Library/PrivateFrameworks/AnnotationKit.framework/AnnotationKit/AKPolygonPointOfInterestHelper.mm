@interface AKPolygonPointOfInterestHelper
+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller;
+ (CGPoint)_pointForPointsControlOfPolygonWithNumberOfPoints:(unint64_t)points inAnnotation:(id)annotation onPageController:(id)controller;
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (unint64_t)numberOfPolygonPointsForControlPoint:(CGPoint)point inAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKPolygonPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v40 = 0;
  v41 = 0;
  v39.receiver = self;
  v39.super_class = &OBJC_METACLASS___AKPolygonPointOfInterestHelper;
  alignmentCopy = alignment;
  annotationCopy = annotation;
  objc_msgSendSuper2(&v39, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v41, &v40, annotationCopy, alignmentCopy);
  v12 = v41;
  v13 = v40;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count") + 1}];
  [self _pointForPointsControlOfPolygonWithNumberOfPoints:objc_msgSend(annotationCopy inAnnotation:"pointCount") onPageController:{annotationCopy, alignmentCopy}];
  v37 = v17;
  v38 = v16;
  [annotationCopy rectangle];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [annotationCopy rotationAngle];
  v27 = v26;

  [AKGeometryHelper rotationTransformForRect:v19 withAngle:v21, v23, v25, v27];
  geometryHelper = [alignmentCopy geometryHelper];

  [geometryHelper screenPixelAlignedPointForPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v37), 0, v38))}];
  v30 = v29;
  v32 = v31;

  v33 = [MEMORY[0x277CCAE60] akValueWithPoint:{v30, v32}];
  [v14 addObject:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v15 addObject:v34];

  [v14 addObjectsFromArray:v12];
  [v15 addObjectsFromArray:v13];
  v35 = v14;
  *interest = v14;
  v36 = v15;
  *style = v15;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  if (!index)
  {
    return 17;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKPolygonPointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, index - 1, annotation, controller);
}

+ (CGPoint)_concreteValidatePoint:(CGPoint)point ofDraggableArea:(unint64_t)area forAnnotation:(id)annotation onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  if (area == 17)
  {
    v13 = [self numberOfPolygonPointsForControlPoint:annotationCopy inAnnotation:controllerCopy onPageController:{x, y}];
    minPolygonPoints = [self minPolygonPoints];
    maxPolygonPoints = [self maxPolygonPoints];
    if (v13 >= maxPolygonPoints)
    {
      v16 = maxPolygonPoints;
    }

    else
    {
      v16 = v13;
    }

    if (v13 >= minPolygonPoints)
    {
      v17 = v16;
    }

    else
    {
      v17 = minPolygonPoints;
    }

    pointCount = [annotationCopy pointCount];
    if (pointCount == [self minPolygonPoints] && v17 != objc_msgSend(self, "minPolygonPoints") + 1)
    {
      minPolygonPoints2 = [self minPolygonPoints];
    }

    else
    {
      pointCount2 = [annotationCopy pointCount];
      if (pointCount2 != [self maxPolygonPoints] || v17 == objc_msgSend(self, "maxPolygonPoints") - 1)
      {
        goto LABEL_15;
      }

      minPolygonPoints2 = [self maxPolygonPoints];
    }

    v17 = minPolygonPoints2;
LABEL_15:
    [self _pointForPointsControlOfPolygonWithNumberOfPoints:v17 inAnnotation:annotationCopy onPageController:controllerCopy];
    x = v21;
    y = v22;
  }

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

+ (unint64_t)numberOfPolygonPointsForControlPoint:(CGPoint)point inAnnotation:(id)annotation onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  controllerCopy = controller;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LODWORD(annotation) = [annotationCopy verticallyFlipped];

  [AKGeometryHelper convertModelToScreenOrientationForRect:controllerCopy withPageController:v10, v12, v14, v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [AKGeometryHelper convertModelToScreenOrientationForPoint:controllerCopy relativeToRect:x withPageController:y, v10, v12, v14, v16];
  v43 = v26;
  v45 = v25;

  [AKGeometryHelper ellipseToCenteredCircleTransform:v18, v20, v22, v24];
  v27 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v43), 0, v45));
  v28 = v27.f64[1];
  if (annotation)
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

  [self _degreesBetweenPointsForPointsControl];
  v37 = vcvtad_u64_f64(v35 / v36) + 3;
  minPolygonPoints = [self minPolygonPoints];
  maxPolygonPoints = [self maxPolygonPoints];
  if (v37 >= maxPolygonPoints)
  {
    v40 = maxPolygonPoints;
  }

  else
  {
    v40 = v37;
  }

  if (v37 >= minPolygonPoints)
  {
    return v40;
  }

  else
  {
    return minPolygonPoints;
  }
}

+ (CGPoint)_pointForPointsControlOfPolygonWithNumberOfPoints:(unint64_t)points inAnnotation:(id)annotation onPageController:(id)controller
{
  controllerCopy = controller;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LODWORD(annotation) = [annotationCopy verticallyFlipped];

  [AKGeometryHelper convertModelToScreenOrientationForRect:controllerCopy withPageController:v11, v13, v15, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [self pointsControlPointDistanceFactor];
  v27 = v26;
  [AKGeometryHelper radiusOfCenteredCircleFor:v19, v21, v23, v25];
  v29 = v27 * v28;
  [self _degreesForPointsControlGivenPolygonWithNumberOfPoints:points];
  v32 = __sincos_stret(v30 * 3.14159265 / 180.0);
  v33 = v29 * v32.__sinval;
  if (annotation)
  {
    [AKGeometryHelper flipPointVertically:v29 * v32.__cosval inRect:v33, -v29, -v29, v29 + v29, v29 + v29];
    v42 = v34;
  }

  else
  {
    v42 = v29 * v32.__cosval;
  }

  [AKGeometryHelper centeredCircleToEllipseTransform:v19, v21, v23, v25, *&v33, v31];
  [AKGeometryHelper convertScreenToModelOrientationForPoint:controllerCopy relativeToRect:vaddq_f64(0 withPageController:vmlaq_n_f64(vmulq_n_f64(0, v41), 0, v42)), v19, v21, v23, v25];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result.y = v40;
  result.x = v39;
  return result;
}

@end