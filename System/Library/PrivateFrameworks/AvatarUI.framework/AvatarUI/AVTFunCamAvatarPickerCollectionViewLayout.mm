@interface AVTFunCamAvatarPickerCollectionViewLayout
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3;
@end

@implementation AVTFunCamAvatarPickerCollectionViewLayout

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)a3
{
  v4 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout:a3.width];
  [v4 defaultCellSize];
  v6 = v5;
  v7 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [v7 engagedCellSize];
  v9 = v8 + v6 * 2.0;
  v10 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  v11 = [v10 interItemSpacingProvider];
  v12 = v9 + v11[2](1.0) * 2.0;

  v13 = [(AVTFunCamAvatarPickerCollectionViewLayout *)self collectionView];
  [v13 bounds];
  v15 = (v14 - v12) * 0.5;

  v16 = 0.0;
  v17 = 0.0;
  v18 = v15;
  v19 = v15;
  result.right = v19;
  result.bottom = v17;
  result.left = v18;
  result.top = v16;
  return result;
}

@end