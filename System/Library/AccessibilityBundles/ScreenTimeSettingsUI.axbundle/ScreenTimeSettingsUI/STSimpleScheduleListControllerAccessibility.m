@interface STSimpleScheduleListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySelectedSpecifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkSelectedSpecifier;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation STSimpleScheduleListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STSimpleScheduleListController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"specifiers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"startTimeSpecifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"endTimeSpecifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"startTimePickerSpecifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"endTimePickerSpecifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (id)_accessibilitySelectedSpecifier
{
  objc_opt_class();
  v3 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"startTimePickerSpecifier"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  v5 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"endTimePickerSpecifier"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  v7 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"specifiers"];
  if ([v7 containsObject:v4])
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (void)_accessibilityMarkSelectedSpecifier
{
  objc_opt_class();
  v3 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"startTimeSpecifier"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  v5 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"endTimeSpecifier"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  v7 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"startTimePickerSpecifier"];
  v8 = __UIAccessibilityCastAsSafeCategory();

  objc_opt_class();
  v9 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"endTimePickerSpecifier"];
  v10 = __UIAccessibilityCastAsSafeCategory();

  v11 = [(STSimpleScheduleListControllerAccessibility *)self _accessibilitySelectedSpecifier];
  [v4 _accessibilitySetIsExpandedSTUICell:v8 == v11];
  [v6 _accessibilitySetIsExpandedSTUICell:v10 == v11];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = STSimpleScheduleListControllerAccessibility;
  [(STSimpleScheduleListControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"startTimeSpecifier"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 _accessibilitySetIsExpandableSTUICell:1];
  objc_opt_class();
  v5 = [(STSimpleScheduleListControllerAccessibility *)self safeValueForKey:@"endTimeSpecifier"];
  v6 = __UIAccessibilityCastAsSafeCategory();

  [v6 _accessibilitySetIsExpandableSTUICell:1];
  [(STSimpleScheduleListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = STSimpleScheduleListControllerAccessibility;
  [(STSimpleScheduleListControllerAccessibility *)&v5 tableView:a3 didSelectRowAtIndexPath:a4];
  [(STSimpleScheduleListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end