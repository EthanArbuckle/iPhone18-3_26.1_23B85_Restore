@interface UIScrollView(AvatarUI)
- (uint64_t)avtui_isMoving;
@end

@implementation UIScrollView(AvatarUI)

- (uint64_t)avtui_isMoving
{
  if ([a1 isDragging] & 1) != 0 || (objc_msgSend(a1, "isTracking") & 1) != 0 || (objc_msgSend(a1, "isDecelerating"))
  {
    return 1;
  }

  return [a1 isScrollAnimating];
}

@end