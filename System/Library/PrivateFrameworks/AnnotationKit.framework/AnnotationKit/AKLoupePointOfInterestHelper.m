@interface AKLoupePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKLoupePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v9 = MEMORY[0x277CBEB18];
  v10 = a6;
  v11 = a5;
  v54 = [v9 arrayWithCapacity:2];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v11 rectangle];
  [AKGeometryHelper convertModelToScreenOrientationForRect:v10 withPageController:?];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v17 = CGRectGetWidth(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v18 = CGRectGetHeight(v57);
  [v11 magnification];
  v20 = v19;

  v21 = (v20 + -1.5) / 3.5;
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = (v20 + -1.5) / 3.5;
  }

  v23 = v22 * 1.57079633;
  if (v21 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = v18 * 0.5;
  v26 = v17 * 0.5;
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  MidX = CGRectGetMidX(v58);
  v28 = __sincos_stret(v24);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v10 relativeToRect:MidX + v28.__sinval * v26 withPageController:CGRectGetMidY(v59) + v28.__cosval * v25, x, y, width, height];
  v30 = v29;
  v32 = v31;
  v33 = [v10 geometryHelper];
  [v33 screenPixelAlignedPointForPoint:{v30, v32}];
  v35 = v34;
  v37 = v36;

  v38 = [MEMORY[0x277CCAE60] akValueWithPoint:{v35, v37}];
  [v54 addObject:v38];

  v39 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  [v12 addObject:v39];

  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v40 = CGRectGetMidX(v60) + v26 * 0.707106781;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  [AKGeometryHelper convertScreenToModelOrientationForPoint:v10 relativeToRect:v40 withPageController:CGRectGetMidY(v61) + v25 * -0.707106781, x, y, width, height];
  v42 = v41;
  v44 = v43;
  v45 = [v10 geometryHelper];

  [v45 screenPixelAlignedPointForPoint:{v42, v44}];
  v47 = v46;
  v49 = v48;

  v50 = [MEMORY[0x277CCAE60] akValueWithPoint:{v47, v49}];
  [v54 addObject:v50];

  v51 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [v12 addObject:v51];

  v52 = v54;
  *a3 = v54;
  v53 = v12;
  *a4 = v12;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  v5 = 18;
  if (a3 != 1)
  {
    v5 = 0;
  }

  if (a3)
  {
    return v5;
  }

  else
  {
    return 19;
  }
}

@end