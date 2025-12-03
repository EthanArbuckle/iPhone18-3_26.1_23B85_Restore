@interface CarNavigationSearchViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (CarNavigationSearchViewLayout)init;
- (double)preferredHeightForItemCount:(unint64_t)count availableSize:(CGSize)size;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)getNumberOfRows:(unint64_t *)rows itemSize:(CGSize *)size forItemCount:(unint64_t)count availableSize:(CGSize)availableSize;
- (void)prepareLayout;
@end

@implementation CarNavigationSearchViewLayout

- (void)getNumberOfRows:(unint64_t *)rows itemSize:(CGSize *)size forItemCount:(unint64_t)count availableSize:(CGSize)availableSize
{
  v6 = vcvtd_n_f64_u64(count, 1uLL);
  v7 = vcvtpd_u64_f64(v6);
  if (rows)
  {
    *rows = v7;
  }

  if (size)
  {
    v8 = floor(availableSize.width + -8.0) * 0.5;
    size->width = v8;
    size->height = fmin(v8, (availableSize.height + (v7 - 1) * -8.0) / ceil(v6));
  }
}

- (double)preferredHeightForItemCount:(unint64_t)count availableSize:(CGSize)size
{
  v6 = 0;
  v7 = 0.0;
  v5 = 0;
  [(CarNavigationSearchViewLayout *)self getNumberOfRows:&v5 itemSize:&v6 forItemCount:count availableSize:size.width, size.height];
  return v7 * v5 + (v5 - 1) * 8.0;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [NSMutableArray arrayWithCapacity:[(NSMapTable *)self->_layoutAttributes count]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  objectEnumerator = [(NSMapTable *)self->_layoutAttributes objectEnumerator];
  v10 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(objectEnumerator);
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

      v11 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  collectionView = [(CarNavigationSearchViewLayout *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  v23 = 0;
  collectionView2 = [(CarNavigationSearchViewLayout *)self collectionView];
  [collectionView2 bounds];
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v5 = [(CarNavigationSearchViewLayout *)self collectionView:change.origin.x];
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