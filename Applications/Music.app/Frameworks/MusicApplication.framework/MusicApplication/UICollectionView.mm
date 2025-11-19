@interface UICollectionView
- (void)music_inheritedLayoutInsetsDidChange;
@end

@implementation UICollectionView

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = UICollectionView;
  [(UICollectionView *)&v4 music_inheritedLayoutInsetsDidChange];
  v3 = [(UICollectionView *)self collectionViewLayout];
  [v3 music_collectionViewInheritedLayoutInsetsDidChange];
}

@end