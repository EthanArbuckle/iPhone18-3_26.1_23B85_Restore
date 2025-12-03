@interface HWScrollView
- (BOOL)touchesShouldCancelInContentView:(id)view;
@end

@implementation HWScrollView

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  delegate = [(HWScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate handwritingScrollView:self shouldCancelTouchesInView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end