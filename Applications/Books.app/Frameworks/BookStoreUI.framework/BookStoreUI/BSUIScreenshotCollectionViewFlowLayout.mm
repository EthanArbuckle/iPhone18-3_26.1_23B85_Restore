@interface BSUIScreenshotCollectionViewFlowLayout
- (BSUIScreenshotCollectionViewFlowLayout)init;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (void)_panGestureRecognized:(id)recognized;
- (void)dealloc;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation BSUIScreenshotCollectionViewFlowLayout

- (BSUIScreenshotCollectionViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = BSUIScreenshotCollectionViewFlowLayout;
  v2 = [(BSUIScreenshotCollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BSUIScreenshotCollectionViewFlowLayout *)v2 setScrollDirection:1];
  }

  return v3;
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = BSUIScreenshotCollectionViewFlowLayout;
  [(BSUIScreenshotCollectionViewFlowLayout *)&v7 prepareLayout];
  collectionView = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  collectionView2 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
  panGestureRecognizer2 = [collectionView2 panGestureRecognizer];
  [panGestureRecognizer2 addTarget:self action:"_panGestureRecognized:"];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = BSUIScreenshotCollectionViewFlowLayout;
  [(BSUIScreenshotCollectionViewFlowLayout *)&v6 prepareForTransitionToLayout:layout];
  collectionView = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];
}

- (void)dealloc
{
  collectionView = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  v5.receiver = self;
  v5.super_class = BSUIScreenshotCollectionViewFlowLayout;
  [(BSUIScreenshotCollectionViewFlowLayout *)&v5 dealloc];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  collectionView = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v10 = [(BSUIScreenshotCollectionViewFlowLayout *)self layoutAttributesForElementsInRect:?];

  if ([v10 count])
  {
    v52.receiver = self;
    v52.super_class = BSUIScreenshotCollectionViewFlowLayout;
    [(BSUIScreenshotCollectionViewFlowLayout *)&v52 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
    v12 = v11;
    collectionView2 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
    [collectionView2 frame];
    v14 = v7 + CGRectGetWidth(v55);
    [(BSUIScreenshotCollectionViewFlowLayout *)self collectionViewContentSize];
    v16 = v15;

    if (v14 <= v16)
    {
      v51 = v12;
      v17 = 0;
      if (v7 > 0.0)
      {
        v18 = 0.0;
        while (1)
        {
          v19 = [NSIndexPath indexPathForRow:v17 inSection:0];
          v20 = [(BSUIScreenshotCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v19];

          [v20 bounds];
          Width = CGRectGetWidth(v56);
          if (v18 + Width * 0.5 >= v7)
          {
            break;
          }

          [(BSUIScreenshotCollectionViewFlowLayout *)self minimumLineSpacing];
          v18 = v18 + Width + v22;
          ++v17;

          if (v18 >= v7)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_10:
      indexPathAtInitialScroll = self->_indexPathAtInitialScroll;
      if (indexPathAtInitialScroll && [(NSIndexPath *)indexPathAtInitialScroll item]== v17)
      {
        if (x >= 0.0)
        {
          if (x > 0.0)
          {
            collectionView3 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
            v28 = [collectionView3 numberOfItemsInSection:0] - 1;

            if (v28 >= (v17 + 1))
            {
              ++v17;
            }

            else
            {
              v17 = v28;
            }
          }
        }

        else
        {
          if (v17 <= 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = v17;
          }

          v17 = (v26 - 1);
        }
      }

      v29 = [NSIndexPath indexPathForRow:v17 inSection:0];
      v30 = [(BSUIScreenshotCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v29];

      [v30 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      collectionView4 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
      [collectionView4 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v57.origin.x = v41;
      v57.origin.y = v43;
      v57.size.width = v45;
      v57.size.height = v47;
      v48 = CGRectGetWidth(v57);
      v58.origin.x = v32;
      v58.origin.y = v34;
      v58.size.width = v36;
      v58.size.height = v38;
      v7 = v32 + (v48 - CGRectGetWidth(v58)) * -0.5;

      v12 = v51;
    }
  }

  else
  {
    v53.receiver = self;
    v53.super_class = BSUIScreenshotCollectionViewFlowLayout;
    [(BSUIScreenshotCollectionViewFlowLayout *)&v53 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
    v7 = v23;
    v12 = v24;
  }

  v49 = v7;
  v50 = v12;
  result.y = v50;
  result.x = v49;
  return result;
}

- (void)_panGestureRecognized:(id)recognized
{
  if ([recognized state] == &dword_0 + 1)
  {
    collectionView = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
    collectionView2 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
    [collectionView2 bounds];
    MidX = CGRectGetMidX(v11);
    collectionView3 = [(BSUIScreenshotCollectionViewFlowLayout *)self collectionView];
    [collectionView3 bounds];
    v7 = [collectionView indexPathForItemAtPoint:{MidX, CGRectGetMidY(v12)}];
    indexPathAtInitialScroll = self->_indexPathAtInitialScroll;
    self->_indexPathAtInitialScroll = v7;
  }
}

@end