@interface HPCUIBatteryStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupViews;
- (void)setupViews;
@end

@implementation HPCUIBatteryStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HPCUIBatteryStatusView" hasInstanceMethod:@"deviceBatteryLevelLeftView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HPCUIBatteryStatusView" hasInstanceMethod:@"deviceBatteryLevelRightView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HPCUIBatteryStatusView" hasInstanceMethod:@"deviceBatteryLevelSingleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HPCUIBatteryStatusView" hasInstanceMethod:@"deviceBatteryLevelCaseView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HPCUIBatteryStatusView" hasInstanceMethod:@"setupViews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HPCUIBatteryStatusViewAccessibility;
  [(HPCUIBatteryStatusViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HPCUIBatteryStatusViewAccessibility *)self _axSetupViews];
}

- (void)setupViews
{
  v3.receiver = self;
  v3.super_class = HPCUIBatteryStatusViewAccessibility;
  [(HPCUIBatteryStatusViewAccessibility *)&v3 setupViews];
  [(HPCUIBatteryStatusViewAccessibility *)self _axSetupViews];
}

- (void)_axSetupViews
{
  objc_opt_class();
  v3 = [(HPCUIBatteryStatusViewAccessibility *)self safeValueForKey:@"deviceBatteryLevelLeftView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = accessibilityLocalizedString(@"battery.left.earbud");
  [v4 setAXBatteryType:v5];

  objc_opt_class();
  v6 = [(HPCUIBatteryStatusViewAccessibility *)self safeValueForKey:@"deviceBatteryLevelRightView"];
  v7 = __UIAccessibilityCastAsSafeCategory();

  v8 = accessibilityLocalizedString(@"battery.right.earbud");
  [v7 setAXBatteryType:v8];

  objc_opt_class();
  v9 = [(HPCUIBatteryStatusViewAccessibility *)self safeValueForKey:@"deviceBatteryLevelSingleView"];
  v10 = __UIAccessibilityCastAsSafeCategory();

  v11 = accessibilityLocalizedString(@"battery.combined.earbuds");
  [v10 setAXBatteryType:v11];

  objc_opt_class();
  v12 = [(HPCUIBatteryStatusViewAccessibility *)self safeValueForKey:@"deviceBatteryLevelCaseView"];
  v13 = __UIAccessibilityCastAsSafeCategory();

  v14 = accessibilityLocalizedString(@"battery.case");
  [v13 setAXBatteryType:v14];
}

@end