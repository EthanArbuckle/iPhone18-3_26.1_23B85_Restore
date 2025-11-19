@interface TKPickerTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TKPickerTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TKPickerTableViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TKPickerTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end