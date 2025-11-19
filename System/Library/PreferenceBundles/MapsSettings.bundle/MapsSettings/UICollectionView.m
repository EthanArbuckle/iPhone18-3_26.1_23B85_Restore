@interface UICollectionView
- (void)_maps_reloadDataWithoutFocus;
@end

@implementation UICollectionView

- (void)_maps_reloadDataWithoutFocus
{
  v3 = [(UICollectionView *)self remembersLastFocusedIndexPath];
  [(UICollectionView *)self setRemembersLastFocusedIndexPath:0];
  [(UICollectionView *)self reloadData];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_18378;
  v4[3] = &unk_7FCC0;
  v4[4] = self;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

@end