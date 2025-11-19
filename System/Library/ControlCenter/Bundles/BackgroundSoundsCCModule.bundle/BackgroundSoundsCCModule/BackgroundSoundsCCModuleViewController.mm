@interface BackgroundSoundsCCModuleViewController
- (BackgroundSoundsCCModuleViewController)init;
- (id)containerViewsForPlatterTreatment;
- (void)_updateAlphas;
- (void)_updateSelectedState;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)buttonTouchDown:(id)a3 forEvent:(id)a4;
- (void)setPlatterContentAlpha:(double)a3;
- (void)shortcutDidChangeSize:(id)a3;
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
  v3 = [MEMORY[0x29EDC50D8] sharedInstance];
  -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [v3 comfortSoundsEnabled]);
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = BackgroundSoundsCCModuleViewController;
  [(CCUIButtonModuleViewController *)&v19 viewDidLoad];
  v3 = [(BackgroundSoundsCCModuleViewController *)self view];
  v4 = [(HACCShortcutViewController *)self->_shortcutController view];
  [v3 addSubview:v4];

  v5 = [(CCUIButtonModuleViewController *)self buttonView];
  v6 = hearingLocString();
  [v5 setAccessibilityLabel:v6];

  v7 = [(CCUIButtonModuleViewController *)self buttonView];
  [v7 setAccessibilityIdentifier:@"AX_HEARING_DEVICES"];

  v8 = [(CCUIButtonModuleViewController *)self buttonView];
  v9 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  [v8 setAccessibilityHint:v9];

  v10 = hearingLocString();
  [(CCUIButtonModuleViewController *)self setTitle:v10];

  v11 = MEMORY[0x29EDC7AC8];
  v12 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:3 weight:30.0];
  v13 = [v11 _systemImageNamed:@"music.quarternote.3" withConfiguration:v12];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v13];

  v14 = [MEMORY[0x29EDC7A00] systemBlueColor];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v14];

  [(BackgroundSoundsCCModuleViewController *)self _updateSelectedState];
  objc_initWeak(&location, self);
  v15 = [MEMORY[0x29EDC50D8] sharedInstance];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = sub_29C95B690;
  v16[3] = &unk_29F336EA0;
  objc_copyWeak(&v17, &location);
  [v15 registerUpdateBlock:v16 forRetrieveSelector:sel_comfortSoundsEnabled withListener:self];

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

- (void)shortcutDidChangeSize:(id)a3
{
  v4 = [(BackgroundSoundsCCModuleViewController *)self view];
  [v4 bounds];
  v6 = v5;
  [(BackgroundSoundsCCModuleViewController *)self preferredExpandedContentHeight];
  v8 = v7;

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(BackgroundSoundsCCModuleViewController *)self setPreferredContentSize:v6, v8];
  }

  v9 = [(HACCShortcutViewController *)self->_shortcutController contentModuleContext];
  [v9 invalidateContainerViewsForPlatterTreatment];
}

- (void)buttonTouchDown:(id)a3 forEvent:(id)a4
{
  v5 = [MEMORY[0x29EDB8DB0] now];
  [(BackgroundSoundsCCModuleViewController *)self setTouchDownTime:v5];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v5 = [(BackgroundSoundsCCModuleViewController *)self touchDownTime:a3];
  if (v5 && (v6 = v5, -[BackgroundSoundsCCModuleViewController touchDownTime](self, "touchDownTime"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceNow], v9 = fabs(v8), v7, v6, v9 <= 0.4))
  {
    [(BackgroundSoundsCCModuleViewController *)self setTouchDownTime:0];
    v10 = [MEMORY[0x29EDC50D8] sharedInstance];
    v11 = [v10 comfortSoundsEnabled];
    v12 = [MEMORY[0x29EDC50D8] sharedInstance];
    [v12 setComfortSoundsEnabled:v11 ^ 1u];

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
    [(BackgroundSoundsCCModuleViewController *)self _updateAlphas];
  }
}

- (void)_updateAlphas
{
  v3 = [(CCUIButtonModuleViewController *)self isExpanded];
  v4 = [(HACCShortcutViewController *)self->_shortcutController view];
  v5 = v4;
  if (v3)
  {
    [(BackgroundSoundsCCModuleViewController *)self platterContentAlpha];
    [v5 setAlpha:?];

    v6 = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = 0.0;
    v8 = v6;
  }

  else
  {
    [v4 setAlpha:0.0];

    v8 = [(CCUIButtonModuleViewController *)self buttonView];
    [(BackgroundSoundsCCModuleViewController *)self platterContentAlpha];
    v6 = v8;
  }

  [v6 setAlpha:v7];
}

@end