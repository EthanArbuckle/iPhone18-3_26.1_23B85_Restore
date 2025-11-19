@interface CNPickerItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)beginEditing;
- (void)endEditing;
@end

@implementation CNPickerItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPickerItemCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPickerItemCell" hasInstanceMethod:@"beginEditing" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CNPickerItemCell" hasInstanceMethod:@"endEditing" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
    v6 = [v5 accessibilityTraits];

    return v6;
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
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = [(CNPickerItemCellAccessibility *)self safeValueForKey:@"textField"];
    v6 = [v5 accessibilityValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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