@interface HUColorPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setSelectedColor:(id)a3;
@end

@implementation HUColorPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUColorPickerView" hasInstanceMethod:@"setSelectedColor:" withFullSignature:{"v", "{?=dddd}", 0}];
  [v3 validateClass:@"HUColorPickerView" hasInstanceMethod:@"magnifierView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlMagnifierView" hasInstanceMethod:@"selectedColor" withFullSignature:{"@", 0}];
}

- (void)setSelectedColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUColorPickerViewAccessibility;
  [(HUColorPickerViewAccessibility *)&v8 setSelectedColor:a3.var0, a3.var1, a3.var2, a3.var3];
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