@interface HWScrollView
- (BOOL)touchesShouldCancelInContentView:(id)a3;
@end

@implementation HWScrollView

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v5 = [(HWScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 handwritingScrollView:self shouldCancelTouchesInView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end