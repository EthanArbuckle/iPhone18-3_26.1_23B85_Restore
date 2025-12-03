@interface AVScrubbingGesturePlatformAdapter_iOS
- (AVScrubbingGesturePlatformAdapter_iOS)initWithView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)translation;
- (void)_panGestureAction:(id)action;
- (void)_scrubGestureDidBegin;
- (void)_scrubGestureDidEnd;
- (void)_touchGestureAction:(id)action;
- (void)_updateGestureState;
- (void)setGestureEnabled:(BOOL)enabled;
- (void)setScrubbingWidth:(double)width;
@end

@implementation AVScrubbingGesturePlatformAdapter_iOS

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_touchGestureAction:(id)action
{
  v11 = *MEMORY[0x1E69E9840];
  state = [(AVTouchGestureRecognizer *)self->_touchGestureRecognizer state];
  v5 = state;
  if (state > 2)
  {
    if ((state - 3) < 2)
    {
      v6 = self->_gestureActiveCount - 1;
      self->_gestureActiveCount = v6;
      if (!v6)
      {

        [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidEnd];
      }

      return;
    }

    if (state == 5)
    {
      return;
    }

    goto LABEL_11;
  }

  if (state != 1)
  {
    if (state == 2)
    {
      return;
    }

LABEL_11:
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = v5;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: Found invalid touch gesture state %ld", &v9, 0xCu);
    }

    return;
  }

  gestureActiveCount = self->_gestureActiveCount;
  self->_gestureActiveCount = gestureActiveCount + 1;
  if (!gestureActiveCount)
  {

    [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidBegin];
  }
}

- (void)_scrubGestureDidBegin
{
  if (self)
  {
    v2 = *(self + 64);
    if (!v2)
    {
      delegate = [self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate2 = [self delegate];
        v5 = [delegate2 configurationForScrubbingGesturePlatformAdapter:self];
        v6 = *(self + 64);
        *(self + 64) = v5;
      }

      v2 = *(self + 64);
      if (!v2)
      {
        v7 = +[AVScrubbingGesturePlatformConfiguration defaultConfiguration];
        v8 = *(self + 64);
        *(self + 64) = v7;

        v2 = *(self + 64);
      }
    }

    [v2 nonLinearity];
    v10 = v9;
    v11 = __exp10(v9);
    v12 = pow(20000.0, v10);
    v13 = 19990.0 / (v12 - v11);
    *(self + 72) = (v13 * v11) + -10.0;
    *(self + 76) = v13;
    delegate3 = [self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate3 scrubbingGesturePlatformAdapterDidBeginScrubbing:self];
    }
  }
}

- (void)_scrubGestureDidEnd
{
  if (self)
  {
    *(self + 96) = *MEMORY[0x1E695EFF8];
    *(self + 48) = 0;
    v2 = *(self + 64);
    *(self + 64) = 0;

    *(self + 76) = 0;
    *(self + 72) = 0;
    delegate = [self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scrubbingGesturePlatformAdapterDidEndScrubbing:self];
    }
  }
}

- (void)_panGestureAction:(id)action
{
  v11 = *MEMORY[0x1E69E9840];
  state = [(AVScrubbingPanGestureRecognizer *)self->_panGestureRecognizer state];
  v5 = state;
  if (state <= 2)
  {
    if (state == 1)
    {
      gestureActiveCount = self->_gestureActiveCount;
      self->_gestureActiveCount = gestureActiveCount + 1;
      if (!gestureActiveCount)
      {
        [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidBegin];
      }
    }

    else if (state != 2)
    {
LABEL_8:
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v5;
        _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Unrecognized pan gesture state %ld", &v9, 0xCu);
      }

      return;
    }

    [(AVScrubbingGesturePlatformAdapter_iOS *)self _updateGestureState];
  }

  else
  {
    if (state != 3 && state != 4)
    {
      if (state == 5)
      {
        return;
      }

      goto LABEL_8;
    }

    v7 = self->_gestureActiveCount - 1;
    self->_gestureActiveCount = v7;
    if (!v7)
    {

      [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidEnd];
    }
  }
}

- (void)_updateGestureState
{
  if (self)
  {
    [*(self + 32) velocity];
    v3 = v2;
    [*(self + 64) nonLinearity];
    v5 = *(self + 76);
    if (v3 < 0.0)
    {
      v5 = -v5;
    }

    v6 = -(*(self + 72) - v5 * pow(fabs(v3), v4));
    v7 = *(self + 80);
    [*(self + 64) magnitude];
    v9 = v6 * (v7 * v8);
    [*(self + 32) translation];
    v12 = v11;
    v13 = v10;
    if (v11 == 0.0 && v10 == 0.0 || (UIPointIsDiscrete() & 1) == 0)
    {
      v14 = *(self + 40);
      WeakRetained = objc_loadWeakRetained((self + 24));
      [v14 locationInView:WeakRetained];
      v12 = v16;
      v13 = v17;
    }

    v18 = *(self + 88);
    v19 = objc_loadWeakRetained((self + 24));
    [v19 frame];
    v21 = v20;

    *(self + 96) = v12 / v18;
    *(self + 104) = v13 / v21;
    *(self + 48) = v9;
    delegate = [self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scrubbingGesturePlatformAdapterDidContinueScrubbing:self];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = gestureRecognizerCopy;
  touchGestureRecognizer = self->_touchGestureRecognizer;
  if (touchGestureRecognizer == recognizer)
  {
    delegate = [(AVScrubbingGesturePlatformAdapter *)self delegate];
    v12 = [delegate scrubbingGesturePlatformAdapterIsActivelyScrubbing:self];

    objc_opt_class();
    v10 = (self->_panGestureRecognizer == v7) | objc_opt_isKindOfClass() & v12;
  }

  else
  {
    v10 = touchGestureRecognizer == gestureRecognizerCopy && self->_panGestureRecognizer == recognizer;
  }

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  if (self->_touchGestureRecognizer == recognizer)
  {
    selfCopy = self;
    gestureRecognizerCopy = gestureRecognizer;
    delegate = [(AVScrubbingGesturePlatformAdapter *)selfCopy delegate];
    LOBYTE(selfCopy) = [delegate scrubbingGesturePlatformAdapterIsActivelyScrubbing:selfCopy];

    objc_opt_class();
    LOBYTE(delegate) = objc_opt_isKindOfClass();

    v4 = delegate & (selfCopy ^ 1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_touchGestureRecognizer != recognizerCopy && self->_panGestureRecognizer == recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_touchGestureRecognizer == recognizer)
  {
    view = [touch view];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_touchGestureRecognizer != begin)
  {
    return 1;
  }

  selfCopy = self;
  delegate = [(AVScrubbingGesturePlatformAdapter *)self delegate];
  LOBYTE(selfCopy) = [delegate scrubbingGesturePlatformAdapterIsActivelyScrubbing:selfCopy];

  return selfCopy;
}

- (void)setScrubbingWidth:(double)width
{
  if (self->_scrubbingWidth != width)
  {
    self->_scrubbingWidth = width;
  }
}

- (void)setGestureEnabled:(BOOL)enabled
{
  if (self->_gestureEnabled != enabled)
  {
    self->_gestureEnabled = enabled;
    gestureEnabled = [(AVScrubbingGesturePlatformAdapter_iOS *)self gestureEnabled];
    [(AVScrubbingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:gestureEnabled];
    touchGestureRecognizer = self->_touchGestureRecognizer;

    [(AVTouchGestureRecognizer *)touchGestureRecognizer setEnabled:gestureEnabled];
  }
}

- (AVScrubbingGesturePlatformAdapter_iOS)initWithView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = AVScrubbingGesturePlatformAdapter_iOS;
  _abstractInit = [(AVScrubbingGesturePlatformAdapter *)&v16 _abstractInit];

  if (_abstractInit)
  {
    v6 = [[AVScrubbingPanGestureRecognizer alloc] initWithTarget:_abstractInit action:sel__panGestureAction_];
    [(AVScrubbingPanGestureRecognizer *)v6 setEnabled:0];
    [(AVScrubbingPanGestureRecognizer *)v6 setDelegate:_abstractInit];
    [(AVScrubbingPanGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFF130A0];
    [(AVScrubbingPanGestureRecognizer *)v6 _setRequiresSystemGesturesToFail:1];
    [viewCopy addGestureRecognizer:v6];
    v7 = [[AVTouchGestureRecognizer alloc] initWithTarget:_abstractInit action:sel__touchGestureAction_];
    [(AVTouchGestureRecognizer *)v7 setEnabled:0];
    [(AVTouchGestureRecognizer *)v7 setDelegate:_abstractInit];
    [(AVTouchGestureRecognizer *)v7 setAllowedTouchTypes:&unk_1EFF130B8];
    [viewCopy addGestureRecognizer:v7];
    objc_storeWeak(&_abstractInit->_view, viewCopy);
    panGestureRecognizer = _abstractInit->_panGestureRecognizer;
    _abstractInit->_panGestureRecognizer = v6;
    v9 = v6;

    touchGestureRecognizer = _abstractInit->_touchGestureRecognizer;
    _abstractInit->_touchGestureRecognizer = v7;
    v11 = v7;

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];

    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v14 = 0.125;
    if (!userInterfaceIdiom)
    {
      v14 = 0.25;
    }

    _abstractInit->_deviceCoordinateVelocityScaleFactor = v14;
  }

  return _abstractInit;
}

@end