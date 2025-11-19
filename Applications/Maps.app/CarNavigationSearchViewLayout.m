@interface CarNavigationSearchViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (CarNavigationSearchViewLayout)init;
- (double)preferredHeightForItemCount:(unint64_t)a3 availableSize:(CGSize)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)getNumberOfRows:(unint64_t *)a3 itemSize:(CGSize *)a4 forItemCount:(unint64_t)a5 availableSize:(CGSize)a6;
- (void)prepareLayout;
@end

@implementation CarNavigationSearchViewLayout

- (void)getNumberOfRows:(unint64_t *)a3 itemSize:(CGSize *)a4 forItemCount:(unint64_t)a5 availableSize:(CGSize)a6
{
  v6 = vcvtd_n_f64_u64(a5, 1uLL);
  v7 = vcvtpd_u64_f64(v6);
  if (a3)
  {
    *a3 = v7;
  }

  if (a4)
  {
    v8 = floor(a6.width + -8.0) * 0.5;
    a4->width = v8;
    a4->height = fmin(v8, (a6.height + (v7 - 1) * -8.0) / ceil(v6));
  }
}

- (double)preferredHeightForItemCount:(unint64_t)a3 availableSize:(CGSize)a4
{
  v6 = 0;
  v7 = 0.0;
  v5 = 0;
  [(CarNavigationSearchViewLayout *)self getNumberOfRows:&v5 itemSize:&v6 forItemCount:a3 availableSize:a4.width, a4.height];
  return v7 * v5 + (v5 - 1) * 8.0;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [NSMutableArray arrayWithCapacity:[(NSMapTable *)self->_layoutAttributes count]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(NSMapTable *)self->_layoutAttributes objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        [v14 frame];
        v28.origin.x = v15;
        v28.origin.y = v16;
        v28.size.width = v17;
        v28.size.height = v18;
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        if (CGRectIntersectsRect(v27, v28))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = [v8 copy];

  return v19;
}

- (void)prepareLayout
{
  v24.receiver = self;
  v24.super_class = CarNavigationSearchViewLayout;
  [(CarNavigationSearchViewLayout *)&v24 prepareLayout];
  [(NSMapTable *)self->_layoutAttributes removeAllObjects];
  v3 = [(CarNavigationSearchViewLayout *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  v23 = 0;
  v5 = [(CarNavigationSearchViewLayout *)self collectionView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v21 = 0.0;
  v22 = 0.0;
  [(CarNavigationSearchViewLayout *)self getNumberOfRows:&v23 itemSize:&v21 forItemCount:v4 availableSize:v7, v9];
  [(CarNavigationSearchViewLayout *)self preferredHeightForItemCount:v4 availableSize:v7, v9];
  self->_contentSize.width = v7;
  self->_contentSize.height = v10;
  if (v23 && v4)
  {
    v11 = 0;
    v12 = 0;
    v13 = v21;
    v14 = v22;
    v15 = (v9 - v10) * 0.5;
    do
    {
      v16 = 1;
      v17 = 0.0;
      do
      {
        v18 = [NSIndexPath indexPathForItem:v11 inSection:0];
        v19 = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v18];
        [v19 setFrame:{v17, v15, v13, v14}];
        [(NSMapTable *)self->_layoutAttributes setObject:v19 forKey:v18];
        v20 = v21;
        ++v11;

        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v17 = v17 + 8.0 + v20;
      }

      while (v11 < v4);
      if (++v12 >= v23)
      {
        break;
      }

      v15 = v15 + 8.0 + v22;
    }

    while (v11 < v4);
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(CarNavigationSearchViewLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v8 = width != v6 || height != v7;

  return v8;
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CarNavigationSearchViewLayout)init
{
  v6.receiver = self;
  v6.super_class = CarNavigationSearchViewLayout;
  v2 = [(CarNavigationSearchViewLayout *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    layoutAttributes = v2->_layoutAttributes;
    v2->_layoutAttributes = v3;
  }

  return v2;
}

@end