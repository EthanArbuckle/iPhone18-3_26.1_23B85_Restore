@interface DeveloperLinkViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation DeveloperLinkViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DeveloperLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DeveloperLinkViewAccessibility *)&v3 accessibilityTraits];
}

@end