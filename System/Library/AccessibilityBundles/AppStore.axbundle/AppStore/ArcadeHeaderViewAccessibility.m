@interface ArcadeHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation ArcadeHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.ArcadeHeaderView" isKindOfClass:@"AppStore.TitleHeaderView"];
  [v3 validateClass:@"AppStore.TitleHeaderView" hasSwiftField:@"accessoryView" withSwiftType:"Optional<UIView>"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ArcadeHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryView"];
  [v3 axSafelyAddObject:v4];

  return v3;
}

@end