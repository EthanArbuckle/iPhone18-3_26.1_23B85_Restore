@interface LinkListCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation LinkListCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  contentConfiguration = [v2 contentConfiguration];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LinkListCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LinkListCellAccessibility *)&v3 accessibilityTraits];
}

@end