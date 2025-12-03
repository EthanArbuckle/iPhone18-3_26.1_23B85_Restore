@interface UIScrollView(AvatarUI)
- (uint64_t)avtui_isMoving;
@end

@implementation UIScrollView(AvatarUI)

- (uint64_t)avtui_isMoving
{
  if ([self isDragging] & 1) != 0 || (objc_msgSend(self, "isTracking") & 1) != 0 || (objc_msgSend(self, "isDecelerating"))
  {
    return 1;
  }

  return [self isScrollAnimating];
}

@end