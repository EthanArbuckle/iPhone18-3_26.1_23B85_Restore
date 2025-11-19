@interface CHAchievementsSectionHeaderViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CHAchievementsSectionHeaderViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHAchievementsSectionHeaderViewAccessibility;
  return UIAccessibilityTraitHeader | [(CHAchievementsSectionHeaderViewAccessibility *)&v3 accessibilityTraits];
}

@end