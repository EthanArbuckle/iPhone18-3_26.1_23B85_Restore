@interface AVTAvatarAttributeEditorLayout
- (AVTAvatarAttributeEditorLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 screenScale:(double)a6 RTL:(BOOL)a7 showSideGroupPicker:(BOOL)a8 maxGroupLabelWidth:(double)a9;
- (CGRect)attributesContentViewFrame;
- (CGRect)avatarContainerFrame;
- (CGRect)groupDialContainerFrame;
- (CGRect)headerMaskingViewFrame;
- (CGRect)sideGroupContainerFrame;
- (CGRect)userInfoFrame;
- (CGRect)verticalRuleFrame;
- (CGSize)containerSize;
- (UIEdgeInsets)attributesContentViewInsets;
- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets;
- (UIEdgeInsets)edgeInsets;
- (void)raiseExceptionForPropertyString:(id)a3;
@end

@implementation AVTAvatarAttributeEditorLayout

- (AVTAvatarAttributeEditorLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 userInfoViewHeight:(double)a5 screenScale:(double)a6 RTL:(BOOL)a7 showSideGroupPicker:(BOOL)a8 maxGroupLabelWidth:(double)a9
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v26.receiver = self;
  v26.super_class = AVTAvatarAttributeEditorLayout;
  v19 = [(AVTAvatarAttributeEditorLayout *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_containerSize.width = width;
    v19->_containerSize.height = height;
    v19->_edgeInsets.top = top;
    v19->_edgeInsets.left = left;
    v19->_edgeInsets.bottom = bottom;
    v19->_edgeInsets.right = right;
    v19->_userInfoViewHeight = a5;
    v19->_screenScale = a6;
    v21 = [MEMORY[0x1E69DC668] sharedApplication];
    v22 = [v21 preferredContentSizeCategory];
    v23 = [v22 copy];
    contentSizeCategory = v20->_contentSizeCategory;
    v20->_contentSizeCategory = v23;

    v20->_RTL = a7;
    v20->_showSideGroupPicker = a8;
    v20->_maxGroupLabelWidth = a9;
  }

  return v20;
}

- (CGRect)avatarContainerFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"avatarContainerFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)attributesContentViewFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"attributesContentViewFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)userInfoFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"userInfoFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)headerMaskingViewFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"headerMaskingViewFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)verticalRuleFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"verticalRuleFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)attributesContentViewInsets
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"attributesContentViewInsets"];
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)attributesContentViewScrollIndicatorInsets
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"attributesContentViewScrollIndicatorInsets"];
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)groupDialContainerFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"groupDialContainerFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)sideGroupContainerFrame
{
  [(AVTAvatarAttributeEditorLayout *)self raiseExceptionForPropertyString:@"sideGroupContainerFrame"];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)raiseExceptionForPropertyString:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVTAvatarAttributeEditorLayout:%p> Property getter for %@ called on abstract superclass", self, a3];
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v4 userInfo:0];
  [v3 raise];
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