@interface AVTEngagementListCollectionViewLayout
- (AVTEngagementListCollectionViewLayout)initWithEngagementLayout:(id)a3;
- (CGPoint)centerForCenteringElementAtIndex:(int64_t)a3 visibleBoundsSize:(CGSize)a4 proposedOrigin:(CGPoint)a5;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4;
- (CGSize)collectionViewContentSize;
- (CGSize)contentSizeForVisibleBounds:(CGRect)a3 numberOfItems:(int64_t)a4;
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3;
- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)clearTargetContentOffsetForAnimations;
- (void)invalidateLayout;
- (void)setTargetContentOffsetForAnimations:(CGPoint)a3;
@end

@implementation AVTEngagementListCollectionViewLayout

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3
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

- (AVTEngagementListCollectionViewLayout)initWithEngagementLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTEngagementListCollectionViewLayout;
  v6 = [(AVTEngagementListCollectionViewLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engagementLayout, a3);
  }

  return v7;
}

- (void)setTargetContentOffsetForAnimations:(CGPoint)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{a3.x, a3.y}];
  [(AVTEngagementListCollectionViewLayout *)self setTargetContentOffset:v4];
}

- (void)clearTargetContentOffsetForAnimations
{
  [(AVTEngagementListCollectionViewLayout *)self setTargetContentOffset:0];

  [(AVTEngagementListCollectionViewLayout *)self setIgnoredProposedContentOffset:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AVTEngagementListCollectionViewLayout *)self targetContentOffset];

  if (v6)
  {
    v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [(AVTEngagementListCollectionViewLayout *)self setIgnoredProposedContentOffset:v7];

    v8 = [(AVTEngagementListCollectionViewLayout *)self targetContentOffset];
    [v8 CGPointValue];
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
  v3 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  [v3 bounds];
  [(AVTEngagementListCollectionViewLayout *)self engagementInsetsForCollectionViewBounds:v4, v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v14 setEngagementBoundsInsets:{v7, v9, v11, v13}];

  v15.receiver = self;
  v15.super_class = AVTEngagementListCollectionViewLayout;
  [(AVTEngagementListCollectionViewLayout *)&v15 invalidateLayout];
}

- (CGSize)collectionViewContentSize
{
  v3 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4 <= 0)
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v5 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    v6 = [v5 numberOfItemsInSection:0];

    v7 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
    v8 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    [v8 bounds];
    [v7 contentSizeForVisibleBounds:v6 numberOfItems:?];
    v10 = v9;
    v12 = v11;
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  v9 = [v8 numberOfSections];

  if (v9 < 1)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
    v12 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
    v22 = [v11 indexesForElementsInRect:objc_msgSend(v21 visibleBounds:"numberOfItemsInSection:" numberOfItems:{0), x, y, width, height, v14, v16, v18, v20}];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __75__AVTEngagementListCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
    v29 = &unk_1E7F3C6F8;
    v30 = self;
    v31 = v10;
    v23 = v10;
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

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = MEMORY[0x1E69DC858];
  v5 = a3;
  v6 = [v4 layoutAttributesForCellWithIndexPath:v5];
  v7 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  v8 = [v5 row];

  v9 = [(AVTEngagementListCollectionViewLayout *)self collectionView];
  [v9 bounds];
  [v7 frameForElementAtIndex:v8 visibleBounds:?];
  [v6 setFrame:?];

  return v6;
}

- (CGRect)frameForElementAtIndex:(int64_t)a3 visibleBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v9 frameForElementAtIndex:a3 visibleBounds:{x, y, width, height}];
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

- (id)indexesForElementsInRect:(CGRect)a3 visibleBounds:(CGRect)a4 numberOfItems:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v14 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  v15 = [v14 indexesForElementsInRect:a5 visibleBounds:v13 numberOfItems:{v12, v11, v10, x, y, width, height}];

  return v15;
}

- (CGPoint)centerForCenteringElementAtIndex:(int64_t)a3 visibleBoundsSize:(CGSize)a4 proposedOrigin:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v10 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v10 centerForCenteringElementAtIndex:a3 visibleBoundsSize:width proposedOrigin:{height, x, y}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGSize)contentSizeForVisibleBounds:(CGRect)a3 numberOfItems:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v9 contentSizeForVisibleBounds:a4 numberOfItems:{x, y, width, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end