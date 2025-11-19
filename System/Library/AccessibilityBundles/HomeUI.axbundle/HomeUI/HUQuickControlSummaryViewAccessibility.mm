@interface HUQuickControlSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
@end

@implementation HUQuickControlSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"setPrimaryText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"setSecondaryText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUIconView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"primaryText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSummaryView" hasInstanceMethod:@"secondaryText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKey:@"iconView"];
  v4 = [v3 accessibilityLabel];

  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKey:@"primaryLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [v4 lowercaseString];
  v8 = [v6 lowercaseString];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = v4;
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
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUQuickControlSummaryViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(HUQuickControlSummaryViewAccessibility *)&v3 accessibilityTraits];
}

- (void)setPrimaryText:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUQuickControlSummaryViewAccessibility;
  [(HUQuickControlSummaryViewAccessibility *)&v9 setPrimaryText:a3];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v6 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"primaryText"];
  v7 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"secondaryText"];
  v8 = [v4 stringWithFormat:@"%@, %@, %@", v5, v6, v7];
  [(HUQuickControlSummaryViewAccessibility *)self setAccessibilityIdentifier:v8];
}

- (void)setSecondaryText:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUQuickControlSummaryViewAccessibility;
  [(HUQuickControlSummaryViewAccessibility *)&v9 setSecondaryText:a3];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v6 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"primaryText"];
  v7 = [(HUQuickControlSummaryViewAccessibility *)self safeValueForKeyPath:@"secondaryText"];
  v8 = [v4 stringWithFormat:@"%@, %@, %@", v5, v6, v7];
  [(HUQuickControlSummaryViewAccessibility *)self setAccessibilityIdentifier:v8];
}

@end