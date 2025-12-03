@interface _MKOneHandedZoomGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)locationOfTapGesture;
- (_MKOneHandedZoomGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_clearTapTimer;
- (void)_panGestureRecognizerStateDidChange:(id)change;
- (void)_startTapTimer:(double)timer;
- (void)_tapGestureRecognizerStateDidChange:(id)change;
- (void)_tooSlow:(id)slow;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reset;
- (void)setAllowedPressTypes:(id)types;
- (void)setConfiguration:(id)configuration;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
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

- (void)_tooSlow:(id)slow
{
  [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:0];

  [(_MKOneHandedZoomGestureRecognizer *)self setState:5];
}

- (void)_startTapTimer:(double)timer
{
  [(_MKOneHandedZoomGestureRecognizer *)self _clearTapTimer];
  self->_timerOn = 1;
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:1];

  [(_MKOneHandedZoomGestureRecognizer *)self performSelector:sel__tooSlow_ withObject:0 afterDelay:timer];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_panGestureRecognizer == begin && !self->_didReceive1stTap)
  {
    [(_MKOneHandedZoomGestureRecognizer *)self setState:5];
    return 0;
  }

  else
  {
    delegate = [(_MKOneHandedZoomGestureRecognizer *)self delegate];
    v5 = !delegate || (objc_opt_respondsToSelector() & 1) == 0 || [delegate gestureRecognizerShouldBegin:self];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_tapGestureRecognizer == recognizer && [recognizer state] == 5)
  {
    isEnabled = [(_MKOneHandedZoomGestureRecognizer *)self isEnabled];
    [(_MKOneHandedZoomGestureRecognizer *)self setEnabled:0];
    [(_MKOneHandedZoomGestureRecognizer *)self setEnabled:isEnabled];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = 0;
  if (self->_tapGestureRecognizer == recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  delegate = [(_MKOneHandedZoomGestureRecognizer *)self delegate];
  v7 = !delegate || (objc_opt_respondsToSelector() & 1) == 0 || [delegate gestureRecognizer:self shouldReceiveTouch:touchCopy];

  return v7;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
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

- (void)_panGestureRecognizerStateDidChange:(id)change
{
  if (self->_didReceive1stTap)
  {
    state = [change state];

    [(_MKOneHandedZoomGestureRecognizer *)self setState:state];
  }
}

- (void)_tapGestureRecognizerStateDidChange:(id)change
{
  changeCopy = change;
  didReceive1stTap = self->_didReceive1stTap;
  v12 = changeCopy;
  state = [changeCopy state];
  if (didReceive1stTap)
  {
    if (state != 3)
    {
      goto LABEL_7;
    }

    selfCopy2 = self;
    state2 = 5;
    goto LABEL_6;
  }

  if ((state - 4) < 2)
  {
    state2 = [v12 state];
    selfCopy2 = self;
LABEL_6:
    [(_MKOneHandedZoomGestureRecognizer *)selfCopy2 setState:state2];
    goto LABEL_7;
  }

  if (state == 3)
  {
    self->_didReceive1stTap = 1;
    view = [v12 view];
    [v12 locationInView:view];
    self->_locationOfTapGesture.x = v10;
    self->_locationOfTapGesture.y = v11;

    [(_MKOneHandedZoomGestureRecognizer *)self _startTapTimer:0.5];
  }

LABEL_7:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (MKOneHandedZoomTapGestureRecognizerStateObserverContext == context)
  {
    if ([(UITapGestureRecognizer *)self->_tapGestureRecognizer state]== 5)
    {
      [(_MKOneHandedZoomGestureRecognizer *)self _tapGestureRecognizerStateDidChange:self->_tapGestureRecognizer];
    }
  }

  else if (MKOneHandedZoomPanGestureRecognizerStateObserverContext == context)
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
    [(_MKOneHandedZoomGestureRecognizer *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    [(MKZoomingGestureControlConfiguration *)v6 zoomDraggingResistance];
    [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setZoomDraggingResistance:?];
    configurationCopy = v6;
  }
}

- (void)setAllowedPressTypes:(id)types
{
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  typesCopy = types;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 setAllowedPressTypes:typesCopy];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer setAllowedPressTypes:typesCopy, v5.receiver, v5.super_class];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v5 setEnabled:?];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:enabledCopy];
}

- (void)dealloc
{
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeObserver:self forKeyPath:@"state" context:MKOneHandedZoomTapGestureRecognizerStateObserverContext];
  [(_MKZoomingPanGestureRecognizer *)self->_panGestureRecognizer removeObserver:self forKeyPath:@"state" context:MKOneHandedZoomPanGestureRecognizerStateObserverContext];
  v3.receiver = self;
  v3.super_class = _MKOneHandedZoomGestureRecognizer;
  [(_MKOneHandedZoomGestureRecognizer *)&v3 dealloc];
}

- (_MKOneHandedZoomGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v15.receiver = self;
  v15.super_class = _MKOneHandedZoomGestureRecognizer;
  v4 = [(_MKOneHandedZoomGestureRecognizer *)&v15 initWithTarget:target action:action];
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
    supportsExtendedGestures = [v10 supportsExtendedGestures];

    if (supportsExtendedGestures)
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