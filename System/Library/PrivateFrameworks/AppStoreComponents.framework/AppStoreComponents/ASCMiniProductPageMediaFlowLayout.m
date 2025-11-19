@interface ASCMiniProductPageMediaFlowLayout
- (ASCMiniProductPageMediaFlowLayout)init;
- (CGPoint)collectionViewBoundsMidpoint;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (void)dealloc;
- (void)panGestureRecognizedByRecognizer:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
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
  v3 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  v4 = [v3 panGestureRecognizer];
  [v4 removeTarget:self action:0];

  v5.receiver = self;
  v5.super_class = ASCMiniProductPageMediaFlowLayout;
  [(ASCMiniProductPageMediaFlowLayout *)&v5 dealloc];
}

- (CGPoint)collectionViewBoundsMidpoint
{
  v3 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];

  if (v3)
  {
    v4 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [v4 bounds];
    v6 = v5 * 0.5;
    v7 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [v7 bounds];
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
  v3 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  v4 = [v3 panGestureRecognizer];
  [v4 removeTarget:self action:0];

  v5 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  v6 = [v5 panGestureRecognizer];
  [v6 addTarget:self action:sel_panGestureRecognizedByRecognizer_];
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASCMiniProductPageMediaFlowLayout;
  [(ASCMiniProductPageMediaFlowLayout *)&v6 prepareForTransitionToLayout:a3];
  v4 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
  v5 = [v4 panGestureRecognizer];
  [v5 removeTarget:self action:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  x = a4.x;
  y = a3.y;
  v6 = a3.x;
  v8 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView:a3.x];

  if (v8)
  {
    v9 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [v9 bounds];
    v10 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:?];

    if (v10)
    {
      if ([v10 count])
      {
        v11 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
        v12 = [v11 numberOfItemsInSection:0];

        v13 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
        [v13 frame];
        v15 = v6 + v14;
        [(UICollectionViewFlowLayout *)self collectionViewContentSize];
        v17 = v16;

        if (v15 < v17)
        {
          v18 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
          v19 = [v18 traitCollection];
          v20 = [v19 layoutDirection];

          v21 = 0;
          if (v6 <= 0.0)
          {
LABEL_12:
            if (v20 == 1)
            {
              v21 = v12 + ~v21;
            }

            if ([(ASCMiniProductPageMediaFlowLayout *)self indexAtInitialScroll]== v21)
            {
              if ((x >= 0.0 || v20 == 1) && (x <= 0.0 || v20 != 1))
              {
                v39 = v20 == 1 || x <= 0.0;
                if (!v39 || x < 0.0 && v20 == 1)
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
              v35 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
              [v35 bounds];
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

- (void)panGestureRecognizedByRecognizer:(id)a3
{
  if ([a3 state] == 1)
  {
    v5 = [(ASCMiniProductPageMediaFlowLayout *)self collectionView];
    [(ASCMiniProductPageMediaFlowLayout *)self collectionViewBoundsMidpoint];
    v4 = [v5 indexPathForItemAtPoint:?];
    -[ASCMiniProductPageMediaFlowLayout setIndexAtInitialScroll:](self, "setIndexAtInitialScroll:", [v4 item]);
  }
}

@end