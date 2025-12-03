@interface TextButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TextButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(TextButtonAccessibility *)self safeValueForKey:@"button"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TextButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TextButtonAccessibility *)&v3 accessibilityTraits];
}

@end