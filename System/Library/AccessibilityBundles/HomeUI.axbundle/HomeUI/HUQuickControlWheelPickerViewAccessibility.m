@interface HUQuickControlWheelPickerViewAccessibility
- (id)pickerView:(id)a3 accessibilityAttributedLabelForComponent:(int64_t)a4;
@end

@implementation HUQuickControlWheelPickerViewAccessibility

- (id)pickerView:(id)a3 accessibilityAttributedLabelForComponent:(int64_t)a4
{
  v4 = MEMORY[0x29EDB9F30];
  v5 = accessibilityHomeUILocalizedString(@"picker.current.mode");
  v6 = [v4 attributedStringWithFormatAndAttributes:v5];

  return v6;
}

@end