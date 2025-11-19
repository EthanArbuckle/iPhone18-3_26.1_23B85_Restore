@interface AVTColorWheelViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AVTColorWheelViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVTColorWheelViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AVTColorWheelViewAccessibility *)&v3 accessibilityTraits];
}

@end