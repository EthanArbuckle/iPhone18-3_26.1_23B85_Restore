@interface ColorWheelPickerCircleViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation ColorWheelPickerCircleViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"digital.touch.picker.circle.identifier"])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ColorWheelPickerCircleViewAccessibility;
    v4 = [(ColorWheelPickerCircleViewAccessibility *)&v6 isAccessibilityElement];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ColorWheelPickerCircleViewAccessibility;
  v3 = [(ColorWheelPickerCircleViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"digital.touch.picker.circle.identifier"];

  v6 = *MEMORY[0x29EDC7F60];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

- (id)accessibilityValue
{
  v3 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    v5 = [(ColorWheelPickerCircleViewAccessibility *)self safeValueForKey:@"backgroundColor"];
    v6 = [v5 axColorStringForSpeaking];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ColorWheelPickerCircleViewAccessibility;
    v6 = [(ColorWheelPickerCircleViewAccessibility *)&v8 accessibilityValue];
  }

  return v6;
}

- (id)accessibilityPath
{
  v3 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    v5 = [(ColorWheelPickerCircleViewAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ColorWheelPickerCircleViewAccessibility;
    v5 = [(ColorWheelPickerCircleViewAccessibility *)&v7 accessibilityPath];
  }

  return v5;
}

- (void)accessibilityIncrement
{
  v3 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    v5 = [(ColorWheelPickerCircleViewAccessibility *)self safeValueForKey:@"superview"];
    [v5 _accessibilityIncrementColorPicker];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ColorWheelPickerCircleViewAccessibility;
    [(ColorWheelPickerCircleViewAccessibility *)&v6 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    v5 = [(ColorWheelPickerCircleViewAccessibility *)self safeValueForKey:@"superview"];
    [v5 _accessibilityDecrementColorPicker];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ColorWheelPickerCircleViewAccessibility;
    [(ColorWheelPickerCircleViewAccessibility *)&v6 accessibilityDecrement];
  }
}

@end