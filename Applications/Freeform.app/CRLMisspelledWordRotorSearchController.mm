@interface CRLMisspelledWordRotorSearchController
+ (id)searchTargetSearchSelectors;
@end

@implementation CRLMisspelledWordRotorSearchController

+ (id)searchTargetSearchSelectors
{
  v2 = [NSValue valueWithPointer:"layoutSearchForMisspelledWordWithHitBlock:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end