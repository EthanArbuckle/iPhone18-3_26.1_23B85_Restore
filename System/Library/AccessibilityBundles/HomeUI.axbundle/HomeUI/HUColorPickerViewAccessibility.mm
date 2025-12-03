@interface HUColorPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setSelectedColor:(id)color;
@end

@implementation HUColorPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUColorPickerView" hasInstanceMethod:@"setSelectedColor:" withFullSignature:{"v", "{?=dddd}", 0}];
  [validationsCopy validateClass:@"HUColorPickerView" hasInstanceMethod:@"magnifierView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlMagnifierView" hasInstanceMethod:@"selectedColor" withFullSignature:{"@", 0}];
}

- (void)setSelectedColor:(id)color
{
  v8.receiver = self;
  v8.super_class = HUColorPickerViewAccessibility;
  [(HUColorPickerViewAccessibility *)&v8 setSelectedColor:color.var0, color.var1, color.var2, color.var3];
  if (CFAbsoluteTimeGetCurrent() - *&setSelectedColor__LastTime > 1.0)
  {
    objc_opt_class();
    v4 = [(HUColorPickerViewAccessibility *)self safeValueForKey:@"magnifierView"];
    v5 = [v4 safeValueForKey:@"selectedColor"];
    v6 = __UIAccessibilityCastAsClass();

    v7 = AXColorStringForColor();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
    setSelectedColor__LastTime = CFAbsoluteTimeGetCurrent();
  }
}

@end