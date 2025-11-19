@interface BCCardViewControllerScrollView
- (BCCardViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (UIScrollView)contentScrollView;
- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation BCCardViewControllerScrollView

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v3 = [(BCCardViewControllerScrollView *)self accessibilityDelegate];
  [v3 accessibilityVisibleContentInsetForCardViewControllerScrollView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5
{
  x = a3.x;
  y = a3.y;
  v8 = fmaxf(y, 0.0);
  v9 = [(BCCardViewControllerScrollView *)self accessibilityDelegate:a4];
  [v9 cardViewControllerScrollView:self accessibilityWantsToScrollToOffset:{x, v8}];
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v5 = [(BCCardViewControllerScrollView *)self contentScrollView];
  v6 = [v5 touchesShouldCancelInContentView:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BCCardViewControllerScrollView;
    v7 = [(BCCardViewControllerScrollView *)&v9 touchesShouldCancelInContentView:v4];
  }

  return v7;
}

- (UIScrollView)contentScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);

  return WeakRetained;
}

- (BCCardViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end