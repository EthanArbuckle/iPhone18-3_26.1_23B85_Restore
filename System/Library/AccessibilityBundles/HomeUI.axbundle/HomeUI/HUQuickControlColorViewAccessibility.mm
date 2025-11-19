@interface HUQuickControlColorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFirstQuickControlElementForFocus;
- (id)accessibilityElements;
- (void)_updateColorPicker;
@end

@implementation HUQuickControlColorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlColorView" hasInstanceMethod:@"mode" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"HUQuickControlColorView" hasInstanceMethod:@"colorLinearPaletteView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlColorView" hasInstanceMethod:@"colorPickerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlColorView" hasInstanceMethod:@"_updateColorPicker" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HUColorPickerView" hasInstanceMethod:@"colorWheelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUColorSwatchView" hasInstanceMethod:@"selectionState" withFullSignature:{"Q", 0}];
}

- (id)accessibilityElements
{
  v3 = [(HUQuickControlColorViewAccessibility *)self safeUnsignedIntegerForKey:@"mode"];
  v4 = [(HUQuickControlColorViewAccessibility *)self safeUIViewForKey:@"colorPickerModeSegmentedControl"];
  v5 = MEMORY[0x29EDB8D80];
  if (v3)
  {
    v6 = [(HUQuickControlColorViewAccessibility *)self safeValueForKey:@"colorPickerView"];
    if ([v4 isHidden])
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    v8 = [(HUQuickControlColorViewAccessibility *)self safeValueForKey:@"colorLinearPaletteView"];
    v9 = [v5 axArrayByIgnoringNilElementsWithCount:{3, v6, v7, v8}];
  }

  else
  {
    v6 = [(HUQuickControlColorViewAccessibility *)self safeValueForKey:@"colorLinearPaletteView"];
    if ([v4 isHidden])
    {
      v10 = 0;
    }

    else
    {
      v10 = v4;
    }

    v9 = [v5 axArrayByIgnoringNilElementsWithCount:{2, v6, v10}];
  }

  return v9;
}

- (void)_updateColorPicker
{
  v2.receiver = self;
  v2.super_class = HUQuickControlColorViewAccessibility;
  [(HUQuickControlColorViewAccessibility *)&v2 _updateColorPicker];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_accessibilityFirstQuickControlElementForFocus
{
  v2 = [(HUQuickControlColorViewAccessibility *)self safeValueForKey:@"colorPickerView"];
  v3 = [v2 safeValueForKey:@"colorWheelView"];

  return v3;
}

@end