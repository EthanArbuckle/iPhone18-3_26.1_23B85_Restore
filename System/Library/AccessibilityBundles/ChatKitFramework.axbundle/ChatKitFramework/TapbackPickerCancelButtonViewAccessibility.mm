@interface TapbackPickerCancelButtonViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TapbackPickerCancelButtonViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TapbackPickerCancelButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TapbackPickerCancelButtonViewAccessibility *)&v3 accessibilityTraits];
}

@end