@interface _MKUserTrackingButtonController
- (BOOL)_shouldAnimateFromState:(int64_t)state toState:(int64_t)toState;
- (MKUserTrackingView)userTrackingView;
- (_MKUserTrackingButtonController)initWithTarget:(id)target userTrackingView:(id)view imageView:(id)imageView button:(id)button;
- (double)_symbolPointSize;
- (id)_activityIndicatorView;
- (id)_contentAnimation;
- (id)_expandAnimation;
- (id)_imageForState:(int64_t)state controlState:(unint64_t)controlState;
- (id)_shrinkAnimation;
- (void)_authorizationStatusChanged:(id)changed;
- (void)_goToNextMode:(id)mode;
- (void)_reloadState;
- (void)_updateLoading;
- (void)_updatePreferredSymbolConfiguration;
- (void)_updateState;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)setControlSize:(unint64_t)size;
- (void)setState:(int64_t)state;
- (void)setUserTrackingView:(id)view;
@end

@implementation _MKUserTrackingButtonController

- (void)_updatePreferredSymbolConfiguration
{
  v3 = +[MKSystemController sharedInstance];
  isGlassEnabled = [v3 isGlassEnabled];

  v5 = MEMORY[0x1E69DCAD8];
  WeakRetained = objc_loadWeakRetained(&self->_button);
  inMiniBar = [WeakRetained inMiniBar];
  v8 = 15.0;
  if ((inMiniBar & 1) == 0)
  {
    [(_MKUserTrackingButtonController *)self _symbolPointSize];
  }

  if (isGlassEnabled)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  v14 = [v5 configurationWithPointSize:v9 weight:v8];

  v10 = objc_loadWeakRetained(&self->_button);
  [v10 setPreferredSymbolConfiguration:v14 forImageInState:0];

  v11 = objc_loadWeakRetained(&self->_button);
  [v11 setPreferredSymbolConfiguration:v14 forImageInState:1];

  v12 = objc_loadWeakRetained(&self->_button);
  [v12 setPreferredSymbolConfiguration:v14 forImageInState:2];

  v13 = objc_loadWeakRetained(&self->_button);
  [v13 setPreferredSymbolConfiguration:v14 forImageInState:4];
}

- (double)_symbolPointSize
{
  v3 = _MKLinkedOnOrAfterReleaseSet(3081);
  result = 22.0;
  if (v3)
  {
    controlSize = self->_controlSize;
    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    v7 = 14;
    if (controlSize == 2)
    {
      v7 = 16;
    }

    v8 = 18;
    if (controlSize == 2)
    {
      v8 = 22;
    }

    if (!IsMacCatalyst)
    {
      return v8;
    }

    return v7;
  }

  return result;
}

- (void)_updateState
{
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);
  userTrackingMode = [WeakRetained userTrackingMode];

  v5 = 2;
  if (userTrackingMode != 1)
  {
    v5 = 0;
  }

  v6 = userTrackingMode != 2 && userTrackingMode != 1;
  if (userTrackingMode == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_loadWeakRetained(&self->_userTrackingView);
  hasUserLocation = [v8 hasUserLocation];

  if (hasUserLocation)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [(_MKUserTrackingButtonController *)self setState:v11];
}

- (void)_reloadState
{
  [(_MKUserTrackingButtonController *)self _updatePreferredSymbolConfiguration];
  v11 = [(_MKUserTrackingButtonController *)self _imageForState:self->_state controlState:0];
  [(UIImageView *)self->_imageView setImage:v11];
  WeakRetained = objc_loadWeakRetained(&self->_button);
  [WeakRetained setImage:v11 forState:0];

  v4 = objc_loadWeakRetained(&self->_button);
  v5 = [(_MKUserTrackingButtonController *)self _imageForState:self->_state controlState:1];
  [v4 setImage:v5 forState:1];

  v6 = objc_loadWeakRetained(&self->_button);
  v7 = [(_MKUserTrackingButtonController *)self _imageForState:self->_state controlState:2];
  [v6 setImage:v7 forState:2];

  v8 = objc_loadWeakRetained(&self->_button);
  v9 = [(_MKUserTrackingButtonController *)self _imageForState:self->_state controlState:4];
  [v8 setImage:v9 forState:4];

  v10 = objc_loadWeakRetained(&self->_target);
  [v10 _repositionViews];
}

- (void)_updateLoading
{
  if (self->_state == 1)
  {
    _activityIndicatorView = [(_MKUserTrackingButtonController *)self _activityIndicatorView];
    WeakRetained = objc_loadWeakRetained(&self->_target);
    -[UIActivityIndicatorView setActivityIndicatorViewStyle:](_activityIndicatorView, "setActivityIndicatorViewStyle:", [WeakRetained _activityIndicatorStyle]);

    v4 = objc_loadWeakRetained(&self->_button);
    [v4 addSubview:_activityIndicatorView];

    superview = [(UIActivityIndicatorView *)_activityIndicatorView superview];
    [superview setClipsToBounds:0];

    [(UIActivityIndicatorView *)_activityIndicatorView startAnimating];
    v6 = objc_loadWeakRetained(&self->_button);
    [v6 bounds];
    MidX = CGRectGetMidX(v13);
    v8 = objc_loadWeakRetained(&self->_button);
    [v8 bounds];
    [(UIActivityIndicatorView *)_activityIndicatorView setCenter:MidX, CGRectGetMidY(v14)];

    v9 = objc_loadWeakRetained(&self->_button);
    [v9 layoutIfNeeded];

    activityIndicatorView = _activityIndicatorView;
  }

  else
  {
    [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
    [(UIActivityIndicatorView *)self->_activityIndicatorView removeFromSuperview];
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = 0;
  }
}

- (id)_shrinkAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  LODWORD(v3) = 1.0;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  [v2 setFromValue:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v2 setToValue:v5];

  UIAnimationDragCoefficient();
  [v2 setDuration:v6 * 0.2];
  [v2 setFillMode:*MEMORY[0x1E69797E8]];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

- (id)_contentAnimation
{
  layer = [(UIImageView *)self->_imageView layer];
  v3 = [layer animationForKey:@"contents"];

  if (v3)
  {
    contents = 0;
  }

  else
  {
    contents = [layer contents];

    if (contents)
    {
      contents = [MEMORY[0x1E6979390] animationWithKeyPath:@"contents"];
      v5 = MEMORY[0x1E695DEC8];
      contents2 = [layer contents];
      v7 = [v5 arrayWithObject:contents2];
      [contents setValues:v7];

      [contents setCalculationMode:*MEMORY[0x1E69795A0]];
    }
  }

  return contents;
}

- (id)_expandAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v2 setFromValue:v3];

  LODWORD(v4) = 1.0;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v2 setToValue:v5];

  UIAnimationDragCoefficient();
  [v2 setDuration:v6 * 0.2];

  return v2;
}

- (MKUserTrackingView)userTrackingView
{
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);

  return WeakRetained;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if ([stop _mapkit_ID] == 7)
  {
    layer = [(UIImageView *)self->_imageView layer];
    [layer removeAnimationForKey:@"contents"];
    _expandAnimation = [(_MKUserTrackingButtonController *)self _expandAnimation];
    [layer removeAnimationForKey:@"shrink"];
    WeakRetained = objc_loadWeakRetained(&self->_target);
    [WeakRetained _updateForState:self->_state];

    [(_MKUserTrackingButtonController *)self _reloadState];
    [(_MKUserTrackingButtonController *)self _updateLoading];
    [layer addAnimation:_expandAnimation forKey:@"expand"];
  }
}

- (void)_goToNextMode:(id)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);
  userTrackingMode = [WeakRetained userTrackingMode];

  buttonBehavior = [(_MKUserTrackingButtonController *)self buttonBehavior];
  buttonBehavior2 = [(_MKUserTrackingButtonController *)self buttonBehavior];
  if (self->_state == 1 && buttonBehavior != 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (!userTrackingMode && buttonBehavior2 != 1)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (!userTrackingMode && buttonBehavior2 == 1)
  {
    v10 = objc_loadWeakRetained(&self->_userTrackingView);
    isCurrentlyRotated = [v10 isCurrentlyRotated];

    if (isCurrentlyRotated)
    {
      v9 = 2;
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (userTrackingMode != 1)
  {
LABEL_20:
    v9 = buttonBehavior == 1;
    goto LABEL_9;
  }

  v12 = buttonBehavior == 1;
  v13 = objc_loadWeakRetained(&self->_userTrackingView);
  canRotateForHeading = [v13 canRotateForHeading];

  if (canRotateForHeading)
  {
    v9 = 2;
  }

  else
  {
    v9 = v12;
  }

LABEL_9:
  v15 = objc_loadWeakRetained(&self->_userTrackingView);
  [v15 _setUserTrackingMode:v9 animated:1 fromTrackingButton:1];
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    v6 = [(_MKUserTrackingButtonController *)self _shouldAnimateFromState:state toState:state];
    self->_state = state;
    if (v6)
    {
      layer = [(UIImageView *)self->_imageView layer];
      _shrinkAnimation = [(_MKUserTrackingButtonController *)self _shrinkAnimation];
      [_shrinkAnimation set_mapkit_ID:7];
      [_shrinkAnimation setDelegate:self];
      _contentAnimation = [(_MKUserTrackingButtonController *)self _contentAnimation];
      [_shrinkAnimation duration];
      [_contentAnimation setDuration:?];
      [layer addAnimation:_shrinkAnimation forKey:@"shrink"];
      if (_contentAnimation)
      {
        [layer addAnimation:_contentAnimation forKey:@"contents"];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained _updateForState:state];

      [(_MKUserTrackingButtonController *)self _reloadState];
      [(_MKUserTrackingButtonController *)self _updateLoading];
    }

    v13 = objc_loadWeakRetained(&self->_target);
    v11 = [v13 _isHighlightedForState:state];
    v12 = objc_loadWeakRetained(&self->_button);
    [v12 setSelected:v11];
  }
}

- (id)_imageForState:(int64_t)state controlState:(unint64_t)controlState
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v7 = [WeakRetained _imageForState:state controlState:controlState];

  return v7;
}

- (BOOL)_shouldAnimateFromState:(int64_t)state toState:(int64_t)toState
{
  if (!state && toState == 2)
  {
    return 0;
  }

  return (state != 2 || toState != 0) && state != -1 && toState != -1;
}

- (void)setUserTrackingView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);

  if (WeakRetained != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_userTrackingView);

    if (!v6)
    {
      goto LABEL_8;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_userTrackingView);
    [defaultCenter removeObserver:self name:@"MKUserTrackingViewModeDidChangeNotification" object:v8];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = objc_loadWeakRetained(&self->_userTrackingView);
    [defaultCenter2 removeObserver:self name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:v10];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = objc_loadWeakRetained(&self->_userTrackingView);
    [defaultCenter3 removeObserver:self name:@"MKUserTrackingViewDidResetUserLocationNotification" object:v12];

    defaultCenter8 = objc_loadWeakRetained(&self->_userTrackingView);
    if (objc_opt_respondsToSelector())
    {
      v14 = objc_loadWeakRetained(&self->_userTrackingView);
      postsMapViewInitialRenderingNotification = [v14 postsMapViewInitialRenderingNotification];

      if (!postsMapViewInitialRenderingNotification)
      {
LABEL_7:
        objc_storeWeak(&self->_userTrackingView, 0);
LABEL_8:
        if (!viewCopy)
        {
          v29 = objc_loadWeakRetained(&self->_target);
          [v29 _setInternallyEnabled:0];
          goto LABEL_15;
        }

        objc_storeWeak(&self->_userTrackingView, viewCopy);
        defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
        v18 = objc_loadWeakRetained(&self->_userTrackingView);
        [defaultCenter4 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewModeDidChangeNotification" object:v18];

        defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
        v20 = objc_loadWeakRetained(&self->_userTrackingView);
        [defaultCenter5 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:v20];

        defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
        v22 = objc_loadWeakRetained(&self->_userTrackingView);
        [defaultCenter6 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewDidResetUserLocationNotification" object:v22];

        defaultCenter7 = objc_loadWeakRetained(&self->_userTrackingView);
        if (objc_opt_respondsToSelector())
        {
          v24 = objc_loadWeakRetained(&self->_userTrackingView);
          postsMapViewInitialRenderingNotification2 = [v24 postsMapViewInitialRenderingNotification];

          if (!postsMapViewInitialRenderingNotification2)
          {
LABEL_13:
            v27 = +[MKLocationManager sharedLocationManager];
            v28 = dispatch_get_global_queue(0, 0);
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __55___MKUserTrackingButtonController_setUserTrackingView___block_invoke;
            v30[3] = &unk_1E76CD810;
            v31 = v27;
            selfCopy = self;
            v29 = v27;
            dispatch_async(v28, v30);

LABEL_15:
            [(_MKUserTrackingButtonController *)self _updateState];
            goto LABEL_16;
          }

          defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
          v26 = objc_loadWeakRetained(&self->_userTrackingView);
          [defaultCenter7 addObserver:self selector:sel__updateState name:@"MKMapViewDidFinishInitialRenderNotification" object:v26];
        }

        goto LABEL_13;
      }

      defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = objc_loadWeakRetained(&self->_userTrackingView);
      [defaultCenter8 removeObserver:self name:@"MKMapViewDidFinishInitialRenderNotification" object:v16];
    }

    goto LABEL_7;
  }

LABEL_16:
}

- (void)_authorizationStatusChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isLocationServicesRestricted])
  {
    [WeakRetained _setInternallyEnabled:0];
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_userTrackingView);
    [WeakRetained _setInternallyEnabled:v5 != 0];
  }
}

- (id)_activityIndicatorView
{
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_activityIndicatorClass"))];
    v6 = self->_activityIndicatorView;
    self->_activityIndicatorView = v5;

    [(UIActivityIndicatorView *)self->_activityIndicatorView setUserInteractionEnabled:0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setAutoresizingMask:45];
    activityIndicatorView = self->_activityIndicatorView;
  }

  return activityIndicatorView;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _MKUserTrackingButtonController;
  [(_MKUserTrackingButtonController *)&v4 dealloc];
}

- (void)setControlSize:(unint64_t)size
{
  if (self->_controlSize != size)
  {
    self->_controlSize = size;
    [(_MKUserTrackingButtonController *)self _updatePreferredSymbolConfiguration];
  }
}

- (_MKUserTrackingButtonController)initWithTarget:(id)target userTrackingView:(id)view imageView:(id)imageView button:(id)button
{
  targetCopy = target;
  viewCopy = view;
  imageViewCopy = imageView;
  buttonCopy = button;
  v21.receiver = self;
  v21.super_class = _MKUserTrackingButtonController;
  v14 = [(_MKUserTrackingButtonController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = -1;
    objc_storeWeak(&v14->_target, targetCopy);
    objc_storeStrong(&v15->_imageView, imageView);
    v16 = *MEMORY[0x1E6979DD0];
    layer = [(UIImageView *)v15->_imageView layer];
    [layer setContentsGravity:v16];

    objc_storeWeak(&v15->_button, buttonCopy);
    v15->_controlSize = 1;
    [(_MKUserTrackingButtonController *)v15 _updatePreferredSymbolConfiguration];
    [(_MKUserTrackingButtonController *)v15 setUserTrackingView:viewCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__authorizationStatusChanged_ name:MKLocationManagerApprovalDidChangeNotification object:0];

    v19 = v15;
  }

  return v15;
}

@end