@interface UICollectionViewLayout(AVTCollectionViewLayout)
- (double)centerForCenteringElementAtIndex:()AVTCollectionViewLayout visibleBoundsSize:proposedOrigin:;
- (double)finalFrameForDisappearingElementAtOriginForVisibleBounds:()AVTCollectionViewLayout;
- (double)frameForElementAtIndex:()AVTCollectionViewLayout visibleBounds:;
- (double)initialFrameForAppearingElementAtOriginForVisibleBounds:()AVTCollectionViewLayout;
- (id)indexesForElementsInRect:()AVTCollectionViewLayout visibleBounds:numberOfItems:;
@end

@implementation UICollectionViewLayout(AVTCollectionViewLayout)

- (double)frameForElementAtIndex:()AVTCollectionViewLayout visibleBounds:
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v5 = [a1 layoutAttributesForItemAtIndexPath:v4];
  [v5 frame];
  v7 = v6;

  return v7;
}

- (id)indexesForElementsInRect:()AVTCollectionViewLayout visibleBounds:numberOfItems:
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E696AD50] indexSet];
  v11 = [a1 layoutAttributesForElementsInRect:{a2, a3, a4, a5}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 indexPath];
        v18 = [v17 section];

        if (!v18)
        {
          v19 = [v16 indexPath];
          [v10 addIndex:{objc_msgSend(v19, "row")}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];

  return v20;
}

- (double)centerForCenteringElementAtIndex:()AVTCollectionViewLayout visibleBoundsSize:proposedOrigin:
{
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v5 = [a1 layoutAttributesForItemAtIndexPath:v4];

  [v5 frame];
  UIRectGetCenter();
  v7 = v6;

  return v7;
}

- (double)initialFrameForAppearingElementAtOriginForVisibleBounds:()AVTCollectionViewLayout
{
  v2 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v3 = [a1 initialLayoutAttributesForAppearingItemAtIndexPath:v2];

  [v3 frame];
  v5 = v4;

  return v5;
}

- (double)finalFrameForDisappearingElementAtOriginForVisibleBounds:()AVTCollectionViewLayout
{
  v2 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v3 = [a1 finalLayoutAttributesForDisappearingItemAtIndexPath:v2];

  [v3 frame];
  v5 = v4;

  return v5;
}

@end