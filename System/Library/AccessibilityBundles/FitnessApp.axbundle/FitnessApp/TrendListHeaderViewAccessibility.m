@interface TrendListHeaderViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TrendListHeaderViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrendListHeaderViewAccessibility;
  return UIAccessibilityTraitHeader | [(TrendListHeaderViewAccessibility *)&v3 accessibilityTraits];
}

@end