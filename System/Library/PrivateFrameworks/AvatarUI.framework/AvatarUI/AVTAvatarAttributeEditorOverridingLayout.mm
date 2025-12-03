@interface AVTAvatarAttributeEditorOverridingLayout
- (AVTAvatarAttributeEditorOverridingLayout)initWithLayout:(id)layout;
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

- (AVTAvatarAttributeEditorOverridingLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = AVTAvatarAttributeEditorOverridingLayout;
  v6 = [(AVTAvatarAttributeEditorOverridingLayout *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingLayout, layout);
    [layoutCopy avatarContainerFrame];
    v7->_avatarContainerFrame.origin.x = v8;
    v7->_avatarContainerFrame.origin.y = v9;
    v7->_avatarContainerFrame.size.width = v10;
    v7->_avatarContainerFrame.size.height = v11;
    [layoutCopy attributesContentViewFrame];
    v7->_attributesContentViewFrame.origin.x = v12;
    v7->_attributesContentViewFrame.origin.y = v13;
    v7->_attributesContentViewFrame.size.width = v14;
    v7->_attributesContentViewFrame.size.height = v15;
    [layoutCopy avatarContainerAlpha];
    v7->_avatarContainerAlpha = v16;
  }

  return v7;
}

- (NSString)contentSizeCategory
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  contentSizeCategory = [backingLayout contentSizeCategory];

  return contentSizeCategory;
}

- (CGSize)containerSize
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout containerSize];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout edgeInsets];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout userInfoViewHeight];
  v4 = v3;

  return v4;
}

- (double)screenScale
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout screenScale];
  v4 = v3;

  return v4;
}

- (CGRect)groupDialContainerFrame
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout groupDialContainerFrame];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout sideGroupContainerFrame];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  showSideGroupPicker = [backingLayout showSideGroupPicker];

  return showSideGroupPicker;
}

- (CGRect)userInfoFrame
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout userInfoFrame];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout headerMaskingViewAlpha];
  v4 = v3;

  return v4;
}

- (CGRect)headerMaskingViewFrame
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout headerMaskingViewFrame];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout verticalRuleAlpha];
  v4 = v3;

  return v4;
}

- (CGRect)verticalRuleFrame
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout verticalRuleFrame];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout attributesContentViewInsets];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout attributesContentViewScrollIndicatorInsets];
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
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  supportedLayoutOrientation = [backingLayout supportedLayoutOrientation];

  return supportedLayoutOrientation;
}

- (double)maxGroupLabelWidth
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  [backingLayout maxGroupLabelWidth];
  v4 = v3;

  return v4;
}

- (BOOL)RTL
{
  backingLayout = [(AVTAvatarAttributeEditorOverridingLayout *)self backingLayout];
  v3 = [backingLayout RTL];

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