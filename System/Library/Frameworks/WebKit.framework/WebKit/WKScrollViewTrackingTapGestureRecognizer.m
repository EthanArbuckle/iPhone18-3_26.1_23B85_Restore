@interface WKScrollViewTrackingTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation WKScrollViewTrackingTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = WKScrollViewTrackingTapGestureRecognizer;
  [(WKScrollViewTrackingTapGestureRecognizer *)&v3 reset];
  objc_storeWeak(&self->_lastTouchedScrollView, 0);
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = WKScrollViewTrackingTapGestureRecognizer;
  [(WKScrollViewTrackingTapGestureRecognizer *)&v7 touchesBegan:a3 withEvent:a4];
  v6 = WebKit::scrollViewForTouches(a3);
  if (v6)
  {
    objc_storeWeak(&self->_lastTouchedScrollView, v6);
  }
}

@end