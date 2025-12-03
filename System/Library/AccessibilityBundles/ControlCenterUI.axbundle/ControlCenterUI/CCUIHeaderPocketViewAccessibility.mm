@interface CCUIHeaderPocketViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUIHeaderPocketViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIHeaderPocketView" hasInstanceMethod:@"editButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIHeaderPocketView" hasInstanceMethod:@"powerButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIHeaderPocketView" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIHeaderPocketView" hasInstanceVariable:@"_compactSensorAttributionControl" withType:"CCUISensorAttributionCompactControl"];
  [validationsCopy validateClass:@"CCUIHeaderPocketView" hasInstanceVariable:@"_sensorAttributionExpandedViewController" withType:"CCUISensorAttributionExpandedViewController"];
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIPowerButton" isKindOfClass:@"UIControl"];
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"editButton"];
  v5 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"powerButton"];
  v6 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"_compactSensorAttributionControl"];
  [v3 axSafelyAddObject:v4];
  [v3 axSafelyAddObject:v5];
  [v3 axSafelyAddObject:v6];
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v7 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"statusBar"];
    [v3 axSafelyAddObject:v7];
  }

  else
  {
    v7 = [*MEMORY[0x29EDC8008] _accessibilityStatusBarElements:1 sorted:1];
    [v3 axSafelyAddObjectsFromArray:v7];
  }

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = CCUIHeaderPocketViewAccessibility;
  [(CCUIHeaderPocketViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"editButton"];
  v4 = accessibilityLocalizedString(@"control.center.add.controls");
  [v3 setAccessibilityLabel:v4];

  [v3 _setAccessibilityServesAsFirstElement:1];
  v5 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"powerButton"];
  v6 = accessibilityLocalizedString(@"control.center.power");
  [v5 setAccessibilityLabel:v6];

  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, v5);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __79__CCUIHeaderPocketViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12[3] = &unk_29F2B6D90;
  objc_copyWeak(&v13, &location);
  [v5 setAccessibilityActivateBlock:v12];
  v7 = [(CCUIHeaderPocketViewAccessibility *)self safeValueForKey:@"_sensorAttributionExpandedViewController"];
  view = [v7 view];
  objc_initWeak(&from, v7);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __79__CCUIHeaderPocketViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F2B6D90;
  objc_copyWeak(&v10, &from);
  [view setAccessibilityViewIsModalBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __79__CCUIHeaderPocketViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = __UIAccessibilityCastAsClass();

  [v3 performPrimaryAction];
  return 1;
}

uint64_t __79__CCUIHeaderPocketViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2;
}

@end