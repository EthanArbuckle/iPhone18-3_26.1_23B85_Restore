@interface CondensedAppEventCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CondensedAppEventCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.CondensedAppEventCardView" hasSwiftField:@"appEventFormattedDateView" withSwiftType:"AppPromotionFormattedDateView"];
  [validationsCopy validateClass:@"ASMessagesProvider.CondensedAppEventCardView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.AppPromotionFormattedDateView"];
  [validationsCopy validateClass:@"ASMessagesProvider.AppPromotionFormattedDateView" hasSwiftField:@"textLabel" withSwiftType:"DynamicTypeLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(CondensedAppEventCardViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = [(CondensedAppEventCardViewAccessibility *)self safeSwiftValueForKey:@"appEventFormattedDateView"];
  MEMORY[0x29C2C5C00](@"AppStore.AppPromotionFormattedDateView");
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