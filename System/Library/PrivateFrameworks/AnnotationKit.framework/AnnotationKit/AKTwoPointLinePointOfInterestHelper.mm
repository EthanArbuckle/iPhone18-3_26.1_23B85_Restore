@interface AKTwoPointLinePointOfInterestHelper
+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller;
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKTwoPointLinePointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v9 = MEMORY[0x277CBEB18];
  alignmentCopy = alignment;
  annotationCopy = annotation;
  v37 = [v9 arrayWithCapacity:2];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [annotationCopy startPoint];
  v14 = v13;
  v16 = v15;
  [annotationCopy endPoint];
  v18 = v17;
  v20 = v19;

  geometryHelper = [alignmentCopy geometryHelper];
  [geometryHelper screenPixelAlignedPointForPoint:{v14, v16}];
  v23 = v22;
  v25 = v24;

  geometryHelper2 = [alignmentCopy geometryHelper];

  [geometryHelper2 screenPixelAlignedPointForPoint:{v18, v20}];
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
  *interest = v37;
  v36 = v12;
  *style = v12;
}

+ (unint64_t)_concreteDraggableAreaForPointOfInterestWithIndex:(unint64_t)index ofAnnotation:(id)annotation onPageController:(id)controller
{
  v5 = 10;
  if (index != 1)
  {
    v5 = 0;
  }

  if (index)
  {
    return v5;
  }

  else
  {
    return 9;
  }
}

@end