@interface AVTEdgeDisappearingCollectionViewLayout
- (BOOL)isRTL;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)modifyLayoutAttributes:(id)attributes;
- (void)prepareLayout;
@end

@implementation AVTEdgeDisappearingCollectionViewLayout

- (BOOL)isRTL
{
  collectionView = [(AVTEdgeDisappearingCollectionViewLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  return _shouldReverseLayoutDirection;
}

- (void)prepareLayout
{
  [(AVTEdgeDisappearingCollectionViewLayout *)self setFixedHeaderLayoutAttributes:0];
  v3.receiver = self;
  v3.super_class = AVTEdgeDisappearingCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v3 prepareLayout];
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVTEdgeDisappearingCollectionViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v20 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  if ([(AVTEdgeDisappearingCollectionViewLayout *)self pinHeaderToVisible])
  {
    v6 = *MEMORY[0x1E69DDC08];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v19.receiver = self;
    v19.super_class = AVTEdgeDisappearingCollectionViewLayout;
    v8 = [(UICollectionViewFlowLayout *)&v19 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];

    if (v8)
    {
      [v5 addObject:v8];
      [(AVTEdgeDisappearingCollectionViewLayout *)self modifyLayoutAttributes:v8];
      [(AVTEdgeDisappearingCollectionViewLayout *)self setFixedHeaderLayoutAttributes:v8];
    }
  }

  if ([(AVTEdgeDisappearingCollectionViewLayout *)self enableEdgeDisappearing])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(AVTEdgeDisappearingCollectionViewLayout *)self modifyLayoutAttributes:*(*(&v15 + 1) + 8 * i), v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return v5;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = AVTEdgeDisappearingCollectionViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v6 layoutAttributesForItemAtIndexPath:path];
  if ([(AVTEdgeDisappearingCollectionViewLayout *)self enableEdgeDisappearing])
  {
    [(AVTEdgeDisappearingCollectionViewLayout *)self modifyLayoutAttributes:v4];
  }

  return v4;
}

- (void)modifyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  isRTL = [(AVTEdgeDisappearingCollectionViewLayout *)self isRTL];
  if ([attributesCopy representedElementCategory])
  {
    if ([(AVTEdgeDisappearingCollectionViewLayout *)self pinHeaderToVisible])
    {
      representedElementKind = [attributesCopy representedElementKind];
      v7 = *MEMORY[0x1E69DDC08];

      if (representedElementKind == v7)
      {
        collectionView = [(AVTEdgeDisappearingCollectionViewLayout *)self collectionView];
        [collectionView bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        collectionView2 = [(AVTEdgeDisappearingCollectionViewLayout *)self collectionView];
        [collectionView2 _effectiveContentInset];
        v19 = v10 + v18;
        v21 = v12 + v20;
        v23 = v14 - (v18 + v22);
        v25 = v16 - (v20 + v24);

        [attributesCopy frame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        rect = v21;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = v25;
        if (isRTL)
        {
          MaxX = CGRectGetMaxX(*&v34);
          v67.origin.x = v27;
          v67.origin.y = v29;
          v67.size.width = v31;
          v67.size.height = v33;
          if (MaxX < CGRectGetMaxX(v67))
          {
            v68.origin.x = v19;
            v68.origin.y = rect;
            v68.size.width = v23;
            v68.size.height = v25;
            v39 = CGRectGetMaxX(v68);
            v69.origin.x = v27;
            v69.origin.y = v29;
            v69.size.width = v31;
            v69.size.height = v33;
            v27 = v39 - CGRectGetWidth(v69);
          }
        }

        else
        {
          MinX = CGRectGetMinX(*&v34);
          v72.origin.x = v27;
          v72.origin.y = v29;
          v72.size.width = v31;
          v72.size.height = v33;
          if (MinX > CGRectGetMinX(v72))
          {
            v73.origin.x = v19;
            v73.origin.y = rect;
            v73.size.width = v23;
            v73.size.height = v25;
            v27 = CGRectGetMinX(v73);
          }
        }

        [attributesCopy setFrame:{v27, v29, v31, v33}];
      }
    }
  }

  else
  {
    [attributesCopy frame];
    v44 = v40;
    if (isRTL)
    {
      v45 = CGRectGetMaxX(*&v40);
      collectionView3 = [(AVTEdgeDisappearingCollectionViewLayout *)self collectionView];
      [collectionView3 contentOffset];
      v48 = v47;

      if ([(AVTEdgeDisappearingCollectionViewLayout *)self pinHeaderToVisible])
      {
        fixedHeaderLayoutAttributes = [(AVTEdgeDisappearingCollectionViewLayout *)self fixedHeaderLayoutAttributes];

        if (fixedHeaderLayoutAttributes)
        {
          fixedHeaderLayoutAttributes2 = [(AVTEdgeDisappearingCollectionViewLayout *)self fixedHeaderLayoutAttributes];
          [fixedHeaderLayoutAttributes2 frame];
          v48 = CGRectGetMinX(v70);
        }
      }

      v51 = v45 - v48;
      v52 = -1.0;
    }

    else
    {
      collectionView4 = [(AVTEdgeDisappearingCollectionViewLayout *)self collectionView];
      [collectionView4 contentOffset];
      v55 = v54;

      if ([(AVTEdgeDisappearingCollectionViewLayout *)self pinHeaderToVisible])
      {
        fixedHeaderLayoutAttributes3 = [(AVTEdgeDisappearingCollectionViewLayout *)self fixedHeaderLayoutAttributes];

        if (fixedHeaderLayoutAttributes3)
        {
          fixedHeaderLayoutAttributes4 = [(AVTEdgeDisappearingCollectionViewLayout *)self fixedHeaderLayoutAttributes];
          [fixedHeaderLayoutAttributes4 frame];
          v55 = CGRectGetMaxX(v71);
        }
      }

      v51 = -(v44 - v55);
      v52 = 1.0;
    }

    [attributesCopy size];
    v59 = v51 / v58;
    if (v59 > 1.0)
    {
      v59 = 1.0;
    }

    v60 = fmax(v59, 0.0);
    [attributesCopy size];
    memset(&v66, 0, sizeof(v66));
    CGAffineTransformMakeTranslation(&v66, v52 * (v61 * (v60 * 0.5)), 0.0);
    v64 = v66;
    CGAffineTransformScale(&v65, &v64, 1.0 - v60, 1.0 - v60);
    v66 = v65;
    [attributesCopy setTransform:&v65];
  }
}

@end