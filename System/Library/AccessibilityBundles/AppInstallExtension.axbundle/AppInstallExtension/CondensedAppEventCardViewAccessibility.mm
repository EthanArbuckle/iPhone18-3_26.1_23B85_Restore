@interface CondensedAppEventCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CondensedAppEventCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppInstallExtension.CondensedAppEventCardView" hasSwiftField:@"appEventFormattedDateView" withSwiftType:"AppPromotionFormattedDateView"];
  [v3 validateClass:@"AppInstallExtension.CondensedAppEventCardView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppInstallExtension.AppPromotionFormattedDateView"];
  [v3 validateClass:@"AppInstallExtension.AppPromotionFormattedDateView" hasSwiftField:@"textLabel" withSwiftType:"DynamicTypeLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(CondensedAppEventCardViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = [(CondensedAppEventCardViewAccessibility *)self safeSwiftValueForKey:@"appEventFormattedDateView"];
  MEMORY[0x29C2C8630](@"AppStore.AppPromotionFormattedDateView");
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safeSwiftValueForKey:@"textLabel"];
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CondensedAppEventCardViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CondensedAppEventCardViewAccessibility *)&v3 accessibilityTraits];
}

@end