@interface PedestrianARLocalizingView
- (BOOL)_isLandscape;
- (PedestrianARLocalizingView)initWithFrame:(CGRect)frame;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateUI;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayCoachingMessage:(id)message forCoachingView:(id)view;
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)session:(id)session willRunWithConfiguration:(id)configuration;
- (void)setSession:(id)session;
- (void)showAnimated:(BOOL)animated completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation PedestrianARLocalizingView

- (void)session:(id)session willRunWithConfiguration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  isPedestrianAR = [configurationCopy isPedestrianAR];
  v9 = sub_1007A4344();
  v10 = v9;
  if (isPedestrianAR)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] ARSession will run with PedestrianAR configuration", buf, 0xCu);
    }

    [sessionCopy _removeObserver:self];
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
      selfCopy2 = self;
      v15 = 2112;
      v16 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] ARSession will run with a non-pedestrianAR configuration: %@", buf, 0x16u);
    }
  }
}

- (void)displayCoachingMessage:(id)message forCoachingView:(id)view
{
  messageCopy = message;
  viewCopy = view;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(activity, &state);

  isFadingOut = [(PedestrianARLocalizingView *)self isFadingOut];
  v10 = sub_1007A4344();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (isFadingOut)
  {
    if (v11)
    {
      *buf = 134349314;
      selfCopy4 = self;
      v24 = 2112;
      v25 = messageCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Got a coaching message (%@) while fading out; ignoring it", buf, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134349314;
      selfCopy4 = self;
      v24 = 2112;
      v25 = messageCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Updating coaching message: '%@'", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007A47E4;
    v17[3] = &unk_101661340;
    objc_copyWeak(&v19, &location);
    v18 = messageCopy;
    v12 = objc_retainBlock(v17);
    isVisible = [(PedestrianARLocalizingView *)self isVisible];
    v14 = sub_1007A4344();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (isVisible)
    {
      if (v15)
      {
        *buf = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating text with animation", buf, 0xCu);
      }

      animationManager = [(PedestrianARLocalizingView *)self animationManager];
      [animationManager fadeWithFadeOutCompletion:v12];
    }

    else
    {
      if (v15)
      {
        *buf = 134349056;
        selfCopy4 = self;
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
  _isLandscape = [(PedestrianARLocalizingView *)self _isLandscape];
  instructionLabelLeadingConstraint = [(PedestrianARLocalizingView *)self instructionLabelLeadingConstraint];
  v5 = instructionLabelLeadingConstraint;
  if (_isLandscape)
  {
    [instructionLabelLeadingConstraint setConstant:0.0];

    instructionLabelTrailingConstraint = [(PedestrianARLocalizingView *)self instructionLabelTrailingConstraint];
    [instructionLabelTrailingConstraint setConstant:0.0];

    traitCollection = [(PedestrianARLocalizingView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v9 = sub_10008FB5C(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge);

    instructionLabelBottomConstraint = [(PedestrianARLocalizingView *)self instructionLabelBottomConstraint];
    instructionLabelBottomConstraint2 = instructionLabelBottomConstraint;
    v12 = -18.0;
    if (v9 == 1)
    {
      v12 = -16.0;
    }

    [instructionLabelBottomConstraint setConstant:v12];
    v13 = 2;
  }

  else
  {
    [instructionLabelLeadingConstraint setConstant:26.0];

    instructionLabelTrailingConstraint2 = [(PedestrianARLocalizingView *)self instructionLabelTrailingConstraint];
    [instructionLabelTrailingConstraint2 setConstant:-26.0];

    instructionLabelBottomConstraint2 = [(PedestrianARLocalizingView *)self instructionLabelBottomConstraint];
    [instructionLabelBottomConstraint2 setConstant:-24.0];
    v13 = 0;
  }

  instructionLabel = [(PedestrianARLocalizingView *)self instructionLabel];
  [instructionLabel setNumberOfLines:v13];

  instructionLabel2 = [(PedestrianARLocalizingView *)self instructionLabel];
  [instructionLabel2 setAdjustsFontSizeToFitWidth:_isLandscape];
}

- (void)_updateFonts
{
  _isLandscape = [(PedestrianARLocalizingView *)self _isLandscape];
  v4 = &UIContentSizeCategoryAccessibilityMedium;
  if (!_isLandscape)
  {
    v4 = &UIContentSizeCategoryAccessibilityLarge;
  }

  v5 = *v4;
  traitCollection = [(PedestrianARLocalizingView *)self traitCollection];
  v9 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:v5];

  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v9 compatibleWithTraitCollection:UIFontWeightBold];
  instructionLabel = [(PedestrianARLocalizingView *)self instructionLabel];
  [instructionLabel setFont:v7];
}

- (void)_updateUI
{
  [(PedestrianARLocalizingView *)self _updateFonts];

  [(PedestrianARLocalizingView *)self _updateConstraints];
}

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(activity, &state);

  v8 = sub_1007A4344();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (animatedCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 134349314;
    selfCopy = self;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Will hide animated: %@", buf, 0x16u);
  }

  if (animatedCopy)
  {
    instructionLabel = [(PedestrianARLocalizingView *)self instructionLabel];
    layer = [instructionLabel layer];
    [layer removeAllAnimations];

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
    v23 = completionCopy;
    [UIView animateWithDuration:0x10000 delay:v25 options:&v19 animations:0.75 completion:0.0];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    instructionLabel2 = [(PedestrianARLocalizingView *)self instructionLabel];
    layer2 = [instructionLabel2 layer];
    [layer2 removeAllAnimations];

    instructionLabel3 = [(PedestrianARLocalizingView *)self instructionLabel];
    layer3 = [instructionLabel3 layer];
    [layer3 setOpacity:0.0];

    coachingOverlayView = [(PedestrianARLocalizingView *)self coachingOverlayView];
    layer4 = [coachingOverlayView layer];
    [layer4 setOpacity:0.0];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  [(PedestrianARLocalizingView *)self setVisible:0, v19, v20, v21, v22];
  [(PedestrianARLocalizingView *)self setFadingOut:animatedCopy];
  os_activity_scope_leave(&state);
}

- (void)showAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(activity, &state);

  v8 = sub_1007A4344();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (animatedCopy)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 134349314;
    selfCopy = self;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Will show animated: %@", buf, 0x16u);
  }

  [(PedestrianARLocalizingView *)self setVisible:1];
  [(PedestrianARLocalizingView *)self setFadingOut:0];
  if (animatedCopy)
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
    [UIView animateWithDuration:0x10000 delay:v17 options:completionCopy animations:0.75 completion:0.0];
  }

  else
  {
    coachingOverlayView = [(PedestrianARLocalizingView *)self coachingOverlayView];
    layer = [coachingOverlayView layer];
    LODWORD(v13) = 1.0;
    [layer setOpacity:v13];

    instructionLabel = [(PedestrianARLocalizingView *)self instructionLabel];
    layer2 = [instructionLabel layer];
    LODWORD(v16) = 1.0;
    [layer2 setOpacity:v16];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  if (self->_session != sessionCopy)
  {
    v6 = [(PedestrianARLocalizingView *)self activity:0];
    os_activity_scope_enter(v6, &v20);

    v7 = sub_1007A4344();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      selfCopy3 = self;
      v23 = 2112;
      v24 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting session: %@", buf, 0x16u);
    }

    [(ARSession *)self->_session _removeObserver:self];
    objc_storeStrong(&self->_session, session);
    configuration = [(ARSession *)self->_session configuration];
    if (configuration && (-[ARSession configuration](self->_session, "configuration"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isPedestrianAR], v9, configuration, !v10))
    {
      v16 = sub_1007A4344();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        configuration2 = [(ARSession *)self->_session configuration];
        *buf = 134349314;
        selfCopy3 = self;
        v23 = 2112;
        v24 = configuration2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Session is NOT configured with a Pedestrian AR configuration (%@); will wait until it is", buf, 0x16u);
      }

      coachingOverlayView = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [coachingOverlayView setSession:0];

      coachingOverlayView2 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [coachingOverlayView2 setActive:0 animated:0];

      [(ARSession *)self->_session _addObserver:self];
    }

    else
    {
      v11 = sub_1007A4344();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        configuration3 = [(ARSession *)self->_session configuration];
        *buf = 134349314;
        selfCopy3 = self;
        v23 = 2112;
        v24 = configuration3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Session is configured with a nil or Pedestrian AR configuration (%@); activating coaching overlay", buf, 0x16u);
      }

      session = self->_session;
      coachingOverlayView3 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [coachingOverlayView3 setSession:session];

      coachingOverlayView4 = [(PedestrianARLocalizingView *)self coachingOverlayView];
      [coachingOverlayView4 setActive:1 animated:0];
    }

    os_activity_scope_leave(&v20);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[PedestrianARLocalizingView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
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
  coachingOverlayView = [(PedestrianARLocalizingView *)self coachingOverlayView];
  [coachingOverlayView setActive:1 animated:0];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(activity, &state);

  v9.receiver = self;
  v9.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v9 willMoveToWindow:windowCopy];
  v6 = sub_1007A4344();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = windowCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Moving to window: %@", buf, 0x16u);
  }

  if (!windowCopy)
  {
    instructionLabel = [(PedestrianARLocalizingView *)self instructionLabel];
    layer = [instructionLabel layer];
    [layer removeAllAnimations];
  }

  os_activity_scope_leave(&state);
}

- (void)dealloc
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(PedestrianARLocalizingView *)self activity];
  os_activity_scope_enter(activity, &state);

  v4 = sub_1007A4344();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(ARCoachingOverlayView *)self->_coachingOverlayView setActive:0 animated:0];
  [(ARSession *)self->_session _removeObserver:self];
  os_activity_scope_leave(&state);
  v5.receiver = self;
  v5.super_class = PedestrianARLocalizingView;
  [(PedestrianARLocalizingView *)&v5 dealloc];
}

- (PedestrianARLocalizingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    layer = [*(v7 + 3) layer];
    [layer setOpacity:0.0];

    [v7 addSubview:*(v7 + 3)];
    leadingAnchor = [*(v7 + 3) leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[0] = v50;
    trailingAnchor = [*(v7 + 3) trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[1] = v14;
    topAnchor = [*(v7 + 3) topAnchor];
    topAnchor2 = [v7 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[2] = v17;
    bottomAnchor = [*(v7 + 3) bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[3] = v20;
    v21 = [NSArray arrayWithObjects:v56 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v23 = *(v7 + 4);
    *(v7 + 4) = v22;

    [*(v7 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [*(v7 + 4) layer];
    [layer2 setOpacity:0.0];

    [*(v7 + 4) setNumberOfLines:0];
    v25 = +[UIColor labelColor];
    [*(v7 + 4) setTextColor:v25];

    layer3 = [*(v7 + 4) layer];
    [layer3 setOpacity:0.0];

    [v7 addSubview:*(v7 + 4)];
    leadingAnchor3 = [*(v7 + 4) leadingAnchor];
    safeAreaLayoutGuide = [v7 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v31 = *(v7 + 5);
    *(v7 + 5) = v30;

    trailingAnchor3 = [*(v7 + 4) trailingAnchor];
    safeAreaLayoutGuide2 = [v7 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v36 = *(v7 + 6);
    *(v7 + 6) = v35;

    bottomAnchor3 = [*(v7 + 4) bottomAnchor];
    safeAreaLayoutGuide3 = [v7 safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide3 bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v41 = *(v7 + 7);
    *(v7 + 7) = v40;

    v55[0] = *(v7 + 5);
    v55[1] = *(v7 + 6);
    v55[2] = *(v7 + 7);
    v42 = [NSArray arrayWithObjects:v55 count:3];
    [NSLayoutConstraint activateConstraints:v42];

    v43 = [VLFScanningAnimationManager alloc];
    layer4 = [*(v7 + 4) layer];
    v45 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v46 = [(VLFScanningAnimationManager *)v43 initWithLayer:layer4 animationDuration:v45 timingFunction:0.2];
    v47 = *(v7 + 8);
    *(v7 + 8) = v46;

    [v7 _updateUI];
    os_activity_scope_leave(&state);
  }

  return v7;
}

@end