@interface AVTAvatarAttributeEditorMulticolorSectionPickerController
+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)offset collectionView:(id)view;
+ (CGSize)cellSizeForItemAtIndex:(int64_t)index forTitleSizes:(id)sizes items:(id)items forContainerWidth:(double)width;
+ (double)estimatedContentHeightForWrappingTitleSizes:(id)sizes items:(id)items forWidth:(double)width;
+ (double)estimatedContentWidthForTitleSizes:(id)sizes items:(id)items;
+ (double)estimatedContentWidthForWrappingTitleSizes:(id)sizes items:(id)items forWidth:(double)width;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (CGSize)cellSizeForItemAtIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size;
- (double)currentRelativeContentOffsetX;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sectionView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)attributeSection:(id)section didChangeValueForSectionItem:(id)item;
- (void)cacheTitleSizes;
- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)createCollectionView;
- (void)invalidateLayoutForNewContainerSize:(CGSize)size;
- (void)multicolorPickerCellDidTapClearButton:(id)button;
- (void)setCurrentRelativeContentOffsetX:(double)x;
- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index;
- (void)updateInsetsForSize:(CGSize)size;
- (void)updateWithSection:(id)section;
@end

@implementation AVTAvatarAttributeEditorMulticolorSectionPickerController

+ (double)estimatedContentWidthForTitleSizes:(id)sizes items:(id)items
{
  v27 = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  itemsCopy = items;
  v7 = 0.0;
  if (sizesCopy && [sizesCopy count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = sizesCopy;
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
          v19 = [itemsCopy objectAtIndexedSubscript:v11];
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

+ (double)estimatedContentWidthForWrappingTitleSizes:(id)sizes items:(id)items forWidth:(double)width
{
  sizesCopy = sizes;
  itemsCopy = items;
  v10 = 0.0;
  if (sizesCopy && [sizesCopy count])
  {
    if ([itemsCopy count])
    {
      v11 = 0;
      do
      {
        [self cellSizeForItemAtIndex:v11 forTitleSizes:sizesCopy items:itemsCopy forContainerWidth:width];
        v10 = v10 + v12;
        ++v11;
      }

      while ([itemsCopy count] > v11);
    }

    v10 = v10 + ([sizesCopy count] - 1) * 14.0;
  }

  return v10;
}

+ (double)estimatedContentHeightForWrappingTitleSizes:(id)sizes items:(id)items forWidth:(double)width
{
  sizesCopy = sizes;
  itemsCopy = items;
  v10 = 0.0;
  if (sizesCopy && [sizesCopy count] && objc_msgSend(itemsCopy, "count"))
  {
    v11 = 0;
    do
    {
      [self cellSizeForItemAtIndex:v11 forTitleSizes:sizesCopy items:itemsCopy forContainerWidth:width];
      if (v10 < v12)
      {
        v10 = v12;
      }

      ++v11;
    }

    while ([itemsCopy count] > v11);
  }

  return v10;
}

+ (CGPoint)clampedContentOffsetForOffset:(CGPoint)offset collectionView:(id)view
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  [viewCopy contentSize];
  v8 = v7;
  [viewCopy contentInset];
  v10 = v8 + v9;
  [viewCopy bounds];
  v11 = v10 - CGRectGetWidth(v18);
  [viewCopy contentInset];
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
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(sectionItems, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems2 = [section2 sectionItems];

  v9 = [sectionItems2 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
          objc_enumerationMutation(sectionItems2);
        }

        localizedName = [*(*(&v25 + 1) + 8 * i) localizedName];
        v29 = v12;
        labelFont = [objc_opt_class() labelFont];
        v30 = labelFont;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [localizedName sizeWithAttributes:v16];
        v18 = v17;
        v20 = v19;

        v21 = [MEMORY[0x1E696B098] valueWithCGSize:{v18, v20}];
        [v6 addObject:v21];
      }

      v10 = [sectionItems2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = [v6 copy];
  cachedTitleSizes = selfCopy->_cachedTitleSizes;
  selfCopy->_cachedTitleSizes = v22;
}

- (id)sectionView
{
  containerView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];

  if (!containerView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setContainerView:v4];

    containerView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
    layer = [containerView2 layer];
    [layer setMasksToBounds:0];
  }

  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];

  if (!collectionView)
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
  containerView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [containerView bounds];
  v5 = [v3 initWithFrame:v23 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  layer = [(UICollectionView *)self->_collectionView layer];
  [layer setMasksToBounds:0];

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
  containerView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [containerView2 addSubview:self->_collectionView];

  [(UICollectionView *)self->_collectionView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  v16 = objc_opt_class();
  cachedTitleSizes = self->_cachedTitleSizes;
  containerView3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [containerView3 bounds];
  Width = CGRectGetWidth(v25);
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  v22 = [v16 shouldScrollGivenTitleSizes:cachedTitleSizes fittingWidth:sectionItems items:Width];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setScrollEnabled:v22];
}

- (void)updateInsetsForSize:(CGSize)size
{
  width = size.width;
  v5 = objc_opt_class();
  cachedTitleSizes = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  LOBYTE(v5) = [v5 shouldScrollGivenTitleSizes:cachedTitleSizes fittingWidth:sectionItems items:width];

  if (v5)
  {
    v9 = 20.0;
  }

  else
  {
    v10 = objc_opt_class();
    cachedTitleSizes2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    sectionItems2 = [section2 sectionItems];
    [v10 adjustedWidthForTitleSizes:cachedTitleSizes2 items:sectionItems2 forWidth:width];
    v9 = (width - v14) * 0.5;
  }

  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView contentInset];
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

  collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView2 setContentInset:{20.0, v9, 0.0, v9}];
}

- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index
{
  cellCopy = cell;
  [cellCopy bounds];
  v6 = v5;
  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v5, v7];
  v8 = objc_opt_class();
  cachedTitleSizes = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  v12 = [v8 shouldScrollGivenTitleSizes:cachedTitleSizes fittingWidth:sectionItems items:v6];

  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView setScrollEnabled:v12];

  section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems2 = [section2 sectionItems];
  v16 = [sectionItems2 indexOfObjectPassingTest:&__block_literal_global_23];

  collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (!firstObject || [firstObject item] != v16)
  {
    collectionView3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    v21 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:0];
    [collectionView3 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];
  }

  [cellCopy layoutIfNeeded];
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size
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

- (void)invalidateLayoutForNewContainerSize:(CGSize)size
{
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView:size.width];
  collectionViewLayout = [v4 collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  containerView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
  [containerView bounds];
  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v6, v7];
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView:index];
  [v5 bounds];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  v6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes:index];
  if (v6 && (v7 = v6, -[AVTAvatarAttributeEditorMulticolorSectionPickerController cachedTitleSizes](self, "cachedTitleSizes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    cachedTitleSizes = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    v11 = [cachedTitleSizes objectAtIndexedSubscript:0];

    [v11 CGSizeValue];
    v13 = v12;
    v14 = objc_opt_class();
    cachedTitleSizes2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    sectionItems = [section sectionItems];
    LODWORD(v14) = [v14 shouldWrapTitlesForTitleSizes:cachedTitleSizes2 items:sectionItems forWidth:width];

    v18 = objc_opt_class();
    cachedTitleSizes3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    sectionItems2 = [section2 sectionItems];
    [v18 estimatedContentHeightForWrappingTitleSizes:cachedTitleSizes3 items:sectionItems2 forWidth:width];
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

- (CGSize)cellSizeForItemAtIndex:(int64_t)index
{
  cachedTitleSizes = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
  v6 = [cachedTitleSizes count];

  if (v6)
  {
    v7 = objc_opt_class();
    cachedTitleSizes2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
    section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
    sectionItems = [section sectionItems];
    containerView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
    [containerView bounds];
    [v7 cellSizeForItemAtIndex:index forTitleSizes:cachedTitleSizes2 items:sectionItems forContainerWidth:v12];
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

+ (CGSize)cellSizeForItemAtIndex:(int64_t)index forTitleSizes:(id)sizes items:(id)items forContainerWidth:(double)width
{
  v40[1] = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  itemsCopy = items;
  if ([itemsCopy count] <= index)
  {
    v21 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v12 = [itemsCopy objectAtIndexedSubscript:index];
    v13 = [sizesCopy objectAtIndexedSubscript:index];
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;
    if (v12)
    {
      isRemovable = [v12 isRemovable];
      isSelected = [v12 isSelected];
    }

    else
    {
      isRemovable = 0;
      isSelected = 0;
    }

    if ([self shouldWrapTitlesForTitleSizes:sizesCopy items:itemsCopy forWidth:width])
    {
      v22 = width + -30.0 + ([itemsCopy count] - 1) * -14.0;
      v23 = v22 / [itemsCopy count];
      if ([v12 isPlaceholder])
      {
        [AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell estimatedTitleSpaceForWidth:v23];
      }

      else
      {
        [AVTAvatarAttributeEditorMulticolorPickerCell estimatedTitleSpaceForWidth:isRemovable isRemovable:isSelected isSelected:v23];
      }

      v25 = v24;
      labelFont = [objc_opt_class() labelFont];
      localizedName = [v12 localizedName];
      v39 = *MEMORY[0x1E69DB648];
      v40[0] = labelFont;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [localizedName boundingRectWithSize:1 options:v28 attributes:0 context:{v25, 1.79769313e308}];
      v30 = v29;
      v32 = v31;

      [labelFont lineHeight];
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
      [AVTAvatarAttributeEditorMulticolorPickerCell estimatedWidthForLabelSize:isRemovable isRemovable:isSelected isSelected:v15, v17];
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

- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index
{
  cellCopy = cell;
  v8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self viewForIndex:index];
  contentView = [cellCopy contentView];
  [contentView bounds];
  [v8 setFrame:?];

  [cellCopy setAttributeView:v8];
}

- (void)updateWithSection:(id)section
{
  isKindOfClass = section;
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
      objc_storeStrong(&self->_section, section);
      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cacheTitleSizes];
      containerView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
      [containerView bounds];
      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self updateInsetsForSize:v8, v9];

      collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      [collectionView reloadData];

      v11 = objc_opt_class();
      cachedTitleSizes = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cachedTitleSizes];
      containerView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self containerView];
      [containerView2 bounds];
      v15 = v14;
      section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
      sectionItems = [section sectionItems];
      v18 = [v11 shouldScrollGivenTitleSizes:cachedTitleSizes fittingWidth:sectionItems items:v15];

      section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
      sectionItems2 = [section2 sectionItems];
      v21 = [sectionItems2 indexOfObjectPassingTest:&__block_literal_global_12];

      collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      [collectionView2 setScrollEnabled:v18];

      v23 = 0.0;
      if (v18)
      {
        [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self currentOffsetX];
      }

      [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self setCurrentRelativeContentOffsetX:v23];
      collectionView3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
      v25 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:0];
      [collectionView3 selectItemAtIndexPath:v25 animated:0 scrollPosition:0];

      v6 = v26;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

- (double)currentRelativeContentOffsetX
{
  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView2 contentInset];
  v8 = v5 + v7;

  return v8;
}

- (void)setCurrentRelativeContentOffsetX:(double)x
{
  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView contentSize];
  v7 = v6;
  collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView2 bounds];
  Width = CGRectGetWidth(v30);
  collectionView3 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView3 contentInset];
  v12 = v11;
  collectionView4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView4 contentInset];
  v15 = Width - (v12 + v14);

  collectionView5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView5 contentInset];
  v18 = v17;

  collectionView6 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView6 contentOffset];
  v21 = v20;

  if (v7 <= v15)
  {
    collectionView7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    [collectionView7 contentInset];
    v25 = -v27;
  }

  else
  {
    v22 = objc_opt_class();
    collectionView7 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    [v22 clampedContentOffsetForOffset:collectionView7 collectionView:{x - v18, v21}];
    v25 = v24;
    v21 = v26;
  }

  collectionView8 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  [collectionView8 setContentOffset:{v25, v21}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  v10 = [sectionItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if ([v10 isPlaceholder])
  {
    v11 = +[AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell cellIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 setItem:v10];
  }

  else
  {
    v13 = +[AVTAvatarAttributeEditorMulticolorPickerCell cellIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

    [v12 setItem:v10];
    delegate = [v12 delegate];

    if (delegate != self)
    {
      [v12 setDelegate:self];
    }
  }

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section:view];
  sectionItems = [v4 sectionItems];
  v6 = [sectionItems count];

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [path row];

  [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self cellSizeForItemAtIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  items = [section items];
  item = [pathCopy item];

  v8 = [items objectAtIndexedSubscript:item];

  delegate = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self delegate];
  [delegate attributeEditorSectionController:self didSelectSectionItem:v8];
}

- (void)attributeSection:(id)section didChangeValueForSectionItem:(id)item
{
  v5 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView:section];
  indexPathsForSelectedItems = [v5 indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    collectionView2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
    firstObject2 = [indexPathsForSelectedItems2 firstObject];
    v11 = [collectionView cellForItemAtIndexPath:firstObject2];

    [v11 updateColor];
  }
}

- (void)multicolorPickerCellDidTapClearButton:(id)button
{
  buttonCopy = button;
  collectionView = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self collectionView];
  v13 = [collectionView indexPathForCell:buttonCopy];

  section = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems = [section sectionItems];
  item = [v13 item];
  section2 = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self section];
  sectionItems2 = [section2 sectionItems];
  v11 = [sectionItems subarrayWithRange:{item, objc_msgSend(sectionItems2, "count") - objc_msgSend(v13, "item")}];

  delegate = [(AVTAvatarAttributeEditorMulticolorSectionPickerController *)self delegate];
  [delegate attributeEditorSectionController:self didDeleteSectionItems:v11];
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end