@interface AVMobileGlassContentTabsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation AVMobileGlassContentTabsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileGlassContentTabsView" hasInstanceVariable:@"_contentTabSelectionView" withType:"AVMobileGlassContentTabSelectionView"];
  [v3 validateClass:@"AVMobileGlassContentTabsView" hasInstanceVariable:@"_contentView" withType:"AVMobileGlassContentTabsContentView"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AVMobileGlassContentTabsViewAccessibility *)self safeValueForKey:@"_contentTabSelectionView"];
  [v3 axSafelyAddObject:v4];

  v5 = [(AVMobileGlassContentTabsViewAccessibility *)self safeValueForKey:@"_contentView"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end