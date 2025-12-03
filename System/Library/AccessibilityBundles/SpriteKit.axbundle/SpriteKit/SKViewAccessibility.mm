@interface SKViewAccessibility
- (id)accessibilityElements;
@end

@implementation SKViewAccessibility

- (id)accessibilityElements
{
  _accessibilitySpriteKitScene = [(SKViewAccessibility *)self _accessibilitySpriteKitScene];
  accessibilityContainer = [_accessibilitySpriteKitScene accessibilityContainer];

  if (!accessibilityContainer)
  {
    [_accessibilitySpriteKitScene setAccessibilityContainer:self];
  }

  v5 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, _accessibilitySpriteKitScene}];
  _accessibilitySortedElementsWithin = [(SKViewAccessibility *)self _accessibilitySortedElementsWithin];
  if (_accessibilitySortedElementsWithin)
  {
    [v5 addObjectsFromArray:_accessibilitySortedElementsWithin];
  }

  return v5;
}

@end