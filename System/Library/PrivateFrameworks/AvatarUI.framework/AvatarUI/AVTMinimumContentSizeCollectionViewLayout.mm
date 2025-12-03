@interface AVTMinimumContentSizeCollectionViewLayout
- (CGSize)collectionViewContentSize;
- (CGSize)minimumContentSize;
@end

@implementation AVTMinimumContentSizeCollectionViewLayout

- (CGSize)collectionViewContentSize
{
  v24.receiver = self;
  v24.super_class = AVTMinimumContentSizeCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v24 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  [(AVTMinimumContentSizeCollectionViewLayout *)self minimumContentSize];
  v8 = v7;
  [(AVTMinimumContentSizeCollectionViewLayout *)self minimumContentSize];
  v10 = v9;
  collectionView = [(AVTMinimumContentSizeCollectionViewLayout *)self collectionView];
  contentInsetAdjustmentBehavior = [collectionView contentInsetAdjustmentBehavior];

  if (contentInsetAdjustmentBehavior != 2)
  {
    collectionView2 = [(AVTMinimumContentSizeCollectionViewLayout *)self collectionView];
    [collectionView2 adjustedContentInset];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v8 = v8 - (v17 + v21);
    v10 = v10 - (v15 + v19);
  }

  if (v4 >= v8)
  {
    v22 = v4;
  }

  else
  {
    v22 = v8;
  }

  if (v6 >= v10)
  {
    v23 = v6;
  }

  else
  {
    v23 = v10;
  }

  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)minimumContentSize
{
  width = self->_minimumContentSize.width;
  height = self->_minimumContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end