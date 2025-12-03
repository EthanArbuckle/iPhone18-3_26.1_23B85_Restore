@interface AVMobileGlassContentTabsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation AVMobileGlassContentTabsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileGlassContentTabsView" hasInstanceVariable:@"_contentTabSelectionView" withType:"AVMobileGlassContentTabSelectionView"];
  [validationsCopy validateClass:@"AVMobileGlassContentTabsView" hasInstanceVariable:@"_contentView" withType:"AVMobileGlassContentTabsContentView"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AVMobileGlassContentTabsViewAccessibility *)self safeValueForKey:@"_contentTabSelectionView"];
  [array axSafelyAddObject:v4];

  v5 = [(AVMobileGlassContentTabsViewAccessibility *)self safeValueForKey:@"_contentView"];
  [array axSafelyAddObject:v5];

  return array;
}

@end