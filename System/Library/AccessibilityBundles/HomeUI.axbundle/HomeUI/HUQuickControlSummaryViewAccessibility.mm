@interface HUQuickControlSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
@end

@implementation HUQuickControlSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"setPrimaryText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"setSecondaryText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"primaryText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"secondaryText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKey:@"iconView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKey:@"primaryLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  lowercaseString = [accessibilityLabel lowercaseString];
  lowercaseString2 = [accessibilityLabel2 lowercaseString];
  v9 = [lowercaseString isEqualToString:lowercaseString2];

  if (v9)
  {
    v10 = accessibilityLabel;
  }

  else
  {
    v10 = __UIAXStringForVariables();
  }

  v11 = v10;

  return v11;
}

- (id)accessibilityValue
{
  v2 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKey:@"secondaryLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUQuickControlSummaryViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(HUQuickControlSummaryViewAccessibility *)&v3 accessibilityTraits];
}

- (void)setPrimaryText:(id)text
{
  v9.receiver = self;
  v9.super_class = HUQuickControlSummaryViewAccessibility;
  [(HUQuickControlSummaryViewAccessibility *)&v9 setPrimaryText:text];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v6 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"primaryText"];
  v7 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"secondaryText"];
  v8 = [v4 stringWithFormat:@"%@, %@, %@", v5, v6, v7];
  [(HUQuickControlSummaryViewAccessibility *)self setAccessibilityIdentifier:v8];
}

- (void)setSecondaryText:(id)text
{
  v9.receiver = self;
  v9.super_class = HUQuickControlSummaryViewAccessibility;
  [(HUQuickControlSummaryViewAccessibility *)&v9 setSecondaryText:text];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v6 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"primaryText"];
  v7 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"secondaryText"];
  v8 = [v4 stringWithFormat:@"%@, %@, %@", v5, v6, v7];
  [(HUQuickControlSummaryViewAccessibility *)self setAccessibilityIdentifier:v8];
}

@end