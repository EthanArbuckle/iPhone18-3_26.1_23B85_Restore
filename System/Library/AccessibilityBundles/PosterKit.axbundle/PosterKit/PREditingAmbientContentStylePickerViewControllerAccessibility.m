@interface PREditingAmbientContentStylePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)didTapContentStyleItemView:(id)a3;
@end

@implementation PREditingAmbientContentStylePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PREditingAmbientContentStylePickerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PREditingAmbientContentStylePickerViewController" hasInstanceMethod:@"selectedItemView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PREditingAmbientContentStylePickerViewController" hasInstanceMethod:@"didTapContentStyleItemView:" withFullSignature:{"v", "@", 0}];
}

- (void)didTapContentStyleItemView:(id)a3
{
  v4 = a3;
  v5 = [(PREditingAmbientContentStylePickerViewControllerAccessibility *)self safeValueForKey:@"selectedItemView"];
  v6 = v5;
  v7 = MEMORY[0x29EDC7F70];
  if (v5)
  {
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  }

  v9.receiver = self;
  v9.super_class = PREditingAmbientContentStylePickerViewControllerAccessibility;
  [(PREditingAmbientContentStylePickerViewControllerAccessibility *)&v9 didTapContentStyleItemView:v4];
  v8 = [(PREditingAmbientContentStylePickerViewControllerAccessibility *)self safeValueForKey:@"selectedItemView"];

  if (v8)
  {
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7FC0] | *v7];
  }
}

@end