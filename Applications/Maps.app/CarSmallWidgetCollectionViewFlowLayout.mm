@interface CarSmallWidgetCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (id)invalidationContextForBoundsChange:(CGRect)change;
@end

@implementation CarSmallWidgetCollectionViewFlowLayout

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v7.receiver = self;
  v7.super_class = CarSmallWidgetCollectionViewFlowLayout;
  v3 = [(CarSmallWidgetCollectionViewFlowLayout *)&v7 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  [v3 setInvalidateFlowLayoutDelegateMetrics:1];
  v4 = sub_100799D40();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionViewFlowLayout invalidationContextForBoundsChange %@", buf, 0xCu);
  }

  return v3;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v6 = sub_100799D40();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22.width = width;
    v22.height = height;
    v7 = NSStringFromCGSize(v22);
    collectionView = [(CarSmallWidgetCollectionViewFlowLayout *)self collectionView];
    [collectionView bounds];
    v23.width = v9;
    v23.height = v10;
    v11 = NSStringFromCGSize(v23);
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionViewFlowLayout shouldInvalidateLayoutForBoundsChange newBoundsSize: %@, collectionViewBounds: %@", &v18, 0x16u);
  }

  collectionView2 = [(CarSmallWidgetCollectionViewFlowLayout *)self collectionView];
  [collectionView2 bounds];
  v14 = width != v13;
  v16 = height != v15;

  return v14 || v16;
}

@end