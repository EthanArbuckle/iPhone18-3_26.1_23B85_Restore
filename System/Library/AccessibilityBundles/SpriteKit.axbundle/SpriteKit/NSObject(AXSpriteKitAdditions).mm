@interface NSObject(AXSpriteKitAdditions)
- (id)accessibilitySpriteKitChildElements;
@end

@implementation NSObject(AXSpriteKitAdditions)

- (id)accessibilitySpriteKitChildElements
{
  v2 = objc_getAssociatedObject(a1, &_axChildElementsStorageKey);
  if (!v2)
  {
    v2 = [a1 accessibilityMakeSpriteKitChildElementsIfNeeded];
    [a1 setAccessibilitySpriteKitChildElements:v2];
  }

  return v2;
}

@end