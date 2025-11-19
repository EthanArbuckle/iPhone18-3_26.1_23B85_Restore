@interface _MKUserInteractionGestureRecognizer
- (_MKUserInteractionGestureRecognizerTouchObserver)touchObserver;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _MKUserInteractionGestureRecognizer

- (_MKUserInteractionGestureRecognizerTouchObserver)touchObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_touchObserver);

  return WeakRetained;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v5 = [(NSMutableSet *)self->_activeTouches count];
  [(NSMutableSet *)self->_activeTouches minusSet:v9];
  v6 = [(NSMutableSet *)self->_activeTouches count];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchObserver);
    [WeakRetained gestureRecognizerTouchesCanceled:self];

    [(_MKUserInteractionGestureRecognizer *)self setState:4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v5 = [(NSMutableSet *)self->_activeTouches count];
  [(NSMutableSet *)self->_activeTouches minusSet:v9];
  v6 = [(NSMutableSet *)self->_activeTouches count];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchObserver);
    [WeakRetained gestureRecognizerTouchesEnded:self];

    [(_MKUserInteractionGestureRecognizer *)self setState:3];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v5 = [(NSMutableSet *)self->_activeTouches count];
  activeTouches = self->_activeTouches;
  if (!activeTouches)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = self->_activeTouches;
    self->_activeTouches = v7;

    activeTouches = self->_activeTouches;
  }

  [(NSMutableSet *)activeTouches unionSet:v12];
  v9 = [(NSMutableSet *)self->_activeTouches count];
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchObserver);
    [WeakRetained gestureRecognizerTouchesBegan:self];

    [(_MKUserInteractionGestureRecognizer *)self setState:1];
  }
}

@end