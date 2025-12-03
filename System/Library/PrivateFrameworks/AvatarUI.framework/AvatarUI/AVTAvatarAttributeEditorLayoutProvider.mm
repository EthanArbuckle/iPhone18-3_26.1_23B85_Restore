@interface AVTAvatarAttributeEditorLayoutProvider
+ (AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout)actionsToEditorTransitionStartingLayoutInContainerOfSize:(double)size attributesContentViewExtraHeight:(double)height insets:(double)insets userInfoViewHeight:(double)viewHeight RTL:(double)l avatarViewStartFrame:(double)frame avatarViewAlpha:(double)alpha environment:(uint64_t)self0;
+ (BOOL)shouldShowSideGroupPickerForContainerSize:(CGSize)size forEnvironment:(id)environment;
+ (id)defaultLayoutInContainerOfSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment maxGroupLabelWidth:(double)width;
+ (id)editorToActionsTransitionStartingLayoutInContainerOfSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment;
@end

@implementation AVTAvatarAttributeEditorLayoutProvider

+ (BOOL)shouldShowSideGroupPickerForContainerSize:(CGSize)size forEnvironment:(id)environment
{
  width = size.width;
  result = [environment deviceIsMac];
  if (width <= 300.0)
  {
    return 0;
  }

  return result;
}

+ (id)defaultLayoutInContainerOfSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment maxGroupLabelWidth:(double)width
{
  lCopy = l;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  environmentCopy = environment;
  v19 = [self shouldShowSideGroupPickerForContainerSize:environmentCopy forEnvironment:{width, height}];
  if (([environmentCopy deviceIsMac] & 1) == 0)
  {
    v19 = [environmentCopy deviceIsPad] & v19;
  }

  v20 = objc_alloc(objc_opt_class());
  [environmentCopy mainScreenScale];
  v22 = [v20 initWithContainerSize:lCopy insets:v19 userInfoViewHeight:width screenScale:height RTL:top showSideGroupPicker:left maxGroupLabelWidth:{bottom, right, height, v21, *&width}];

  return v22;
}

+ (AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout)actionsToEditorTransitionStartingLayoutInContainerOfSize:(double)size attributesContentViewExtraHeight:(double)height insets:(double)insets userInfoViewHeight:(double)viewHeight RTL:(double)l avatarViewStartFrame:(double)frame avatarViewAlpha:(double)alpha environment:(uint64_t)self0
{
  v26 = a12;
  v27 = [self shouldShowSideGroupPickerForContainerSize:v26 forEnvironment:{a2, size}];
  v28 = [AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout alloc];
  [v26 mainScreenScale];
  v30 = v29;

  v31 = [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)v28 initWithContainerSize:a11 insets:v27 userInfoViewHeight:a2 screenScale:size RTL:insets avatarViewContainerFrame:viewHeight attributesContentViewFrameExtraHeight:l avatarViewAlpha:frame showSideGroupPicker:alpha, v30, a17, a18, a19, *&height, a20];

  return v31;
}

+ (id)editorToActionsTransitionStartingLayoutInContainerOfSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment
{
  v7 = [self defaultLayoutInContainerOfSize:l insets:environment userInfoViewHeight:size.width RTL:size.height environment:{insets.top, insets.left, insets.bottom, insets.right, height}];
  v8 = [[AVTAvatarAttributeEditorOverridingLayout alloc] initWithLayout:v7];
  [(AVTAvatarAttributeEditorOverridingLayout *)v8 setAvatarContainerAlpha:0.0];

  return v8;
}

@end