@interface ImageButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ImageButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(ImageButtonAccessibility *)self safeValueForKey:@"buttonTitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ImageButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ImageButtonAccessibility *)&v3 accessibilityTraits];
}

@end