@interface SummaryActivityRingsViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SummaryActivityRingsViewAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, MEMORY[0x29ED34A70](@"ARUIRingsView", a2)}];
  v4 = [(SummaryActivityRingsViewAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0 classExclusions:v3];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SummaryActivityRingsViewAccessibility;
  return *MEMORY[0x29EDC7FD0] | [(SummaryActivityRingsViewAccessibility *)&v3 accessibilityTraits];
}

@end