@interface WKScrollViewTrackingTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation WKScrollViewTrackingTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = WKScrollViewTrackingTapGestureRecognizer;
  [(WKScrollViewTrackingTapGestureRecognizer *)&v3 reset];
  objc_storeWeak(&self->_lastTouchedScrollView, 0);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = WKScrollViewTrackingTapGestureRecognizer;
  [(WKScrollViewTrackingTapGestureRecognizer *)&v7 touchesBegan:began withEvent:event];
  v6 = WebKit::scrollViewForTouches(began);
  if (v6)
  {
    objc_storeWeak(&self->_lastTouchedScrollView, v6);
  }
}

@end