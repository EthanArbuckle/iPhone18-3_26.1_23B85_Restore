@interface ETGestureIgnoringView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)trackedView;
@end

@implementation ETGestureIgnoringView

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 locationOfTouch:0 inView:self], v6 = v5, v8 = v7, WeakRetained = objc_loadWeakRetained(&self->_trackedView), objc_msgSend(WeakRetained, "frame"), v14.x = v6, v14.y = v8, v10 = CGRectContainsPoint(v15, v14), WeakRetained, v10))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ETGestureIgnoringView;
    v11 = [(ETGestureIgnoringView *)&v13 gestureRecognizerShouldBegin:v4];
  }

  return v11;
}

- (UIView)trackedView
{
  WeakRetained = objc_loadWeakRetained(&self->_trackedView);

  return WeakRetained;
}

@end