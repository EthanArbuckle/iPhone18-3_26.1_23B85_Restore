@interface WKChildScrollView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (WKChildScrollView)initWithFrame:(CGRect)frame;
@end

@implementation WKChildScrollView

- (WKChildScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WKChildScrollView;
  v3 = [(WKBaseScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WKChildScrollView *)v3 setContentInsetAdjustmentBehavior:2];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [gestureRecognizer shouldDeferGestureRecognizer:recognizer];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [recognizer shouldDeferGestureRecognizer:gestureRecognizer];
}

@end