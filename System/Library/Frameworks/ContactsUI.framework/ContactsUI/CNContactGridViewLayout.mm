@interface CNContactGridViewLayout
- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)_updateLayoutMetrics;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)setSelectedIndexPath:(id)path;
@end

@implementation CNContactGridViewLayout

- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type
{
  viewCopy = view;
  attributesCopy = attributes;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNContactGridViewLayout__animationForReusableView_toLayoutAttributes_type___block_invoke;
  v13[3] = &unk_1E74E5160;
  v14 = viewCopy;
  v15 = attributesCopy;
  v8 = attributesCopy;
  v9 = viewCopy;
  v10 = _Block_copy(v13);
  v11 = _Block_copy(v10);

  return v11;
}

void __77__CNContactGridViewLayout__animationForReusableView_toLayoutAttributes_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 frame];
  [*(a1 + 32) setFrame:?];
  v4[2](v4, 1);
}

- (void)setSelectedIndexPath:(id)path
{
  pathCopy = path;
  if (self->_selectedIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_selectedIndexPath, path);
    [(CNContactGridViewLayout *)self setNeedsUpdateLayout:1];
    pathCopy = v6;
  }
}

- (void)_updateLayoutMetrics
{
  collectionView = [(CNContactGridViewLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  v5 = 1.0;
  if (_shouldReverseLayoutDirection)
  {
    v5 = -1.0;
  }

  numberOfColumns = [(CNContactGridViewLayout *)self numberOfColumns];
  v7 = [(NSIndexPath *)self->_selectedIndexPath item]% numberOfColumns;
  collectionView2 = [(CNContactGridViewLayout *)self collectionView];
  [collectionView2 frame];
  Width = CGRectGetWidth(v97);

  [(UICollectionViewFlowLayout *)self itemSize];
  v11 = numberOfColumns - 1;
  v12 = (Width - numberOfColumns * v10) / (numberOfColumns - 1);
  [(UICollectionViewFlowLayout *)self itemSize];
  v14 = v13;
  selectedIndexPath = self->_selectedIndexPath;
  v96.receiver = self;
  v96.super_class = CNContactGridViewLayout;
  v16 = [(UICollectionViewFlowLayout *)&v96 layoutAttributesForItemAtIndexPath:selectedIndexPath];
  [v16 frame];
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v95 = Width;
  if (v7 >= v11)
  {
    v25 = 0.0;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      collectionView3 = [(CNContactGridViewLayout *)self collectionView];
      [collectionView3 frame];
      v25 = CGRectGetWidth(v98);
    }
  }

  else if (_shouldReverseLayoutDirection)
  {
    v25 = CGRectGetMinX(*&v17) - v12;
  }

  else
  {
    v25 = v12 + CGRectGetMaxX(*&v17);
  }

  collectionView4 = [(CNContactGridViewLayout *)self collectionView];
  v28 = [collectionView4 cellForItemAtIndexPath:self->_selectedIndexPath];

  [v28 maximumActionsWidth];
  v30 = v29;
  [objc_opt_class() actionsLeftMargin];
  [(CNContactGridViewLayout *)self setSelectedItemWidthOffset:v30 + v31];
  [(CNContactGridViewLayout *)self selectedItemWidthOffset];
  v33 = v32;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  if (_shouldReverseLayoutDirection)
  {
    v38 = CGRectGetMinX(*&v34) - v25;
  }

  else
  {
    v38 = v25 - CGRectGetMaxX(*&v34);
  }

  v39 = v33 - v38;
  if (v39 <= 0.0)
  {
    v66 = 0.0;
    [(CNContactGridViewLayout *)self setOffsetBefore:0.0];
  }

  else
  {
    v40 = v14 + v12;
    [(CNContactGridViewLayout *)self setOffsetBefore:-(v94 * v39) * 0.5];
    [(CNContactGridViewLayout *)self setOffsetAfter:v94 * v39 * 0.5];
    v41 = v21;
    v42 = v22;
    v43 = v23;
    v44 = v24;
    if (_shouldReverseLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v41);
      [(CNContactGridViewLayout *)self offsetBefore];
      v47 = MinX + v46;
      [(CNContactGridViewLayout *)self selectedItemWidthOffset];
      v49 = v47 - v48;
      if (v49 < 0.0)
      {
        [(CNContactGridViewLayout *)self offsetBefore];
        [(CNContactGridViewLayout *)self setOffsetBefore:v50 - v49];
        [(CNContactGridViewLayout *)self offsetAfter];
        [(CNContactGridViewLayout *)self setOffsetAfter:v51 - v49];
      }

      v99.origin.x = v21;
      v99.origin.y = v22;
      v99.size.width = v23;
      v99.size.height = v24;
      MaxX = CGRectGetMaxX(v99);
      [(CNContactGridViewLayout *)self offsetBefore];
      v54 = MaxX + v53 - v95;
      if (v54 > 0.0)
      {
        [(CNContactGridViewLayout *)self offsetBefore];
        [(CNContactGridViewLayout *)self setOffsetBefore:v55 - v54];
        [(CNContactGridViewLayout *)self offsetAfter];
        [(CNContactGridViewLayout *)self setOffsetAfter:v56 - v54];
      }

      v100.origin.x = v21;
      v100.origin.y = v22;
      v100.size.width = v23;
      v100.size.height = v24;
      v57 = CGRectGetMaxX(v100);
      [(CNContactGridViewLayout *)self offsetBefore];
      v59 = v57 + v58 - v95 - ceil((v57 + v58 - v95) / v40) * v40;
      [(CNContactGridViewLayout *)self offsetBefore];
      [(CNContactGridViewLayout *)self setOffsetBefore:v60 - v59];
      [(CNContactGridViewLayout *)self offsetAfter];
      [(CNContactGridViewLayout *)self setOffsetAfter:v61 - v59];
      v101.origin.x = v21;
      v101.origin.y = v22;
      v101.size.width = v23;
      v101.size.height = v24;
      v62 = CGRectGetMinX(v101) - v40;
      [(CNContactGridViewLayout *)self offsetAfter];
      v64 = v62 + v63;
      if (v64 <= 0.0)
      {
        [(UICollectionViewFlowLayout *)self itemSize];
        v65 = v64 + v88;
      }

      else
      {
        v65 = v64 - floor(v64 / v40) * v40;
      }

      [(CNContactGridViewLayout *)self offsetAfter];
      v66 = v89 - v65;
    }

    else
    {
      v67 = CGRectGetMaxX(*&v41);
      [(CNContactGridViewLayout *)self offsetBefore];
      v69 = v67 + v68;
      [(CNContactGridViewLayout *)self selectedItemWidthOffset];
      v71 = v69 + v70 - v95;
      if (v71 > 0.0)
      {
        [(CNContactGridViewLayout *)self offsetBefore];
        [(CNContactGridViewLayout *)self setOffsetBefore:v72 - v71];
        [(CNContactGridViewLayout *)self offsetAfter];
        [(CNContactGridViewLayout *)self setOffsetAfter:v73 - v71];
      }

      v102.origin.x = v21;
      v102.origin.y = v22;
      v102.size.width = v23;
      v102.size.height = v24;
      v74 = CGRectGetMinX(v102);
      [(CNContactGridViewLayout *)self offsetBefore];
      v76 = v74 + v75;
      if (v74 + v75 < 0.0)
      {
        [(CNContactGridViewLayout *)self offsetBefore];
        [(CNContactGridViewLayout *)self setOffsetBefore:v77 - v76];
        [(CNContactGridViewLayout *)self offsetAfter];
        [(CNContactGridViewLayout *)self setOffsetAfter:v78 - v76];
      }

      v103.origin.x = v21;
      v103.origin.y = v22;
      v103.size.width = v23;
      v103.size.height = v24;
      v79 = CGRectGetMinX(v103);
      [(CNContactGridViewLayout *)self offsetBefore];
      v81 = v79 + v80 - floor((v79 + v80) / v40) * v40;
      [(CNContactGridViewLayout *)self offsetBefore];
      [(CNContactGridViewLayout *)self setOffsetBefore:v82 - v81];
      [(CNContactGridViewLayout *)self offsetAfter];
      [(CNContactGridViewLayout *)self setOffsetAfter:v83 - v81];
      v104.origin.x = v21;
      v104.origin.y = v22;
      v104.size.width = v23;
      v104.size.height = v24;
      v84 = v40 + CGRectGetMaxX(v104);
      [(CNContactGridViewLayout *)self offsetAfter];
      v86 = v95 - (v84 + v85);
      if (v86 <= 0.0)
      {
        [(UICollectionViewFlowLayout *)self itemSize];
        if (v90 <= -v86)
        {
          goto LABEL_30;
        }

        [(UICollectionViewFlowLayout *)self itemSize];
        v92 = v86 + v91;
        [(CNContactGridViewLayout *)self offsetAfter];
        v66 = v93 + v92;
      }

      else
      {
        [(CNContactGridViewLayout *)self offsetAfter];
        v66 = v86 - floor(v86 / v40) * v40 + v87;
      }
    }
  }

  [(CNContactGridViewLayout *)self setOffsetAfter:v66];
LABEL_30:
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v34.receiver = self;
  v34.super_class = CNContactGridViewLayout;
  v5 = [(UICollectionViewFlowLayout *)&v34 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = [v5 copy];

  if (self->_selectedIndexPath)
  {
    v33 = v6;
    if ([(CNContactGridViewLayout *)self needsUpdateLayout])
    {
      [(CNContactGridViewLayout *)self _updateLayoutMetrics];
      [(CNContactGridViewLayout *)self setNeedsUpdateLayout:0];
    }

    section = [(NSIndexPath *)self->_selectedIndexPath section];
    section2 = [pathCopy section];
    numberOfColumns = [(CNContactGridViewLayout *)self numberOfColumns];
    item = [(NSIndexPath *)self->_selectedIndexPath item];
    item2 = [pathCopy item];
    item3 = [(NSIndexPath *)self->_selectedIndexPath item];
    item4 = [pathCopy item];
    collectionView = [(CNContactGridViewLayout *)self collectionView];
    _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

    v15 = section2 == section;
    v6 = v33;
    if (v15 && item4 / numberOfColumns == item3 / numberOfColumns)
    {
      v16 = item % numberOfColumns;
      v17 = item2 % numberOfColumns;
      [v33 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if (v17 == v16)
      {
        [(CNContactGridViewLayout *)self offsetBefore];
        v27 = v19 + v26;
        if (_shouldReverseLayoutDirection)
        {
          [(CNContactGridViewLayout *)self selectedItemWidthOffset];
          v27 = v27 - v28;
        }

        [(CNContactGridViewLayout *)self selectedItemWidthOffset];
        v23 = v23 + v29;
      }

      else
      {
        if (v17 < v16)
        {
          [(CNContactGridViewLayout *)self offsetBefore];
        }

        else
        {
          [(CNContactGridViewLayout *)self offsetAfter];
        }

        v27 = v19 + v30;
      }

      [v33 setFrame:{v27, v21, v23, v25}];
    }
  }

  return v6;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CNContactGridViewLayout;
  v4 = [(UICollectionViewFlowLayout *)&v28 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = v4;
  v6 = v4;
  if (self->_selectedIndexPath)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    numberOfColumns = [(CNContactGridViewLayout *)self numberOfColumns];
    section = [(NSIndexPath *)self->_selectedIndexPath section];
    selfCopy = self;
    item = [(NSIndexPath *)self->_selectedIndexPath item];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = item / numberOfColumns;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          indexPath = [v15 indexPath];
          section2 = [indexPath section];
          item2 = [indexPath item];
          if (section2 == section && item2 / numberOfColumns == v13)
          {
            v19 = [(CNContactGridViewLayout *)selfCopy layoutAttributesForItemAtIndexPath:indexPath];

            v15 = v19;
          }

          [v6 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v5 = v21;
  }

  return v6;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v3.receiver = self;
  v3.super_class = CNContactGridViewLayout;
  [(CNContactGridViewLayout *)&v3 prepareForCollectionViewUpdates:updates];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(UICollectionViewFlowLayout *)self sectionInset];
  [v4 setSectionInset:?];
  [(UICollectionViewFlowLayout *)self minimumLineSpacing];
  [v4 setMinimumLineSpacing:?];
  [(UICollectionViewFlowLayout *)self itemSize];
  [v4 setItemSize:?];
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  [v4 setMinimumInteritemSpacing:?];
  [v4 setNumberOfColumns:{-[CNContactGridViewLayout numberOfColumns](self, "numberOfColumns")}];
  return v4;
}

@end