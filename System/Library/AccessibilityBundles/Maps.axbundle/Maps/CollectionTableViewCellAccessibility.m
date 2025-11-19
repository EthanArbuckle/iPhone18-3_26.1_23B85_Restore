@interface CollectionTableViewCellAccessibility
- (id)accessibilityElements;
@end

@implementation CollectionTableViewCellAccessibility

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(CollectionTableViewCellAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end