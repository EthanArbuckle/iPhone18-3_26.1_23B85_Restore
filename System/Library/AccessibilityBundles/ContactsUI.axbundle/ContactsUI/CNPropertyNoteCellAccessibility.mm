@interface CNPropertyNoteCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNPropertyNoteCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertyNoteCell" hasInstanceMethod:@"labelLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertyNoteCell" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CNPropertyNoteCellAccessibility;
  [(CNPropertyNoteCellAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CNPropertyNoteCellAccessibility *)self safeValueForKey:@"textView"];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = 3221225472;
  v7 = __77__CNPropertyNoteCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8 = &unk_29F2B5D58;
  objc_copyWeak(&v9, &location);
  [v3 _setAccessibilityLabelBlock:&v5];

  v4 = [(CNPropertyNoteCellAccessibility *)self safeValueForKey:@"labelLabel", v5, v6, v7, v8];
  [v4 setIsAccessibilityElement:0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __77__CNPropertyNoteCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"labelLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(CNPropertyNoteCellAccessibility *)self safeValueForKey:@"labelLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CNPropertyNoteCellAccessibility *)self safeValueForKey:@"textView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end