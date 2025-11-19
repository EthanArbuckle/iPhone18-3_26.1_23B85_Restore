@interface ScrollablePillViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ScrollablePillViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ScrollablePillViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ScrollablePillViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(ScrollablePillViewAccessibility *)self safeSwiftValueForKey:@"linkLabel"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end