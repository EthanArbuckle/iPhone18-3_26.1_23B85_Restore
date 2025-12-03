@interface ChevronButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ChevronButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(ChevronButtonAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  if (v3)
  {
    v4 = [(ChevronButtonAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
    accessibilityLabel = [v4 accessibilityLabel];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ChevronButtonAccessibility;
    accessibilityLabel = [(ChevronButtonAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ChevronButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ChevronButtonAccessibility *)&v3 accessibilityTraits];
}

@end