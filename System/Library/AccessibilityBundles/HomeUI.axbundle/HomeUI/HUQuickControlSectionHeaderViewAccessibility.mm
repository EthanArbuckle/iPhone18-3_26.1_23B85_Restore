@interface HUQuickControlSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation HUQuickControlSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"attributedTitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUQuickControlSectionHeaderViewAccessibility *)self safeValueForKey:@"attributedTitleText"];
  v4 = __UIAccessibilityCastAsClass();

  string = [v4 string];

  if (![string length])
  {
    v6 = [(HUQuickControlSectionHeaderViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"titleText"];

    string = v6;
  }

  return string;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(HUQuickControlSectionHeaderViewAccessibility *)self safeUIViewForKey:@"accessoryButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end