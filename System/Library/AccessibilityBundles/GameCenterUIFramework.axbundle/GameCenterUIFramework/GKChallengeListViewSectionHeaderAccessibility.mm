@interface GKChallengeListViewSectionHeaderAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation GKChallengeListViewSectionHeaderAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = GKChallengeListViewSectionHeaderAccessibility;
  return *MEMORY[0x29EDC7F80] | [(GKChallengeListViewSectionHeaderAccessibility *)&v3 accessibilityTraits];
}

@end