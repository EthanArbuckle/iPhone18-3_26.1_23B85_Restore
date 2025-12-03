@interface AVTZIndexEngagementListCollectionViewLayout
- (AVTZIndexEngagementListCollectionViewLayout)initWithEngagementLayout:(id)layout minAlphaFactor:(double)factor environment:(id)environment;
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds;
- (double)alphaForElementWithAttributes:(id)attributes;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (int64_t)zIndexForElementWithAttributes:(id)attributes;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)setBackIndexPath:(id)path;
- (void)setPlusButtonIndexPath:(id)path;
@end

@implementation AVTZIndexEngagementListCollectionViewLayout

- (AVTZIndexEngagementListCollectionViewLayout)initWithEngagementLayout:(id)layout minAlphaFactor:(double)factor environment:(id)environment
{
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v10 = [(AVTEngagementListCollectionViewLayout *)&v13 initWithEngagementLayout:layout];
  v11 = v10;
  if (v10)
  {
    v10->_minAlphaFactor = factor;
    objc_storeStrong(&v10->_environment, environment);
  }

  return v11;
}

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds
{
  v3 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout:bounds.width];
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

- (void)setBackIndexPath:(id)path
{
  pathCopy = path;
  if (self->_backIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_backIndexPath, path);
    pathCopy = v6;
  }
}

- (void)setPlusButtonIndexPath:(id)path
{
  pathCopy = path;
  if (self->_plusButtonIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_plusButtonIndexPath, path);
    pathCopy = v6;
  }
}

- (int64_t)zIndexForElementWithAttributes:(id)attributes
{
  indexPath = [attributes indexPath];
  backIndexPath = [(AVTZIndexEngagementListCollectionViewLayout *)self backIndexPath];
  v6 = [indexPath isEqual:backIndexPath];

  return v6 ^ 1u;
}

- (double)alphaForElementWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  environment = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
  if ([environment deviceIsPad])
  {
  }

  else
  {
    environment2 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
    deviceIsMac = [environment2 deviceIsMac];

    if ((deviceIsMac & 1) == 0)
    {
      indexPath = [attributesCopy indexPath];
      plusButtonIndexPath = [(AVTZIndexEngagementListCollectionViewLayout *)self plusButtonIndexPath];
      v10 = [indexPath isEqual:plusButtonIndexPath];

      v11 = 1.0;
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  [attributesCopy frame];
  Width = CGRectGetWidth(v30);
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout engagedCellSize];
  v15 = Width / v14;

  engagementLayout2 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout2 defaultCellSize];
  v18 = v17;
  engagementLayout3 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout3 engagedCellSize];
  v21 = v18 / v20;

  v22 = (1.0 - v15) / (1.0 - v21);
  [(AVTZIndexEngagementListCollectionViewLayout *)self minAlphaFactor];
  v24 = v23;
  environment3 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
  if ([environment3 deviceIsPad])
  {
  }

  else
  {
    environment4 = [(AVTZIndexEngagementListCollectionViewLayout *)self environment];
    deviceIsMac2 = [environment4 deviceIsMac];

    if (!deviceIsMac2)
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

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v4 = [(AVTEngagementListCollectionViewLayout *)&v15 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v4 = [(AVTEngagementListCollectionViewLayout *)&v6 layoutAttributesForItemAtIndexPath:path];
  [v4 setZIndex:{-[AVTZIndexEngagementListCollectionViewLayout zIndexForElementWithAttributes:](self, "zIndexForElementWithAttributes:", v4)}];
  [(AVTZIndexEngagementListCollectionViewLayout *)self alphaForElementWithAttributes:v4];
  [v4 setAlpha:?];

  return v4;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  updatesCopy = updates;
  v7.receiver = self;
  v7.super_class = AVTZIndexEngagementListCollectionViewLayout;
  [(AVTZIndexEngagementListCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:updatesCopy];
  if ([updatesCopy count] != 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Expected only one collection view update!" userInfo:0];
    [v5 raise];
  }

  firstObject = [updatesCopy firstObject];
  [(AVTZIndexEngagementListCollectionViewLayout *)self setCurrentUpdateItem:firstObject];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v33.receiver = self;
  v33.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)&v33 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  currentUpdateItem = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
  if ([currentUpdateItem updateAction])
  {
  }

  else
  {
    currentUpdateItem2 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
    indexPathAfterUpdate = [currentUpdateItem2 indexPathAfterUpdate];
    v9 = [indexPathAfterUpdate isEqual:pathCopy];

    if (v9)
    {
      collectionView = [(AVTZIndexEngagementListCollectionViewLayout *)self collectionView];
      [collectionView bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      ignoredProposedContentOffset = [(AVTEngagementListCollectionViewLayout *)self ignoredProposedContentOffset];

      if (ignoredProposedContentOffset)
      {
        ignoredProposedContentOffset2 = [(AVTEngagementListCollectionViewLayout *)self ignoredProposedContentOffset];
        [ignoredProposedContentOffset2 CGPointValue];
        v12 = v21;
        v14 = v22;
      }

      engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
      [engagementLayout initialFrameForAppearingElementAtOriginForVisibleBounds:{v12, v14, v16, v18}];
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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = AVTZIndexEngagementListCollectionViewLayout;
  v5 = [(AVTZIndexEngagementListCollectionViewLayout *)&v21 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  currentUpdateItem = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
  if ([currentUpdateItem updateAction] == 1)
  {
    currentUpdateItem2 = [(AVTZIndexEngagementListCollectionViewLayout *)self currentUpdateItem];
    indexPathBeforeUpdate = [currentUpdateItem2 indexPathBeforeUpdate];
    v9 = [indexPathBeforeUpdate isEqual:pathCopy];

    if (v9)
    {
      engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
      collectionView = [(AVTZIndexEngagementListCollectionViewLayout *)self collectionView];
      [collectionView bounds];
      [engagementLayout finalFrameForDisappearingElementAtOriginForVisibleBounds:?];
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