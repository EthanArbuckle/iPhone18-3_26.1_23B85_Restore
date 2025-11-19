@interface AVTAvatarActionsViewControllerTransitionStartingLayout
- (AVTAvatarActionsViewControllerTransitionStartingLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5 avtViewLayoutInfo:(id)a6 startingAvatarViewFrame:(CGRect)a7;
- (CGRect)avatarContainerViewFrame;
@end

@implementation AVTAvatarActionsViewControllerTransitionStartingLayout

- (AVTAvatarActionsViewControllerTransitionStartingLayout)initWithContainerSize:(CGSize)a3 insets:(UIEdgeInsets)a4 buttonCount:(int64_t)a5 avtViewLayoutInfo:(id)a6 startingAvatarViewFrame:(CGRect)a7
{
  v8.receiver = self;
  v8.super_class = AVTAvatarActionsViewControllerTransitionStartingLayout;
  result = [(AVTAvatarActionsViewControllerLayout *)&v8 initWithContainerSize:a5 insets:a6 buttonCount:a3.width avtViewLayoutInfo:a3.height, a4.top, a4.left, a4.bottom, a4.right];
  if (result)
  {
    result->_avatarContainerViewFrame = a7;
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