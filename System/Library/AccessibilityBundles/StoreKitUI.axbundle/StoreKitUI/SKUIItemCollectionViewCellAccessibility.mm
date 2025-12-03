@interface SKUIItemCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation SKUIItemCollectionViewCellAccessibility

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SKUIItemCollectionViewCellAccessibility *)self safeValueForKey:@"_layout"];
  v5 = [v4 safeValueForKey:@"_itemOfferButton"];
  [v5 accessibilitySetIdentification:@"ItemOfferButton"];
  [array axSafelyAddObject:v5];

  return array;
}

@end