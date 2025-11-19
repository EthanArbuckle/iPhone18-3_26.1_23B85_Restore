@interface CRLiOSAllTouchesDoneGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (CRLiOSAllTouchesDoneGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)p_touchesEndedOrCancelled:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSAllTouchesDoneGestureRecognizer

- (CRLiOSAllTouchesDoneGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = CRLiOSAllTouchesDoneGestureRecognizer;
  v4 = [(CRLiOSAllTouchesDoneGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    touches = v4->_touches;
    v4->_touches = v5;

    [(CRLiOSAllTouchesDoneGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(CRLiOSAllTouchesDoneGestureRecognizer *)v4 setDelaysTouchesEnded:0];
  }

  return v4;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CRLiOSAllTouchesDoneGestureRecognizer;
  [(CRLiOSAllTouchesDoneGestureRecognizer *)&v4 reset];
  [(NSMutableSet *)self->_touches removeAllObjects];
  if (self->_currentlyCountingTouches)
  {
    v3 = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [v3 didStopCountingTouches:self];

    self->_currentlyCountingTouches = 0;
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 view], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(NSMutableSet *)self->_touches unionSet:a3, a4];
  if ([(NSMutableSet *)self->_touches count]&& !self->_currentlyCountingTouches)
  {
    v12 = [(NSMutableSet *)self->_touches anyObject];
    v5 = [v12 type];
    v6 = [(CRLiOSAllTouchesDoneGestureRecognizer *)self view];
    [v12 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [v11 didStartCountingTouches:self touchType:v5 atSomeTouchPoint:{v8, v10}];

    self->_currentlyCountingTouches = 1;
  }
}

- (void)p_touchesEndedOrCancelled:(id)a3
{
  [(NSMutableSet *)self->_touches minusSet:a3];
  if (![(NSMutableSet *)self->_touches count]&& ![(CRLiOSAllTouchesDoneGestureRecognizer *)self state])
  {
    [(CRLiOSAllTouchesDoneGestureRecognizer *)self setState:3];
    v4 = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [v4 didStopCountingTouches:self];

    self->_currentlyCountingTouches = 0;
  }
}

@end