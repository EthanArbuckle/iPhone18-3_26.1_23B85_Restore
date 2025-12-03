@interface CRLiOSCanvasZoomPinchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CRLiOSCanvasZoomPinchGestureRecognizer

- (void)reset
{
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  self->_zoomTimedOut = 0;
  v3.receiver = self;
  v3.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v3 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (!self->_zoomTimedOut)
  {
    v8.receiver = self;
    v8.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
    if ([(CRLiOSCanvasZoomPinchGestureRecognizer *)self numberOfTouches]== 1)
    {
      [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_startCancellationTimer];
    }

    else
    {
      [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (!self->_zoomTimedOut)
  {
    v4.receiver = self;
    v4.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v4 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (self->_zoomTimedOut)
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (self->_zoomTimedOut)
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

@end