@interface TodayCardChinLockupListIconViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TodayCardChinLockupListIconViewAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = TodayCardChinLockupListIconViewAccessibility;
  accessibilityLabel = [(TodayCardChinLockupListIconViewAccessibility *)&v6 accessibilityLabel];
  v3 = accessibilityAppStoreLocalizedString(@"app.suggestion");
  v4 = __AXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TodayCardChinLockupListIconViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TodayCardChinLockupListIconViewAccessibility *)&v3 accessibilityTraits];
}

@end