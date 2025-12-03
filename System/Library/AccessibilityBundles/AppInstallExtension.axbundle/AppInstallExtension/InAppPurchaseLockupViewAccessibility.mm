@interface InAppPurchaseLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation InAppPurchaseLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.InAppPurchaseLockupView" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

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