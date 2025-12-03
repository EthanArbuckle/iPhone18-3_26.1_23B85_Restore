@interface ZWCancelButtonTouchesScrollView
- (BOOL)touchesShouldCancelInContentView:(id)view;
- (id)panGestureRecognizer;
@end

@implementation ZWCancelButtonTouchesScrollView

- (id)panGestureRecognizer
{
  v4.receiver = self;
  v4.super_class = ZWCancelButtonTouchesScrollView;
  panGestureRecognizer = [(ZWCancelButtonTouchesScrollView *)&v4 panGestureRecognizer];
  [panGestureRecognizer setAllowedScrollTypesMask:0];

  return panGestureRecognizer;
}

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ZWCancelButtonTouchesScrollView;
    v5 = [(ZWCancelButtonTouchesScrollView *)&v7 touchesShouldCancelInContentView:viewCopy];
  }

  return v5;
}

@end