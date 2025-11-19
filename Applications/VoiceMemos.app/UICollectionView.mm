@interface UICollectionView
- (id)indexPathForSelectedItem;
@end

@implementation UICollectionView

- (id)indexPathForSelectedItem
{
  v2 = [(UICollectionView *)self indexPathsForSelectedItems];
  v3 = [v2 firstObject];

  return v3;
}

@end