@interface AKStarShapePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKStarShapePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v50 = 0;
  v51[0] = 0;
  v49.receiver = self;
  v49.super_class = &OBJC_METACLASS___AKStarShapePointOfInterestHelper;
  alignmentCopy = alignment;
  annotationCopy = annotation;
  objc_msgSendSuper2(&v49, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, v51, &v50, annotationCopy, alignmentCopy);
  v9 = v51[0];
  v10 = v50;
  [annotationCopy rectangle];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [annotationCopy rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v12 withAngle:v14, v16, v18, v19];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count") + 1}];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count") + 1}];
  v22 = [AKStarAnnotationRenderer innerStarPoints:annotationCopy];
  v23 = [v22 objectAtIndex:{objc_msgSend(annotationCopy, "pointCount") - 1}];
  [v23 akPointValue];
  v25 = v24;
  v27 = v26;

  [annotationCopy rectangle];
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  MidY = CGRectGetMidY(v53);
  originalExifOrientation = [annotationCopy originalExifOrientation];

  [AKGeometryHelper adjustPoint:[AKGeometryHelper inverseExifOrientation:originalExifOrientation] forExifOrientation:v25 aboutCenter:v27, MidX, MidY];
  v46 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v35), 0, v36));
  geometryHelper = [alignmentCopy geometryHelper];

  [geometryHelper screenPixelAlignedPointForPoint:*&v46];
  v39 = v38;
  v41 = v40;

  v42 = [MEMORY[0x277CCAE60] akValueWithPoint:{v39, v41}];
  [v20 addObject:v42];

  v43 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v21 addObject:v43];

  [v20 addObjectsFromArray:v9];
  [v21 addObjectsFromArray:v10];
  v44 = v20;
  *interest = v20;
  v45 = v21;
  *style = v21;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  if (!index)
  {
    return 16;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStarShapePointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, index - 1, annotation, controller);
}

@end