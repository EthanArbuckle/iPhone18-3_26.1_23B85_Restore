@interface AVScrubbingGesturePlatformAdapter_iOS
- (AVScrubbingGesturePlatformAdapter_iOS)initWithView:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)translation;
- (void)_panGestureAction:(id)a3;
- (void)_scrubGestureDidBegin;
- (void)_scrubGestureDidEnd;
- (void)_touchGestureAction:(id)a3;
- (void)_updateGestureState;
- (void)setGestureEnabled:(BOOL)a3;
- (void)setScrubbingWidth:(double)a3;
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

- (void)_touchGestureAction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(AVTouchGestureRecognizer *)self->_touchGestureRecognizer state];
  v5 = v4;
  if (v4 > 2)
  {
    if ((v4 - 3) < 2)
    {
      v6 = self->_gestureActiveCount - 1;
      self->_gestureActiveCount = v6;
      if (!v6)
      {

        [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidEnd];
      }

      return;
    }

    if (v4 == 5)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
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
  if (a1)
  {
    v2 = *(a1 + 64);
    if (!v2)
    {
      v3 = [a1 delegate];
      if (objc_opt_respondsToSelector())
      {
        v4 = [a1 delegate];
        v5 = [v4 configurationForScrubbingGesturePlatformAdapter:a1];
        v6 = *(a1 + 64);
        *(a1 + 64) = v5;
      }

      v2 = *(a1 + 64);
      if (!v2)
      {
        v7 = +[AVScrubbingGesturePlatformConfiguration defaultConfiguration];
        v8 = *(a1 + 64);
        *(a1 + 64) = v7;

        v2 = *(a1 + 64);
      }
    }

    [v2 nonLinearity];
    v10 = v9;
    v11 = __exp10(v9);
    v12 = pow(20000.0, v10);
    v13 = 19990.0 / (v12 - v11);
    *(a1 + 72) = (v13 * v11) + -10.0;
    *(a1 + 76) = v13;
    v14 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 scrubbingGesturePlatformAdapterDidBeginScrubbing:a1];
    }
  }
}

- (void)_scrubGestureDidEnd
{
  if (a1)
  {
    *(a1 + 96) = *MEMORY[0x1E695EFF8];
    *(a1 + 48) = 0;
    v2 = *(a1 + 64);
    *(a1 + 64) = 0;

    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
    v3 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 scrubbingGesturePlatformAdapterDidEndScrubbing:a1];
    }
  }
}

- (void)_panGestureAction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(AVScrubbingPanGestureRecognizer *)self->_panGestureRecognizer state];
  v5 = v4;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      gestureActiveCount = self->_gestureActiveCount;
      self->_gestureActiveCount = gestureActiveCount + 1;
      if (!gestureActiveCount)
      {
        [(AVScrubbingGesturePlatformAdapter_iOS *)self _scrubGestureDidBegin];
      }
    }

    else if (v4 != 2)
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
    if (v4 != 3 && v4 != 4)
    {
      if (v4 == 5)
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
  if (a1)
  {
    [*(a1 + 32) velocity];
    v3 = v2;
    [*(a1 + 64) nonLinearity];
    v5 = *(a1 + 76);
    if (v3 < 0.0)
    {
      v5 = -v5;
    }

    v6 = -(*(a1 + 72) - v5 * pow(fabs(v3), v4));
    v7 = *(a1 + 80);
    [*(a1 + 64) magnitude];
    v9 = v6 * (v7 * v8);
    [*(a1 + 32) translation];
    v12 = v11;
    v13 = v10;
    if (v11 == 0.0 && v10 == 0.0 || (UIPointIsDiscrete() & 1) == 0)
    {
      v14 = *(a1 + 40);
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      [v14 locationInView:WeakRetained];
      v12 = v16;
      v13 = v17;
    }

    v18 = *(a1 + 88);
    v19 = objc_loadWeakRetained((a1 + 24));
    [v19 frame];
    v21 = v20;

    *(a1 + 96) = v12 / v18;
    *(a1 + 104) = v13 / v21;
    *(a1 + 48) = v9;
    v22 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v22 scrubbingGesturePlatformAdapterDidContinueScrubbing:a1];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = v6;
  touchGestureRecognizer = self->_touchGestureRecognizer;
  if (touchGestureRecognizer == a3)
  {
    v11 = [(AVScrubbingGesturePlatformAdapter *)self delegate];
    v12 = [v11 scrubbingGesturePlatformAdapterIsActivelyScrubbing:self];

    objc_opt_class();
    v10 = (self->_panGestureRecognizer == v7) | objc_opt_isKindOfClass() & v12;
  }

  else
  {
    v10 = touchGestureRecognizer == v6 && self->_panGestureRecognizer == a3;
  }

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  if (self->_touchGestureRecognizer == a3)
  {
    v5 = self;
    v6 = a4;
    v7 = [(AVScrubbingGesturePlatformAdapter *)v5 delegate];
    LOBYTE(v5) = [v7 scrubbingGesturePlatformAdapterIsActivelyScrubbing:v5];

    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();

    v4 = v7 & (v5 ^ 1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_touchGestureRecognizer != v6 && self->_panGestureRecognizer == v6)
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_touchGestureRecognizer == a3)
  {
    v5 = [a4 view];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_touchGestureRecognizer != a3)
  {
    return 1;
  }

  v4 = self;
  v5 = [(AVScrubbingGesturePlatformAdapter *)self delegate];
  LOBYTE(v4) = [v5 scrubbingGesturePlatformAdapterIsActivelyScrubbing:v4];

  return v4;
}

- (void)setScrubbingWidth:(double)a3
{
  if (self->_scrubbingWidth != a3)
  {
    self->_scrubbingWidth = a3;
  }
}

- (void)setGestureEnabled:(BOOL)a3
{
  if (self->_gestureEnabled != a3)
  {
    self->_gestureEnabled = a3;
    v5 = [(AVScrubbingGesturePlatformAdapter_iOS *)self gestureEnabled];
    [(AVScrubbingPanGestureRecognizer *)self->_panGestureRecognizer setEnabled:v5];
    touchGestureRecognizer = self->_touchGestureRecognizer;

    [(AVTouchGestureRecognizer *)touchGestureRecognizer setEnabled:v5];
  }
}

- (AVScrubbingGesturePlatformAdapter_iOS)initWithView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AVScrubbingGesturePlatformAdapter_iOS;
  v5 = [(AVScrubbingGesturePlatformAdapter *)&v16 _abstractInit];

  if (v5)
  {
    v6 = [[AVScrubbingPanGestureRecognizer alloc] initWithTarget:v5 action:sel__panGestureAction_];
    [(AVScrubbingPanGestureRecognizer *)v6 setEnabled:0];
    [(AVScrubbingPanGestureRecognizer *)v6 setDelegate:v5];
    [(AVScrubbingPanGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFF130A0];
    [(AVScrubbingPanGestureRecognizer *)v6 _setRequiresSystemGesturesToFail:1];
    [v4 addGestureRecognizer:v6];
    v7 = [[AVTouchGestureRecognizer alloc] initWithTarget:v5 action:sel__touchGestureAction_];
    [(AVTouchGestureRecognizer *)v7 setEnabled:0];
    [(AVTouchGestureRecognizer *)v7 setDelegate:v5];
    [(AVTouchGestureRecognizer *)v7 setAllowedTouchTypes:&unk_1EFF130B8];
    [v4 addGestureRecognizer:v7];
    objc_storeWeak(&v5->_view, v4);
    panGestureRecognizer = v5->_panGestureRecognizer;
    v5->_panGestureRecognizer = v6;
    v9 = v6;

    touchGestureRecognizer = v5->_touchGestureRecognizer;
    v5->_touchGestureRecognizer = v7;
    v11 = v7;

    v12 = [MEMORY[0x1E69DC938] currentDevice];

    v13 = [v12 userInterfaceIdiom];
    v14 = 0.125;
    if (!v13)
    {
      v14 = 0.25;
    }

    v5->_deviceCoordinateVelocityScaleFactor = v14;
  }

  return v5;
}

@end