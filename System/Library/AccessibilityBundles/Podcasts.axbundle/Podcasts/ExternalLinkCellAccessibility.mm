@interface ExternalLinkCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ExternalLinkCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ExternalLinkCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ExternalLinkCellAccessibility *)&v3 accessibilityTraits];
}

@end