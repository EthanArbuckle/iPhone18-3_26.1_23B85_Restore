@interface BCCardSetWideTouchScrollView
- (BCCardSetWideTouchScrollViewDelegate)accessibilityDelegate;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityScrollStatus;
- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation BCCardSetWideTouchScrollView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BCCardSetWideTouchScrollView *)self contentSize];
  CGRectMakeWithSize();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)_accessibilityScrollStatus
{
  v3 = [(BCCardSetWideTouchScrollView *)self accessibilityDelegate];
  v4 = [v3 accessibilityScrollStatusForWideTouchScrollView:self];

  return v4;
}

- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  x = a3.x;
  [(BCCardSetWideTouchScrollView *)self contentOffset:a3.x];
  v9.receiver = self;
  v9.super_class = BCCardSetWideTouchScrollView;
  [(BCCardSetWideTouchScrollView *)&v9 accessibilityApplyScrollContent:v6 sendScrollStatus:v5 animated:x];
}

- (BCCardSetWideTouchScrollViewDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end