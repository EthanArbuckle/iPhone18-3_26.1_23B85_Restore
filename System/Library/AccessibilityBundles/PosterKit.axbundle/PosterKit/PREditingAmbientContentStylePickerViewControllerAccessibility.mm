@interface PREditingAmbientContentStylePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)didTapContentStyleItemView:(id)view;
@end

@implementation PREditingAmbientContentStylePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingAmbientContentStylePickerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PREditingAmbientContentStylePickerViewController" hasInstanceMethod:@"selectedItemView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingAmbientContentStylePickerViewController" hasInstanceMethod:@"didTapContentStyleItemView:" withFullSignature:{"v", "@", 0}];
}

- (void)didTapContentStyleItemView:(id)view
{
  viewCopy = view;
  v5 = [(PREditingAmbientContentStylePickerViewControllerAccessibility *)self safeValueForKey:@"selectedItemView"];
  v6 = v5;
  v7 = MEMORY[0x29EDC7F70];
  if (v5)
  {
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }

  v9.receiver = self;
  v9.super_class = PREditingAmbientContentStylePickerViewControllerAccessibility;
  [(PREditingAmbientContentStylePickerViewControllerAccessibility *)&v9 didTapContentStyleItemView:viewCopy];
  v8 = [(PREditingAmbientContentStylePickerViewControllerAccessibility *)self safeValueForKey:@"selectedItemView"];

  if (v8)
  {
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7FC0] | *v7];
  }
}

@end