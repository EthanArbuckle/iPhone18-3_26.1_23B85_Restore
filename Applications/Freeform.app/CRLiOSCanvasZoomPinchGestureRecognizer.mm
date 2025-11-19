@interface CRLiOSCanvasZoomPinchGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_zoomTimedOut)
  {
    v8.receiver = self;
    v8.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v8 touchesBegan:v6 withEvent:v7];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if (!self->_zoomTimedOut)
  {
    v4.receiver = self;
    v4.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v4 touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (self->_zoomTimedOut)
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CRLiOSCanvasZoomPinchGestureRecognizer;
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)self p_stopCancellationTimer];
  if (self->_zoomTimedOut)
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)self setState:5];
  }
}

@end