@interface PKPaletteDictationBarButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteDictationBarButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PKPaletteDictationBarButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PKPaletteDictationBarButtonAccessibility *)&v3 accessibilityTraits];
}

@end