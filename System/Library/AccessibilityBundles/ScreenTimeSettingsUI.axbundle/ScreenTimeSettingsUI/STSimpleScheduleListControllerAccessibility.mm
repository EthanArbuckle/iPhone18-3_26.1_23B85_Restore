@interface STSimpleScheduleListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySelectedSpecifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkSelectedSpecifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation STSimpleScheduleListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSimpleScheduleListController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"specifiers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"startTimeSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"endTimeSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"startTimePickerSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"endTimePickerSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSimpleScheduleListController" hasInstanceMethod:@"tableView:didSelectRowAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
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

  _accessibilitySelectedSpecifier = [(STSimpleScheduleListControllerAccessibility *)self _accessibilitySelectedSpecifier];
  [v4 _accessibilitySetIsExpandedSTUICell:v8 == _accessibilitySelectedSpecifier];
  [v6 _accessibilitySetIsExpandedSTUICell:v10 == _accessibilitySelectedSpecifier];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = STSimpleScheduleListControllerAccessibility;
  [(STSimpleScheduleListControllerAccessibility *)&v5 tableView:view didSelectRowAtIndexPath:path];
  [(STSimpleScheduleListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end