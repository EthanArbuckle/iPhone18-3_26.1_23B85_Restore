@interface CarSmallWidgetCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
@end

@implementation CarSmallWidgetCollectionViewFlowLayout

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CarSmallWidgetCollectionViewFlowLayout;
  v3 = [(CarSmallWidgetCollectionViewFlowLayout *)&v7 invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = sub_100799D40();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22.width = width;
    v22.height = height;
    v7 = NSStringFromCGSize(v22);
    v8 = [(CarSmallWidgetCollectionViewFlowLayout *)self collectionView];
    [v8 bounds];
    v23.width = v9;
    v23.height = v10;
    v11 = NSStringFromCGSize(v23);
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionViewFlowLayout shouldInvalidateLayoutForBoundsChange newBoundsSize: %@, collectionViewBounds: %@", &v18, 0x16u);
  }

  v12 = [(CarSmallWidgetCollectionViewFlowLayout *)self collectionView];
  [v12 bounds];
  v14 = width != v13;
  v16 = height != v15;

  return v14 || v16;
}

@end