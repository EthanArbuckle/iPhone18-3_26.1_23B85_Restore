@interface MTDownloadsCollectionViewFlowLayout
- (CGSize)collectionViewContentSize;
@end

@implementation MTDownloadsCollectionViewFlowLayout

- (CGSize)collectionViewContentSize
{
  collectionView = [(MTDownloadsCollectionViewFlowLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    v14.receiver = self;
    v14.super_class = MTDownloadsCollectionViewFlowLayout;
    [(MTDownloadsCollectionViewFlowLayout *)&v14 collectionViewContentSize];
  }

  else
  {
    collectionView2 = [(MTDownloadsCollectionViewFlowLayout *)self collectionView];
    [collectionView2 contentInset];
    v10 = v9;

    collectionView3 = [(MTDownloadsCollectionViewFlowLayout *)self collectionView];
    [collectionView3 bounds];
    v12 = CGRectGetHeight(v16) - v10 + -20.0;

    v13.receiver = self;
    v13.super_class = MTDownloadsCollectionViewFlowLayout;
    [(MTDownloadsCollectionViewFlowLayout *)&v13 collectionViewContentSize];
    if (v12 >= v7)
    {
      v7 = v12;
    }
  }

  result.height = v7;
  result.width = v6;
  return result;
}

@end