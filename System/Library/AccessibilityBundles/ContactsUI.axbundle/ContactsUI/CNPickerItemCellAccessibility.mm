@interface CNPickerItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)beginEditing;
- (void)endEditing;
@end

@implementation CNPickerItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPickerItemCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPickerItemCell" hasInstanceMethod:@"beginEditing" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNPickerItemCell" hasInstanceMethod:@"endEditing" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v5 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
    accessibilityTraits = [v5 accessibilityTraits];

    return accessibilityTraits;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPickerItemCellAccessibility;
    return [(CNPickerItemCellAccessibility *)&v8 accessibilityTraits];
  }
}

- (id)accessibilityLabel
{
  v2 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v5 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
    accessibilityValue = [v5 accessibilityValue];
  }

  else
  {
    accessibilityValue = 0;
  }

  return accessibilityValue;
}

- (void)beginEditing
{
  v4.receiver = self;
  v4.super_class = CNPickerItemCellAccessibility;
  [(CNPickerItemCellAccessibility *)&v4 beginEditing];
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
}

- (void)endEditing
{
  v4.receiver = self;
  v4.super_class = CNPickerItemCellAccessibility;
  [(CNPickerItemCellAccessibility *)&v4 endEditing];
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
}

@end