@interface ZWCancelButtonTouchesScrollView
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (id)panGestureRecognizer;
@end

@implementation ZWCancelButtonTouchesScrollView

- (id)panGestureRecognizer
{
  v4.receiver = self;
  v4.super_class = ZWCancelButtonTouchesScrollView;
  v2 = [(ZWCancelButtonTouchesScrollView *)&v4 panGestureRecognizer];
  [v2 setAllowedScrollTypesMask:0];

  return v2;
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ZWCancelButtonTouchesScrollView;
    v5 = [(ZWCancelButtonTouchesScrollView *)&v7 touchesShouldCancelInContentView:v4];
  }

  return v5;
}

@end