@interface PLBatteryUITimeUsageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLBatteryUITimeUsageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOnText" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOffText" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOnTimeText" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" hasInstanceVariable:@"_screenOffTimeText" withType:"UILabel"];
  [validationsCopy validateClass:@"PLBatteryUITimeUsageCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v27.receiver = self;
  v27.super_class = PLBatteryUITimeUsageCellAccessibility;
  [(PLBatteryUITimeUsageCellAccessibility *)&v27 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v26 = __UIAccessibilityCastAsClass();
  specifier = [v26 specifier];
  v4 = [specifier propertyForKey:@"PLBatteryUIGraphScreenOnUsageTimeKey"];
  intValue = [v4 intValue];

  v6 = [specifier propertyForKey:@"PLBatteryUIGraphScreenOffUsageTimeKey"];
  intValue2 = [v6 intValue];

  array = [MEMORY[0x29EDB8DE8] array];
  v9 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOnText"];
  v10 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOnTimeText"];
  v11 = MEMORY[0x29C2CCC40](0, intValue);
  [v10 setAccessibilityLabel:v11];

  v12 = objc_alloc(MEMORY[0x29EDC7318]);
  v25 = v9;
  v13 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v9, v10}];
  v14 = [v12 initWithAccessibilityContainer:self representedElements:v13];

  representedElements = [v14 representedElements];
  v16 = [representedElements count];

  if (v16)
  {
    [array addObject:v14];
  }

  v17 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOffText"];
  v18 = [(PLBatteryUITimeUsageCellAccessibility *)self safeValueForKey:@"_screenOffTimeText"];
  v19 = MEMORY[0x29C2CCC40](0, intValue2);
  [v18 setAccessibilityLabel:v19];

  v20 = objc_alloc(MEMORY[0x29EDC7318]);
  v21 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v17, v18}];
  v22 = [v20 initWithAccessibilityContainer:self representedElements:v21];

  representedElements2 = [v22 representedElements];
  v24 = [representedElements2 count];

  if (v24)
  {
    [array addObject:v22];
  }

  [(PLBatteryUITimeUsageCellAccessibility *)self setAccessibilityElements:array];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PLBatteryUITimeUsageCellAccessibility;
  [(PLBatteryUITimeUsageCellAccessibility *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PLBatteryUITimeUsageCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end