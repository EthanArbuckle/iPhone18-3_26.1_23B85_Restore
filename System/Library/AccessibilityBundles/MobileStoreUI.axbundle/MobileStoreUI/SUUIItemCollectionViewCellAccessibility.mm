@interface SUUIItemCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation SUUIItemCollectionViewCellAccessibility

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SUUIItemCollectionViewCellAccessibility *)self safeValueForKey:@"_layout"];
  v5 = [v4 safeValueForKey:@"_itemOfferButton"];
  [v5 accessibilitySetIdentification:@"ItemOfferButton"];
  [array axSafelyAddObject:v5];

  return array;
}

@end