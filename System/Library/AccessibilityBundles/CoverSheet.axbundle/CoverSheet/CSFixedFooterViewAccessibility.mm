@interface CSFixedFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation CSFixedFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSFixedFooterView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CSFixedFooterView" hasInstanceMethod:@"callToActionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSFixedFooterView" hasInstanceMethod:@"alternateCallToActionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSFixedFooterView" hasInstanceMethod:@"statusTextView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CSFixedFooterViewAccessibility;
  [(CSFixedFooterViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSFixedFooterViewAccessibility *)self safeUIViewForKey:@"callToActionLabel"];
  [v3 setAccessibilityRespondsToUserInteraction:0];
  v4 = [(CSFixedFooterViewAccessibility *)self safeUIViewForKey:@"alternateCallToActionLabel"];
  [v4 setAccessibilityRespondsToUserInteraction:0];
  v5 = [(CSFixedFooterViewAccessibility *)self safeUIViewForKey:@"statusTextView"];
  [v5 setAccessibilityRespondsToUserInteraction:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSFixedFooterViewAccessibility;
  [(CSFixedFooterViewAccessibility *)&v3 layoutSubviews];
  [(CSFixedFooterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end