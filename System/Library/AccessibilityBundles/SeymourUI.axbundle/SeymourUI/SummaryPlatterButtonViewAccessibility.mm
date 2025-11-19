@interface SummaryPlatterButtonViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SummaryPlatterButtonViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SummaryPlatterButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SummaryPlatterButtonViewAccessibility *)&v3 accessibilityTraits];
}

@end