@interface SUUIItemCollectionViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation SUUIItemCollectionViewCellAccessibility

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SUUIItemCollectionViewCellAccessibility *)self safeValueForKey:@"_layout"];
  v5 = [v4 safeValueForKey:@"_itemOfferButton"];
  [v5 accessibilitySetIdentification:@"ItemOfferButton"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end