@interface MKLookAroundContainerView
- (MKLookAroundContainerView)initWithCoder:(id)a3;
- (MKLookAroundContainerView)initWithFloatingDimmingStyle:(BOOL)a3;
- (MKLookAroundContainerView)initWithFrame:(CGRect)a3;
- (MKLookAroundContainerView)initWithLookAroundView:(id)a3;
- (MKLookAroundContainerView)initWithPhotosDimmingStyle:(BOOL)a3;
- (MKLookAroundContainerViewDelegate)delegate;
- (UIColor)dimmingViewBackgroundColorBlackOpaque;
- (UIColor)dimmingViewBackgroundColorBlackTranslucent;
- (UIColor)dimmingViewBackgroundColorClear;
- (UIColor)dimmingViewBackgroundColorGreyOpaque;
- (UIColor)dimmingViewBackgroundColorPhotosOpaque;
- (id)lookAroundViewIfPresent;
- (void)_commonInitWithLookAroundView:(id)a3;
- (void)_setDimmingViewHidden:(BOOL)a3 loading:(BOOL)a4 animated:(BOOL)a5;
- (void)_updateBadgeConstraints;
- (void)_updateDimmingStateForLookAroundView:(id)a3 completion:(id)a4;
- (void)_updateDimmingViewActivityIndicator;
- (void)_updateDimmingViewBackgroundColor;
- (void)cancelIfPresent;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setBadgeHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setBadgeOnLeadingEdge:(BOOL)a3;
- (void)setBorderWidth:(double)a3;
- (void)setDimmingState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setMapItem:(id)a3 isMarkedLocation:(BOOL)a4 wantsCloseUpView:(BOOL)a5;
@end

@implementation MKLookAroundContainerView

- (MKLookAroundContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDimmingViewBackgroundColor
{
  v3 = [(MKLookAroundContainerView *)self lookAroundViewIfPresent];
  v4 = v3;
  if (self->_floatingDimmingStyle)
  {
    v5 = [(MKLookAroundContainerView *)self dimmingViewBackgroundColorGreyOpaque];
  }

  else if (self->_photosDimmingStyle)
  {
    v5 = [(MKLookAroundContainerView *)self dimmingViewBackgroundColorPhotosOpaque];
  }

  else if (self->_pipDimmingStyle)
  {
    v5 = [(MKLookAroundContainerView *)self dimmingViewBackgroundColorClear];
  }

  else
  {
    if ([v3 hasEnteredLookAround])
    {
      [(MKLookAroundContainerView *)self dimmingViewBackgroundColorBlackTranslucent];
    }

    else
    {
      [(MKLookAroundContainerView *)self dimmingViewBackgroundColorBlackOpaque];
    }
    v5 = ;
  }

  v6 = v5;
  [(UIView *)self->_dimmingView setBackgroundColor:v5];
}

- (void)_updateDimmingViewActivityIndicator
{
  v16[2] = *MEMORY[0x1E69E9840];
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    if (self->_photosDimmingStyle || self->_pipDimmingStyle || self->_floatingDimmingStyle)
    {
      [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
      v4 = self->_activityIndicator;
      self->_activityIndicator = 0;
    }
  }

  else if (!self->_photosDimmingStyle && !self->_pipDimmingStyle && !self->_floatingDimmingStyle)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v6 = self->_activityIndicator;
    self->_activityIndicator = v5;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)self->_activityIndicator setColor:v7];

    [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_dimmingView addSubview:self->_activityIndicator];
    v8 = MEMORY[0x1E696ACD8];
    v9 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
    v10 = [(UIView *)self->_dimmingView centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v16[0] = v11;
    v12 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
    v13 = [(UIView *)self->_dimmingView centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v16[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v8 activateConstraints:v15];
  }
}

- (void)_updateDimmingStateForLookAroundView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  floatingDimmingStyle = self->_floatingDimmingStyle;
  if (([v6 adequatelyDrawn] & 1) == 0 && !floatingDimmingStyle)
  {
    [(MKLookAroundContainerView *)self setDimmingState:2 animated:0];
    objc_initWeak(&location, self);
    if (self->_lookAroundViewDidBecomeAdequatelyDrawnObserver)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 removeObserver:self->_lookAroundViewDidBecomeAdequatelyDrawnObserver];
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__MKLookAroundContainerView__updateDimmingStateForLookAroundView_completion___block_invoke;
    v24[3] = &unk_1E76CA7E0;
    objc_copyWeak(&v26, &location);
    v25 = v7;
    v13 = [v10 addObserverForName:@"MKLookAroundViewDidBecomeAdequatelyDrawn" object:v6 queue:v11 usingBlock:v24];
    lookAroundViewDidBecomeAdequatelyDrawnObserver = self->_lookAroundViewDidBecomeAdequatelyDrawnObserver;
    self->_lookAroundViewDidBecomeAdequatelyDrawnObserver = v13;

    v15 = v25;
LABEL_11:

    objc_destroyWeak(v12 + 5);
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

  if ([v6 isLoading] && floatingDimmingStyle)
  {
    [(MKLookAroundContainerView *)self setDimmingState:2 animated:0];
    objc_initWeak(&location, self);
    if (self->_lookAroundViewDidBecomeFullyDrawnObserver)
    {
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 removeObserver:self->_lookAroundViewDidBecomeFullyDrawnObserver];
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__MKLookAroundContainerView__updateDimmingStateForLookAroundView_completion___block_invoke_2;
    v21[3] = &unk_1E76CA7E0;
    objc_copyWeak(&v23, &location);
    v22 = v7;
    v19 = [v17 addObserverForName:@"MKLookAroundViewDidBecomeFullyDrawn" object:v6 queue:v18 usingBlock:v21];
    lookAroundViewDidBecomeFullyDrawnObserver = self->_lookAroundViewDidBecomeFullyDrawnObserver;
    self->_lookAroundViewDidBecomeFullyDrawnObserver = v19;

    v15 = v22;
    goto LABEL_11;
  }

  [(MKLookAroundContainerView *)self setDimmingState:0 animated:0];
  if (v7)
  {
    v7[2](v7);
  }

LABEL_12:
}

void __77__MKLookAroundContainerView__updateDimmingStateForLookAroundView_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 hasEnteredLookAround];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained lookAroundViewDidBecomeAdequatelyDrawnObserver];
    [v5 removeObserver:v7];

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setLookAroundViewDidBecomeAdequatelyDrawnObserver:0];

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 _updateDimmingViewBackgroundColor];

    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 setDimmingState:0 animated:1];

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }
  }
}

void __77__MKLookAroundContainerView__updateDimmingStateForLookAroundView_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 hasEnteredLookAround];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained lookAroundViewDidBecomeFullyDrawnObserver];
    [v5 removeObserver:v7];

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setLookAroundViewDidBecomeFullyDrawnObserver:0];

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 _updateDimmingViewBackgroundColor];

    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 setDimmingState:0 animated:1];

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }
  }
}

- (void)infoCardThemeChanged
{
  v4.receiver = self;
  v4.super_class = MKLookAroundContainerView;
  [(UIView *)&v4 infoCardThemeChanged];
  dimmingViewBackgroundColorPhotosOpaque = self->_dimmingViewBackgroundColorPhotosOpaque;
  self->_dimmingViewBackgroundColorPhotosOpaque = 0;

  [(MKLookAroundContainerView *)self _updateDimmingViewBackgroundColor];
}

- (void)cancelIfPresent
{
  v2 = [(MKLookAroundContainerView *)self lookAroundViewIfPresent];
  if (v2)
  {
    v3 = v2;
    [v2 removeFromSuperview];
    v2 = v3;
  }
}

- (void)setBorderWidth:(double)a3
{
  v39[4] = *MEMORY[0x1E69E9840];
  v5 = [(MKLookAroundContainerView *)self layer];
  [v5 setBorderWidth:a3];

  v6 = +[MKSystemController sharedInstance];
  v7 = [v6 isGlassEnabled];

  if (v7)
  {
    innerBorderView = self->_innerBorderView;
    if (a3 == 0.0)
    {
      if (innerBorderView)
      {
        [(UIView *)innerBorderView removeFromSuperview];
        v9 = self->_innerBorderView;
        self->_innerBorderView = 0;
      }
    }

    else
    {
      v10 = [(UIView *)innerBorderView layer];
      [v10 borderWidth];
      v12 = v11;

      if (v12 != a3)
      {
        v13 = self->_innerBorderView;
        if (v13)
        {
          [(UIView *)v13 removeFromSuperview];
        }

        else
        {
          v14 = objc_alloc(MEMORY[0x1E69DD250]);
          v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
          v16 = self->_innerBorderView;
          self->_innerBorderView = v15;

          [(UIView *)self->_innerBorderView setTranslatesAutoresizingMaskIntoConstraints:0];
          v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0799999982];
          v18 = [v17 CGColor];
          v19 = [(UIView *)self->_innerBorderView layer];
          [v19 setBorderColor:v18];

          v20 = [(MKLookAroundContainerView *)self layer];
          [v20 cornerRadius];
          v22 = v21;
          v23 = [(UIView *)self->_innerBorderView layer];
          [v23 setCornerRadius:v22];
        }

        v24 = [(UIView *)self->_innerBorderView layer];
        [v24 setBorderWidth:a3];

        [(MKLookAroundContainerView *)self addSubview:self->_innerBorderView];
        v34 = MEMORY[0x1E696ACD8];
        v38 = [(UIView *)self->_innerBorderView leadingAnchor];
        v37 = [(MKLookAroundContainerView *)self leadingAnchor];
        v36 = [v38 constraintEqualToAnchor:v37 constant:a3];
        v39[0] = v36;
        v35 = [(UIView *)self->_innerBorderView trailingAnchor];
        v25 = [(MKLookAroundContainerView *)self trailingAnchor];
        v26 = [v35 constraintEqualToAnchor:v25 constant:-a3];
        v39[1] = v26;
        v27 = [(UIView *)self->_innerBorderView topAnchor];
        v28 = [(MKLookAroundContainerView *)self topAnchor];
        v29 = [v27 constraintEqualToAnchor:v28 constant:a3];
        v39[2] = v29;
        v30 = [(UIView *)self->_innerBorderView bottomAnchor];
        v31 = [(MKLookAroundContainerView *)self bottomAnchor];
        v32 = [v30 constraintEqualToAnchor:v31 constant:-a3];
        v39[3] = v32;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
        [v34 activateConstraints:v33];
      }
    }
  }
}

- (void)_setDimmingViewHidden:(BOOL)a3 loading:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = self->_dimmingView;
  v10 = [(MKLookAroundContainerView *)self lookAroundViewIfPresent];
  v11 = self->_activityIndicator;
  v12 = v11;
  if (v6)
  {
    [(UIActivityIndicatorView *)v11 startAnimating];
  }

  photosDimmingStyle = self->_photosDimmingStyle;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __68__MKLookAroundContainerView__setDimmingViewHidden_loading_animated___block_invoke;
  v29 = &unk_1E76CA788;
  v32 = a3;
  v33 = photosDimmingStyle;
  v14 = v9;
  v30 = v14;
  v15 = v10;
  v31 = v15;
  v16 = MEMORY[0x1A58E9F30](&v26);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __68__MKLookAroundContainerView__setDimmingViewHidden_loading_animated___block_invoke_2;
  v22 = &unk_1E76CA7B0;
  LOBYTE(v25) = v6;
  v23 = v12;
  v24 = self;
  BYTE1(v25) = a3;
  v17 = v12;
  v18 = MEMORY[0x1A58E9F30](&v19);
  if (v5)
  {
    [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v16 animations:v18 completion:{0.25, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30}];
  }

  else
  {
    v16[2](v16);
    v18[2](v18, 1);
  }
}

uint64_t __68__MKLookAroundContainerView__setDimmingViewHidden_loading_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1.0;
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
    if (*(a1 + 49))
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 1.0;
    }
  }

  [*(a1 + 32) setAlpha:v3];
  v4 = *(a1 + 40);

  return [v4 setAlpha:v2];
}

uint64_t __68__MKLookAroundContainerView__setDimmingViewHidden_loading_animated___block_invoke_2(uint64_t result)
{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    result = [*(result + 32) stopAnimating];
  }

  v2 = *(v1 + 40);
  if (*(v2 + 460) == 1 && *(v1 + 49) == 1 && (*(v1 + 48) & 1) == 0)
  {
    *(v2 + 460) = 0;
    [*(v1 + 40) _updateDimmingViewActivityIndicator];
    v3 = *(v1 + 40);

    return [v3 _updateDimmingViewBackgroundColor];
  }

  return result;
}

- (void)setDimmingState:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_dimmingState != a3)
  {
    self->_dimmingState = a3;
    [(MKLookAroundContainerView *)self _setDimmingViewHidden:a3 == 0 loading:a3 == 2 animated:a4];
  }
}

- (void)setBadgeHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = self->_badgeView;
  if ([(MKLookAroundContainerBadgeView *)v6 isHidden])
  {
    [(MKLookAroundContainerBadgeView *)v6 setHidden:0];
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __53__MKLookAroundContainerView_setBadgeHidden_animated___block_invoke;
  v20 = &unk_1E76CA760;
  v22 = a3;
  v7 = v6;
  v21 = v7;
  v8 = MEMORY[0x1A58E9F30](&v17);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __53__MKLookAroundContainerView_setBadgeHidden_animated___block_invoke_2;
  v14 = &unk_1E76CCF40;
  LOBYTE(v16) = a3;
  v15 = v7;
  v9 = v7;
  v10 = MEMORY[0x1A58E9F30](&v11);
  if (v4)
  {
    [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v8 animations:v10 completion:{0.25, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
  }

  else
  {
    v8[2](v8);
    v10[2](v10, 1);
  }
}

uint64_t __53__MKLookAroundContainerView_setBadgeHidden_animated___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

uint64_t __53__MKLookAroundContainerView_setBadgeHidden_animated___block_invoke_2(uint64_t a1)
{
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setAlpha:v2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return [v4 setHidden:v3];
}

- (void)_updateBadgeConstraints
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_badgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    badgeConstraints = self->_badgeConstraints;
    self->_badgeConstraints = 0;
  }

  v4 = +[MKSystemController sharedInstance];
  if ([v4 isGlassEnabled])
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 16.0;
  }

  v6 = MEMORY[0x1E695DF70];
  v7 = [(MKLookAroundContainerBadgeView *)self->_badgeView bottomAnchor];
  v8 = [(MKLookAroundContainerView *)self safeAreaLayoutGuide];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:-v5];
  v23[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v12 = [v6 arrayWithArray:v11];

  badgeView = self->_badgeView;
  if (self->_badgeOnLeadingEdge)
  {
    v14 = [(MKLookAroundContainerBadgeView *)badgeView leadingAnchor];
    v15 = [(MKLookAroundContainerView *)self safeAreaLayoutGuide];
    v16 = [v15 leadingAnchor];
    v17 = v14;
    v18 = v16;
    v19 = v5;
  }

  else
  {
    v14 = [(MKLookAroundContainerBadgeView *)badgeView trailingAnchor];
    v15 = [(MKLookAroundContainerView *)self safeAreaLayoutGuide];
    v16 = [v15 trailingAnchor];
    v17 = v14;
    v18 = v16;
    v19 = -v5;
  }

  v20 = [v17 constraintEqualToAnchor:v18 constant:v19];
  [v12 addObject:v20];

  v21 = [v12 copy];
  v22 = self->_badgeConstraints;
  self->_badgeConstraints = v21;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_badgeConstraints];
}

- (void)setBadgeOnLeadingEdge:(BOOL)a3
{
  if (self->_badgeOnLeadingEdge != a3)
  {
    self->_badgeOnLeadingEdge = a3;
    [(MKLookAroundContainerView *)self _updateBadgeConstraints];
  }
}

- (void)layoutSubviews
{
  v3 = MKGetMKLookAroundLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LookAroundContainerLayoutSubviews", &unk_1A30FEA0E, buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = MKLookAroundContainerView;
  [(MKLookAroundContainerView *)&v14 layoutSubviews];
  [(MKLookAroundContainerView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MKLookAroundContainerView *)self lookAroundViewIfPresent];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(UIView *)self->_dimmingView setFrame:v5, v7, v9, v11];
  v13 = MKGetMKLookAroundLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LookAroundContainerLayoutSubviews", &unk_1A30FEA0E, buf, 2u);
  }
}

- (void)didAddSubview:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MKLookAroundContainerView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(MKLookAroundContainerView *)self delegate];
      [v6 lookAroundContainerView:self didAddLookAroundView:v7];
    }
  }
}

- (id)lookAroundViewIfPresent
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MKLookAroundContainerView *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setMapItem:(id)a3 isMarkedLocation:(BOOL)a4 wantsCloseUpView:(BOOL)a5
{
  v5 = a5;
  v14 = a3;
  objc_storeStrong(&self->_mapItem, a3);
  v9 = v14;
  self->_isMarkedLocation = a4;
  if (v14)
  {
    v10 = [(MKLookAroundContainerView *)self lookAroundViewIfPresent];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mapItem];

      if (v12 == v14)
      {
        if (v5)
        {
          [v11 moveToCloseUpView];
        }
      }

      else
      {
        v13 = [MKLookAroundEntryPoint entryPointWithMapItem:"entryPointWithMapItem:isMarkedLocation:wantsCloseUpView:cameraFrameOverride:triggerAction:" isMarkedLocation:? wantsCloseUpView:? cameraFrameOverride:? triggerAction:?];
        [v11 enterLookAroundWithEntryPoint:v13];

        [(MKLookAroundContainerView *)self _updateDimmingStateForLookAroundView:v11 completion:0];
      }
    }

    v9 = v14;
  }
}

- (void)dealloc
{
  if (self->_lookAroundViewDidBecomeAdequatelyDrawnObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_lookAroundViewDidBecomeAdequatelyDrawnObserver];
  }

  if (self->_lookAroundViewDidBecomeFullyDrawnObserver)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self->_lookAroundViewDidBecomeFullyDrawnObserver];
  }

  v5.receiver = self;
  v5.super_class = MKLookAroundContainerView;
  [(MKLookAroundContainerView *)&v5 dealloc];
}

- (MKLookAroundContainerView)initWithFloatingDimmingStyle:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MKLookAroundContainerView;
  v4 = [(MKLookAroundContainerView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_floatingDimmingStyle = a3;
    [(MKLookAroundContainerView *)v4 _commonInitWithLookAroundView:0];
  }

  return v5;
}

- (MKLookAroundContainerView)initWithPhotosDimmingStyle:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MKLookAroundContainerView;
  v4 = [(MKLookAroundContainerView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_photosDimmingStyle = a3;
    [(MKLookAroundContainerView *)v4 _commonInitWithLookAroundView:0];
  }

  return v5;
}

- (MKLookAroundContainerView)initWithLookAroundView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKLookAroundContainerView;
  v5 = [(MKLookAroundContainerView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_pipDimmingStyle = 1;
    [(MKLookAroundContainerView *)v5 _commonInitWithLookAroundView:v4];
  }

  return v6;
}

- (MKLookAroundContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKLookAroundContainerView;
  v3 = [(MKLookAroundContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKLookAroundContainerView *)v3 _commonInitWithLookAroundView:0];
  }

  return v4;
}

- (MKLookAroundContainerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKLookAroundContainerView;
  v3 = [(MKLookAroundContainerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MKLookAroundContainerView *)v3 _commonInitWithLookAroundView:0];
  }

  return v4;
}

- (void)_commonInitWithLookAroundView:(id)a3
{
  v18 = a3;
  [(MKLookAroundContainerView *)self setClipsToBounds:1];
  [(MKLookAroundContainerView *)self setAccessibilityIdentifier:@"LookAroundContainer"];
  v4 = v18;
  if (v18)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v9 = [MKLookAroundView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v4 = [(MKLookAroundView *)v9 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  }

  v19 = v4;
  [(MKLookAroundView *)v4 setCompassHidden:1];
  [(MKLookAroundView *)v19 setAlpha:0.0];
  [(MKLookAroundView *)v19 setNavigatingEnabled:0];
  [(MKLookAroundView *)v19 setPanningEnabled:0];
  [(MKLookAroundView *)v19 setZoomingEnabled:0];
  [(MKLookAroundView *)v19 setShowsRoadLabels:0];
  [(MKLookAroundView *)v19 setShowsPointLabels:0];
  [(MKLookAroundContainerView *)self addSubview:v19];
  [(MKLookAroundContainerView *)self bounds];
  self->_dimmingState = -1;
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v10, v11, v12, v13}];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v14;

  [(UIView *)self->_dimmingView setClipsToBounds:1];
  [(UIView *)self->_dimmingView setUserInteractionEnabled:0];
  [(MKLookAroundContainerView *)self addSubview:self->_dimmingView];
  [(MKLookAroundContainerView *)self _updateDimmingViewBackgroundColor];
  self->_badgeOnLeadingEdge = 1;
  v16 = [[MKLookAroundContainerBadgeView alloc] initWithFrame:v5, v6, v7, v8];
  badgeView = self->_badgeView;
  self->_badgeView = v16;

  [(MKLookAroundContainerBadgeView *)self->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKLookAroundContainerView *)self addSubview:self->_badgeView];
  [(MKLookAroundContainerView *)self _updateBadgeConstraints];
  [(MKLookAroundContainerView *)self _updateDimmingViewActivityIndicator];
  [(MKLookAroundContainerView *)self _updateDimmingStateForLookAroundView:v19 completion:0];
}

- (UIColor)dimmingViewBackgroundColorPhotosOpaque
{
  dimmingViewBackgroundColorPhotosOpaque = self->_dimmingViewBackgroundColorPhotosOpaque;
  if (!dimmingViewBackgroundColorPhotosOpaque)
  {
    v4 = [(UIView *)self mk_theme];
    v5 = [v4 normalBackgroundColor];
    v6 = self->_dimmingViewBackgroundColorPhotosOpaque;
    self->_dimmingViewBackgroundColorPhotosOpaque = v5;

    dimmingViewBackgroundColorPhotosOpaque = self->_dimmingViewBackgroundColorPhotosOpaque;
  }

  return dimmingViewBackgroundColorPhotosOpaque;
}

- (UIColor)dimmingViewBackgroundColorClear
{
  dimmingViewBackgroundColorClear = self->_dimmingViewBackgroundColorClear;
  if (!dimmingViewBackgroundColorClear)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    v5 = self->_dimmingViewBackgroundColorClear;
    self->_dimmingViewBackgroundColorClear = v4;

    dimmingViewBackgroundColorClear = self->_dimmingViewBackgroundColorClear;
  }

  return dimmingViewBackgroundColorClear;
}

- (UIColor)dimmingViewBackgroundColorBlackTranslucent
{
  dimmingViewBackgroundColorBlackTranslucent = self->_dimmingViewBackgroundColorBlackTranslucent;
  if (!dimmingViewBackgroundColorBlackTranslucent)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.400000006];
    v5 = self->_dimmingViewBackgroundColorBlackTranslucent;
    self->_dimmingViewBackgroundColorBlackTranslucent = v4;

    dimmingViewBackgroundColorBlackTranslucent = self->_dimmingViewBackgroundColorBlackTranslucent;
  }

  return dimmingViewBackgroundColorBlackTranslucent;
}

- (UIColor)dimmingViewBackgroundColorBlackOpaque
{
  dimmingViewBackgroundColorBlackOpaque = self->_dimmingViewBackgroundColorBlackOpaque;
  if (!dimmingViewBackgroundColorBlackOpaque)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    v5 = self->_dimmingViewBackgroundColorBlackOpaque;
    self->_dimmingViewBackgroundColorBlackOpaque = v4;

    dimmingViewBackgroundColorBlackOpaque = self->_dimmingViewBackgroundColorBlackOpaque;
  }

  return dimmingViewBackgroundColorBlackOpaque;
}

- (UIColor)dimmingViewBackgroundColorGreyOpaque
{
  dimmingViewBackgroundColorGreyOpaque = self->_dimmingViewBackgroundColorGreyOpaque;
  if (!dimmingViewBackgroundColorGreyOpaque)
  {
    v4 = [MEMORY[0x1E69DC888] systemGrayColor];
    v5 = self->_dimmingViewBackgroundColorGreyOpaque;
    self->_dimmingViewBackgroundColorGreyOpaque = v4;

    dimmingViewBackgroundColorGreyOpaque = self->_dimmingViewBackgroundColorGreyOpaque;
  }

  return dimmingViewBackgroundColorGreyOpaque;
}

@end