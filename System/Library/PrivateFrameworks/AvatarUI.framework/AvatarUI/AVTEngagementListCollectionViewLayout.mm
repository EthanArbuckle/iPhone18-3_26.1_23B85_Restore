@interface AVTEngagementListCollectionViewLayout
- (AVTEngagementListCollectionViewLayout)initWithEngagementLayout:(id)layout;
- (CGPoint)centerForCenteringElementAtIndex:(int64_t)index visibleBoundsSize:(CGSize)size proposedOrigin:(CGPoint)origin;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds;
- (CGSize)collectionViewContentSize;
- (CGSize)contentSizeForVisibleBounds:(CGRect)bounds numberOfItems:(int64_t)items;
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds;
- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)clearTargetContentOffsetForAnimations;
- (void)invalidateLayout;
- (void)setTargetContentOffsetForAnimations:(CGPoint)animations;
@end

@implementation AVTEngagementListCollectionViewLayout

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds
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

- (AVTEngagementListCollectionViewLayout)initWithEngagementLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = AVTEngagementListCollectionViewLayout;
  v6 = [(AVTEngagementListCollectionViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engagementLayout, layout);
  }

  return v7;
}

- (void)setTargetContentOffsetForAnimations:(CGPoint)animations
{
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{animations.x, animations.y}];
  [(AVTEngagementListCollectionViewLayout *)self setTargetContentOffset:v4];
}

- (void)clearTargetContentOffsetForAnimations
{
  [(AVTEngagementListCollectionViewLayout *)self setTargetContentOffset:0];

  [(AVTEngagementListCollectionViewLayout *)self setIgnoredProposedContentOffset:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  targetContentOffset = [(AVTEngagementListCollectionViewLayout *)self targetContentOffset];

  if (targetContentOffset)
  {
    v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [(AVTEngagementListCollectionViewLayout *)self setIgnoredProposedContentOffset:v7];

    targetContentOffset2 = [(AVTEngagementListCollectionViewLayout *)self targetContentOffset];
    [targetContentOffset2 CGPointValue];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)invalidateLayout
{
  collectionView = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  [(AVTEngagementListCollectionViewLayout *)self engagementInsetsForCollectionViewBounds:v4, v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout setEngagementBoundsInsets:{v7, v9, v11, v13}];

  v15.receiver = self;
  v15.super_class = AVTEngagementListCollectionViewLayout;
  [(AVTEngagementListCollectionViewLayout *)&v15 invalidateLayout];
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections <= 0)
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    collectionView2 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    v6 = [collectionView2 numberOfItemsInSection:0];

    engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
    collectionView3 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    [collectionView3 bounds];
    [engagementLayout contentSizeForVisibleBounds:v6 numberOfItems:?];
    v10 = v9;
    v12 = v11;
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  collectionView = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections < 1)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
    collectionView2 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    [collectionView2 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    collectionView3 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    v22 = [engagementLayout indexesForElementsInRect:objc_msgSend(collectionView3 visibleBounds:"numberOfItemsInSection:" numberOfItems:{0), x, y, width, height, v14, v16, v18, v20}];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __75__AVTEngagementListCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
    v29 = &unk_1E7F3C6F8;
    selfCopy = self;
    v31 = array;
    v23 = array;
    [v22 enumerateIndexesUsingBlock:&v26];
    v24 = [v23 copy];
  }

  return v24;
}

void __75__AVTEngagementListCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  v5 = [v3 layoutAttributesForItemAtIndexPath:v4];

  [*(a1 + 40) addObject:v5];
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = MEMORY[0x1E69DC858];
  pathCopy = path;
  v6 = [v4 layoutAttributesForCellWithIndexPath:pathCopy];
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  v8 = [pathCopy row];

  collectionView = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  [engagementLayout frameForElementAtIndex:v8 visibleBounds:?];
  [v6 setFrame:?];

  return v6;
}

- (CGRect)frameForElementAtIndex:(int64_t)index visibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout frameForElementAtIndex:index visibleBounds:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)indexesForElementsInRect:(CGRect)rect visibleBounds:(CGRect)bounds numberOfItems:(int64_t)items
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  v15 = [engagementLayout indexesForElementsInRect:items visibleBounds:v13 numberOfItems:{v12, v11, v10, x, y, width, height}];

  return v15;
}

- (CGPoint)centerForCenteringElementAtIndex:(int64_t)index visibleBoundsSize:(CGSize)size proposedOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout centerForCenteringElementAtIndex:index visibleBoundsSize:width proposedOrigin:{height, x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGSize)contentSizeForVisibleBounds:(CGRect)bounds numberOfItems:(int64_t)items
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout contentSizeForVisibleBounds:items numberOfItems:{x, y, width, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end