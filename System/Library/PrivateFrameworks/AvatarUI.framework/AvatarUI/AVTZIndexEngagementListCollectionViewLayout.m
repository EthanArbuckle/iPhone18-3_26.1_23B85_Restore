@interface AVTZIndexEngagementListCollectionViewLayout
- (AVTZIndexEngagementListCollectionViewLayout)initWithEngagementLayout:(id)a3 minAlphaFactor:(double)a4 environment:(id)a5;
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3;
- (double)alphaForElementWithAttributes:(id)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (int64_t)zIndexForElementWithAttributes:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)setBackIndexPath:(id)a3;
- (void)setPlusButtonIndexPath:(id)a3;
@end

@implementation AVTZIndexEngagementListCollectionViewLayout

- (AVTZIndexEngagementListCollectionViewLayout)initWithEngagementLayout:(id)a3 minAlphaFactor:(double)a4 environment:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v10 = [(AVTEngagementListCollectionViewLayout *)&v13 initWithEngagementLayout:a3];
  v11 = v10;
  if (v10)
  {
    v10->_minAlphaFactor = a4;
    objc_storeStrong(&v10->_environment, a5);
  }

  return v11;
}

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3
{
  v3 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout:a3.width];
  [v3 defaultCellSize];
  v5 = v4 * -0.5;

  v6 = 0.0;
  v7 = 0.0;
  v8 = v5;
  v9 = v5;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

- (void)setBackIndexPath:(id)a3
{
  v5 = a3;
  if (self->_backIndexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backIndexPath, a3);
    v5 = v6;
  }
}

- (void)setPlusButtonIndexPath:(id)a3
{
  v5 = a3;
  if (self->_plusButtonIndexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_plusButtonIndexPath, a3);
    v5 = v6;
  }
}

- (int64_t)zIndexForElementWithAttributes:(id)a3
{
  v4 = [a3 indexPath];
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)self backIndexPath];
  v6 = [v4 isEqual:v5];

  return v6 ^ 1u;
}

- (double)alphaForElementWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
  if ([v5 deviceIsPad])
  {
  }

  else
  {
    v6 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
    v7 = [v6 deviceIsMac];

    if ((v7 & 1) == 0)
    {
      v8 = [v4 indexPath];
      v9 = [(AVTZIndexEngagementListCollectionViewLayout *)self plusButtonIndexPath];
      v10 = [v8 isEqual:v9];

      v11 = 1.0;
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  [v4 frame];
  Width = CGRectGetWidth(v30);
  v13 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v13 engagedCellSize];
  v15 = Width / v14;

  v16 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v16 defaultCellSize];
  v18 = v17;
  v19 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v19 engagedCellSize];
  v21 = v18 / v20;

  v22 = (1.0 - v15) / (1.0 - v21);
  [(AVTZIndexEngagementListCollectionViewLayout *)self minAlphaFactor];
  v24 = v23;
  v25 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
  if ([v25 deviceIsPad])
  {
  }

  else
  {
    v26 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
    v27 = [v26 deviceIsMac];

    if (!v27)
    {
      v11 = 1.0 - v22 * (1.0 - v24);
      goto LABEL_10;
    }
  }

  [(AVTZIndexEngagementListCollectionViewLayout *)self alphaForPadElementWithEngagement:v22];
  v11 = v28;
LABEL_10:

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v4 = [(AVTEngagementListCollectionViewLayout *)&v15 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setZIndex:{-[AVTZIndexEngagementListCollectionViewLayout zIndexForElementWithAttributes:](self, "zIndexForElementWithAttributes:", v9)}];
        [(AVTZIndexEngagementListCollectionViewLayout *)self alphaForElementWithAttributes:v9];
        [v9 setAlpha:?];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v4 = [(AVTEngagementListCollectionViewLayout *)&v6 layoutAttributesForItemAtIndexPath:a3];
  [v4 setZIndex:{-[AVTZIndexEngagementListCollectionViewLayout zIndexForElementWithAttributes:](self, "zIndexForElementWithAttributes:", v4)}];
  [(AVTZIndexEngagementListCollectionViewLayout *)self alphaForElementWithAttributes:v4];
  [v4 setAlpha:?];

  return v4;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AVTZIndexEngagementListCollectionViewLayout;
  [(AVTZIndexEngagementListCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:v4];
  if ([v4 count] != 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Expected only one collection view update!" userInfo:0];
    [v5 raise];
  }

  v6 = [v4 firstObject];
  [(AVTZIndexEngagementListCollectionViewLayout *)self setCurrentUpdateItem:v6];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)&v33 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v6 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
  if ([v6 updateAction])
  {
  }

  else
  {
    v7 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
    v8 = [v7 indexPathAfterUpdate];
    v9 = [v8 isEqual:v4];

    if (v9)
    {
      v10 = [(AVTZIndexEngagementListCollectionViewLayout *)self collectionView];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [(AVTEngagementListCollectionViewLayout *)self ignoredProposedContentOffset];

      if (v19)
      {
        v20 = [(AVTEngagementListCollectionViewLayout *)self ignoredProposedContentOffset];
        [v20 CGPointValue];
        v12 = v21;
        v14 = v22;
      }

      v23 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
      [v23 initialFrameForAppearingElementAtOriginForVisibleBounds:{v12, v14, v16, v18}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [v5 setAlpha:0.0];
      [v5 setFrame:{v25, v27, v29, v31}];
    }
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)&v21 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v6 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
  if ([v6 updateAction] == 1)
  {
    v7 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
    v8 = [v7 indexPathBeforeUpdate];
    v9 = [v8 isEqual:v4];

    if (v9)
    {
      v10 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
      v11 = [(AVTZIndexEngagementListCollectionViewLayout *)self collectionView];
      [v11 bounds];
      [v10 finalFrameForDisappearingElementAtOriginForVisibleBounds:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v5 setAlpha:0.0];
      [v5 setFrame:{v13, v15, v17, v19}];
    }
  }

  else
  {
  }

  return v5;
}

- (void)finalizeCollectionViewUpdates
{
  [(AVTZIndexEngagementListCollectionViewLayout *)self setCurrentUpdateItem:0];
  v3.receiver = self;
  v3.super_class = AVTZIndexEngagementListCollectionViewLayout;
  [(AVTZIndexEngagementListCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
}

@end