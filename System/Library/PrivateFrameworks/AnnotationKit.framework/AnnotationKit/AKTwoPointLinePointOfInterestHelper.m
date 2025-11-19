@interface AKTwoPointLinePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5;
+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6;
@end

@implementation AKTwoPointLinePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)a3 withVisualStyle:(id *)a4 ofAnnotation:(id)a5 pageControllerForPixelAlignment:(id)a6
{
  v9 = MEMORY[0x277CBEB18];
  v10 = a6;
  v11 = a5;
  v37 = [v9 arrayWithCapacity:2];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v11 startPoint];
  v14 = v13;
  v16 = v15;
  [v11 endPoint];
  v18 = v17;
  v20 = v19;

  v21 = [v10 geometryHelper];
  [v21 screenPixelAlignedPointForPoint:{v14, v16}];
  v23 = v22;
  v25 = v24;

  v26 = [v10 geometryHelper];

  [v26 screenPixelAlignedPointForPoint:{v18, v20}];
  v28 = v27;
  v30 = v29;

  v31 = [MEMORY[0x277CCAE60] akValueWithPoint:{v23, v25}];
  [v37 addObject:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v12 addObject:v32];

  v33 = [MEMORY[0x277CCAE60] akValueWithPoint:{v28, v30}];
  [v37 addObject:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v12 addObject:v34];

  v35 = v37;
  *a3 = v37;
  v36 = v12;
  *a4 = v12;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)a3 ofAnnotation:(id)a4 onPageController:(id)a5
{
  v5 = 10;
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
    return 9;
  }
}

@end