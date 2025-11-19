@interface TitleHeaderViewAccessibility
- (int64_t)_accessibilitySortPriority;
@end

@implementation TitleHeaderViewAccessibility

- (int64_t)_accessibilitySortPriority
{
  v3 = [(TitleHeaderViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 containsString:@"scrollablePill"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TitleHeaderViewAccessibility;
  return [(TitleHeaderViewAccessibility *)&v6 _accessibilitySortPriority];
}

@end