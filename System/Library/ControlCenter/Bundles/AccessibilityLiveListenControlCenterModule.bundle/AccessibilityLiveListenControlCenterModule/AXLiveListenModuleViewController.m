@interface AXLiveListenModuleViewController
- (AXLiveListenModuleViewController)init;
- (BOOL)canDismissPresentedContent;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedStatus;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)buttonTouchDown:(id)a3 forEvent:(id)a4;
- (void)expandLiveListenModule;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)setPlatterContentAlpha:(double)a3;
- (void)shortcutDidChangeSize:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
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

    v8 = [MEMORY[0x29EDC7A00] systemRedColor];
    [(CCUIButtonModuleViewController *)v2 setSelectedGlyphColor:v8];
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
  v3 = [(AXLiveListenModuleViewController *)self view];
  v4 = [(HACCShortcutViewController *)self->_shortcutController view];
  [v3 addSubview:v4];

  objc_initWeak(&location, self);
  v5 = [(CCUIButtonModuleViewController *)self buttonView];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = sub_29C9256A0;
  v15[3] = &unk_29F333E28;
  objc_copyWeak(&v16, &location);
  [v5 _setAccessibilityTraitsBlock:v15];

  v6 = [(CCUIButtonModuleViewController *)self buttonView];
  v7 = hearingLocString();
  [v6 setAccessibilityLabel:v7];

  v8 = [(CCUIButtonModuleViewController *)self buttonView];
  [v8 setAccessibilityIdentifier:@"AX_LIVE_LISTEN"];

  v9 = [(CCUIButtonModuleViewController *)self buttonView];
  v10 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  [v9 setAccessibilityHint:v10];

  v11 = hearingLocString();
  [(CCUIButtonModuleViewController *)self setTitle:v11];

  v12 = [MEMORY[0x29EDC50D0] sharedInstance];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C925700;
  v13[3] = &unk_29F333E78;
  objc_copyWeak(&v14, &location);
  [v12 registerListener:self forLiveListenLevelsHandler:v13];

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

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AXLiveListenModuleViewController;
  [(CCUIButtonModuleViewController *)&v6 willTransitionToExpandedContentMode:?];
  if (v3)
  {
    [(AXLiveListenModuleViewController *)self pauseSoundRecognitionIfNecessary];
  }

  else
  {
    [(AXLiveListenModuleViewController *)self restartSoundRecognitionIfNecessary];
  }

  v5 = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [v5 invalidateContainerViewsForPlatterTreatment];
}

- (BOOL)canDismissPresentedContent
{
  v2 = [(HACCShortcutViewController *)self->_shortcutController expandedController];
  v3 = v2 != 0;

  return v3;
}

- (void)shortcutDidChangeSize:(id)a3
{
  v4 = [(AXLiveListenModuleViewController *)self view];
  [v4 bounds];
  v6 = v5;
  [(AXLiveListenModuleViewController *)self preferredExpandedContentHeight];
  v8 = v7;

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(AXLiveListenModuleViewController *)self setPreferredContentSize:v6, v8];
  }

  v9 = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [v9 invalidateContainerViewsForPlatterTreatment];
}

- (void)expandLiveListenModule
{
  v2 = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [v2 requestExpandModule];
}

- (void)pauseSoundRecognitionIfNecessary
{
  v3 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v4 = [v3 soundDetectionState];

  if (v4 == 2)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_29C924000, v5, OS_LOG_TYPE_DEFAULT, "Pausing Sound Recognition for Live Listen UI", v7, 2u);
    }

    v6 = [MEMORY[0x29EDBDDB8] sharedInstance];
    [v6 setSoundDetectionState:1];

    self->_pausedSoundRecognition = 1;
  }
}

- (void)restartSoundRecognitionIfNecessary
{
  if (self->_pausedSoundRecognition)
  {
    v3 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v4 = [v3 soundDetectionState];

    if (v4 == 1)
    {
      v5 = AXLogUltron();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_29C924000, v5, OS_LOG_TYPE_DEFAULT, "Resuming Sound Recognition for Live Listen UI", v7, 2u);
      }

      v6 = [MEMORY[0x29EDBDDB8] sharedInstance];
      [v6 setSoundDetectionState:2];

      self->_pausedSoundRecognition = 0;
    }
  }
}

- (void)buttonTouchDown:(id)a3 forEvent:(id)a4
{
  v5 = [MEMORY[0x29EDB8DB0] now];
  [(AXLiveListenModuleViewController *)self setTouchDownTime:v5];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v5 = [(AXLiveListenModuleViewController *)self touchDownTime:a3];
  if (v5 && (v6 = v5, -[AXLiveListenModuleViewController touchDownTime](self, "touchDownTime"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceNow], v9 = fabs(v8), v7, v6, v9 <= 0.4))
  {
    [(AXLiveListenModuleViewController *)self setTouchDownTime:0];
    if (liveListenStreamSelected())
    {
      v10 = [(AXLiveListenModuleViewController *)self isLiveListenEnabled];
      v11 = [MEMORY[0x29EDC50D0] sharedInstance];
      v12 = v11;
      if (v10)
      {
        [v11 stopLiveListen];
      }

      else
      {
        [v11 startLiveListen];
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
    v3 = [(HACCShortcutViewController *)self->_shortcutController containerViewsForPlatterTreatment];
  }

  else
  {
    v4 = [(CCUIButtonModuleViewController *)self buttonView];
    v7[0] = v4;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  v5 = *MEMORY[0x29EDCA608];

  return v3;
}

- (void)setPlatterContentAlpha:(double)a3
{
  if (self->_platterContentAlpha != a3)
  {
    self->_platterContentAlpha = a3;
    [(AXLiveListenModuleViewController *)self _updateAlphas];
  }
}

- (void)_updateAlphas
{
  v3 = [(CCUIButtonModuleViewController *)self isExpanded];
  v4 = [(HACCShortcutViewController *)self->_shortcutController view];
  v5 = v4;
  if (v3)
  {
    [(AXLiveListenModuleViewController *)self platterContentAlpha];
    [v5 setAlpha:?];

    v6 = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = 0.0;
    v8 = v6;
  }

  else
  {
    [v4 setAlpha:0.0];

    v8 = [(CCUIButtonModuleViewController *)self buttonView];
    [(AXLiveListenModuleViewController *)self platterContentAlpha];
    v6 = v8;
  }

  [v6 setAlpha:v7];
}

@end