@interface PLBatteryUIBatteryBreakDownHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)buttonAction:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUIBatteryBreakDownHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"breakdownTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"breakdownToggleButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLBatteryUIBatteryBreakDownHeaderCell" hasInstanceMethod:@"buttonAction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"BatteryUIController"];
  [v3 validateClass:@"BatteryUIController" hasInstanceVariable:@"_iconDisplayType" withType:"i"];
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
    v5 = [v3 contentView];
    v6 = [v5 subviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
    v6 = [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v8 accessibilityElements];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)buttonAction:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLBatteryUIBatteryBreakDownHeaderCellAccessibility;
  [(PLBatteryUIBatteryBreakDownHeaderCellAccessibility *)&v8 buttonAction:a3];
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