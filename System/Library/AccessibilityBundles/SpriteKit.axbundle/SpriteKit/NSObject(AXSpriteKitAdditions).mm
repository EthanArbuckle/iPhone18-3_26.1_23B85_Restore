@interface NSObject(AXSpriteKitAdditions)
- (id)accessibilitySpriteKitChildElements;
@end

@implementation NSObject(AXSpriteKitAdditions)

- (id)accessibilitySpriteKitChildElements
{
  accessibilityMakeSpriteKitChildElementsIfNeeded = objc_getAssociatedObject(self, &_axChildElementsStorageKey);
  if (!accessibilityMakeSpriteKitChildElementsIfNeeded)
  {
    accessibilityMakeSpriteKitChildElementsIfNeeded = [self accessibilityMakeSpriteKitChildElementsIfNeeded];
    [self setAccessibilitySpriteKitChildElements:accessibilityMakeSpriteKitChildElementsIfNeeded];
  }

  return accessibilityMakeSpriteKitChildElementsIfNeeded;
}

@end