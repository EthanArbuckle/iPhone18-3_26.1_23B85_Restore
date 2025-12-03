@interface StepPagingCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (void)prepareLayout;
@end

@implementation StepPagingCollectionViewFlowLayout

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v6 = [(StepPagingCollectionViewFlowLayout *)self collectionView:change.origin.x];
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
  collectionView = [(StepPagingCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  [(StepPagingCollectionViewFlowLayout *)self _updateAttributesForSize:v4, v5];

  v6.receiver = self;
  v6.super_class = StepPagingCollectionViewFlowLayout;
  [(StepPagingCollectionViewFlowLayout *)&v6 prepareLayout];
}

@end