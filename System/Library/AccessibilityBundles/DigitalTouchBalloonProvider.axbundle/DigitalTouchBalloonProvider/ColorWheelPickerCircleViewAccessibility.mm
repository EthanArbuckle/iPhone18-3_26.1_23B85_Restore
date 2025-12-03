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
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"])
  {
    isAccessibilityElement = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ColorWheelPickerCircleViewAccessibility;
    isAccessibilityElement = [(ColorWheelPickerCircleViewAccessibility *)&v6 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ColorWheelPickerCircleViewAccessibility;
  accessibilityTraits = [(ColorWheelPickerCircleViewAccessibility *)&v8 accessibilityTraits];
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

  v6 = *MEMORY[0x29EDC7F60];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    v5 = [(ColorWheelPickerCircleViewAccessibility *)self safeValueForKey:@"backgroundColor"];
    axColorStringForSpeaking = [v5 axColorStringForSpeaking];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ColorWheelPickerCircleViewAccessibility;
    axColorStringForSpeaking = [(ColorWheelPickerCircleViewAccessibility *)&v8 accessibilityValue];
  }

  return axColorStringForSpeaking;
}

- (id)accessibilityPath
{
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

  if (v4)
  {
    _accessibilityCirclePathBasedOnBoundsWidth = [(ColorWheelPickerCircleViewAccessibility *)self _accessibilityCirclePathBasedOnBoundsWidth];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ColorWheelPickerCircleViewAccessibility;
    _accessibilityCirclePathBasedOnBoundsWidth = [(ColorWheelPickerCircleViewAccessibility *)&v7 accessibilityPath];
  }

  return _accessibilityCirclePathBasedOnBoundsWidth;
}

- (void)accessibilityIncrement
{
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

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
  accessibilityIdentifier = [(ColorWheelPickerCircleViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"digital.touch.picker.circle.identifier"];

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