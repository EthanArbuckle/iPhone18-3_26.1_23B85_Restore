@interface WKImageAnalysisGestureRecognizer
- (WKImageAnalysisGestureRecognizer)initWithImageAnalysisGestureDelegate:(id)delegate;
- (void)beginAfterExceedingForceThresholdIfNeeded:(id)needed;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation WKImageAnalysisGestureRecognizer

- (WKImageAnalysisGestureRecognizer)initWithImageAnalysisGestureDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  v4 = [(WKImageAnalysisGestureRecognizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_imageAnalysisGestureRecognizerDelegate, delegate);
    [(WKImageAnalysisGestureRecognizer *)v5 setDelegate:delegate];
    [(WKImageAnalysisGestureRecognizer *)v5 setMinimumPressDuration:0.1];
    [(WKImageAnalysisGestureRecognizer *)v5 setAllowableMovement:0.0];
    [(WKImageAnalysisGestureRecognizer *)v5 setName:@"Image analysis"];
  }

  return v5;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v3 reset];
  objc_storeWeak(&self->_lastTouchedScrollView, 0);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v7 touchesBegan:began withEvent:event];
  v6 = WebKit::scrollViewForTouches(began);
  if (v6)
  {
    objc_storeWeak(&self->_lastTouchedScrollView, v6);
  }

  [(WKImageAnalysisGestureRecognizer *)self beginAfterExceedingForceThresholdIfNeeded:began];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v6 touchesMoved:moved withEvent:event];
  [(WKImageAnalysisGestureRecognizer *)self beginAfterExceedingForceThresholdIfNeeded:moved];
}

- (void)beginAfterExceedingForceThresholdIfNeeded:(id)needed
{
  if (!-[WKImageAnalysisGestureRecognizer state](self, "state") && [needed count] <= 1)
  {
    [objc_msgSend(needed "anyObject")];
    if (v5 >= 1.5)
    {

      [(WKImageAnalysisGestureRecognizer *)self setState:1];
    }
  }
}

- (void)setState:(int64_t)state
{
  state = [(WKImageAnalysisGestureRecognizer *)self state];
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v7 setState:state];
  state2 = [(WKImageAnalysisGestureRecognizer *)self state];
  if (state != state2)
  {
    if (state2 == 5)
    {
      [objc_loadWeak(&self->_imageAnalysisGestureRecognizerDelegate) imageAnalysisGestureDidFail:self];
    }

    else if (state2 == 1)
    {
      [objc_loadWeak(&self->_imageAnalysisGestureRecognizerDelegate) imageAnalysisGestureDidBegin:self];
    }
  }
}

@end