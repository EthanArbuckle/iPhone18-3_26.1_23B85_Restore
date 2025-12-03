@interface CRLiOSAllTouchesDoneGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (CRLiOSAllTouchesDoneGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)p_touchesEndedOrCancelled:(id)cancelled;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CRLiOSAllTouchesDoneGestureRecognizer

- (CRLiOSAllTouchesDoneGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = CRLiOSAllTouchesDoneGestureRecognizer;
  v4 = [(CRLiOSAllTouchesDoneGestureRecognizer *)&v8 initWithTarget:target action:action];
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
    delegate = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [delegate didStopCountingTouches:self];

    self->_currentlyCountingTouches = 0;
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([recognizerCopy view], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5))
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(NSMutableSet *)self->_touches unionSet:began, event];
  if ([(NSMutableSet *)self->_touches count]&& !self->_currentlyCountingTouches)
  {
    anyObject = [(NSMutableSet *)self->_touches anyObject];
    type = [anyObject type];
    view = [(CRLiOSAllTouchesDoneGestureRecognizer *)self view];
    [anyObject locationInView:view];
    v8 = v7;
    v10 = v9;

    delegate = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [delegate didStartCountingTouches:self touchType:type atSomeTouchPoint:{v8, v10}];

    self->_currentlyCountingTouches = 1;
  }
}

- (void)p_touchesEndedOrCancelled:(id)cancelled
{
  [(NSMutableSet *)self->_touches minusSet:cancelled];
  if (![(NSMutableSet *)self->_touches count]&& ![(CRLiOSAllTouchesDoneGestureRecognizer *)self state])
  {
    [(CRLiOSAllTouchesDoneGestureRecognizer *)self setState:3];
    delegate = [(CRLiOSAllTouchesDoneGestureRecognizer *)self delegate];
    [delegate didStopCountingTouches:self];

    self->_currentlyCountingTouches = 0;
  }
}

@end