@interface CRLHyperlinkRotorSearchController
+ (id)searchTargetSearchSelectors;
@end

@implementation CRLHyperlinkRotorSearchController

+ (id)searchTargetSearchSelectors
{
  v2 = [NSValue valueWithPointer:"layoutSearchForHyperlinkWithHitBlock:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end