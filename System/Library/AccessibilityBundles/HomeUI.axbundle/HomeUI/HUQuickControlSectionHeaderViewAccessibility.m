@interface HUQuickControlSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation HUQuickControlSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"attributedTitleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSectionHeaderView" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUQuickControlSectionHeaderViewAccessibility *)self safeValueForKey:@"attributedTitleText"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 string];

  if (![v5 length])
  {
    v6 = [(HUQuickControlSectionHeaderViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"titleText"];

    v5 = v6;
  }

  return v5;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(HUQuickControlSectionHeaderViewAccessibility *)self safeUIViewForKey:@"accessoryButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end