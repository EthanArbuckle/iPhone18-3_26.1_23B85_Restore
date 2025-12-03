@interface BackgroundSoundsCCModuleViewController
- (BackgroundSoundsCCModuleViewController)init;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedState;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)buttonTouchDown:(id)down forEvent:(id)event;
- (void)setPlatterContentAlpha:(double)alpha;
- (void)shortcutDidChangeSize:(id)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BackgroundSoundsCCModuleViewController

- (BackgroundSoundsCCModuleViewController)init
{
  v6.receiver = self;
  v6.super_class = BackgroundSoundsCCModuleViewController;
  v2 = [(BackgroundSoundsCCModuleViewController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC50A8]) initWithDelegate:v2 andAvailableModules:&unk_2A23E4548];
    shortcutController = v2->_shortcutController;
    v2->_shortcutController = v3;

    [(HACCShortcutViewController *)v2->_shortcutController setPrefersContentToAlwaysExpand:1];
    [(BackgroundSoundsCCModuleViewController *)v2 addChildViewController:v2->_shortcutController];
    v2->_platterContentAlpha = 1.0;
  }

  return v2;
}

- (void)_updateSelectedState
{
  mEMORY[0x29EDC50D8] = [MEMORY[0x29EDC50D8] sharedInstance];
  -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [mEMORY[0x29EDC50D8] comfortSoundsEnabled]);
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = BackgroundSoundsCCModuleViewController;
  [(CCUIButtonModuleViewController *)&v19 viewDidLoad];
  view = [(BackgroundSoundsCCModuleViewController *)self view];
  view2 = [(HACCShortcutViewController *)self->_shortcutController view];
  [view addSubview:view2];

  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  v6 = hearingLocString();
  [buttonView setAccessibilityLabel:v6];

  buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView2 setAccessibilityIdentifier:@"AX_HEARING_DEVICES"];

  buttonView3 = [(CCUIButtonModuleViewController *)self buttonView];
  v9 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  [buttonView3 setAccessibilityHint:v9];

  v10 = hearingLocString();
  [(CCUIButtonModuleViewController *)self setTitle:v10];

  v11 = MEMORY[0x29EDC7AC8];
  v12 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:3 weight:30.0];
  v13 = [v11 _systemImageNamed:@"music.quarternote.3" withConfiguration:v12];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v13];

  systemBlueColor = [MEMORY[0x29EDC7A00] systemBlueColor];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:systemBlueColor];

  [(BackgroundSoundsCCModuleViewController *)self _updateSelectedState];
  objc_initWeak(&location, self);
  mEMORY[0x29EDC50D8] = [MEMORY[0x29EDC50D8] sharedInstance];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = sub_29C95B690;
  v16[3] = &unk_29F336EA0;
  objc_copyWeak(&v17, &location);
  [mEMORY[0x29EDC50D8] registerUpdateBlock:v16 forRetrieveSelector:sel_comfortSoundsEnabled withListener:self];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BackgroundSoundsCCModuleViewController;
  [(CCUIButtonModuleViewController *)&v3 viewWillLayoutSubviews];
  [(BackgroundSoundsCCModuleViewController *)self _updateAlphas];
}

- (void)shortcutDidChangeSize:(id)size
{
  view = [(BackgroundSoundsCCModuleViewController *)self view];
  [view bounds];
  v6 = v5;
  [(BackgroundSoundsCCModuleViewController *)self preferredExpandedContentHeight];
  v8 = v7;

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(BackgroundSoundsCCModuleViewController *)self setPreferredContentSize:v6, v8];
  }

  contentModuleContext = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [contentModuleContext invalidateContainerViewsForPlatterTreatment];
}

- (void)buttonTouchDown:(id)down forEvent:(id)event
{
  v5 = [MEMORY[0x29EDB8DB0] now];
  [(BackgroundSoundsCCModuleViewController *)self setTouchDownTime:v5];
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v5 = [(BackgroundSoundsCCModuleViewController *)self touchDownTime:tapped];
  if (v5 && (v6 = v5, -[BackgroundSoundsCCModuleViewController touchDownTime](self, "touchDownTime"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceNow], v9 = fabs(v8), v7, v6, v9 <= 0.4))
  {
    [(BackgroundSoundsCCModuleViewController *)self setTouchDownTime:0];
    mEMORY[0x29EDC50D8] = [MEMORY[0x29EDC50D8] sharedInstance];
    comfortSoundsEnabled = [mEMORY[0x29EDC50D8] comfortSoundsEnabled];
    mEMORY[0x29EDC50D8]2 = [MEMORY[0x29EDC50D8] sharedInstance];
    [mEMORY[0x29EDC50D8]2 setComfortSoundsEnabled:comfortSoundsEnabled ^ 1u];

    [(BackgroundSoundsCCModuleViewController *)self _updateSelectedState];
  }

  else
  {

    [(BackgroundSoundsCCModuleViewController *)self setTouchDownTime:0];
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
    [(BackgroundSoundsCCModuleViewController *)self _updateAlphas];
  }
}

- (void)_updateAlphas
{
  isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
  view = [(HACCShortcutViewController *)self->_shortcutController view];
  v5 = view;
  if (isExpanded)
  {
    [(BackgroundSoundsCCModuleViewController *)self platterContentAlpha];
    [v5 setAlpha:?];

    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = 0.0;
    buttonView2 = buttonView;
  }

  else
  {
    [view setAlpha:0.0];

    buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
    [(BackgroundSoundsCCModuleViewController *)self platterContentAlpha];
    buttonView = buttonView2;
  }

  [buttonView setAlpha:v7];
}

@end