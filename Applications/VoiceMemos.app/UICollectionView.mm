@interface UICollectionView
- (id)indexPathForSelectedItem;
@end

@implementation UICollectionView

- (id)indexPathForSelectedItem
{
  indexPathsForSelectedItems = [(UICollectionView *)self indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  return firstObject;
}

@end