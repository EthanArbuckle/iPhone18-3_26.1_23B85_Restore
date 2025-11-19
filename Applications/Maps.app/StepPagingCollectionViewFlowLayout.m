@interface StepPagingCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (void)prepareLayout;
@end

@implementation StepPagingCollectionViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [(StepPagingCollectionViewFlowLayout *)self collectionView:a3.origin.x];
  [v6 bounds];
  v9 = width != v7 || height != v8;

  if (v9)
  {
    [(StepPagingCollectionViewFlowLayout *)self _updateAttributesForSize:width, height];
  }

  return v9;
}

- (void)prepareLayout
{
  v3 = [(StepPagingCollectionViewFlowLayout *)self collectionView];
  [v3 bounds];
  [(StepPagingCollectionViewFlowLayout *)self _updateAttributesForSize:v4, v5];

  v6.receiver = self;
  v6.super_class = StepPagingCollectionViewFlowLayout;
  [(StepPagingCollectionViewFlowLayout *)&v6 prepareLayout];
}

@end