@interface ZWSlugBackgroundView
- (BOOL)isAccessibilityElement;
- (ZWSlugBackgroundView)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation ZWSlugBackgroundView

- (ZWSlugBackgroundView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ZWSlugBackgroundView;
  return [(ZWSlugBackgroundView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (BOOL)isAccessibilityElement
{
  [(ZWSlugBackgroundView *)self alpha];
  if (v3 <= 0.0)
  {
    return 0;
  }

  else
  {
    return [(ZWSlugBackgroundView *)self isHidden]^ 1;
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  if (nextFocusedItem == self)
  {
    delegate = [(ZWSlugBackgroundView *)self delegate];
    [delegate slugDidReceiveFocusWithSlugView:self];
  }
}

@end