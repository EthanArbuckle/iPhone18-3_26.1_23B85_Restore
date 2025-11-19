@interface PLBatteryUITimeUsageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLBatteryUITimeUsageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLBatteryUITimeUsageCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOnText" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOffText" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOnTimeText" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOffTimeText" withType:"UILabel"];
  [v3 validateClass:@"PLBatteryUITimeUsageCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v27.receiver = self;
  v27.super_class = PLBatteryUITimeUsageCellAccessibility;
  [(PLBatteryUITimeUsageCellAccessibility *)&v27 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v26 = __UIAccessibilityCastAsClass();
  v3 = [v26 specifier];
  v4 = [v3 propertyForKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
  v5 = [v4 intValue];

  v6 = [v3 propertyForKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
  v7 = [v6 intValue];

  v8 = [MEMORY[0x29EDB8DE8] array];
  v9 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOnText"];
  v10 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOnTimeText"];
  v11 = MEMORY[0x29C2CCC40](0, v5);
  [v10 setAccessibilityLabel:v11];

  v12 = objc_alloc(MEMORY[0x29EDC7318]);
  v25 = v9;
  v13 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v9, v10}];
  v14 = [v12 initWithAccessibilityContainer:self representedElements:v13];

  v15 = [v14 representedElements];
  v16 = [v15 count];

  if (v16)
  {
    [v8 addObject:v14];
  }

  v17 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOffText"];
  v18 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOffTimeText"];
  v19 = MEMORY[0x29C2CCC40](0, v7);
  [v18 setAccessibilityLabel:v19];

  v20 = objc_alloc(MEMORY[0x29EDC7318]);
  v21 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v17, v18}];
  v22 = [v20 initWithAccessibilityContainer:self representedElements:v21];

  v23 = [v22 representedElements];
  v24 = [v23 count];

  if (v24)
  {
    [v8 addObject:v22];
  }

  [(PLBatteryUITimeUsageCellAccessibility *)self setAccessibilityElements:v8];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBatteryUITimeUsageCellAccessibility;
  [(PLBatteryUITimeUsageCellAccessibility *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PLBatteryUITimeUsageCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end