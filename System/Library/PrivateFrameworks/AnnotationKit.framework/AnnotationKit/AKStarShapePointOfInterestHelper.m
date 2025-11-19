@interface AKStarShapePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKStarShapePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v50 = 0;
  v51[0] = 0;
  v49.receiver = a1;
  v49.super_class = &OBJC_METACLASS___AKStarShapePointOfInterestHelper;
  v7 = a6;
  v8 = a5;
  objc_msgSendSuper2(&v49, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, v51, &v50, v8, v7);
  v9 = v51[0];
  v10 = v50;
  [v8 rectangle];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v8 rotationAngle];
  [AKGeometryHelper rotationTransformForRect:v12 withAngle:v14, v16, v18, v19];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count") + 1}];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count") + 1}];
  v22 = [AKStarAnnotationRenderer innerStarPoints:v8];
  v23 = [v22 objectAtIndex:{objc_msgSend(v8, "pointCount") - 1}];
  [v23 akPointValue];
  v25 = v24;
  v27 = v26;

  [v8 rectangle];
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
  v34 = [v8 originalExifOrientation];

  [AKGeometryHelper adjustPoint:[AKGeometryHelper inverseExifOrientation:v34] forExifOrientation:v25 aboutCenter:v27, MidX, MidY];
  v46 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v35), 0, v36));
  v37 = [v7 geometryHelper];

  [v37 screenPixelAlignedPointForPoint:*&v46];
  v39 = v38;
  v41 = v40;

  v42 = [MEMORY[0x277CCAE60] akValueWithPoint:{v39, v41}];
  [v20 addObject:v42];

  v43 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v21 addObject:v43];

  [v20 addObjectsFromArray:v9];
  [v21 addObjectsFromArray:v10];
  v44 = v20;
  *a3 = v20;
  v45 = v21;
  *a4 = v21;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  if (!a3)
  {
    return 16;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStarShapePointOfInterestHelper;
  return objc_msgSendSuper2(&v6, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, a3 - 1, a4, a5);
}

@end