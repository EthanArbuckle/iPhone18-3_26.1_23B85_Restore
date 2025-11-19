@interface ArcadeHeaderViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation ArcadeHeaderViewAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ArcadeHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryView"];
  [v3 axSafelyAddObject:v4];

  return v3;
}

@end