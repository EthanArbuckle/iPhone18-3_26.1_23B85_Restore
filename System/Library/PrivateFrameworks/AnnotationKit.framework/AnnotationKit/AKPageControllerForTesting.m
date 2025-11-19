@interface AKPageControllerForTesting
- (AKPageControllerForTesting)init;
- (CGRect)maxPageRect;
@end

@implementation AKPageControllerForTesting

- (AKPageControllerForTesting)init
{
  v3.receiver = self;
  v3.super_class = AKPageControllerForTesting;
  return [(AKPageController *)&v3 initForTesting];
}

- (CGRect)maxPageRect
{
  v2 = 100.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 100.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end