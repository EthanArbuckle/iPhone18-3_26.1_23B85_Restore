@interface CatalogTipActivityTileAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CatalogTipActivityTileAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CatalogTipActivityTileAccessibility;
  return UIAccessibilityTraitButton | [(CatalogTipActivityTileAccessibility *)&v3 accessibilityTraits];
}

@end