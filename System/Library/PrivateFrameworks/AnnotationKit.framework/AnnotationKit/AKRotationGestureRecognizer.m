@interface AKRotationGestureRecognizer
- (AKController)annotationController;
- (void)setState:(int64_t)a3;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation AKRotationGestureRecognizer

- (void)setState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AKRotationGestureRecognizer;
  [(AKRotationGestureRecognizer *)&v5 setState:?];
  if (a3)
  {
    self->tries = 0;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AKRotationGestureRecognizer *)self state];
  v13.receiver = self;
  v13.super_class = AKRotationGestureRecognizer;
  [(AKRotationGestureRecognizer *)&v13 touchesMoved:v7 withEvent:v6];

  v9 = [(AKRotationGestureRecognizer *)self annotationController];
  v10 = [v9 modelController];
  v11 = [v10 allSelectedAnnotations];

  if (![v11 count] || !v8 && -[AKRotationGestureRecognizer state](self, "state") != 1 && (v12 = self->tries + 1, self->tries = v12, v12 >= 8))
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