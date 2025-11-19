@interface ActivityPickerCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ActivityPickerCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ActivityPickerCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ActivityPickerCellAccessibility *)&v3 accessibilityTraits];
}

@end