@interface RCPlaybackSettingCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (RCPlaybackSettingCellActionsDelegate)cellActionsDelegate;
@end

@implementation RCPlaybackSettingCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v14.receiver = self;
  v14.super_class = RCPlaybackSettingCell;
  [(RCPlaybackSettingCell *)&v14 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  v6 = v5;
  v8 = v7;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v9 playbackSettingsCollectionViewCellMinHeight];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v6;
  result.height = v12;
  result.width = v13;
  return result;
}

- (RCPlaybackSettingCellActionsDelegate)cellActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cellActionsDelegate);

  return WeakRetained;
}

@end