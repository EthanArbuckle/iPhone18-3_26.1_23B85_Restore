@interface TapOffGestureRecognizer
- (TapOffGestureRecognizer)init;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TapOffGestureRecognizer

- (TapOffGestureRecognizer)init
{
  v6.receiver = self;
  v6.super_class = TapOffGestureRecognizer;
  v2 = [(TapOffGestureRecognizer *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    touches = v2->_touches;
    v2->_touches = v3;
  }

  return v2;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  [(NSMutableSet *)self->_touches unionSet:began, event];

  [(TapOffGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(NSMutableSet *)self->_touches minusSet:ended, event];
  if (![(NSMutableSet *)self->_touches count])
  {

    [(TapOffGestureRecognizer *)self setState:3];
  }
}

@end