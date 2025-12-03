@interface AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout
- (CGRect)attributesContentViewFrame;
- (CGRect)avatarContainerFrame;
- (CGRect)groupDialContainerFrame;
- (CGRect)headerMaskingViewFrame;
- (CGRect)sideGroupContainerFrame;
- (CGRect)userInfoFrame;
- (CGRect)verticalRuleFrame;
- (UIEdgeInsets)attributesContentViewInsets;
- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets;
- (double)initWithContainerSize:(uint64_t)size insets:(char)insets userInfoViewHeight:(uint64_t)height screenScale:(uint64_t)scale RTL:(uint64_t)l avatarViewContainerFrame:(uint64_t)frame attributesContentViewFrameExtraHeight:(double)extraHeight avatarViewAlpha:(double)self0 showSideGroupPicker:(double)self1;
@end

@implementation AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout

- (double)initWithContainerSize:(uint64_t)size insets:(char)insets userInfoViewHeight:(uint64_t)height screenScale:(uint64_t)scale RTL:(uint64_t)l avatarViewContainerFrame:(uint64_t)frame attributesContentViewFrameExtraHeight:(double)extraHeight avatarViewAlpha:(double)self0 showSideGroupPicker:(double)self1
{
  v17.receiver = self;
  v17.super_class = AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout;
  v15 = objc_msgSendSuper2(&v17, sel_initWithContainerSize_insets_userInfoViewHeight_screenScale_RTL_showSideGroupPicker_);
  if (v15)
  {
    result = a20;
    *(v15 + 15) = a17;
    *(v15 + 16) = a18;
    *(v15 + 17) = a19;
    v15[18] = a20;
    *(v15 + 14) = a21;
    *(v15 + 13) = a22;
    *(v15 + 96) = insets;
  }

  return result;
}

- (CGRect)groupDialContainerFrame
{
  v3 = 0.0;
  if (![(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self showSideGroupPicker])
  {
    v4 = +[AVTUIFontRepository groupDialBoldLabelFont];
    [v4 _scaledValueForValue:18.0];
    if (v5 <= 30.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 30.0;
    }

    [v4 ascender];
    v8 = v7;
    [v4 descender];
    v3 = ceil(v8 - v9 + v6 * 2.0);
  }

  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v11 = v10;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v13 = v12;
  v14 = 0.0;
  v15 = v11;
  v16 = v3;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)sideGroupContainerFrame
{
  if ([(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self showSideGroupPicker])
  {
    v3 = 192.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v5 = v4;
  v6 = 0.0;
  v7 = -v3;
  v8 = v3;
  result.size.height = v5;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (CGRect)attributesContentViewFrame
{
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self attributesContentViewInsets];
  v4 = v3;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self groupDialContainerFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self sideGroupContainerFrame];
  v14 = v13;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v15 = CGRectGetMaxY(v25) - v4;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v17 = v16 - v14;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v19 = v18;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self attributesContentViewExtraHeight];
  v21 = v19 + v20;
  v22 = v14;
  v23 = v15;
  v24 = v17;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)userInfoFrame
{
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self groupDialContainerFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = +[AVTUIFontRepository userInfoLabelFont];
  v11 = +[AVTUIFontRepository groupDialBoldLabelFont];
  [v11 _scaledValueForValue:18.0];
  if (v12 <= 30.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 30.0;
  }

  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = v9;
  v14 = CGRectGetMinY(v31) + v13 * 0.5;
  [v10 ascender];
  v16 = v15;
  [v10 descender];
  v18 = v14 - (v16 - v17);
  +[AVTUserInfoView textVerticalPadding];
  v20 = v18 - v19 * 2.0;
  [v10 ascender];
  v22 = v21;
  [v10 descender];
  v24 = v22 - v23;
  +[AVTUserInfoView textVerticalPadding];
  v26 = v24 + v25 * 2.0;

  v27 = v3;
  v28 = v20;
  v29 = v7;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)headerMaskingViewFrame
{
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self attributesContentViewFrame];
  v4 = v3;
  v6 = v5;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self groupDialContainerFrame];
  v7 = CGRectGetMaxY(v11) - v4;
  v8 = 0.0;
  v9 = 0.0;
  v10 = v6;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)verticalRuleFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)attributesContentViewInsets
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self avatarContainerFrame];
  v7 = v6;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self groupDialContainerFrame];
  v9 = v7 + v8;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self avatarContainerFrame];
  v7 = v6;
  [(AVTAvatarAttributeEditorTransitionFromActionsStartingPortraitLayout *)self groupDialContainerFrame];
  v9 = v7 + v8;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (CGRect)avatarContainerFrame
{
  x = self->_avatarContainerFrame.origin.x;
  y = self->_avatarContainerFrame.origin.y;
  width = self->_avatarContainerFrame.size.width;
  height = self->_avatarContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end