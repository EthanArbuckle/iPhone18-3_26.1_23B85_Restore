@interface ASCMiniProductPageMediaFlowLayout
- (ASCMiniProductPageMediaFlowLayout)init;
- (CGPoint)collectionViewBoundsMidpoint;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (void)dealloc;
- (void)panGestureRecognizedByRecognizer:(id)recognizer;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation ASCMiniProductPageMediaFlowLayout

- (ASCMiniProductPageMediaFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = ASCMiniProductPageMediaFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setScrollDirection:1];
  }

  return v3;
}

- (void)dealloc
{
  collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  v5.receiver = self;
  v5.super_class = ASCMiniProductPageMediaFlowLayout;
  [(ASCMiniProductPageMediaFlowLayout *)&v5 dealloc];
}

- (CGPoint)collectionViewBoundsMidpoint
{
  collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];

  if (collectionView)
  {
    collectionView2 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [collectionView2 bounds];
    v6 = v5 * 0.5;
    collectionView3 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [collectionView3 bounds];
    v9 = v8 * 0.5;
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
  }

  v10 = v6;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = ASCMiniProductPageMediaFlowLayout;
  [(UICollectionViewFlowLayout *)&v7 prepareLayout];
  collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];

  collectionView2 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  panGestureRecognizer2 = [collectionView2 panGestureRecognizer];
  [panGestureRecognizer2 addTarget:self action:sel_panGestureRecognizedByRecognizer_];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = ASCMiniProductPageMediaFlowLayout;
  [(ASCMiniProductPageMediaFlowLayout *)&v6 prepareForTransitionToLayout:layout];
  collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  x = velocity.x;
  y = offset.y;
  v6 = offset.x;
  v8 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView:offset.x];

  if (v8)
  {
    collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [collectionView bounds];
    v10 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:?];

    if (v10)
    {
      if ([v10 count])
      {
        collectionView2 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
        v12 = [collectionView2 numberOfItemsInSection:0];

        collectionView3 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
        [collectionView3 frame];
        v15 = v6 + v14;
        [(UICollectionViewFlowLayout *)self collectionViewContentSize];
        v17 = v16;

        if (v15 < v17)
        {
          collectionView4 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
          traitCollection = [collectionView4 traitCollection];
          layoutDirection = [traitCollection layoutDirection];

          v21 = 0;
          if (v6 <= 0.0)
          {
LABEL_12:
            if (layoutDirection == 1)
            {
              v21 = v12 + ~v21;
            }

            if ([(ASCMiniProductPageMediaFlowLayout *)self indexAtInitialScroll]== v21)
            {
              if ((x >= 0.0 || layoutDirection == 1) && (x <= 0.0 || layoutDirection != 1))
              {
                v39 = layoutDirection == 1 || x <= 0.0;
                if (!v39 || x < 0.0 && layoutDirection == 1)
                {
                  if (v12 - 1 >= v21 + 1)
                  {
                    ++v21;
                  }

                  else
                  {
                    v21 = v12 - 1;
                  }
                }
              }

              else
              {
                if (v21 <= 1)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = v21;
                }

                v21 = v28 - 1;
              }
            }

            v29 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:0];
            v30 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v29];

            if (v30)
            {
              [v30 frame];
              v32 = v31;
              v34 = v33;
              collectionView5 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
              [collectionView5 bounds];
              v6 = v32 + (v36 - v34) * -0.5;
            }
          }

          else
          {
            v22 = 0.0;
            while (1)
            {
              v23 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:0];
              v24 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v23];

              [v24 bounds];
              if (!v24)
              {
                break;
              }

              v26 = v25;
              if (v22 + v25 * 0.5 >= v6)
              {

                goto LABEL_12;
              }

              [(UICollectionViewFlowLayout *)self minimumLineSpacing];
              v22 = v22 + v26 + v27;
              ++v21;

              if (v22 >= v6)
              {
                goto LABEL_12;
              }
            }
          }
        }
      }
    }
  }

  v37 = v6;
  v38 = y;
  result.y = v38;
  result.x = v37;
  return result;
}

- (void)panGestureRecognizedByRecognizer:(id)recognizer
{
  if ([recognizer state] == 1)
  {
    collectionView = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [(ASCMiniProductPageMediaFlowLayout *)self collectionViewBoundsMidpoint];
    v4 = [collectionView indexPathForItemAtPoint:?];
    -[ASCMiniProductPageMediaFlowLayout setIndexAtInitialScroll:](self, "setIndexAtInitialScroll:", [v4 item]);
  }
}

@end