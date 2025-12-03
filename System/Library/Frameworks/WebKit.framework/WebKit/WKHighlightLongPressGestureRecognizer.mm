@interface WKHighlightLongPressGestureRecognizer
- (UIScrollView)lastTouchedScrollView;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation WKHighlightLongPressGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = WKHighlightLongPressGestureRecognizer;
  [(WKHighlightLongPressGestureRecognizer *)&v3 reset];
  objc_storeWeak(&self->_lastTouchedScrollView.m_weakReference, 0);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = WKHighlightLongPressGestureRecognizer;
  [(WKHighlightLongPressGestureRecognizer *)&v7 touchesBegan:began withEvent:event];
  v6 = WebKit::scrollViewForTouches(began);
  if (v6)
  {
    objc_storeWeak(&self->_lastTouchedScrollView.m_weakReference, v6);
  }
}

- (UIScrollView)lastTouchedScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_lastTouchedScrollView.m_weakReference);
  v3 = WeakRetained;
  if (WeakRetained)
  {
  }

  return v3;
}

@end