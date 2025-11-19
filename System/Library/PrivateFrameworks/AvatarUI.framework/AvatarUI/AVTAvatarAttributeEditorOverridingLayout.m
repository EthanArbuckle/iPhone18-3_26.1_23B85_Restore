@interface AVTAvatarAttributeEditorOverridingLayout
- (AVTAvatarAttributeEditorOverridingLayout)initWithLayout:(id)a3;
- (BOOL)RTL;
- (BOOL)showSideGroupPicker;
- (CGRect)attributesContentViewFrame;
- (CGRect)avatarContainerFrame;
- (CGRect)groupDialContainerFrame;
- (CGRect)headerMaskingViewFrame;
- (CGRect)sideGroupContainerFrame;
- (CGRect)userInfoFrame;
- (CGRect)verticalRuleFrame;
- (CGSize)containerSize;
- (NSString)contentSizeCategory;
- (UIEdgeInsets)attributesContentViewInsets;
- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets;
- (UIEdgeInsets)edgeInsets;
- (double)headerMaskingViewAlpha;
- (double)maxGroupLabelWidth;
- (double)screenScale;
- (double)userInfoViewHeight;
- (double)verticalRuleAlpha;
- (unint64_t)supportedLayoutOrientation;
@end

@implementation AVTAvatarAttributeEditorOverridingLayout

- (AVTAvatarAttributeEditorOverridingLayout)initWithLayout:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = AVTAvatarAttributeEditorOverridingLayout;
  v6 = [(AVTAvatarAttributeEditorOverridingLayout *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingLayout, a3);
    [v5 avatarContainerFrame];
    v7->_avatarContainerFrame.origin.x = v8;
    v7->_avatarContainerFrame.origin.y = v9;
    v7->_avatarContainerFrame.size.width = v10;
    v7->_avatarContainerFrame.size.height = v11;
    [v5 attributesContentViewFrame];
    v7->_attributesContentViewFrame.origin.x = v12;
    v7->_attributesContentViewFrame.origin.y = v13;
    v7->_attributesContentViewFrame.size.width = v14;
    v7->_attributesContentViewFrame.size.height = v15;
    [v5 avatarContainerAlpha];
    v7->_avatarContainerAlpha = v16;
  }

  return v7;
}

- (NSString)contentSizeCategory
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  v3 = [v2 contentSizeCategory];

  return v3;
}

- (CGSize)containerSize
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 containerSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 edgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)userInfoViewHeight
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 userInfoViewHeight];
  v4 = v3;

  return v4;
}

- (double)screenScale
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 screenScale];
  v4 = v3;

  return v4;
}

- (CGRect)groupDialContainerFrame
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 groupDialContainerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)sideGroupContainerFrame
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 sideGroupContainerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)showSideGroupPicker
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  v3 = [v2 showSideGroupPicker];

  return v3;
}

- (CGRect)userInfoFrame
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 userInfoFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)headerMaskingViewAlpha
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 headerMaskingViewAlpha];
  v4 = v3;

  return v4;
}

- (CGRect)headerMaskingViewFrame
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 headerMaskingViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)verticalRuleAlpha
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 verticalRuleAlpha];
  v4 = v3;

  return v4;
}

- (CGRect)verticalRuleFrame
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 verticalRuleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIEdgeInsets)attributesContentViewInsets
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 attributesContentViewInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 attributesContentViewScrollIndicatorInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (unint64_t)supportedLayoutOrientation
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  v3 = [v2 supportedLayoutOrientation];

  return v3;
}

- (double)maxGroupLabelWidth
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [v2 maxGroupLabelWidth];
  v4 = v3;

  return v4;
}

- (BOOL)RTL
{
  v2 = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  v3 = [v2 RTL];

  return v3;
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

- (CGRect)attributesContentViewFrame
{
  x = self->_attributesContentViewFrame.origin.x;
  y = self->_attributesContentViewFrame.origin.y;
  width = self->_attributesContentViewFrame.size.width;
  height = self->_attributesContentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end