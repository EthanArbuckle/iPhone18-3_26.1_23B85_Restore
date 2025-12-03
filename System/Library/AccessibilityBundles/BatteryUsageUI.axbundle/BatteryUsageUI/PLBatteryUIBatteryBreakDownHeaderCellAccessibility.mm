@interface PLBatteryUIBatteryBreakDownHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)buttonAction:(id)action;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUIBatteryBreakDownHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"breakdownTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"breakdownToggleButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"buttonAction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BatteryUIController"];
  [validationsCopy validateClass:@"BatteryUIController" hasInstanceVariable:@"_iconDisplayType" withType:"i"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)self safeValueForKey:@"breakdownTitleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v4 = [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)self safeValueForKey:@"breakdownToggleButton"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

- (id)accessibilityElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  if (v3)
  {
    contentView = [v3 contentView];
    subviews = [contentView subviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
    subviews = [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v8 accessibilityElements];
  }

  return subviews;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)buttonAction:(id)action
{
  v8.receiver = self;
  v8.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v8 buttonAction:action];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)self safeValueForKey:@"delegate"];
    MEMORY[0x29C2CCC70](@"BatteryUIController");
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 safeIntForKey:@"_iconDisplayType"];
      if (!v5)
      {
        v6 = @"battery.show.percentage.confirmation";
        goto LABEL_7;
      }

      if (v5 == 1)
      {
        v6 = @"battery.show.screenon.confirmation";
LABEL_7:
        v7 = accessibilityLocalizedString(v6);
        UIAccessibilitySpeakAndDoNotBeInterrupted();
      }
    }
  }
}

@end