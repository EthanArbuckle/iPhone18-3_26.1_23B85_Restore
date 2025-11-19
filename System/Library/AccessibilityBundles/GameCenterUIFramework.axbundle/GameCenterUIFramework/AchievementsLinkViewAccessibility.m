@interface AchievementsLinkViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AchievementsLinkViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AchievementsLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AchievementsLinkViewAccessibility *)&v3 accessibilityTraits];
}

@end