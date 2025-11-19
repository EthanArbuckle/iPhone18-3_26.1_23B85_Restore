@interface AVTAvatarAttributeEditorDefaultPortraitLayout
- (CGRect)attributesContentViewFrame;
- (CGRect)avatarContainerFrame;
- (CGRect)defaultUserInfoFrame;
- (CGRect)groupDialContainerFrame;
- (CGRect)headerMaskingViewFrame;
- (CGRect)sideGroupContainerFrame;
- (CGRect)userInfoFrame;
- (CGRect)verticalRuleFrame;
- (UIEdgeInsets)attributesContentViewInsets;
- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets;
- (double)maxHeaderHeight;
@end

@implementation AVTAvatarAttributeEditorDefaultPortraitLayout

- (double)maxHeaderHeight
{
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v4 = v3 * 0.5;
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  return v4 - v5;
}

- (CGRect)avatarContainerFrame
{
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  v4 = v3;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v6 = v5;
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self maxHeaderHeight];
  v8 = v7;
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self groupDialContainerFrame];
  v10 = v8 - v9;
  v11 = 0.0;
  v12 = v4;
  v13 = v6;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)userInfoFrame
{
  [(AVTAvatarAttributeEditorLayout *)self userInfoViewHeight];
  if (v3 <= 0.0)
  {
    [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self defaultUserInfoFrame];
    v5 = v17;
    v14 = v18;
    v9 = v19;
    v16 = v20;
  }

  else
  {
    [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self groupDialContainerFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = +[AVTUIFontRepository groupDialBoldLabelFont];
    [v10 _scaledValueForValue:18.0];
    if (v11 > 30.0)
    {
      v11 = 30.0;
    }

    v12 = v7 + v11 * 0.5;
    [(AVTAvatarAttributeEditorLayout *)self userInfoViewHeight];
    v14 = v12 - v13;
    [(AVTAvatarAttributeEditorLayout *)self userInfoViewHeight];
    v16 = v15;
  }

  v21 = v5;
  v22 = v14;
  v23 = v9;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)defaultUserInfoFrame
{
  v3 = +[AVTUIFontRepository userInfoLabelFont];
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self groupDialContainerFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[AVTUIFontRepository groupDialBoldLabelFont];
  [v12 _scaledValueForValue:18.0];
  if (v13 <= 30.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 30.0;
  }

  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v15 = CGRectGetMinY(v32) + v14 * 0.5;
  [v3 ascender];
  v17 = v16;
  [v3 descender];
  v19 = v15 - (v17 - v18);
  +[AVTUserInfoView textVerticalPadding];
  v21 = v19 - v20 * 2.0;
  [v3 ascender];
  v23 = v22;
  [v3 descender];
  v25 = v23 - v24;
  +[AVTUserInfoView textVerticalPadding];
  v27 = v25 + v26 * 2.0;

  v28 = v5;
  v29 = v21;
  v30 = v9;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)attributesContentViewFrame
{
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v4 = v3;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)headerMaskingViewFrame
{
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v4 = v3;
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self groupDialContainerFrame];
  MaxY = CGRectGetMaxY(v9);
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.size.height = MaxY;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
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
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self maxHeaderHeight];
  v6 = v5;
  [(AVTAvatarAttributeEditorLayout *)self screenScale];
  AVTRoundToScale(v6, v7);
  v9 = 36.0;
  v10 = v3;
  v11 = v4;
  result.right = v11;
  result.bottom = v9;
  result.left = v10;
  result.top = v8;
  return result;
}

- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self avatarContainerFrame];
  v7 = v6;
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  v9 = v8 - v7;
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self maxHeaderHeight];
  v11 = v10 - v9;
  [(AVTAvatarAttributeEditorLayout *)self screenScale];
  AVTRoundToScale(v11, v12);
  v14 = v3;
  v15 = v4;
  v16 = v5;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGRect)groupDialContainerFrame
{
  v3 = +[AVTUIFontRepository groupDialBoldLabelFont];
  [v3 _scaledValueForValue:18.0];
  if (v4 <= 30.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  [v3 ascender];
  v7 = v6;
  [v3 descender];
  v9 = ceil(v7 - v8 + v5 * 2.0);
  [(AVTAvatarAttributeEditorDefaultPortraitLayout *)self maxHeaderHeight];
  v11 = v10 - v9;
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  v13 = v12 + v11;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v15 = v14;

  v16 = 0.0;
  v17 = v13;
  v18 = v15;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)sideGroupContainerFrame
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

@end