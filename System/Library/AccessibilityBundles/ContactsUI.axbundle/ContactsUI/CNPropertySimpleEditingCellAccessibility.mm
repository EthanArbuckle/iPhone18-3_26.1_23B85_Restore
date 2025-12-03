@interface CNPropertySimpleEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)valueView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateValueWithPropertyItem:(id)item;
@end

@implementation CNPropertySimpleEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" hasInstanceVariable:@"_textField" withType:"UITextField"];
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" hasInstanceMethod:@"valueView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertySimpleCell" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" hasInstanceMethod:@"updateValueWithPropertyItem:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" isKindOfClass:@"CNPropertyEditingCell"];
  [validationsCopy validateClass:@"CNPropertyEditingCell" hasInstanceMethod:@"labelButton" withFullSignature:{"@", 0}];
}

- (id)valueView
{
  v5.receiver = self;
  v5.super_class = CNPropertySimpleEditingCellAccessibility;
  valueView = [(CNPropertySimpleEditingCellAccessibility *)&v5 valueView];
  [(CNPropertySimpleEditingCellAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return valueView;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"labelButton"];
  v4 = __UIAccessibilityCastAsClass();

  currentTitle = [v4 currentTitle];

  return currentTitle;
}

- (void)updateValueWithPropertyItem:(id)item
{
  v4.receiver = self;
  v4.super_class = CNPropertySimpleEditingCellAccessibility;
  [(CNPropertySimpleEditingCellAccessibility *)&v4 updateValueWithPropertyItem:item];
  [(CNPropertySimpleEditingCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CNPropertySimpleEditingCellAccessibility;
  [(CNPropertySimpleEditingCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"_textField"];
  v4 = [(CNPropertySimpleEditingCellAccessibility *)self safeValueForKey:@"labelView"];
  accessibilityLabel = [v4 accessibilityLabel];
  [v3 setAccessibilityIdentifier:accessibilityLabel];
}

@end