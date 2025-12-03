@interface AVTAvatarActionsViewControllerLayout
+ (double)buttonHeight;
+ (double)heightForButtonsViewWithButtonCount:(int64_t)count;
- (AVTAvatarActionsViewControllerLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets buttonCount:(int64_t)count avtViewLayoutInfo:(id)info;
- (CGRect)actionButtonsViewFrame;
- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)count;
- (CGRect)avatarContainerViewFrame;
- (CGRect)userInfoFrame;
- (CGSize)containerSize;
- (UIEdgeInsets)edgeInsets;
@end

@implementation AVTAvatarActionsViewControllerLayout

+ (double)buttonHeight
{
  v2 = +[AVTUIFontRepository avatarActionButtonTitleFont];
  [v2 ascender];
  v4 = v3;
  [v2 descender];
  v6 = fmax(v4 - v5 + 28.0, 50.0);

  return v6;
}

+ (double)heightForButtonsViewWithButtonCount:(int64_t)count
{
  countCopy = count;
  [self buttonHeight];
  return (count - 1) * 10.0 + countCopy * v5;
}

- (AVTAvatarActionsViewControllerLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets buttonCount:(int64_t)count avtViewLayoutInfo:(id)info
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = AVTAvatarActionsViewControllerLayout;
  v16 = [(AVTAvatarActionsViewControllerLayout *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_containerSize.width = width;
    v16->_containerSize.height = height;
    v16->_edgeInsets.top = top;
    v16->_edgeInsets.left = left;
    v16->_edgeInsets.bottom = bottom;
    v16->_edgeInsets.right = right;
    v16->_buttonCount = count;
    objc_storeStrong(&v16->_avtViewLayout, info);
  }

  return v17;
}

- (CGRect)actionButtonsViewFrameForButtonCount:(int64_t)count
{
  [objc_opt_class() heightForButtonsViewWithButtonCount:count];
  v5 = v4;
  [(AVTAvatarActionsViewControllerLayout *)self containerSize];
  v7 = v6 + -20.0;
  [(AVTAvatarActionsViewControllerLayout *)self containerSize];
  v9 = v8;
  [(AVTAvatarActionsViewControllerLayout *)self edgeInsets];
  v11 = v9 - v10 - v5 + -10.0;
  v12 = 10.0;
  v13 = v7;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)actionButtonsViewFrame
{
  buttonCount = [(AVTAvatarActionsViewControllerLayout *)self buttonCount];

  [(AVTAvatarActionsViewControllerLayout *)self actionButtonsViewFrameForButtonCount:buttonCount];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)avatarContainerViewFrame
{
  [(AVTAvatarActionsViewControllerLayout *)self actionButtonsViewFrameForButtonCount:+[AVTAvatarActionsProvider maximumNumberOfActions]];
  v4 = v3;
  [(AVTAvatarActionsViewControllerLayout *)self containerSize];
  v6 = fmin(v5, 340.0);
  avtViewLayout = [(AVTAvatarActionsViewControllerLayout *)self avtViewLayout];
  [avtViewLayout avtViewBackingSize];
  v9 = v8;
  avtViewLayout2 = [(AVTAvatarActionsViewControllerLayout *)self avtViewLayout];
  [avtViewLayout2 avtViewBackingSize];
  v12 = v9 / v11;

  v13 = v6 * v12;
  [(AVTAvatarActionsViewControllerLayout *)self containerSize];
  v15 = floor((v14 - v6) * 0.5);
  [(AVTAvatarActionsViewControllerLayout *)self edgeInsets];
  v17 = v16;
  [(AVTAvatarActionsViewControllerLayout *)self edgeInsets];
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
  [(AVTAvatarActionsViewControllerLayout *)self avatarContainerViewFrame];
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