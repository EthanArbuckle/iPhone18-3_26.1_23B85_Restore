@interface LPHighlightGestureRecognizer
- (CGPoint)_locationInWindow;
- (void)startHighlightIfPossible;
- (void)updateHighlight;
@end

@implementation LPHighlightGestureRecognizer

- (void)startHighlightIfPossible
{
  if (![(LPHighlightGestureRecognizer *)self state])
  {
    [(LPHighlightGestureRecognizer *)self setState:1];
    [(LPHighlightGestureRecognizer *)self _locationInWindow];
    self->_startPointInWindowCoordinates.x = v3;
    self->_startPointInWindowCoordinates.y = v4;
  }
}

- (void)updateHighlight
{
  p_startPointInWindowCoordinates = &self->_startPointInWindowCoordinates;
  [(LPHighlightGestureRecognizer *)self _locationInWindow];
  if (distanceBetweenPoints(p_startPointInWindowCoordinates->x, p_startPointInWindowCoordinates->y, v4, v5) > 10.0)
  {

    [(LPHighlightGestureRecognizer *)self cancelHighlight];
  }
}

- (CGPoint)_locationInWindow
{
  v3 = [(LPHighlightGestureRecognizer *)self view];
  v4 = [v3 window];
  [(LPHighlightGestureRecognizer *)self locationInView:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

@end