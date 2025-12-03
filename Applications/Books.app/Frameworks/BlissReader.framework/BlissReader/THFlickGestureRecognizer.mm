@interface THFlickGestureRecognizer
- (CGPoint)initialLocationInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (THFlickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)p_invalidateTimer;
- (void)p_killTimerFired:(id)fired;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation THFlickGestureRecognizer

- (THFlickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = THFlickGestureRecognizer;
  return [(THFlickGestureRecognizer *)&v5 initWithTarget:target action:action];
}

- (void)dealloc
{
  [(THFlickGestureRecognizer *)self p_invalidateTimer];
  v3.receiver = self;
  v3.super_class = THFlickGestureRecognizer;
  [(THFlickGestureRecognizer *)&v3 dealloc];
}

- (CGPoint)initialLocationInView:(id)view
{
  x = self->_startLocation.x;
  y = self->_startLocation.y;
  v6 = [-[THFlickGestureRecognizer view](self "view")];

  [view convertPoint:v6 fromView:{x, y}];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  [view convertPoint:objc_msgSend(-[THFlickGestureRecognizer view](self fromView:{"view"), "window"), self->_startLocation.x, self->_startLocation.y}];
  [view convertPoint:objc_msgSend(-[THFlickGestureRecognizer view](self fromView:{"view"), "window"), self->_endLocation.x, self->_endLocation.y}];

  TSDSubtractPoints();
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([began count] < 2 || -[THFlickGestureRecognizer state](self, "state"))
  {
    [objc_msgSend(began "anyObject")];
    self->_startLocation.x = v6;
    self->_startLocation.y = v7;
    +[NSDate timeIntervalSinceReferenceDate];
    self->_startInterval = v8;
    self->_endLocation = self->_startLocation;
    self->_endInterval = self->_startInterval;
    self->_killTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"p_killTimerFired:" selector:0 userInfo:0 repeats:0.15];
  }

  else
  {

    [(THFlickGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  [objc_msgSend(moved "anyObject")];
  self->_endLocation.x = v5;
  self->_endLocation.y = v6;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_endInterval = v7;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(THFlickGestureRecognizer *)self p_invalidateTimer:ended];
  if (![(THFlickGestureRecognizer *)self state])
  {
    [(THFlickGestureRecognizer *)self translationInView:[(THFlickGestureRecognizer *)self view]];
    TSDPointLength();
    if (v5 <= 25.0)
    {
      v6 = 5;
    }

    else
    {
      v6 = 3;
    }

    [(THFlickGestureRecognizer *)self setState:v6];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (![(THFlickGestureRecognizer *)self state:cancelled])
  {

    [(THFlickGestureRecognizer *)self setState:4];
  }
}

- (void)p_invalidateTimer
{
  [(NSTimer *)self->_killTimer invalidate];

  self->_killTimer = 0;
}

- (void)p_killTimerFired:(id)fired
{
  if (![(THFlickGestureRecognizer *)self state])
  {
    [(THFlickGestureRecognizer *)self setState:5];

    [(THFlickGestureRecognizer *)self p_invalidateTimer];
  }
}

@end