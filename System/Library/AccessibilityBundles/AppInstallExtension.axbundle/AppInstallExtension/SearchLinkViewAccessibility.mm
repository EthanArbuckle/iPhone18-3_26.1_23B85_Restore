@interface SearchLinkViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchLinkViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchLinkViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(SearchLinkViewAccessibility *)self safeSwiftValueForKey:@"linkLabel"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end