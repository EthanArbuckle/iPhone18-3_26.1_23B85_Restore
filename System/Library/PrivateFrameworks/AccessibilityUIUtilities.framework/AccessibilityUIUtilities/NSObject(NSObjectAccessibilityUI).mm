@interface NSObject(NSObjectAccessibilityUI)
- (id)_accessibilityUIFindAXDescendants:()NSObjectAccessibilityUI byAddingElements:;
- (id)_accessibilityUIFindAnyAXDescendant:()NSObjectAccessibilityUI byAddingElements:;
@end

@implementation NSObject(NSObjectAccessibilityUI)

- (id)_accessibilityUIFindAnyAXDescendant:()NSObjectAccessibilityUI byAddingElements:
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__NSObject_NSObjectAccessibilityUI___accessibilityUIFindAnyAXDescendant_byAddingElements___block_invoke;
  aBlock[3] = &unk_1E812E598;
  v14 = v6;
  v7 = v6;
  v8 = a4;
  v9 = _Block_copy(aBlock);
  v10 = [self _accessibilityUIFindAXDescendants:v9 byAddingElements:v8];

  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)_accessibilityUIFindAXDescendants:()NSObjectAccessibilityUI byAddingElements:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v8 addObject:self];
  array = [MEMORY[0x1E695DF70] array];
  if ([v8 count])
  {
    while (1)
    {
      lastObject = [v8 lastObject];
      [v8 removeLastObject];
      v12 = 0;
      if (v6[2](v6, lastObject, &v12))
      {
        [array addObject:lastObject];
      }

      if (v12 == 1)
      {
        break;
      }

      v7[2](v7, v8, lastObject);

      if (![v8 count])
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:

  return array;
}

@end