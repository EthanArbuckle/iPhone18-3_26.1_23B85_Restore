@interface ArcadeHeaderViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation ArcadeHeaderViewAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ArcadeHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryView"];
  [array axSafelyAddObject:v4];

  return array;
}

@end