@interface UICollectionView
- (void)music_inheritedLayoutInsetsDidChange;
@end

@implementation UICollectionView

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = UICollectionView;
  [(UICollectionView *)&v4 music_inheritedLayoutInsetsDidChange];
  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  [collectionViewLayout music_collectionViewInheritedLayoutInsetsDidChange];
}

@end