@interface AVTAvatarAttributeEditorMulticolorSectionPickerController
+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)a3 collectionView:(id)a4;
+ (CGSize)cellSizeForItemAtIndex:(int64_t)a3 forTitleSizes:(id)a4 items:(id)a5 forContainerWidth:(double)a6;
+ (double)estimatedContentHeightForWrappingTitleSizes:(id)a3 items:(id)a4 forWidth:(double)a5;
+ (double)estimatedContentWidthForTitleSizes:(id)a3 items:(id)a4;
+ (double)estimatedContentWidthForWrappingTitleSizes:(id)a3 items:(id)a4 forWidth:(double)a5;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (CGSize)cellSizeForItemAtIndex:(int64_t)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3;
- (double)currentRelativeContentOffsetX;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sectionView;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)attributeSection:(id)a3 didChangeValueForSectionItem:(id)a4;
- (void)cacheTitleSizes;
- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)createCollectionView;
- (void)invalidateLayoutForNewContainerSize:(CGSize)a3;
- (void)multicolorPickerCellDidTapClearButton:(id)a3;
- (void)setCurrentRelativeContentOffsetX:(double)a3;
- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)updateInsetsForSize:(CGSize)a3;
- (void)updateWithSection:(id)a3;
@end

@implementation AVTAvatarAttributeEditorMulticolorSectionPickerController

+ (double)estimatedContentWidthForTitleSizes:(id)a3 items:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = 0.0;
  if (v5 && [v5 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v23;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v22 + 1) + 8 * i) CGSizeValue];
          v16 = v15;
          v18 = v17;
          v19 = [v6 objectAtIndexedSubscript:v11];
          if ([v19 isPlaceholder])
          {
            [AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell estimatedWidthForLabelSize:v16, v18];
          }

          else
          {
            +[AVTAvatarAttributeEditorMulticolorPickerCell estimatedWidthForLabelSize:isRemovable:isSelected:](AVTAvatarAttributeEditorMulticolorPickerCell, "estimatedWidthForLabelSize:isRemovable:isSelected:", [v19 isRemovable], objc_msgSend(v19, "isSelected"), v16, v18);
          }

          v13 = v13 + v20;
          ++v11;
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    else
    {
      v13 = 0.0;
    }

    v7 = v13 + ([v8 count] - 1) * 14.0;
  }

  return v7;
}

+ (double)estimatedContentWidthForWrappingTitleSizes:(id)a3 items:(id)a4 forWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = 0.0;
  if (v8 && [v8 count])
  {
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        [a1 cellSizeForItemAtIndex:v11 forTitleSizes:v8 items:v9 forContainerWidth:a5];
        v10 = v10 + v12;
        ++v11;
      }

      while ([v9 count] > v11);
    }

    v10 = v10 + ([v8 count] - 1) * 14.0;
  }

  return v10;
}

+ (double)estimatedContentHeightForWrappingTitleSizes:(id)a3 items:(id)a4 forWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = 0.0;
  if (v8 && [v8 count] && objc_msgSend(v9, "count"))
  {
    v11 = 0;
    do
    {
      [a1 cellSizeForItemAtIndex:v11 forTitleSizes:v8 items:v9 forContainerWidth:a5];
      if (v10 < v12)
      {
        v10 = v12;
      }

      ++v11;
    }

    while ([v9 count] > v11);
  }

  return v10;
}

+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)a3 collectionView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  [v6 contentSize];
  v8 = v7;
  [v6 contentInset];
  v10 = v8 + v9;
  [v6 bounds];
  v11 = v10 - CGRectGetWidth(v18);
  [v6 contentInset];
  v13 = v12;

  v14 = -v13;
  if (v11 >= x)
  {
    v15 = x;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= v14)
  {
    v14 = v15;
  }

  v16 = y;
  result.y = v16;
  result.x = v14;
  return result;
}

- (void)cacheTitleSizes
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v5 = [v4 sectionItems];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = self;
  v7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v8 = [v7 sectionItems];

  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v12 = *MEMORY[0x1E69DB648];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v25 + 1) + 8 * i) localizedName];
        v29 = v12;
        v15 = [objc_opt_class() labelFont];
        v30 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [v14 sizeWithAttributes:v16];
        v18 = v17;
        v20 = v19;

        v21 = [MEMORY[0x1E696B098] valueWithCGSize:{v18, v20}];
        [v6 addObject:v21];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = [v6 copy];
  cachedTitleSizes = v24->_cachedTitleSizes;
  v24->_cachedTitleSizes = v22;
}

- (id)sectionView
{
  v3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setContainerView:v4];

    v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
    v6 = [v5 layer];
    [v6 setMasksToBounds:0];
  }

  v7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];

  if (!v7)
  {
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cacheTitleSizes];
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self createCollectionView];
  }

  return [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
}

- (void)createCollectionView
{
  v23 = objc_alloc_init(AVTFlippingCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v23 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v23 setSectionInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(UICollectionViewFlowLayout *)v23 setMinimumInteritemSpacing:14.0];
  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setFlowLayout:v23];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [v4 bounds];
  v5 = [v3 initWithFrame:v23 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v7];

  v8 = [(UICollectionView *)self->_collectionView layer];
  [v8 setMasksToBounds:0];

  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v9 = self->_collectionView;
  v10 = objc_opt_class();
  v11 = +[AVTAvatarAttributeEditorMulticolorPickerCell cellIdentifier];
  [(UICollectionView *)v9 registerClass:v10 forCellWithReuseIdentifier:v11];

  v12 = self->_collectionView;
  v13 = objc_opt_class();
  v14 = +[AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell cellIdentifier];
  [(UICollectionView *)v12 registerClass:v13 forCellWithReuseIdentifier:v14];

  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  v15 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [v15 addSubview:self->_collectionView];

  [(UICollectionView *)self->_collectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  v16 = objc_opt_class();
  cachedTitleSizes = self->_cachedTitleSizes;
  v18 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [v18 bounds];
  Width = CGRectGetWidth(v25);
  v20 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v21 = [v20 sectionItems];
  v22 = [v16 shouldScrollGivenTitleSizes:cachedTitleSizes fittingWidth:v21 items:Width];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setScrollEnabled:v22];
}

- (void)updateInsetsForSize:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  v6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  v7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v8 = [v7 sectionItems];
  LOBYTE(v5) = [v5 shouldScrollGivenTitleSizes:v6 fittingWidth:v8 items:width];

  if (v5)
  {
    v9 = 20.0;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v12 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    v13 = [v12 sectionItems];
    [v10 adjustedWidthForTitleSizes:v11 items:v13 forWidth:width];
    v9 = (width - v14) * 0.5;
  }

  v15 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v15 contentInset];
  v19 = v18;
  if (v20 == v9 && v16 == 20.0 && v17 == v9)
  {

    if (v19 == 0.0)
    {
      return;
    }
  }

  else
  {
  }

  v21 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v21 setContentInset:{20.0, v9, 0.0, v9}];
}

- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4
{
  v22 = a3;
  [v22 bounds];
  v6 = v5;
  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v5, v7];
  v8 = objc_opt_class();
  v9 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  v10 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v11 = [v10 sectionItems];
  v12 = [v8 shouldScrollGivenTitleSizes:v9 fittingWidth:v11 items:v6];

  v13 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v13 setScrollEnabled:v12];

  v14 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v15 = [v14 sectionItems];
  v16 = [v15 indexOfObjectPassingTest:&__block_literal_global_23];

  v17 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  v18 = [v17 indexPathsForSelectedItems];
  v19 = [v18 firstObject];

  if (!v19 || [v19 item] != v16)
  {
    v20 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    v21 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:0];
    [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];
  }

  [v22 layoutIfNeeded];
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)invalidateLayoutForNewContainerSize:(CGSize)a3
{
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView:a3.width];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [v8 bounds];
  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v6, v7];
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView:a3];
  [v5 bounds];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes:a3];
  if (v6 && (v7 = v6, -[AVTAvatarAttributeEditorMulticolorSectionPickerController cachedTitleSizes](self, "cachedTitleSizes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    v10 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v11 = [v10 objectAtIndexedSubscript:0];

    [v11 CGSizeValue];
    v13 = v12;
    v14 = objc_opt_class();
    v15 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v16 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    v17 = [v16 sectionItems];
    LODWORD(v14) = [v14 shouldWrapTitlesForTitleSizes:v15 items:v17 forWidth:width];

    v18 = objc_opt_class();
    v19 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v20 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    v21 = [v20 sectionItems];
    [v18 estimatedContentHeightForWrappingTitleSizes:v19 items:v21 forWidth:width];
    v23 = v22;

    v24 = v13 + 22.0;
    if (v14)
    {
      v24 = v23;
    }

    v25 = ceil(v24 + 20.0);
  }

  else
  {
    v25 = 60.0;
  }

  v26 = width;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGSize)cellSizeForItemAtIndex:(int64_t)a3
{
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v9 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    v10 = [v9 sectionItems];
    v11 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
    [v11 bounds];
    [v7 cellSizeForItemAtIndex:a3 forTitleSizes:v8 items:v10 forContainerWidth:v12];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

+ (CGSize)cellSizeForItemAtIndex:(int64_t)a3 forTitleSizes:(id)a4 items:(id)a5 forContainerWidth:(double)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if ([v11 count] <= a3)
  {
    v21 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v12 = [v11 objectAtIndexedSubscript:a3];
    v13 = [v10 objectAtIndexedSubscript:a3];
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;
    if (v12)
    {
      v18 = [v12 isRemovable];
      v19 = [v12 isSelected];
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if ([a1 shouldWrapTitlesForTitleSizes:v10 items:v11 forWidth:a6])
    {
      v22 = a6 + -30.0 + ([v11 count] - 1) * -14.0;
      v23 = v22 / [v11 count];
      if ([v12 isPlaceholder])
      {
        [AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell estimatedTitleSpaceForWidth:v23];
      }

      else
      {
        [AVTAvatarAttributeEditorMulticolorPickerCell estimatedTitleSpaceForWidth:v18 isRemovable:v19 isSelected:v23];
      }

      v25 = v24;
      v26 = [objc_opt_class() labelFont];
      v27 = [v12 localizedName];
      v39 = *MEMORY[0x1E69DB648];
      v40[0] = v26;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [v27 boundingRectWithSize:1 options:v28 attributes:0 context:{v25, 1.79769313e308}];
      v30 = v29;
      v32 = v31;

      [v26 lineHeight];
      v34 = ceil(v33 + v33) + 3.0;
      v15 = ceil(v30);
      v35 = ceil(v32);
      if (v35 >= v34)
      {
        v17 = v34;
      }

      else
      {
        v17 = v35;
      }
    }

    if ([v12 isPlaceholder])
    {
      [AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell estimatedWidthForLabelSize:v15, v17];
    }

    else
    {
      [AVTAvatarAttributeEditorMulticolorPickerCell estimatedWidthForLabelSize:v18 isRemovable:v19 isSelected:v15, v17];
    }

    v21 = v36;
    v20 = v17 + 22.0;
  }

  v37 = v21;
  v38 = v20;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self viewForIndex:a4];
  v7 = [v6 contentView];
  [v7 bounds];
  [v8 setFrame:?];

  [v6 setAttributeView:v8];
}

- (void)updateWithSection:(id)a3
{
  isKindOfClass = a3;
  v6 = isKindOfClass;
  if (self->_section != isKindOfClass)
  {
    v26 = isKindOfClass;
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self currentRelativeContentOffsetX];
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setCurrentOffsetX:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v26;
    if (isKindOfClass)
    {
      objc_storeStrong(&self->_section, a3);
      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cacheTitleSizes];
      v7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
      [v7 bounds];
      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v8, v9];

      v10 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      [v10 reloadData];

      v11 = objc_opt_class();
      v12 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
      v13 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
      [v13 bounds];
      v15 = v14;
      v16 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
      v17 = [v16 sectionItems];
      v18 = [v11 shouldScrollGivenTitleSizes:v12 fittingWidth:v17 items:v15];

      v19 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
      v20 = [v19 sectionItems];
      v21 = [v20 indexOfObjectPassingTest:&__block_literal_global_12];

      v22 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      [v22 setScrollEnabled:v18];

      v23 = 0.0;
      if (v18)
      {
        [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self currentOffsetX];
      }

      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setCurrentRelativeContentOffsetX:v23];
      v24 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      v25 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:0];
      [v24 selectItemAtIndexPath:v25 animated:0 scrollPosition:0];

      v6 = v26;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

- (double)currentRelativeContentOffsetX
{
  v3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v6 contentInset];
  v8 = v5 + v7;

  return v8;
}

- (void)setCurrentRelativeContentOffsetX:(double)a3
{
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v5 contentSize];
  v7 = v6;
  v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v8 bounds];
  Width = CGRectGetWidth(v30);
  v10 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v10 contentInset];
  v12 = v11;
  v13 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v13 contentInset];
  v15 = Width - (v12 + v14);

  v16 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v16 contentInset];
  v18 = v17;

  v19 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v19 contentOffset];
  v21 = v20;

  if (v7 <= v15)
  {
    v23 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    [v23 contentInset];
    v25 = -v27;
  }

  else
  {
    v22 = objc_opt_class();
    v23 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    [v22 clampedContentOffsetForOffset:v23 collectionView:{a3 - v18, v21}];
    v25 = v24;
    v21 = v26;
  }

  v28 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [v28 setContentOffset:{v25, v21}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v9 = [v8 sectionItems];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  if ([v10 isPlaceholder])
  {
    v11 = +[AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell cellIdentifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

    [v12 setItem:v10];
  }

  else
  {
    v13 = +[AVTAvatarAttributeEditorMulticolorPickerCell cellIdentifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v6];

    [v12 setItem:v10];
    v14 = [v12 delegate];

    if (v14 != self)
    {
      [v12 setDelegate:self];
    }
  }

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section:a3];
  v5 = [v4 sectionItems];
  v6 = [v5 count];

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [a5 row];

  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cellSizeForItemAtIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v10 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v6 = [v10 items];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self delegate];
  [v9 attributeEditorSectionController:self didSelectSectionItem:v8];
}

- (void)attributeSection:(id)a3 didChangeValueForSectionItem:(id)a4
{
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView:a3];
  v6 = [v5 indexPathsForSelectedItems];
  v12 = [v6 firstObject];

  if (v12)
  {
    v7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    v9 = [v8 indexPathsForSelectedItems];
    v10 = [v9 firstObject];
    v11 = [v7 cellForItemAtIndexPath:v10];

    [v11 updateColor];
  }
}

- (void)multicolorPickerCellDidTapClearButton:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  v13 = [v5 indexPathForCell:v4];

  v6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v7 = [v6 sectionItems];
  v8 = [v13 item];
  v9 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  v10 = [v9 sectionItems];
  v11 = [v7 subarrayWithRange:{v8, objc_msgSend(v10, "count") - objc_msgSend(v13, "item")}];

  v12 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self delegate];
  [v12 attributeEditorSectionController:self didDeleteSectionItems:v11];
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end