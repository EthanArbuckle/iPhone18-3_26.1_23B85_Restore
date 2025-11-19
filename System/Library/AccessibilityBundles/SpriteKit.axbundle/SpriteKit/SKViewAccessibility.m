@interface SKViewAccessibility
- (id)accessibilityElements;
@end

@implementation SKViewAccessibility

- (id)accessibilityElements
{
  v3 = [(SKViewAccessibility *)self _accessibilitySpriteKitScene];
  v4 = [v3 accessibilityContainer];

  if (!v4)
  {
    [v3 setAccessibilityContainer:self];
  }

  v5 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, v3}];
  v6 = [(SKViewAccessibility *)self _accessibilitySortedElementsWithin];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
  }

  return v5;
}

@end