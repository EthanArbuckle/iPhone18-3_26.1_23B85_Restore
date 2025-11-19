@interface AVTAvatarActionsViewControllerPadLayout
+ (double)buttonHeight;
+ (double)heightForButtonsViewWithButtonCount:(int64_t)a3;
- (AVTAvatarActionsViewControllerPadLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5 avtViewLayoutInfo:(id)a6;
- (CGRect)actionButtonsViewFrame;
- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)a3;
- (CGRect)avatarContainerViewFrame;
- (CGRect)userInfoFrame;
- (CGSize)containerSize;
- (UIEdgeInsets)edgeInsets;
@end

@implementation AVTAvatarActionsViewControllerPadLayout

+ (double)buttonHeight
{
  v2 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  [v2 ascender];
  v4 = v3;
  [v2 descender];
  v6 = fmax(v4 - v5 + 28.0, 50.0);

  return v6;
}

+ (double)heightForButtonsViewWithButtonCount:(int64_t)a3
{
  v4 = a3;
  [a1 buttonHeight];
  return (a3 - 1) * 10.0 + v4 * v5;
}

- (AVTAvatarActionsViewControllerPadLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5 avtViewLayoutInfo:(id)a6
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = AVTAvatarActionsViewControllerPadLayout;
  v16 = [(AVTAvatarActionsViewControllerPadLayout *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_containerSize.width = width;
    v16->_containerSize.height = height;
    v16->_edgeInsets.top = top;
    v16->_edgeInsets.left = left;
    v16->_edgeInsets.bottom = bottom;
    v16->_edgeInsets.right = right;
    v16->_buttonCount = a5;
    objc_storeStrong(&v16->_avtViewLayout, a6);
  }

  return v17;
}

- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)a3
{
  [objc_opt_class() heightForButtonsViewWithButtonCount:a3];
  v5 = v4;
  [(AVTAvatarActionsViewControllerPadLayout *)self containerSize];
  v7 = v6 + -20.0;
  if (v7 <= 327.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 327.0;
  }

  [(AVTAvatarActionsViewControllerPadLayout *)self containerSize];
  v10 = v9;
  [(AVTAvatarActionsViewControllerPadLayout *)self edgeInsets];
  v12 = v10 - v11 - v5 + -44.0;
  v13 = 10.0;
  v14 = v8;
  v15 = v5;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)actionButtonsViewFrame
{
  [(AVTAvatarActionsViewControllerPadLayout *)self actionButtonsViewFrameForButtonCount:[(AVTAvatarActionsViewControllerPadLayout *)self buttonCount]];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(AVTAvatarActionsViewControllerPadLayout *)self containerSize];
  v10 = floor((v9 - v6) * 0.5);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)avatarContainerViewFrame
{
  [(AVTAvatarActionsViewControllerPadLayout *)self actionButtonsViewFrameForButtonCount:+[AVTAvatarActionsProvider maximumNumberOfActions]];
  v4 = v3;
  [(AVTAvatarActionsViewControllerPadLayout *)self containerSize];
  v6 = fmin(v5, 624.0);
  v7 = [(AVTAvatarActionsViewControllerPadLayout *)self avtViewLayout];
  [v7 avtViewBackingSize];
  v9 = v8;
  v10 = [(AVTAvatarActionsViewControllerPadLayout *)self avtViewLayout];
  [v10 avtViewBackingSize];
  v12 = v9 / v11;

  if (v6 * v12 <= 300.0)
  {
    v13 = v6 * v12;
  }

  else
  {
    v13 = 300.0;
  }

  [(AVTAvatarActionsViewControllerPadLayout *)self containerSize];
  v15 = floor((v14 - v6) * 0.5);
  [(AVTAvatarActionsViewControllerPadLayout *)self edgeInsets];
  v17 = v16;
  [(AVTAvatarActionsViewControllerPadLayout *)self edgeInsets];
  v19 = v17 + (v4 - v18 - v13) * 0.5;
  v20 = v15;
  v21 = v6;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (CGRect)userInfoFrame
{
  [(AVTAvatarActionsViewControllerPadLayout *)self avatarContainerViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = +[AVTUIFontRepository userInfoLabelFont];
  v28.origin.x = v3;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v9;
  MaxY = CGRectGetMaxY(v28);
  [v10 ascender];
  v13 = v12;
  [v10 descender];
  v15 = MaxY - (v13 - v14);
  +[AVTUserInfoView textVerticalPadding];
  v17 = v15 - v16 * 2.0;
  [v10 ascender];
  v19 = v18;
  [v10 descender];
  v21 = v19 - v20;
  +[AVTUserInfoView textVerticalPadding];
  v23 = v21 + v22 * 2.0;

  v24 = v3;
  v25 = v17;
  v26 = v7;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end