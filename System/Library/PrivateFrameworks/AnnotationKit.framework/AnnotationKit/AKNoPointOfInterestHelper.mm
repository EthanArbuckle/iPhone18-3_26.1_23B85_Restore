@interface AKNoPointOfInterestHelper
+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment;
@end

@implementation AKNoPointOfInterestHelper

+ (void)_concretePointsOfInterest:(id *)interest withVisualStyle:(id *)style ofAnnotation:(id)annotation pageControllerForPixelAlignment:(id)alignment
{
  v6 = MEMORY[0x277CBEBF8];
  *interest = MEMORY[0x277CBEBF8];
  *style = v6;
}

@end