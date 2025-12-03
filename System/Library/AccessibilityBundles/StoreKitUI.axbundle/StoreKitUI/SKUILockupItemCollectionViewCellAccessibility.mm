@interface SKUILockupItemCollectionViewCellAccessibility
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
@end

@implementation SKUILockupItemCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILockupItemCollectionViewCellAccessibility *)self safeValueForKey:@"_layout"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (int64_t)accessibilityElementCount
{
  accessibilityElements = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v3 = [accessibilityElements count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  accessibilityElements = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v5 = [accessibilityElements objectAtIndex:index];

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  accessibilityElements = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v6 = [accessibilityElements indexOfObject:elementCopy];

  return v6;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  array = [(SKUILockupItemCollectionViewCellAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [(SKUILockupItemCollectionViewCellAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [array addObject:v5];
  }

  v11.receiver = self;
  v11.super_class = SKUILockupItemCollectionViewCellAccessibility;
  accessibilityElements = [(SKUILockupItemCollectionViewCellAccessibility *)&v11 accessibilityElements];
  v7 = array;
  v8 = v7;
  v9 = v7;
  if (accessibilityElements)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:accessibilityElements];
  }

  return v9;
}

@end