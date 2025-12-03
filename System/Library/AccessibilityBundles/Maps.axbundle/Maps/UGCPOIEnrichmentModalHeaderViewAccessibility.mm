@interface UGCPOIEnrichmentModalHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UGCPOIEnrichmentModalHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UGCPOIEnrichmentModalHeaderView" hasInstanceMethod:@"leadingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UGCPOIEnrichmentModalHeaderView" hasInstanceVariable:@"_poiIconView" withType:"UGCPOIEnrichmentHeaderView"];
  [validationsCopy validateClass:@"UGCPOIEnrichmentModalHeaderView" hasInstanceMethod:@"trailingButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = UGCPOIEnrichmentModalHeaderViewAccessibility;
  [(UGCPOIEnrichmentModalHeaderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  location = 0;
  [0 _setAccessibilityElementsBlock:&__block_literal_global_7];
  objc_destroyWeak(&location);
}

id __90__UGCPOIEnrichmentModalHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = MEMORY[0x29EDB8D80];
  v1 = [0 safeValueForKey:@"leadingButton"];
  v2 = [0 safeValueForKey:@"_poiIconView"];
  v3 = [0 safeValueForKey:@"trailingButton"];
  v4 = [v0 axArrayWithPossiblyNilArrays:{3, v1, v2, v3}];

  return v4;
}

@end