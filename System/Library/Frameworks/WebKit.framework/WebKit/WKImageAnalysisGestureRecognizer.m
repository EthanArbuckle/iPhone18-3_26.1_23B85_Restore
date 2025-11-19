@interface WKImageAnalysisGestureRecognizer
- (WKImageAnalysisGestureRecognizer)initWithImageAnalysisGestureDelegate:(id)a3;
- (void)beginAfterExceedingForceThresholdIfNeeded:(id)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WKImageAnalysisGestureRecognizer

- (WKImageAnalysisGestureRecognizer)initWithImageAnalysisGestureDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  v4 = [(WKImageAnalysisGestureRecognizer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_imageAnalysisGestureRecognizerDelegate, a3);
    [(WKImageAnalysisGestureRecognizer *)v5 setDelegate:a3];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v7 touchesBegan:a3 withEvent:a4];
  v6 = WebKit::scrollViewForTouches(a3);
  if (v6)
  {
    objc_storeWeak(&self->_lastTouchedScrollView, v6);
  }

  [(WKImageAnalysisGestureRecognizer *)self beginAfterExceedingForceThresholdIfNeeded:a3];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v6 touchesMoved:a3 withEvent:a4];
  [(WKImageAnalysisGestureRecognizer *)self beginAfterExceedingForceThresholdIfNeeded:a3];
}

- (void)beginAfterExceedingForceThresholdIfNeeded:(id)a3
{
  if (!-[WKImageAnalysisGestureRecognizer state](self, "state") && [a3 count] <= 1)
  {
    [objc_msgSend(a3 "anyObject")];
    if (v5 >= 1.5)
    {

      [(WKImageAnalysisGestureRecognizer *)self setState:1];
    }
  }
}

- (void)setState:(int64_t)a3
{
  v5 = [(WKImageAnalysisGestureRecognizer *)self state];
  v7.receiver = self;
  v7.super_class = WKImageAnalysisGestureRecognizer;
  [(WKImageAnalysisGestureRecognizer *)&v7 setState:a3];
  v6 = [(WKImageAnalysisGestureRecognizer *)self state];
  if (v5 != v6)
  {
    if (v6 == 5)
    {
      [objc_loadWeak(&self->_imageAnalysisGestureRecognizerDelegate) imageAnalysisGestureDidFail:self];
    }

    else if (v6 == 1)
    {
      [objc_loadWeak(&self->_imageAnalysisGestureRecognizerDelegate) imageAnalysisGestureDidBegin:self];
    }
  }
}

@end