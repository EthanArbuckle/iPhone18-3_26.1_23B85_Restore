@interface HomeScreenPosterCollectionViewCellAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation HomeScreenPosterCollectionViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = AXLayoutMode(v2) == 3;

  return v3;
}

@end