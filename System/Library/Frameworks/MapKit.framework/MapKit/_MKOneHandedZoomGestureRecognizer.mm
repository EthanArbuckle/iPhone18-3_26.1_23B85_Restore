@interface _MKOneHandedZoomGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)locationOfTapGesture;
- (_MKOneHandedZoomGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_clearTapTimer;
- (void)_panGestureRecognizerStateDidChange:(id)a3;
- (void)_startTapTimer:(double)a3;
- (void)_tapGestureRecognizerStateDidChange:(id)a3;
- (void)_tooSlow:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reset;
- (void)setAllowedPressTypes:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _MKOneHandedZoomGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v3 reset];
  [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
  self->_locationOfTapGesture = *MEMORY[0x1E695EFF8];
  self->_didReceive1stTap = 0;
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:[(_MKOneHandedZoomGestureRecognizer *)self isEnabled]];
}

- (void)_clearTapTimer
{
  if (self->_timerOn)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__tooSlow_ object:0];
  }

  self->_timerOn = 0;
}

- (void)_tooSlow:(id)a3
{
  [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:0];

  [(_MKOneHandedZoomGestureRecognizer *)self setState:5];
}

- (void)_startTapTimer:(double)a3
{
  [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
  self->_timerOn = 1;
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:1];

  [(_MKOneHandedZoomGestureRecognizer *)self performSelector:sel__tooSlow_ withObject:0 afterDelay:a3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_panGestureRecognizer == a3 && !self->_didReceive1stTap)
  {
    [(_MKOneHandedZoomGestureRecognizer *)self setState:5];
    return 0;
  }

  else
  {
    v4 = [(_MKOneHandedZoomGestureRecognizer *)self delegate];
    v5 = !v4 || (objc_opt_respondsToSelector() & 1) == 0 || [v4 gestureRecognizerShouldBegin:self];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_tapGestureRecognizer == a3 && [a3 state] == 5)
  {
    v5 = [(_MKOneHandedZoomGestureRecognizer *)self isEnabled];
    [(_MKOneHandedZoomGestureRecognizer *)self setEnabled:0];
    [(_MKOneHandedZoomGestureRecognizer *)self setEnabled:v5];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if (self->_tapGestureRecognizer == v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(_MKOneHandedZoomGestureRecognizer *)self delegate];
  v7 = !v6 || (objc_opt_respondsToSelector() & 1) == 0 || [v6 gestureRecognizer:self shouldReceiveTouch:v5];

  return v7;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  if (self->_didReceive1stTap && ![(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer state])
  {
    if ([(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer isEnabled])
    {
      [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
    }
  }
}

- (CGPoint)locationOfTapGesture
{
  x = self->_locationOfTapGesture.x;
  y = self->_locationOfTapGesture.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_panGestureRecognizerStateDidChange:(id)a3
{
  if (self->_didReceive1stTap)
  {
    v5 = [a3 state];

    [(_MKOneHandedZoomGestureRecognizer *)self setState:v5];
  }
}

- (void)_tapGestureRecognizerStateDidChange:(id)a3
{
  v4 = a3;
  didReceive1stTap = self->_didReceive1stTap;
  v12 = v4;
  v6 = [v4 state];
  if (didReceive1stTap)
  {
    if (v6 != 3)
    {
      goto LABEL_7;
    }

    v7 = self;
    v8 = 5;
    goto LABEL_6;
  }

  if ((v6 - 4) < 2)
  {
    v8 = [v12 state];
    v7 = self;
LABEL_6:
    [(_MKOneHandedZoomGestureRecognizer *)v7 setState:v8];
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    self->_didReceive1stTap = 1;
    v9 = [v12 view];
    [v12 locationInView:v9];
    self->_locationOfTapGesture.x = v10;
    self->_locationOfTapGesture.y = v11;

    [(_MKOneHandedZoomGestureRecognizer *)self _startTapTimer:0.5];
  }

LABEL_7:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (MKOneHandedZoomTapGestureRecognizerStateObserverContext == a6)
  {
    if ([(UITapGestureRecognizer *)self->_tapGestureRecognizer state]== 5)
    {
      [(_MKOneHandedZoomGestureRecognizer *)self _tapGestureRecognizerStateDidChange:self->_tapGestureRecognizer];
    }
  }

  else if (MKOneHandedZoomPanGestureRecognizerStateObserverContext == a6)
  {
    if ([(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer state]== 5)
    {
      [(_MKOneHandedZoomGestureRecognizer *)self _panGestureRecognizerStateDidChange:self->_panGestureRecognizer];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _MKOneHandedZoomGestureRecognizer;
    [(_MKOneHandedZoomGestureRecognizer *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_configuration, a3);
    [(MKZoomingGestureControlConfiguration *)v6 zoomDraggingResistance];
    [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setZoomDraggingResistance:?];
    v5 = v6;
  }
}

- (void)setAllowedPressTypes:(id)a3
{
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  v4 = a3;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 setAllowedPressTypes:v4];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setAllowedPressTypes:v4, v5.receiver, v5.super_class];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 setEnabled:?];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:v3];
}

- (void)dealloc
{
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeObserver:self forKeyPath:@"state" context:MKOneHandedZoomTapGestureRecognizerStateObserverContext];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer removeObserver:self forKeyPath:@"state" context:MKOneHandedZoomPanGestureRecognizerStateObserverContext];
  v3.receiver = self;
  v3.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v3 dealloc];
}

- (_MKOneHandedZoomGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v15.receiver = self;
  v15.super_class = _MKOneHandedZoomGestureRecognizer;
  v4 = [(_MKOneHandedZoomGestureRecognizer *)&v15 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_MKOneHandedZoomGestureRecognizer *)v4 setDelaysTouchesEnded:0];
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__tapGestureRecognizerStateDidChange_];
    tapGestureRecognizer = v5->_tapGestureRecognizer;
    v5->_tapGestureRecognizer = v6;

    [(UITapGestureRecognizer *)v5->_tapGestureRecognizer setDelegate:v5];
    [(UITapGestureRecognizer *)v5->_tapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v5->_tapGestureRecognizer addObserver:v5 forKeyPath:@"state" options:0 context:MKOneHandedZoomTapGestureRecognizerStateObserverContext];
    v8 = [[_MKZoomingPanGestureRecognizer alloc] initWithTarget:v5 action:sel__panGestureRecognizerStateDidChange_];
    panGestureRecognizer = v5->_panGestureRecognizer;
    v5->_panGestureRecognizer = v8;

    v10 = +[MKSystemController sharedInstance];
    v11 = [v10 supportsExtendedGestures];

    if (v11)
    {
      [(_MKZoomingPanGestureRecognizer *)v5->_panGestureRecognizer setMaximumNumberOfTouches:[(_MKZoomingPanGestureRecognizer *)v5->_panGestureRecognizer minimumNumberOfTouches]];
    }

    [(_MKZoomingPanGestureRecognizer *)v5->_panGestureRecognizer setDelegate:v5];
    [(_MKZoomingPanGestureRecognizer *)v5->_panGestureRecognizer addObserver:v5 forKeyPath:@"state" options:0 context:MKOneHandedZoomPanGestureRecognizerStateObserverContext];
    v12 = +[_MKZoomingGestureControlConfiguration defaultConfiguration];
    configuration = v5->_configuration;
    v5->_configuration = v12;

    [(MKZoomingGestureControlConfiguration *)v5->_configuration zoomDraggingResistance];
    [(_MKZoomingPanGestureRecognizer *)v5->_panGestureRecognizer setZoomDraggingResistance:?];
    [(_MKOneHandedZoomGestureRecognizer *)v5 reset];
  }

  return v5;
}

@end