@interface AVTAvatarAttributeEditorDefaultMacLayout
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
- (double)widthToFitGroupLabels;
@end

@implementation AVTAvatarAttributeEditorDefaultMacLayout

- (CGRect)avatarContainerFrame
{
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self attributesContentViewFrame];
  v4 = v3;
  v6 = v5;
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  v8 = v7;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self maxHeaderHeight];
  v10 = v9;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self groupDialContainerFrame];
  v12 = v10 - v11;
  v13 = v4;
  v14 = v8;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)userInfoFrame
{
  [(AVTAvatarAttributeEditorLayout *)self userInfoViewHeight];
  if (v3 <= 0.0)
  {
    [(AVTAvatarAttributeEditorDefaultMacLayout *)self defaultUserInfoFrame];
    v5 = v17;
    v14 = v18;
    v9 = v19;
    v16 = v20;
  }

  else
  {
    [(AVTAvatarAttributeEditorDefaultMacLayout *)self groupDialContainerFrame];
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
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self groupDialContainerFrame];
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
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self sideGroupContainerFrame];
  v4 = v3;
  if ([(AVTAvatarAttributeEditorLayout *)self RTL])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v7 = v6 - v4;
  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v9 = v8;
  v10 = 0.0;
  v11 = v5;
  v12 = v7;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

- (CGRect)headerMaskingViewFrame
{
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self attributesContentViewFrame];
  v4 = v3;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self groupDialContainerFrame];
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
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self avatarContainerFrame];
  v6 = v5;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self attributesContentViewFrame];
  v8 = v7 - v6;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self maxHeaderHeight];
  v10 = v9 - v8;
  v11 = 36.0;
  v12 = v3;
  v13 = v4;
  result.right = v13;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets
{
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self avatarContainerFrame];
  v7 = v6;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self attributesContentViewFrame];
  v9 = v8 - v7;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self maxHeaderHeight];
  v11 = v10 - v9;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGRect)groupDialContainerFrame
{
  v3 = 0.0;
  if (![(AVTAvatarAttributeEditorLayout *)self showSideGroupPicker])
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

  [(AVTAvatarAttributeEditorDefaultMacLayout *)self maxHeaderHeight];
  v11 = v10 - v3;
  [(AVTAvatarAttributeEditorLayout *)self edgeInsets];
  v13 = v11 + v12;
  [(AVTAvatarAttributeEditorDefaultMacLayout *)self attributesContentViewFrame];
  v15 = 0.0;
  v16 = v13;
  v17 = v3;
  result.size.height = v17;
  result.size.width = v14;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)sideGroupContainerFrame
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(AVTAvatarAttributeEditorLayout *)self showSideGroupPicker])
  {
    [(AVTAvatarAttributeEditorDefaultMacLayout *)self widthToFitGroupLabels];
    v4 = v5;
  }

  if ([(AVTAvatarAttributeEditorLayout *)self RTL])
  {
    [(AVTAvatarAttributeEditorLayout *)self containerSize];
    v3 = v6 - v4;
  }

  [(AVTAvatarAttributeEditorLayout *)self containerSize];
  v8 = v7;
  v9 = 0.0;
  v10 = v3;
  v11 = v4;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (double)widthToFitGroupLabels
{
  [AVTGroupListCollectionViewCell estimatedLabelWidthForContainerWidth:195.0];
  v4 = v3;
  [(AVTAvatarAttributeEditorLayout *)self maxGroupLabelWidth];
  result = fmax(v5 - v4 + 215.0, 192.0);
  if (result > 215.0)
  {
    return 215.0;
  }

  return result;
}

@end