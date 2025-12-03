@interface AKFlexibleLinePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKFlexibleLinePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v29 = 0;
  v30 = 0;
  v28.receiver = self;
  v28.super_class = &OBJC_METACLASS___AKFlexibleLinePointOfInterestHelper;
  alignmentCopy = alignment;
  annotationCopy = annotation;
  objc_msgSendSuper2(&v28, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v30, &v29, annotationCopy, alignmentCopy);
  v11 = v30;
  v12 = v29;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count", v28.receiver, v28.super_class) + 1}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  [v13 addObjectsFromArray:v11];
  [v14 addObjectsFromArray:v12];
  [annotationCopy midPoint];
  v16 = v15;
  v18 = v17;

  geometryHelper = [alignmentCopy geometryHelper];

  [geometryHelper screenPixelAlignedPointForPoint:{v16, v18}];
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277CCAE60] akValueWithPoint:{v21, v23}];
  [v13 addObject:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v14 addObject:v25];

  v26 = v13;
  *interest = v13;
  v27 = v14;
  *style = v14;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  if (index >= 2)
  {
    if (index == 2)
    {
      v10 = 11;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___AKFlexibleLinePointOfInterestHelper;
    v10 = objc_msgSendSuper2(&v12, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, index, annotationCopy, controllerCopy);
  }

  return v10;
}

@end