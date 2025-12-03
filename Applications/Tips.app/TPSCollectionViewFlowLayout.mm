@interface TPSCollectionViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result;
- (CGSize)collectionViewContentSize;
- (TPSCollectionViewFlowLayout)init;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)_updateParallaxForLayoutAttributes:(id)attributes;
- (void)prepareLayout;
- (void)updateLayoutAttributesCache;
@end

@implementation TPSCollectionViewFlowLayout

- (TPSCollectionViewFlowLayout)init
{
  v8.receiver = self;
  v8.super_class = TPSCollectionViewFlowLayout;
  v2 = [(TPSCollectionViewFlowLayout *)&v8 init];
  v3 = v2;
  if (v2)
  {
    size = CGRectZero.size;
    v2->_cacheBounds.origin = CGRectZero.origin;
    v2->_cacheBounds.size = size;
    v5 = objc_alloc_init(TPSParallaxComputer);
    parallaxComputer = v3->_parallaxComputer;
    v3->_parallaxComputer = v5;

    [(TPSParallaxComputer *)v3->_parallaxComputer setAxis:1];
    [(TPSParallaxComputer *)v3->_parallaxComputer setParallaxFactor:0.125];
    [(TPSParallaxComputer *)v3->_parallaxComputer setModel:1];
  }

  return v3;
}

- (CGSize)collectionViewContentSize
{
  v13.receiver = self;
  v13.super_class = TPSCollectionViewFlowLayout;
  [(TPSCollectionViewFlowLayout *)&v13 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
  v8 = [collectionView numberOfItemsInSection:0];

  if (v8 >= 2)
  {
    collectionView2 = [(TPSCollectionViewFlowLayout *)self collectionView];
    [collectionView2 _interpageSpacing];
    v4 = v4 + v10 * (v8 - 1);
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)prepareLayout
{
  v5.receiver = self;
  v5.super_class = TPSCollectionViewFlowLayout;
  [(TPSCollectionViewFlowLayout *)&v5 prepareLayout];
  if (!self->_layoutAttributesCache)
  {
    v3 = [&__NSArray0__struct mutableCopy];
    layoutAttributesCache = self->_layoutAttributesCache;
    self->_layoutAttributesCache = v3;
  }

  [(TPSCollectionViewFlowLayout *)self updateLayoutAttributesCache];
}

- (void)updateLayoutAttributesCache
{
  [(NSMutableArray *)self->_layoutAttributesCache removeAllObjects];
  collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [NSIndexPath indexPathForRow:i inSection:0];
      v7 = [(TPSCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v6];
      if (v7)
      {
        [(NSMutableArray *)self->_layoutAttributesCache addObject:v7];
      }
    }
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v17.receiver = self;
  v17.super_class = TPSCollectionViewFlowLayout;
  v8 = [(TPSCollectionViewFlowLayout *)&v17 shouldInvalidateLayoutForBoundsChange:?];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = CGRectGetWidth(v18);
  if (v8)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v9 = CGRectGetWidth(self->_cacheBounds);
  if (v9 != v10)
  {
    self->_cacheBounds.size.width = v10;
LABEL_4:
    collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    firstObject = [indexPathsForVisibleItems firstObject];
    preRotationIndexPath = self->_preRotationIndexPath;
    self->_preRotationIndexPath = firstObject;

    return 1;
  }

  MinX = CGRectGetMinX(self->_cacheBounds);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  return MinX != CGRectGetMinX(v19);
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v13.receiver = self;
  v13.super_class = TPSCollectionViewFlowLayout;
  v6 = [(TPSCollectionViewFlowLayout *)&v13 invalidationContextForBoundsChange:change.origin.x, change.origin.y];
  [v6 setInvalidateFlowLayoutDelegateMetrics:1];
  [v6 setInvalidateFlowLayoutAttributes:1];
  collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  if (width == v9 && height == v8)
  {
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    [v6 invalidateItemsAtIndexPaths:indexPathsForVisibleItems];
  }

  return v6;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_layoutAttributesCache;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 frame];
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        if (CGRectIntersectsRect(v22, v23))
        {
          if (!v11)
          {
            v11 = [&__NSArray0__struct mutableCopy];
          }

          [(TPSCollectionViewFlowLayout *)self _updateParallaxForLayoutAttributes:v14];
          [v11 addObject:v14];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result
{
  if (self->_preRotationIndexPath)
  {
    v4 = [(TPSCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:result.x, result.y];
    [v4 frame];
    MinX = CGRectGetMinX(v8);

    preRotationIndexPath = self->_preRotationIndexPath;
    self->_preRotationIndexPath = 0;

    result.y = 0.0;
  }

  else
  {
    MinX = result.x;
  }

  v7 = MinX;
  result.x = v7;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) != 0 || (v5 = objc_msgSend(pathCopy, "row"), v5 >= -[NSMutableArray count](self->_layoutAttributesCache, "count")) || (-[NSMutableArray objectAtIndexedSubscript:](self->_layoutAttributesCache, "objectAtIndexedSubscript:", objc_msgSend(pathCopy, "row")), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17.receiver = self;
    v17.super_class = TPSCollectionViewFlowLayout;
    v6 = [(TPSCollectionViewFlowLayout *)&v17 layoutAttributesForItemAtIndexPath:pathCopy];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
    [collectionView _interpageSpacing];
    v15 = (v10 + v14) * [pathCopy row];

    [v6 setFrame:{v15, v8, v10, v12}];
  }

  [(TPSCollectionViewFlowLayout *)self _updateParallaxForLayoutAttributes:v6];

  return v6;
}

- (void)_updateParallaxForLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  collectionView = [(TPSCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  [collectionView adjustedContentInset];
  [attributesCopy frame];
  parallaxComputer = self->_parallaxComputer;
  [attributesCopy frame];
  [TPSParallaxComputer contentParallaxOffsetForViewFrame:"contentParallaxOffsetForViewFrame:visibleRect:" visibleRect:?];
  [attributesCopy setParallaxOffset:?];
}

@end