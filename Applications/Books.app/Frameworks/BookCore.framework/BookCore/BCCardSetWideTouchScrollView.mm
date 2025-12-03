@interface BCCardSetWideTouchScrollView
- (BCCardSetWideTouchScrollViewDelegate)accessibilityDelegate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)_accessibilityScrollStatus;
- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated;
@end

@implementation BCCardSetWideTouchScrollView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(BCCardSetWideTouchScrollView *)self contentSize];
  CGRectMakeWithSize();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)_accessibilityScrollStatus
{
  accessibilityDelegate = [(BCCardSetWideTouchScrollView *)self accessibilityDelegate];
  v4 = [accessibilityDelegate accessibilityScrollStatusForWideTouchScrollView:self];

  return v4;
}

- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  x = content.x;
  [(BCCardSetWideTouchScrollView *)self contentOffset:content.x];
  v9.receiver = self;
  v9.super_class = BCCardSetWideTouchScrollView;
  [(BCCardSetWideTouchScrollView *)&v9 accessibilityApplyScrollContent:statusCopy sendScrollStatus:animatedCopy animated:x];
}

- (BCCardSetWideTouchScrollViewDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end