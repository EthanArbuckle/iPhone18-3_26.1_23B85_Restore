@interface LPCollaborationFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation LPCollaborationFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LPCollaborationFooterView" hasInstanceVariable:@"_optionsView" withType:"LPTextView"];
  [validationsCopy validateClass:@"LPCollaborationFooterView" hasInstanceVariable:@"_subtitleView" withType:"LPTextView"];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = LPCollaborationFooterViewAccessibility;
  accessibilityTraits = [(LPCollaborationFooterViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(LPCollaborationFooterViewAccessibility *)self safeValueForKey:@"_optionsView"];

  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v3 = [(LPCollaborationFooterViewAccessibility *)self safeValueForKey:@"_optionsView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(LPCollaborationFooterViewAccessibility *)self safeValueForKey:@"_subtitleView"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end