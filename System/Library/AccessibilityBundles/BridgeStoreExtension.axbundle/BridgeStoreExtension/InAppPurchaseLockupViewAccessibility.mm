@interface InAppPurchaseLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation InAppPurchaseLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = InAppPurchaseLockupViewAccessibility;
  v4 = [(InAppPurchaseLockupViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(InAppPurchaseLockupViewAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end