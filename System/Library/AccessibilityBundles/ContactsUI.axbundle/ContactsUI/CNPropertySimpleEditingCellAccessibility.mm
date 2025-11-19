@interface CNPropertySimpleEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)valueView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateValueWithPropertyItem:(id)a3;
@end

@implementation CNPropertySimpleEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertySimpleEditingCell" hasInstanceVariable:@"_textField" withType:"UITextField"];
  [v3 validateClass:@"CNPropertySimpleEditingCell" hasInstanceMethod:@"valueView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertySimpleCell" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertySimpleEditingCell" hasInstanceMethod:@"updateValueWithPropertyItem:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CNPropertySimpleEditingCell" isKindOfClass:@"CNPropertyEditingCell"];
  [v3 validateClass:@"CNPropertyEditingCell" hasInstanceMethod:@"labelButton" withFullSignature:{"@", 0}];
}

- (id)valueView
{
  v5.receiver = self;
  v5.super_class = CNPropertySimpleEditingCellAccessibility;
  v3 = [(CNPropertySimpleEditingCellAccessibility *)&v5 valueView];
  [(CNPropertySimpleEditingCellAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"labelButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 currentTitle];

  return v5;
}

- (void)updateValueWithPropertyItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCellAccessibility;
  [(CNPropertySimpleEditingCellAccessibility *)&v4 updateValueWithPropertyItem:a3];
  [(CNPropertySimpleEditingCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CNPropertySimpleEditingCellAccessibility;
  [(CNPropertySimpleEditingCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"_textField"];
  v4 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"labelView"];
  v5 = [v4 accessibilityLabel];
  [v3 setAccessibilityIdentifier:v5];
}

@end