@interface AFUISiriCarPlayView
- (int64_t)_orbViewModeForCurrentSessionState;
- (void)_animateEdgeLightToOn;
- (void)_animateLatencyLightToOff;
- (void)_animateLatencyLightToOn;
- (void)_setupContentViews;
- (void)_setupEdgeLightView;
- (void)_setupLatencyLightView;
- (void)_updateOrbViewModeToMatchSessionState;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)resetOrbViewToSiriSessionState;
- (void)setupEdgeLightBackgroundView;
@end

@implementation AFUISiriCarPlayView

- (void)_setupContentViews
{
  v21[4] = *MEMORY[0x277D85DE8];
  if ([(AFUISiriCarPlayView *)self _deviceSupportsAI])
  {
    [(AFUISiriCarPlayView *)self _setupEdgeLightView];
    [(AFUISiriCarPlayView *)self _setupLatencyLightView];
  }

  else
  {
    [(AFUISiriCarPlayView *)self _setupOrbView];
  }

  if (+[AFUIUtilities shouldShowSiriXIndicator])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    siriXIndicatorView = self->_siriXIndicatorView;
    self->_siriXIndicatorView = v4;

    [(UIView *)self->_siriXIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_siriXIndicatorView layer];
    [layer setCornerRadius:2.5];

    layer2 = [(UIView *)self->_siriXIndicatorView layer];
    [layer2 setAllowsHitTesting:0];

    [(AFUISiriCarPlayView *)self setRequestHandlingStatus:0];
    [(AFUISiriCarPlayView *)self addSubview:self->_siriXIndicatorView];
    leadingAnchor = [(UIView *)self->_siriXIndicatorView leadingAnchor];
    safeAreaLayoutGuide = [(AFUISiriCarPlayView *)self safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    v21[0] = v17;
    bottomAnchor = [(UIView *)self->_siriXIndicatorView bottomAnchor];
    safeAreaLayoutGuide2 = [(AFUISiriCarPlayView *)self safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v21[1] = v11;
    widthAnchor = [(UIView *)self->_siriXIndicatorView widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:5.0];
    v21[2] = v13;
    heightAnchor = [(UIView *)self->_siriXIndicatorView heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:5.0];
    v21[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [v3 addObjectsFromArray:v16];

    [MEMORY[0x277CCAAD0] activateConstraints:v3];
  }
}

- (void)setupEdgeLightBackgroundView
{
  if ([(AFUISiriCarPlayView *)self _deviceSupportsAI])
  {
    v3 = objc_alloc_init(AFUITouchPassThroughView);
    edgeLightBackgroundView = self->_edgeLightBackgroundView;
    self->_edgeLightBackgroundView = v3;

    [(AFUITouchPassThroughView *)self->_edgeLightBackgroundView setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    layer = [(AFUITouchPassThroughView *)self->_edgeLightBackgroundView layer];
    [layer setAllowsHitTesting:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AFUITouchPassThroughView *)self->_edgeLightBackgroundView setBackgroundColor:clearColor];

    [(AFUITouchPassThroughView *)self->_edgeLightBackgroundView setAutoresizingMask:18];
    v7 = self->_edgeLightBackgroundView;

    [(AFUISiriCarPlayView *)self addSubview:v7];
  }
}

- (void)_setupEdgeLightView
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  edgeLightMask = self->_edgeLightMask;
  self->_edgeLightMask = v3;

  [(SUICEdgeLightMaskMetalLayer *)self->_edgeLightMask setAllowsHitTesting:0];
  v5 = self->_edgeLightMask;
  [(AFUISiriCarPlayView *)self bounds];
  [(SUICEdgeLightMaskMetalLayer *)v5 setFrame:?];
  [(SUICEdgeLightMaskMetalLayer *)self->_edgeLightMask setUserInterfaceIdiom:3];
  LODWORD(v6) = 1058642330;
  [(SUICEdgeLightMaskMetalLayer *)self->_edgeLightMask setFlameScale:v6];
  [(SUICEdgeLightMaskMetalLayer *)self->_edgeLightMask setCompositingFilter:*MEMORY[0x277CDA5A0]];
  v7 = objc_alloc(MEMORY[0x277D76050]);
  [(AFUISiriCarPlayView *)self bounds];
  v8 = [v7 initWithFrame:1 preferringAudioReactivity:?];
  systemLightView = self->_systemLightView;
  self->_systemLightView = v8;

  [(UIView *)self->_systemLightView setUserInteractionEnabled:0];
  layer = [(UIView *)self->_systemLightView layer];
  v11 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v12 = MEMORY[0x277CCAE60];
  CAColorMatrixMakeMultiplyColor();
  v13 = [v12 valueWithCAColorMatrix:v33];
  [v11 setValue:v13 forKey:*MEMORY[0x277CDA440]];

  [v11 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA350]];
  v35[0] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [layer setFilters:v14];

  [layer setOpaque:0];
  [layer setAllowsHitTesting:0];
  v32 = layer;
  [layer addSublayer:self->_edgeLightMask];
  [(AFUISiriCarPlayView *)self addSubview:self->_systemLightView];
  [(UIView *)self->_systemLightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = MEMORY[0x277CBEB18];
  bottomAnchor = [(UIView *)self->_systemLightView bottomAnchor];
  bottomAnchor2 = [(AFUISiriCarPlayView *)self bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v34[0] = v29;
  topAnchor = [(UIView *)self->_systemLightView topAnchor];
  topAnchor2 = [(AFUISiriCarPlayView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v34[1] = v16;
  leadingAnchor = [(UIView *)self->_systemLightView leadingAnchor];
  leadingAnchor2 = [(AFUISiriCarPlayView *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v34[2] = v19;
  trailingAnchor = [(UIView *)self->_systemLightView trailingAnchor];
  trailingAnchor2 = [(AFUISiriCarPlayView *)self trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v34[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v24 = [v15 arrayWithArray:v23];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
  if (!self->_statusBarStyleAssertion)
  {
    initForSiriPresentation = [objc_alloc(MEMORY[0x277CF9348]) initForSiriPresentation];
    statusBarStyleAssertion = self->_statusBarStyleAssertion;
    self->_statusBarStyleAssertion = initForSiriPresentation;
  }
}

- (void)_setupLatencyLightView
{
  v3 = objc_alloc_init(_TtC11AssistantUI26AFUISiriCarPlayLatencyView);
  latencyLightView = self->_latencyLightView;
  self->_latencyLightView = &v3->super;

  v5 = self->_latencyLightView;
  [(AFUISiriCarPlayView *)self bounds];
  [(UIView *)v5 setFrame:?];
  [(UIView *)self->_latencyLightView setAutoresizingMask:18];
  [(UIView *)self->_latencyLightView setHidden:1];
  layer = [(UIView *)self->_latencyLightView layer];
  [layer setAllowsHitTesting:0];

  v7 = self->_latencyLightView;
  systemLightView = self->_systemLightView;

  [(AFUISiriCarPlayView *)self insertSubview:v7 aboveSubview:systemLightView];
}

- (void)_animateLatencyLightToOn
{
  [(UIView *)self->_latencyLightView setAlpha:0.0];
  [(UIView *)self->_latencyLightView setHidden:0];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__AFUISiriCarPlayView__animateLatencyLightToOn__block_invoke;
  v4[3] = &unk_278CD55A0;
  objc_copyWeak(&v5, &location);
  [v3 animateWithDuration:v4 animations:0.419999987];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__AFUISiriCarPlayView__animateLatencyLightToOn__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[59] setAlpha:1.0];
    WeakRetained = v2;
  }
}

- (int64_t)_orbViewModeForCurrentSessionState
{
  v2 = MEMORY[0x277D60138];
  siriSessionState = self->_siriSessionState;
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);
  v5 = [v2 orbViewModeForSiriSessionState:siriSessionState isAttending:{objc_msgSend(WeakRetained, "requestSessionAttendingState")}];

  return v5;
}

- (void)_updateOrbViewModeToMatchSessionState
{
  v18 = *MEMORY[0x277D85DE8];
  mode = [(SUICOrbView *)self->_orbView mode];
  _orbViewModeForCurrentSessionState = [(AFUISiriCarPlayView *)self _orbViewModeForCurrentSessionState];
  v5 = *MEMORY[0x277CEF098];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (mode == _orbViewModeForCurrentSessionState)
  {
    if (v6)
    {
      v7 = v5;
      v8 = [(AFUISiriCarPlayView *)self _SUICOrbViewModeGetDescription:mode];
      v12 = 136315394;
      v13 = "[AFUISiriCarPlayView _updateOrbViewModeToMatchSessionState]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation mode stays at %@", &v12, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = v5;
      v10 = [(AFUISiriCarPlayView *)self _SUICOrbViewModeGetDescription:mode];
      v11 = [(AFUISiriCarPlayView *)self _SUICOrbViewModeGetDescription:_orbViewModeForCurrentSessionState];
      v12 = 136315650;
      v13 = "[AFUISiriCarPlayView _updateOrbViewModeToMatchSessionState]";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation mode %@ -> %@", &v12, 0x20u);
    }

    [(SUICOrbView *)self->_orbView setMode:_orbViewModeForCurrentSessionState];
  }
}

- (void)resetOrbViewToSiriSessionState
{
  if (self->_siriSessionState || [(SUICOrbView *)self->_orbView mode])
  {

    [(AFUISiriCarPlayView *)self _updateOrbViewModeToMatchSessionState];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AFUISiriCarPlayView;
  [(AFUISiriCarPlayView *)&v5 layoutSubviews];
  if ([(AFUISiriCarPlayView *)self _deviceSupportsAI])
  {
    edgeLightMask = self->_edgeLightMask;
    [(AFUISiriCarPlayView *)self bounds];
    [(SUICEdgeLightMaskMetalLayer *)edgeLightMask setFrame:?];
    edgeLightBackgroundView = self->_edgeLightBackgroundView;
    [(AFUISiriCarPlayView *)self bounds];
    [(AFUITouchPassThroughView *)edgeLightBackgroundView setFrame:?];
  }
}

- (void)_animateEdgeLightToOn
{
  if (self->_edgeLightOffAndInitialized)
  {
    window = [(AFUISiriCarPlayView *)self window];

    if (window)
    {
      self->_edgeLightOffAndInitialized = 0;
      objc_initWeak(&location, self);
      edgeLightMask = self->_edgeLightMask;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __44__AFUISiriCarPlayView__animateEdgeLightToOn__block_invoke;
      v15[3] = &unk_278CD55A0;
      objc_copyWeak(&v16, &location);
      [(SUICEdgeLightMaskMetalLayer *)edgeLightMask animateOnWithCompletion:v15];
      traitCollection = [(AFUISiriCarPlayView *)self traitCollection];
      v6 = [traitCollection userInterfaceStyle] == 1;

      v7 = MEMORY[0x277D75D18];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __44__AFUISiriCarPlayView__animateEdgeLightToOn__block_invoke_2;
      v12 = &unk_278CD5708;
      objc_copyWeak(&v13, &location);
      v14 = v6;
      [v7 animateWithDuration:&v9 animations:0.419999987];
      WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);
      [WeakRetained playCarPlayShockwave];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_launchIntoEdgeLightAnimation = 1;
    }
  }
}

- (void)didMoveToWindow
{
  v10.receiver = self;
  v10.super_class = AFUISiriCarPlayView;
  [(AFUISiriCarPlayView *)&v10 didMoveToWindow];
  window = [(AFUISiriCarPlayView *)self window];

  if (window && [(AFUISiriCarPlayView *)self _deviceSupportsAI])
  {
    statusBarStyleAssertion = self->_statusBarStyleAssertion;
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    [(CRSUIStatusBarStyleAssertion *)statusBarStyleAssertion acquireWithAnimationSettings:v5];

    edgeLightMask = self->_edgeLightMask;
    window2 = [(AFUISiriCarPlayView *)self window];
    screen = [window2 screen];
    [(SUICEdgeLightMaskMetalLayer *)edgeLightMask setScreen:screen];

    if (self->_launchIntoEdgeLightAnimation)
    {
      window3 = [(AFUISiriCarPlayView *)self window];
      [window3 bounds];
      [(AFUISiriCarPlayView *)self setFrame:?];

      self->_launchIntoEdgeLightAnimation = 0;
      [(AFUISiriCarPlayView *)self _animateEdgeLightToOn];
    }
  }
}

void __44__AFUISiriCarPlayView__animateEdgeLightToOn__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = 0.15;
  if (!*(a1 + 40))
  {
    v2 = 0.1;
  }

  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:v2];
  [WeakRetained _updateEdgeLightBackgroundColor:v3];
}

void __44__AFUISiriCarPlayView__animateEdgeLightToOn__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [*MEMORY[0x277D76620] finishedIPTest:*MEMORY[0x277D61AA0]];
    [v2[64] appearanceDidChange:1 machAbsoluteTime:mach_absolute_time()];
    WeakRetained = v2;
  }
}

- (void)_animateLatencyLightToOff
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__AFUISiriCarPlayView__animateLatencyLightToOff__block_invoke;
  v5[3] = &unk_278CD55A0;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__AFUISiriCarPlayView__animateLatencyLightToOff__block_invoke_2;
  v3[3] = &unk_278CD55C8;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v5 animations:v3 completion:0.419999987];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__AFUISiriCarPlayView__animateLatencyLightToOff__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[59] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __48__AFUISiriCarPlayView__animateLatencyLightToOff__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[59] setHidden:1];
    WeakRetained = v2;
  }
}

@end