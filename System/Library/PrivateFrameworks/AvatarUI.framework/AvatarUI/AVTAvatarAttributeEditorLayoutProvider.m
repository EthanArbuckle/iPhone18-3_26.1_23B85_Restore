@interface AVTAvatarAttributeEditorLayoutProvider
+ (AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout)actionsToEditorTransitionStartingLayoutInContainerOfSize:(double)a3 attributesContentViewExtraHeight:(double)a4 insets:(double)a5 userInfoViewHeight:(double)a6 RTL:(double)a7 avatarViewStartFrame:(double)a8 avatarViewAlpha:(double)a9 environment:(uint64_t)a10;
+ (BOOL)shouldShowSideGroupPickerForContainerSize:(CGSize)a3 forEnvironment:(id)a4;
+ (id)defaultLayoutInContainerOfSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 RTL:(BOOL)a6 environment:(id)a7 maxGroupLabelWidth:(double)a8;
+ (id)editorToActionsTransitionStartingLayoutInContainerOfSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 RTL:(BOOL)a6 environment:(id)a7;
@end

@implementation AVTAvatarAttributeEditorLayoutProvider

+ (BOOL)shouldShowSideGroupPickerForContainerSize:(CGSize)a3 forEnvironment:(id)a4
{
  width = a3.width;
  result = [a4 deviceIsMac];
  if (width <= 300.0)
  {
    return 0;
  }

  return result;
}

+ (id)defaultLayoutInContainerOfSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 RTL:(BOOL)a6 environment:(id)a7 maxGroupLabelWidth:(double)a8
{
  v9 = a6;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v18 = a7;
  v19 = [a1 shouldShowSideGroupPickerForContainerSize:v18 forEnvironment:{width, height}];
  if (([v18 deviceIsMac] & 1) == 0)
  {
    v19 = [v18 deviceIsPad] & v19;
  }

  v20 = objc_alloc(objc_opt_class());
  [v18 mainScreenScale];
  v22 = [v20 initWithContainerSize:v9 insets:v19 userInfoViewHeight:width screenScale:height RTL:top showSideGroupPicker:left maxGroupLabelWidth:{bottom, right, a5, v21, *&a8}];

  return v22;
}

+ (AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout)actionsToEditorTransitionStartingLayoutInContainerOfSize:(double)a3 attributesContentViewExtraHeight:(double)a4 insets:(double)a5 userInfoViewHeight:(double)a6 RTL:(double)a7 avatarViewStartFrame:(double)a8 avatarViewAlpha:(double)a9 environment:(uint64_t)a10
{
  v26 = a12;
  v27 = [a1 shouldShowSideGroupPickerForContainerSize:v26 forEnvironment:{a2, a3}];
  v28 = [AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout alloc];
  [v26 mainScreenScale];
  v30 = v29;

  v31 = [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)v28 initWithContainerSize:a11 insets:v27 userInfoViewHeight:a2 screenScale:a3 RTL:a5 avatarViewContainerFrame:a6 attributesContentViewFrameExtraHeight:a7 avatarViewAlpha:a8 showSideGroupPicker:a9, v30, a17, a18, a19, *&a4, a20];

  return v31;
}

+ (id)editorToActionsTransitionStartingLayoutInContainerOfSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 RTL:(BOOL)a6 environment:(id)a7
{
  v7 = [a1 defaultLayoutInContainerOfSize:a6 insets:a7 userInfoViewHeight:a3.width RTL:a3.height environment:{a4.top, a4.left, a4.bottom, a4.right, a5}];
  v8 = [[AVTAvatarAttributeEditorOverridingLayout alloc] initWithLayout:v7];
  [(AVTAvatarAttributeEditorOverridingLayout *)v8 setAvatarContainerAlpha:0.0];

  return v8;
}

@end