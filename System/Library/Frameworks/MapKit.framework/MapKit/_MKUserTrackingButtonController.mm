@interface _MKUserTrackingButtonController
- (BOOL)_shouldAnimateFromState:(int64_t)a3 toState:(int64_t)a4;
- (MKUserTrackingView)userTrackingView;
- (_MKUserTrackingButtonController)initWithTarget:(id)a3 userTrackingView:(id)a4 imageView:(id)a5 button:(id)a6;
- (double)_symbolPointSize;
- (id)_activityIndicatorView;
- (id)_contentAnimation;
- (id)_expandAnimation;
- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_shrinkAnimation;
- (void)_authorizationStatusChanged:(id)a3;
- (void)_goToNextMode:(id)a3;
- (void)_reloadState;
- (void)_updateLoading;
- (void)_updatePreferredSymbolConfiguration;
- (void)_updateState;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)setControlSize:(unint64_t)a3;
- (void)setState:(int64_t)a3;
- (void)setUserTrackingView:(id)a3;
@end

@implementation _MKUserTrackingButtonController

- (void)_updatePreferredSymbolConfiguration
{
  v3 = +[MKSystemController sharedInstance];
  v4 = [v3 isGlassEnabled];

  v5 = MEMORY[0x1E69DCAD8];
  WeakRetained = objc_loadWeakRetained(&self->_button);
  v7 = [WeakRetained inMiniBar];
  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    [(_MKUserTrackingButtonController *)self _symbolPointSize];
  }

  if (v4)
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
  v4 = [WeakRetained userTrackingMode];

  v5 = 2;
  if (v4 != 1)
  {
    v5 = 0;
  }

  v6 = v4 != 2 && v4 != 1;
  if (v4 == 2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_loadWeakRetained(&self->_userTrackingView);
  v9 = [v8 hasUserLocation];

  if (v9)
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
    v11 = [(_MKUserTrackingButtonController *)self _activityIndicatorView];
    WeakRetained = objc_loadWeakRetained(&self->_target);
    -[UIActivityIndicatorView setActivityIndicatorViewStyle:](v11, "setActivityIndicatorViewStyle:", [WeakRetained _activityIndicatorStyle]);

    v4 = objc_loadWeakRetained(&self->_button);
    [v4 addSubview:v11];

    v5 = [(UIActivityIndicatorView *)v11 superview];
    [v5 setClipsToBounds:0];

    [(UIActivityIndicatorView *)v11 startAnimating];
    v6 = objc_loadWeakRetained(&self->_button);
    [v6 bounds];
    MidX = CGRectGetMidX(v13);
    v8 = objc_loadWeakRetained(&self->_button);
    [v8 bounds];
    [(UIActivityIndicatorView *)v11 setCenter:MidX, CGRectGetMidY(v14)];

    v9 = objc_loadWeakRetained(&self->_button);
    [v9 layoutIfNeeded];

    activityIndicatorView = v11;
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
  v2 = [(UIImageView *)self->_imageView layer];
  v3 = [v2 animationForKey:@"contents"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 contents];

    if (v4)
    {
      v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"contents"];
      v5 = MEMORY[0x1E695DEC8];
      v6 = [v2 contents];
      v7 = [v5 arrayWithObject:v6];
      [v4 setValues:v7];

      [v4 setCalculationMode:*MEMORY[0x1E69795A0]];
    }
  }

  return v4;
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if ([a3 _mapkit_ID] == 7)
  {
    v7 = [(UIImageView *)self->_imageView layer];
    [v7 removeAnimationForKey:@"contents"];
    v5 = [(_MKUserTrackingButtonController *)self _expandAnimation];
    [v7 removeAnimationForKey:@"shrink"];
    WeakRetained = objc_loadWeakRetained(&self->_target);
    [WeakRetained _updateForState:self->_state];

    [(_MKUserTrackingButtonController *)self _reloadState];
    [(_MKUserTrackingButtonController *)self _updateLoading];
    [v7 addAnimation:v5 forKey:@"expand"];
  }
}

- (void)_goToNextMode:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);
  v5 = [WeakRetained userTrackingMode];

  v6 = [(_MKUserTrackingButtonController *)self buttonBehavior];
  v7 = [(_MKUserTrackingButtonController *)self buttonBehavior];
  if (self->_state == 1 && v6 != 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (!v5 && v7 != 1)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (!v5 && v7 == 1)
  {
    v10 = objc_loadWeakRetained(&self->_userTrackingView);
    v11 = [v10 isCurrentlyRotated];

    if (v11)
    {
      v9 = 2;
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (v5 != 1)
  {
LABEL_20:
    v9 = v6 == 1;
    goto LABEL_9;
  }

  v12 = v6 == 1;
  v13 = objc_loadWeakRetained(&self->_userTrackingView);
  v14 = [v13 canRotateForHeading];

  if (v14)
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

- (void)setState:(int64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    v6 = [(_MKUserTrackingButtonController *)self _shouldAnimateFromState:state toState:a3];
    self->_state = a3;
    if (v6)
    {
      v7 = [(UIImageView *)self->_imageView layer];
      v8 = [(_MKUserTrackingButtonController *)self _shrinkAnimation];
      [v8 set_mapkit_ID:7];
      [v8 setDelegate:self];
      v9 = [(_MKUserTrackingButtonController *)self _contentAnimation];
      [v8 duration];
      [v9 setDuration:?];
      [v7 addAnimation:v8 forKey:@"shrink"];
      if (v9)
      {
        [v7 addAnimation:v9 forKey:@"contents"];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [WeakRetained _updateForState:a3];

      [(_MKUserTrackingButtonController *)self _reloadState];
      [(_MKUserTrackingButtonController *)self _updateLoading];
    }

    v13 = objc_loadWeakRetained(&self->_target);
    v11 = [v13 _isHighlightedForState:a3];
    v12 = objc_loadWeakRetained(&self->_button);
    [v12 setSelected:v11];
  }
}

- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v7 = [WeakRetained _imageForState:a3 controlState:a4];

  return v7;
}

- (BOOL)_shouldAnimateFromState:(int64_t)a3 toState:(int64_t)a4
{
  if (!a3 && a4 == 2)
  {
    return 0;
  }

  return (a3 != 2 || a4 != 0) && a3 != -1 && a4 != -1;
}

- (void)setUserTrackingView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_userTrackingView);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_userTrackingView);

    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_userTrackingView);
    [v7 removeObserver:self name:@"MKUserTrackingViewModeDidChangeNotification" object:v8];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = objc_loadWeakRetained(&self->_userTrackingView);
    [v9 removeObserver:self name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:v10];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = objc_loadWeakRetained(&self->_userTrackingView);
    [v11 removeObserver:self name:@"MKUserTrackingViewDidResetUserLocationNotification" object:v12];

    v13 = objc_loadWeakRetained(&self->_userTrackingView);
    if (objc_opt_respondsToSelector())
    {
      v14 = objc_loadWeakRetained(&self->_userTrackingView);
      v15 = [v14 postsMapViewInitialRenderingNotification];

      if (!v15)
      {
LABEL_7:
        objc_storeWeak(&self->_userTrackingView, 0);
LABEL_8:
        if (!v4)
        {
          v29 = objc_loadWeakRetained(&self->_target);
          [v29 _setInternallyEnabled:0];
          goto LABEL_15;
        }

        objc_storeWeak(&self->_userTrackingView, v4);
        v17 = [MEMORY[0x1E696AD88] defaultCenter];
        v18 = objc_loadWeakRetained(&self->_userTrackingView);
        [v17 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewModeDidChangeNotification" object:v18];

        v19 = [MEMORY[0x1E696AD88] defaultCenter];
        v20 = objc_loadWeakRetained(&self->_userTrackingView);
        [v19 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:v20];

        v21 = [MEMORY[0x1E696AD88] defaultCenter];
        v22 = objc_loadWeakRetained(&self->_userTrackingView);
        [v21 addObserver:self selector:sel__updateState name:@"MKUserTrackingViewDidResetUserLocationNotification" object:v22];

        v23 = objc_loadWeakRetained(&self->_userTrackingView);
        if (objc_opt_respondsToSelector())
        {
          v24 = objc_loadWeakRetained(&self->_userTrackingView);
          v25 = [v24 postsMapViewInitialRenderingNotification];

          if (!v25)
          {
LABEL_13:
            v27 = +[MKLocationManager sharedLocationManager];
            v28 = dispatch_get_global_queue(0, 0);
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __55___MKUserTrackingButtonController_setUserTrackingView___block_invoke;
            v30[3] = &unk_1E76CD810;
            v31 = v27;
            v32 = self;
            v29 = v27;
            dispatch_async(v28, v30);

LABEL_15:
            [(_MKUserTrackingButtonController *)self _updateState];
            goto LABEL_16;
          }

          v23 = [MEMORY[0x1E696AD88] defaultCenter];
          v26 = objc_loadWeakRetained(&self->_userTrackingView);
          [v23 addObserver:self selector:sel__updateState name:@"MKMapViewDidFinishInitialRenderNotification" object:v26];
        }

        goto LABEL_13;
      }

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = objc_loadWeakRetained(&self->_userTrackingView);
      [v13 removeObserver:self name:@"MKMapViewDidFinishInitialRenderNotification" object:v16];
    }

    goto LABEL_7;
  }

LABEL_16:
}

- (void)_authorizationStatusChanged:(id)a3
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _MKUserTrackingButtonController;
  [(_MKUserTrackingButtonController *)&v4 dealloc];
}

- (void)setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(_MKUserTrackingButtonController *)self _updatePreferredSymbolConfiguration];
  }
}

- (_MKUserTrackingButtonController)initWithTarget:(id)a3 userTrackingView:(id)a4 imageView:(id)a5 button:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = _MKUserTrackingButtonController;
  v14 = [(_MKUserTrackingButtonController *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_state = -1;
    objc_storeWeak(&v14->_target, v10);
    objc_storeStrong(&v15->_imageView, a5);
    v16 = *MEMORY[0x1E6979DD0];
    v17 = [(UIImageView *)v15->_imageView layer];
    [v17 setContentsGravity:v16];

    objc_storeWeak(&v15->_button, v13);
    v15->_controlSize = 1;
    [(_MKUserTrackingButtonController *)v15 _updatePreferredSymbolConfiguration];
    [(_MKUserTrackingButtonController *)v15 setUserTrackingView:v11];
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v15 selector:sel__authorizationStatusChanged_ name:MKLocationManagerApprovalDidChangeNotification object:0];

    v19 = v15;
  }

  return v15;
}

@end