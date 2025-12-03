@interface AVTFunCamAvatarPickerCollectionViewLayout
- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds;
@end

@implementation AVTFunCamAvatarPickerCollectionViewLayout

- (UIEdgeInsets)engagementInsetsForCollectionViewBounds:(CGSize)bounds
{
  v4 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout:bounds.width];
  [v4 defaultCellSize];
  v6 = v5;
  engagementLayout = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  [engagementLayout engagedCellSize];
  v9 = v8 + v6 * 2.0;
  engagementLayout2 = [(AVTEngagementListCollectionViewLayout *)self engagementLayout];
  interItemSpacingProvider = [engagementLayout2 interItemSpacingProvider];
  v12 = v9 + interItemSpacingProvider[2](1.0) * 2.0;

  collectionView = [(AVTFunCamAvatarPickerCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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