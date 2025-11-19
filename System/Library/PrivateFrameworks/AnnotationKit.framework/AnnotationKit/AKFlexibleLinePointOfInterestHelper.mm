@interface AKFlexibleLinePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKFlexibleLinePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v29 = 0;
  v30 = 0;
  v28.receiver = a1;
  v28.super_class = &OBJC_METACLASS___AKFlexibleLinePointOfInterestHelper;
  v9 = a6;
  v10 = a5;
  objc_msgSendSuper2(&v28, sel__concretePointsOfInterest_withVisualStyle_ofAnnotation_pageControllerForPixelAlignment_, &v30, &v29, v10, v9);
  v11 = v30;
  v12 = v29;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count", v28.receiver, v28.super_class) + 1}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count") + 1}];
  [v13 addObjectsFromArray:v11];
  [v14 addObjectsFromArray:v12];
  [v10 midPoint];
  v16 = v15;
  v18 = v17;

  v19 = [v9 geometryHelper];

  [v19 screenPixelAlignedPointForPoint:{v16, v18}];
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277CCAE60] akValueWithPoint:{v21, v23}];
  [v13 addObject:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v14 addObject:v25];

  v26 = v13;
  *a3 = v13;
  v27 = v14;
  *a4 = v14;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 >= 2)
  {
    if (a3 == 2)
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
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___AKFlexibleLinePointOfInterestHelper;
    v10 = objc_msgSendSuper2(&v12, sel__concreteDraggableAreaForPointOfInterestWithIndex_ofAnnotation_onPageController_, a3, v8, v9);
  }

  return v10;
}

@end