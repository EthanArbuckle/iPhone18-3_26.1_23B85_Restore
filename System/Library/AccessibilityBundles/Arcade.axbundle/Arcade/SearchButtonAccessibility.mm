@interface SearchButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SearchButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchButtonAccessibility *)&v3 accessibilityTraits];
}

@end