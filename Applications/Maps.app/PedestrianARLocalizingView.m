@interface PedestrianARLocalizingView
- (BOOL)_isLandscape;
- (PedestrianARLocalizingView)initWithFrame:(CGRect)a3;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateUI;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayCoachingMessage:(id)a3 forCoachingView:(id)a4;
- (void)hideAnimated:(BOOL)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)setSession:(id)a3;
- (void)showAnimated:(BOOL)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PedestrianARLocalizingView

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isPedestrianAR];
  v9 = sub_1007A4344();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] ARSession will run with PedestrianAR configuration", buf, 0xCu);
    }

    [v6 _removeObserver:self];
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007A4398;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v12, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] ARSession will run with a non-pedestrianAR configuration: %@", buf, 0x16u);
    }
  }
}

- (void)displayCoachingMessage:(id)a3 forCoachingView:(id)a4
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(v8, &state);

  v9 = [(PedestrianARLocalizingView *)self isFadingOut];
  v10 = sub_1007A4344();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 134349314;
      v23 = self;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Got a coaching message (%@) while fading out; ignoring it", buf, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134349314;
      v23 = self;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Updating coaching message: '%@'", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007A47E4;
    v17[3] = &unk_101661340;
    objc_copyWeak(&v19, &location);
    v18 = v6;
    v12 = objc_retainBlock(v17);
    v13 = [(PedestrianARLocalizingView *)self isVisible];
    v14 = sub_1007A4344();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v15)
      {
        *buf = 134349056;
        v23 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating text with animation", buf, 0xCu);
      }

      v16 = [(PedestrianARLocalizingView *)self animationManager];
      [v16 fadeWithFadeOutCompletion:v12];
    }

    else
    {
      if (v15)
      {
        *buf = 134349056;
        v23 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating text without animation", buf, 0xCu);
      }

      (v12[2])(v12);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_isLandscape
{
  [(PedestrianARLocalizingView *)self frame];
  Width = CGRectGetWidth(v5);
  [(PedestrianARLocalizingView *)self frame];
  return Width > CGRectGetHeight(v6);
}

- (void)_updateConstraints
{
  v3 = [(PedestrianARLocalizingView *)self _isLandscape];
  v4 = [(PedestrianARLocalizingView *)self instructionLabelLeadingConstraint];
  v5 = v4;
  if (v3)
  {
    [v4 setConstant:0.0];

    v6 = [(PedestrianARLocalizingView *)self instructionLabelTrailingConstraint];
    [v6 setConstant:0.0];

    v7 = [(PedestrianARLocalizingView *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    v9 = sub_10008FB5C(v8, UIContentSizeCategoryExtraExtraExtraLarge);

    v10 = [(PedestrianARLocalizingView *)self instructionLabelBottomConstraint];
    v11 = v10;
    v12 = -18.0;
    if (v9 == 1)
    {
      v12 = -16.0;
    }

    [v10 setConstant:v12];
    v13 = 2;
  }

  else
  {
    [v4 setConstant:26.0];

    v14 = [(PedestrianARLocalizingView *)self instructionLabelTrailingConstraint];
    [v14 setConstant:-26.0];

    v11 = [(PedestrianARLocalizingView *)self instructionLabelBottomConstraint];
    [v11 setConstant:-24.0];
    v13 = 0;
  }

  v15 = [(PedestrianARLocalizingView *)self instructionLabel];
  [v15 setNumberOfLines:v13];

  v16 = [(PedestrianARLocalizingView *)self instructionLabel];
  [v16 setAdjustsFontSizeToFitWidth:v3];
}

- (void)_updateFonts
{
  v3 = [(PedestrianARLocalizingView *)self _isLandscape];
  v4 = &UIContentSizeCategoryAccessibilityMedium;
  if (!v3)
  {
    v4 = &UIContentSizeCategoryAccessibilityLarge;
  }

  v5 = *v4;
  v6 = [(PedestrianARLocalizingView *)self traitCollection];
  v9 = [v6 _maps_traitCollectionWithMaximumContentSizeCategory:v5];

  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v9 compatibleWithTraitCollection:UIFontWeightBold];
  v8 = [(PedestrianARLocalizingView *)self instructionLabel];
  [v8 setFont:v7];
}

- (void)_updateUI
{
  [(PedestrianARLocalizingView *)self _updateFonts];

  [(PedestrianARLocalizingView *)self _updateConstraints];
}

- (void)hideAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(v7, &state);

  v8 = sub_1007A4344();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 134349314;
    v29 = self;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Will hide animated: %@", buf, 0x16u);
  }

  if (v4)
  {
    v11 = [(PedestrianARLocalizingView *)self instructionLabel];
    v12 = [v11 layer];
    [v12 removeAllAnimations];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1007A4E9C;
    v26[3] = &unk_101661B18;
    v26[4] = self;
    [UIView animateWithDuration:0x10000 delay:v26 options:0 animations:0.5 completion:0.1];
    objc_initWeak(buf, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1007A4EFC;
    v25[3] = &unk_101661B18;
    v25[4] = self;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1007A4F5C;
    v22 = &unk_101661108;
    objc_copyWeak(&v24, buf);
    v23 = v6;
    [UIView animateWithDuration:0x10000 delay:v25 options:&v19 animations:0.75 completion:0.0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = [(PedestrianARLocalizingView *)self instructionLabel];
    v14 = [v13 layer];
    [v14 removeAllAnimations];

    v15 = [(PedestrianARLocalizingView *)self instructionLabel];
    v16 = [v15 layer];
    [v16 setOpacity:0.0];

    v17 = [(PedestrianARLocalizingView *)self coachingOverlayView];
    v18 = [v17 layer];
    [v18 setOpacity:0.0];

    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }

  [(PedestrianARLocalizingView *)self setVisible:0, v19, v20, v21, v22];
  [(PedestrianARLocalizingView *)self setFadingOut:v4];
  os_activity_scope_leave(&state);
}

- (void)showAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(v7, &state);

  v8 = sub_1007A4344();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 134349314;
    v21 = self;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Will show animated: %@", buf, 0x16u);
  }

  [(PedestrianARLocalizingView *)self setVisible:1];
  [(PedestrianARLocalizingView *)self setFadingOut:0];
  if (v4)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1007A5264;
    v18[3] = &unk_101661B18;
    v18[4] = self;
    [UIView animateWithDuration:0x10000 delay:v18 options:0 animations:0.3 completion:0.0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007A52C4;
    v17[3] = &unk_101661B18;
    v17[4] = self;
    [UIView animateWithDuration:0x10000 delay:v17 options:v6 animations:0.75 completion:0.0];
  }

  else
  {
    v11 = [(PedestrianARLocalizingView *)self coachingOverlayView];
    v12 = [v11 layer];
    LODWORD(v13) = 1.0;
    [v12 setOpacity:v13];

    v14 = [(PedestrianARLocalizingView *)self instructionLabel];
    v15 = [v14 layer];
    LODWORD(v16) = 1.0;
    [v15 setOpacity:v16];

    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)setSession:(id)a3
{
  v5 = a3;
  if (self->_session != v5)
  {
    v6 = [(PedestrianARLocalizingView *)self activity:0];
    os_activity_scope_enter(v6, &v20);

    v7 = sub_1007A4344();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v22 = self;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting session: %@", buf, 0x16u);
    }

    [(ARSession *)self->_session _removeObserver:self];
    objc_storeStrong(&self->_session, a3);
    v8 = [(ARSession *)self->_session configuration];
    if (v8 && (-[ARSession configuration](self->_session, "configuration"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isPedestrianAR], v9, v8, !v10))
    {
      v16 = sub_1007A4344();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(ARSession *)self->_session configuration];
        *buf = 134349314;
        v22 = self;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Session is NOT configured with a Pedestrian AR configuration (%@); will wait until it is", buf, 0x16u);
      }

      v18 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [v18 setSession:0];

      v19 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [v19 setActive:0 animated:0];

      [(ARSession *)self->_session _addObserver:self];
    }

    else
    {
      v11 = sub_1007A4344();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(ARSession *)self->_session configuration];
        *buf = 134349314;
        v22 = self;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Session is configured with a nil or Pedestrian AR configuration (%@); activating coaching overlay", buf, 0x16u);
      }

      session = self->_session;
      v14 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [v14 setSession:session];

      v15 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [v15 setActive:1 animated:0];
    }

    os_activity_scope_leave(&v20);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v9 traitCollectionDidChange:v4];
  if (!v4 || (-[PedestrianARLocalizingView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARLocalizingView *)self _updateUI];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v3 layoutSubviews];
  [(PedestrianARLocalizingView *)self _updateUI];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v4 didMoveToWindow];
  v3 = [(PedestrianARLocalizingView *)self coachingOverlayView];
  [v3 setActive:1 animated:0];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(v5, &state);

  v9.receiver = self;
  v9.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v9 willMoveToWindow:v4];
  v6 = sub_1007A4344();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Moving to window: %@", buf, 0x16u);
  }

  if (!v4)
  {
    v7 = [(PedestrianARLocalizingView *)self instructionLabel];
    v8 = [v7 layer];
    [v8 removeAllAnimations];
  }

  os_activity_scope_leave(&state);
}

- (void)dealloc
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(v3, &state);

  v4 = sub_1007A4344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(ARCoachingOverlayView *)self->_coachingOverlayView setActive:0 animated:0];
  [(ARSession *)self->_session _removeObserver:self];
  os_activity_scope_leave(&state);
  v5.receiver = self;
  v5.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v5 dealloc];
}

- (PedestrianARLocalizingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54.receiver = self;
  v54.super_class = PedestrianARLocalizingView;
  v7 = [(PedestrianARLocalizingView *)&v54 initWithFrame:?];
  if (v7)
  {
    v8 = _os_activity_create(&_mh_execute_header, "Visual Localization", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    [v7 setActivity:v8];

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v7 + 9), &state);
    v9 = sub_1007A4344();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v58 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v10 = [[ARCoachingOverlayView alloc] initWithFrame:{x, y, width, height}];
    v11 = *(v7 + 3);
    *(v7 + 3) = v10;

    [*(v7 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v7 + 3) setGoal:4];
    [*(v7 + 3) setHideCoachingMessageLabel:1];
    [*(v7 + 3) setDelegate:v7];
    [*(v7 + 3) setActivatesAutomatically:0];
    v12 = [*(v7 + 3) layer];
    [v12 setOpacity:0.0];

    [v7 addSubview:*(v7 + 3)];
    v52 = [*(v7 + 3) leadingAnchor];
    v51 = [v7 leadingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v56[0] = v50;
    v49 = [*(v7 + 3) trailingAnchor];
    v13 = [v7 trailingAnchor];
    v14 = [v49 constraintEqualToAnchor:v13];
    v56[1] = v14;
    v15 = [*(v7 + 3) topAnchor];
    v16 = [v7 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v56[2] = v17;
    v18 = [*(v7 + 3) bottomAnchor];
    v19 = [v7 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v56[3] = v20;
    v21 = [NSArray arrayWithObjects:v56 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v23 = *(v7 + 4);
    *(v7 + 4) = v22;

    [*(v7 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [*(v7 + 4) layer];
    [v24 setOpacity:0.0];

    [*(v7 + 4) setNumberOfLines:0];
    v25 = +[UIColor labelColor];
    [*(v7 + 4) setTextColor:v25];

    v26 = [*(v7 + 4) layer];
    [v26 setOpacity:0.0];

    [v7 addSubview:*(v7 + 4)];
    v27 = [*(v7 + 4) leadingAnchor];
    v28 = [v7 safeAreaLayoutGuide];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v31 = *(v7 + 5);
    *(v7 + 5) = v30;

    v32 = [*(v7 + 4) trailingAnchor];
    v33 = [v7 safeAreaLayoutGuide];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    v36 = *(v7 + 6);
    *(v7 + 6) = v35;

    v37 = [*(v7 + 4) bottomAnchor];
    v38 = [v7 safeAreaLayoutGuide];
    v39 = [v38 bottomAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    v41 = *(v7 + 7);
    *(v7 + 7) = v40;

    v55[0] = *(v7 + 5);
    v55[1] = *(v7 + 6);
    v55[2] = *(v7 + 7);
    v42 = [NSArray arrayWithObjects:v55 count:3];
    [NSLayoutConstraint activateConstraints:v42];

    v43 = [VLFScanningAnimationManager alloc];
    v44 = [*(v7 + 4) layer];
    v45 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v46 = [(VLFScanningAnimationManager *)v43 initWithLayer:v44 animationDuration:v45 timingFunction:0.2];
    v47 = *(v7 + 8);
    *(v7 + 8) = v46;

    [v7 _updateUI];
    os_activity_scope_leave(&state);
  }

  return v7;
}

@end