@interface InAppPurchaseLockupViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation InAppPurchaseLockupViewAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = InAppPurchaseLockupViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(InAppPurchaseLockupViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(InAppPurchaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [array axSafelyAddObject:v5];

  return array;
}

@end