@interface CRLHeadingRotorSearchController
+ (id)searchTargetSearchSelectors;
@end

@implementation CRLHeadingRotorSearchController

+ (id)searchTargetSearchSelectors
{
  v2 = [NSValue valueWithPointer:"layoutSearchForHeadingWithHitBlock:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end