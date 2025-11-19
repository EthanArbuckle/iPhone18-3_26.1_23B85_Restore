@interface SKUILockupItemCollectionViewCellAccessibility
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
@end

@implementation SKUILockupItemCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILockupItemCollectionViewCellAccessibility *)self safeValueForKey:@"_layout"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(SKUILockupItemCollectionViewCellAccessibility *)self accessibilityElements];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(SKUILockupItemCollectionViewCellAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    [(SKUILockupItemCollectionViewCellAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v4 addObject:v5];
  }

  v11.receiver = self;
  v11.super_class = SKUILockupItemCollectionViewCellAccessibility;
  v6 = [(SKUILockupItemCollectionViewCellAccessibility *)&v11 accessibilityElements];
  v7 = v4;
  v8 = v7;
  v9 = v7;
  if (v6)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v6];
  }

  return v9;
}

@end