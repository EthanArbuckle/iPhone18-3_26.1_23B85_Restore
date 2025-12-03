@interface AVTAvatarActionsViewControllerTransitionPadStartingLayout
- (AVTAvatarActionsViewControllerTransitionPadStartingLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets buttonCount:(int64_t)count avtViewLayoutInfo:(id)info startingAvatarViewFrame:(CGRect)frame;
- (CGRect)avatarContainerViewFrame;
@end

@implementation AVTAvatarActionsViewControllerTransitionPadStartingLayout

- (AVTAvatarActionsViewControllerTransitionPadStartingLayout)initWithContainerSize:(CGSize)size insets:(UIEdgeInsets)insets buttonCount:(int64_t)count avtViewLayoutInfo:(id)info startingAvatarViewFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AVTAvatarActionsViewControllerTransitionPadStartingLayout;
  result = [(AVTAvatarActionsViewControllerPadLayout *)&v8 initWithContainerSize:count insets:info buttonCount:size.width avtViewLayoutInfo:size.height, insets.top, insets.left, insets.bottom, insets.right];
  if (result)
  {
    result->_avatarContainerViewFrame = frame;
  }

  return result;
}

- (CGRect)avatarContainerViewFrame
{
  x = self->_avatarContainerViewFrame.origin.x;
  y = self->_avatarContainerViewFrame.origin.y;
  width = self->_avatarContainerViewFrame.size.width;
  height = self->_avatarContainerViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end