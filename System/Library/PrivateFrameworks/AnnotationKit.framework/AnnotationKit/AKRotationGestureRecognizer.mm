@interface AKRotationGestureRecognizer
- (AKController)annotationController;
- (void)setState:(int64_t)state;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AKRotationGestureRecognizer

- (void)setState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = AKRotationGestureRecognizer;
  [(AKRotationGestureRecognizer *)&v5 setState:?];
  if (state)
  {
    self->tries = 0;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  state = [(AKRotationGestureRecognizer *)self state];
  v13.receiver = self;
  v13.super_class = AKRotationGestureRecognizer;
  [(AKRotationGestureRecognizer *)&v13 touchesMoved:movedCopy withEvent:eventCopy];

  annotationController = [(AKRotationGestureRecognizer *)self annotationController];
  modelController = [annotationController modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  if (![allSelectedAnnotations count] || !state && -[AKRotationGestureRecognizer state](self, "state") != 1 && (v12 = self->tries + 1, self->tries = v12, v12 >= 8))
  {
    [(AKRotationGestureRecognizer *)self setEnabled:0];
    [(AKRotationGestureRecognizer *)self setEnabled:1];
  }
}

- (AKController)annotationController
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);

  return WeakRetained;
}

@end