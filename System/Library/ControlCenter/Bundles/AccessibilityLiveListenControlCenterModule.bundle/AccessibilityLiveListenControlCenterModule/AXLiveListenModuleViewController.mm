@interface AXLiveListenModuleViewController
- (AXLiveListenModuleViewController)init;
- (BOOL)canDismissPresentedContent;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedStatus;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)buttonTouchDown:(id)down forEvent:(id)event;
- (void)expandLiveListenModule;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)setPlatterContentAlpha:(double)alpha;
- (void)shortcutDidChangeSize:(id)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation AXLiveListenModuleViewController

- (AXLiveListenModuleViewController)init
{
  v10.receiver = self;
  v10.super_class = AXLiveListenModuleViewController;
  v2 = [(AXLiveListenModuleViewController *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC50A8]) initWithDelegate:v2 andAvailableModules:&unk_2A23DF3E0];
    shortcutController = v2->_shortcutController;
    v2->_shortcutController = v3;

    [(AXLiveListenModuleViewController *)v2 addChildViewController:v2->_shortcutController];
    [(HACCShortcutViewController *)v2->_shortcutController didMoveToParentViewController:v2];
    v2->_platterContentAlpha = 1.0;
    v5 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"mic.fill"];
    v6 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:30.0];
    v7 = [v5 imageByApplyingSymbolConfiguration:v6];
    [(CCUIButtonModuleViewController *)v2 setGlyphImage:v7];

    systemRedColor = [MEMORY[0x29EDC7A00] systemRedColor];
    [(CCUIButtonModuleViewController *)v2 setSelectedGlyphColor:systemRedColor];
  }

  return v2;
}

- (void)_updateSelectedStatus
{
  [(AXLiveListenModuleViewController *)self isLiveListenEnabled];

  MEMORY[0x2A1C70FE8](self, sel_setSelected_);
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v18 viewDidLoad];
  view = [(AXLiveListenModuleViewController *)self view];
  view2 = [(HACCShortcutViewController *)self->_shortcutController view];
  [view addSubview:view2];

  objc_initWeak(&location, self);
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = sub_29C9256A0;
  v15[3] = &unk_29F333E28;
  objc_copyWeak(&v16, &location);
  [buttonView _setAccessibilityTraitsBlock:v15];

  buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
  v7 = hearingLocString();
  [buttonView2 setAccessibilityLabel:v7];

  buttonView3 = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView3 setAccessibilityIdentifier:@"AX_LIVE_LISTEN"];

  buttonView4 = [(CCUIButtonModuleViewController *)self buttonView];
  v10 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  [buttonView4 setAccessibilityHint:v10];

  v11 = hearingLocString();
  [(CCUIButtonModuleViewController *)self setTitle:v11];

  mEMORY[0x29EDC50D0] = [MEMORY[0x29EDC50D0] sharedInstance];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C925700;
  v13[3] = &unk_29F333E78;
  objc_copyWeak(&v14, &location);
  [mEMORY[0x29EDC50D0] registerListener:self forLiveListenLevelsHandler:v13];

  [(AXLiveListenModuleViewController *)self _updateSelectedStatus];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v3 viewWillLayoutSubviews];
  [(AXLiveListenModuleViewController *)self _updateAlphas];
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v6.receiver = self;
  v6.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v6 willTransitionToExpandedContentMode:?];
  if (modeCopy)
  {
    [(AXLiveListenModuleViewController *)self pauseSoundRecognitionIfNecessary];
  }

  else
  {
    [(AXLiveListenModuleViewController *)self restartSoundRecognitionIfNecessary];
  }

  contentModuleContext = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [contentModuleContext invalidateContainerViewsForPlatterTreatment];
}

- (BOOL)canDismissPresentedContent
{
  expandedController = [(HACCShortcutViewController *)self->_shortcutController expandedController];
  v3 = expandedController != 0;

  return v3;
}

- (void)shortcutDidChangeSize:(id)size
{
  view = [(AXLiveListenModuleViewController *)self view];
  [view bounds];
  v6 = v5;
  [(AXLiveListenModuleViewController *)self preferredExpandedContentHeight];
  v8 = v7;

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(AXLiveListenModuleViewController *)self setPreferredContentSize:v6, v8];
  }

  contentModuleContext = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [contentModuleContext invalidateContainerViewsForPlatterTreatment];
}

- (void)expandLiveListenModule
{
  contentModuleContext = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [contentModuleContext requestExpandModule];
}

- (void)pauseSoundRecognitionIfNecessary
{
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  soundDetectionState = [mEMORY[0x29EDBDDB8] soundDetectionState];

  if (soundDetectionState == 2)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_29C924000, v5, OS_LOG_TYPE_DEFAULT, "Pausing Sound Recognition for Live Listen UI", v7, 2u);
    }

    mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
    [mEMORY[0x29EDBDDB8]2 setSoundDetectionState:1];

    self->_pausedSoundRecognition = 1;
  }
}

- (void)restartSoundRecognitionIfNecessary
{
  if (self->_pausedSoundRecognition)
  {
    mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
    soundDetectionState = [mEMORY[0x29EDBDDB8] soundDetectionState];

    if (soundDetectionState == 1)
    {
      v5 = AXLogUltron();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_29C924000, v5, OS_LOG_TYPE_DEFAULT, "Resuming Sound Recognition for Live Listen UI", v7, 2u);
      }

      mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
      [mEMORY[0x29EDBDDB8]2 setSoundDetectionState:2];

      self->_pausedSoundRecognition = 0;
    }
  }
}

- (void)buttonTouchDown:(id)down forEvent:(id)event
{
  v5 = [MEMORY[0x29EDB8DB0] now];
  [(AXLiveListenModuleViewController *)self setTouchDownTime:v5];
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v5 = [(AXLiveListenModuleViewController *)self touchDownTime:tapped];
  if (v5 && (v6 = v5, -[AXLiveListenModuleViewController touchDownTime](self, "touchDownTime"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceNow], v9 = fabs(v8), v7, v6, v9 <= 0.4))
  {
    [(AXLiveListenModuleViewController *)self setTouchDownTime:0];
    if (liveListenStreamSelected())
    {
      isLiveListenEnabled = [(AXLiveListenModuleViewController *)self isLiveListenEnabled];
      mEMORY[0x29EDC50D0] = [MEMORY[0x29EDC50D0] sharedInstance];
      v12 = mEMORY[0x29EDC50D0];
      if (isLiveListenEnabled)
      {
        [mEMORY[0x29EDC50D0] stopLiveListen];
      }

      else
      {
        [mEMORY[0x29EDC50D0] startLiveListen];
      }
    }

    else
    {

      MEMORY[0x2A1C70FE8](self, sel_expandLiveListenModule);
    }
  }

  else
  {

    [(AXLiveListenModuleViewController *)self setTouchDownTime:0];
  }
}

- (id)containerViewsForPlatterTreatment
{
  v7[1] = *MEMORY[0x29EDCA608];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    containerViewsForPlatterTreatment = [(HACCShortcutViewController *)self->_shortcutController containerViewsForPlatterTreatment];
  }

  else
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    v7[0] = buttonView;
    containerViewsForPlatterTreatment = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  v5 = *MEMORY[0x29EDCA608];

  return containerViewsForPlatterTreatment;
}

- (void)setPlatterContentAlpha:(double)alpha
{
  if (self->_platterContentAlpha != alpha)
  {
    self->_platterContentAlpha = alpha;
    [(AXLiveListenModuleViewController *)self _updateAlphas];
  }
}

- (void)_updateAlphas
{
  isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
  view = [(HACCShortcutViewController *)self->_shortcutController view];
  v5 = view;
  if (isExpanded)
  {
    [(AXLiveListenModuleViewController *)self platterContentAlpha];
    [v5 setAlpha:?];

    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = 0.0;
    buttonView2 = buttonView;
  }

  else
  {
    [view setAlpha:0.0];

    buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
    [(AXLiveListenModuleViewController *)self platterContentAlpha];
    buttonView = buttonView2;
  }

  [buttonView setAlpha:v7];
}

@end