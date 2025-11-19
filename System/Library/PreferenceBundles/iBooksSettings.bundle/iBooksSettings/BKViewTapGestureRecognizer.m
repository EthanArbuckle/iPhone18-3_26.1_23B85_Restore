@interface BKViewTapGestureRecognizer
- (void)setPressed:(BOOL)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation BKViewTapGestureRecognizer

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_pressed = a3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22F4;
    v5[3] = &unk_147F0;
    v5[4] = self;
    v6 = a3;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  v6 = [(BKViewTapGestureRecognizer *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(BKViewTapGestureRecognizer *)self view];
  [v11 bounds];
  v13.x = v8;
  v13.y = v10;
  LOBYTE(v6) = CGRectContainsPoint(v14, v13);

  if ((v6 & 1) == 0)
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];
    [(BKViewTapGestureRecognizer *)self setState:5];
    [(BKViewTapGestureRecognizer *)self setEnabled:0];

    [(BKViewTapGestureRecognizer *)self setEnabled:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(BKViewTapGestureRecognizer *)self pressed:a3])
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];

    [(BKViewTapGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(BKViewTapGestureRecognizer *)self pressed:a3])
  {
    [(BKViewTapGestureRecognizer *)self setPressed:0];

    [(BKViewTapGestureRecognizer *)self setState:4];
  }
}

@end