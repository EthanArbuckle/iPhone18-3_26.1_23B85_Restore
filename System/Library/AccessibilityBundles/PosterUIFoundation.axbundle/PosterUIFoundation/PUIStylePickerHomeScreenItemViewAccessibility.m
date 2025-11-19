@interface PUIStylePickerHomeScreenItemViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PUIStylePickerHomeScreenItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerHomeScreenItemViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PUIStylePickerHomeScreenItemViewAccessibility *)&v3 accessibilityTraits];
}

@end