@interface BKViewTapGestureRecognizer
- (void)setPressed:(BOOL)pressed;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation BKViewTapGestureRecognizer

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    v7 = v3;
    v8 = v4;
    self->_pressed = pressed;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22F4;
    v5[3] = &unk_147F0;
    v5[4] = self;
    pressedCopy = pressed;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  view = [(BKViewTapGestureRecognizer *)self view];
  [anyObject locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(BKViewTapGestureRecognizer *)self view];
  [view2 bounds];
  v13.x = v8;
  v13.y = v10;
  LOBYTE(view) = CGRectContainsPoint(v14, v13);

  if ((view & 1) == 0)
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];
    [(BKViewTapGestureRecognizer *)self setState:5];
    [(BKViewTapGestureRecognizer *)self setEnabled:0];

    [(BKViewTapGestureRecognizer *)self setEnabled:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(BKViewTapGestureRecognizer *)self pressed:ended])
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];

    [(BKViewTapGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(BKViewTapGestureRecognizer *)self pressed:cancelled])
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];

    [(BKViewTapGestureRecognizer *)self setState:4];
  }
}

@end