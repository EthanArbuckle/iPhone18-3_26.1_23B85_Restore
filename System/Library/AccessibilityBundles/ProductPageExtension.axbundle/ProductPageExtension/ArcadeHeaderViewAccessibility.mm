@interface ArcadeHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation ArcadeHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.ArcadeHeaderView" isKindOfClass:@"AppStore.TitleHeaderView"];
  [validationsCopy validateClass:@"ProductPageExtension.TitleHeaderView" hasSwiftField:@"accessoryView" withSwiftType:"Optional<UIView>"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ArcadeHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryView"];
  [array axSafelyAddObject:v4];

  return array;
}

@end