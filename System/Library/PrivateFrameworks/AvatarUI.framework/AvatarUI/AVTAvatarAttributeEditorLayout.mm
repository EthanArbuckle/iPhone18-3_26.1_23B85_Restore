@interface AVTAvatarAttributeEditorLayout
- (AVTAvatarAttributeEditorLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height screenScale:(double)scale RTL:(BOOL)l showSideGroupPicker:(BOOL)picker maxGroupLabelWidth:(double)width;
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
- (void)raiseExceptionForPropertyString:(id)string;
@end

@implementation AVTAvatarAttributeEditorLayout

- (AVTAvatarAttributeEditorLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets userInfoViewHeight:(double)height screenScale:(double)scale RTL:(BOOL)l showSideGroupPicker:(BOOL)picker maxGroupLabelWidth:(double)width
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
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
    v19->_userInfoViewHeight = height;
    v19->_screenScale = scale;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    v23 = [preferredContentSizeCategory copy];
    contentSizeCategory = v20->_contentSizeCategory;
    v20->_contentSizeCategory = v23;

    v20->_RTL = l;
    v20->_showSideGroupPicker = picker;
    v20->_maxGroupLabelWidth = width;
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

- (void)raiseExceptionForPropertyString:(id)string
{
  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVTAvatarAttributeEditorLayout:%p> Property getter for %@ called on abstract superclass", self, string];
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:string userInfo:0];
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