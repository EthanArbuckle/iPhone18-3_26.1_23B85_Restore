@interface SHShazamMenuModuleViewController
- (BOOL)isShazamAppInstalled;
- (SHShazamMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)historyMenuItem;
- (id)recognizeMusicMenuItem;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)configureMenuItems;
- (void)dealloc;
- (void)dismissModule;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentHistoryWithAuthentication;
- (void)refreshState;
- (void)refreshStateWithSelected:(BOOL)a3 expanded:(BOOL)a4;
- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)a3;
- (void)requestAuthenticationIfShazamIsInstalledAndProtected:(id)a3;
- (void)setContentModuleContext:(id)a3;
- (void)toggleManager:(id)a3 didToggleToState:(int64_t)a4;
- (void)updateStatusMessage;
- (void)viewDidLoad;
@end

@implementation SHShazamMenuModuleViewController

- (void)dealloc
{
  [(NSUserDefaults *)self->_musicRecognitionPreferences removeObserver:self forKeyPath:@"isControlToggleOn" context:0];
  v3.receiver = self;
  v3.super_class = SHShazamMenuModuleViewController;
  [(SHShazamMenuModuleViewController *)&v3 dealloc];
}

- (SHShazamMenuModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SHShazamMenuModuleViewController;
  v4 = [(CCUIMenuModuleViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SHToggleManager);
    toggleManager = v4->_toggleManager;
    v4->_toggleManager = v5;

    [(SHToggleManager *)v4->_toggleManager setDelegate:v4];
    v7 = [objc_alloc(MEMORY[0x29EDB8E78]) initWithSuiteName:@"group.com.apple.musicrecognition"];
    musicRecognitionPreferences = v4->_musicRecognitionPreferences;
    v4->_musicRecognitionPreferences = v7;

    [(NSUserDefaults *)v4->_musicRecognitionPreferences addObserver:v4 forKeyPath:@"isControlToggleOn" options:1 context:0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SHShazamMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x29EDC66B8] localizedStringForKey:@"SHAZAM_MODULE_RECOGNIZE_MUSIC"];
  [(CCUIMenuModuleViewController *)self setTitle:v3];

  [(CCUIButtonModuleViewController *)self setValueText:0];
  v4 = [MEMORY[0x29EDC66B8] localizedStringForKey:@"SHAZAM_MODULE_LISTENING"];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v4];

  v5 = MEMORY[0x29EDC0CA0];
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v5 descriptionForPackageNamed:@"Shazam" inBundle:v6];
  [(CCUIMenuModuleViewController *)self setGlyphPackageDescription:v7];

  [(CCUIMenuModuleViewController *)self setUseTrailingCheckmarkLayout:0];
  [(CCUIMenuModuleViewController *)self setIndentation:1];
  [(CCUIMenuModuleViewController *)self removeFooterButton];
  [(SHShazamMenuModuleViewController *)self configureMenuItems];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v4 = [(SHShazamMenuModuleViewController *)self toggleManager:a3];
  [v4 toggleRecognitionState];
}

- (void)setContentModuleContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SHShazamMenuModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 setContentModuleContext:v4];
  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = v4;
}

- (void)toggleManager:(id)a3 didToggleToState:(int64_t)a4
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9E85F0;
  block[3] = &unk_29F33E500;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)refreshState
{
  v3 = [(SHShazamMenuModuleViewController *)self toggleManager];
  -[SHShazamMenuModuleViewController refreshStateWithSelected:expanded:](self, "refreshStateWithSelected:expanded:", [v3 isToggleOn], -[CCUIButtonModuleViewController isExpanded](self, "isExpanded"));
}

- (void)refreshStateWithSelected:(BOOL)a3 expanded:(BOOL)a4
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9E8734;
  v4[3] = &unk_29F33E528;
  v5 = a4;
  v4[4] = self;
  v6 = a3;
  [MEMORY[0x29EDC7DA0] performWithoutAnimation:v4];
}

- (void)updateStatusMessage
{
  v3 = [(SHShazamMenuModuleViewController *)self toggleManager];
  v4 = [v3 isToggleOn];

  if (v4)
  {
    v5 = @"SHAZAM_MODULE_STATUS_MESSAGE_ON";
  }

  else
  {
    v5 = @"SHAZAM_MODULE_STATUS_MESSAGE_OFF";
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [MEMORY[0x29EDC66B8] localizedStringForKey:v5];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9E88A4;
  block[3] = &unk_29F33E550;
  block[4] = self;
  v10 = v7;
  v11 = v6;
  v8 = v7;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)dismissModule
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C9E89B8;
  v2[3] = &unk_29F33E578;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x29EDCA578], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SHShazamMenuModuleViewController *)self isDeviceUnlocked])
  {
    v4[2](v4, 1);
  }

  else
  {
    contentModuleContext = self->_contentModuleContext;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C9E8ACC;
    v6[3] = &unk_29F33E5A0;
    v7 = v4;
    [(CCUIContentModuleContext *)contentModuleContext requestAuthenticationWithCompletionHandler:v6];
  }
}

- (void)requestAuthenticationIfShazamIsInstalledAndProtected:(id)a3
{
  v4 = a3;
  if ([(SHShazamMenuModuleViewController *)self isShazamAppInstalled])
  {
    v5 = [MEMORY[0x29EDBE288] applicationWithBundleIdentifier:@"com.shazam.Shazam"];
    if ([v5 isLocked] & 1) != 0 || (objc_msgSend(v5, "isHidden"))
    {
      v6 = shcore_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C9E7000, v6, OS_LOG_TYPE_DEFAULT, "Shazam is protected, requesting authentication", buf, 2u);
      }

      v7 = [MEMORY[0x29EDBE290] sharedGuard];
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 3221225472;
      v8[2] = sub_29C9E8C70;
      v8[3] = &unk_29F33E5C8;
      v9 = v4;
      [v7 authenticateForSubject:v5 completion:v8];
    }

    else
    {
      (*(v4 + 2))(v4, 1);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (BOOL)isShazamAppInstalled
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v2 = [objc_alloc(MEMORY[0x29EDB93F8]) initWithBundleIdentifier:@"com.shazam.Shazam" allowPlaceholder:0 error:&v8];
  v3 = v8;
  if (!v2)
  {
    v4 = shcore_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [0 bundleIdentifier];
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_29C9E7000, v4, OS_LOG_TYPE_ERROR, "No application record for %@ found with error: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2 != 0;
}

- (void)configureMenuItems
{
  v7[2] = *MEMORY[0x29EDCA608];
  v3 = [(SHShazamMenuModuleViewController *)self recognizeMusicMenuItem];
  v4 = [(SHShazamMenuModuleViewController *)self historyMenuItem];
  v7[0] = v3;
  v7[1] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:2];
  [(CCUIMenuModuleViewController *)self setMenuItems:v5];

  v6 = *MEMORY[0x29EDCA608];
}

- (id)recognizeMusicMenuItem
{
  objc_initWeak(&location, self);
  v3 = [(SHShazamMenuModuleViewController *)self toggleManager];
  if ([v3 isToggleOn])
  {
    v4 = @"SHAZAM_MODULE_STOP_RECOGNITION";
  }

  else
  {
    v4 = @"SHAZAM_MODULE_RECOGNIZE_MUSIC";
  }

  v5 = [MEMORY[0x29EDC66B8] localizedStringForKey:v4];

  v6 = [(SHShazamMenuModuleViewController *)self toggleManager];
  v7 = [v6 isToggleOn];
  v8 = @"shazam.logo.fill";
  if (v7)
  {
    v8 = @"xmark";
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v11 = [MEMORY[0x29EDC7AC8] _systemImageNamed:v9];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C9E90BC;
  v14[3] = &unk_29F33E5F0;
  objc_copyWeak(&v15, &location);
  v12 = [v10 initWithTitle:v5 identifier:@"com.apple.shazamkit.controlcenter.ShazamModule.recognize-music" image:v11 handler:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);

  return v12;
}

- (id)historyMenuItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v3 = [MEMORY[0x29EDC66B8] localizedStringForKey:@"SHAZAM_MODULE_HISTORY"];
  v4 = [MEMORY[0x29EDC7AC8] _systemImageNamed:@"music.square.stack.fill"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C9E9248;
  v7[3] = &unk_29F33E5F0;
  objc_copyWeak(&v8, &location);
  v5 = [v2 initWithTitle:v3 identifier:@"com.apple.shazamkit.controlcenter.ShazamModule.history" image:v4 handler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (void)presentHistoryWithAuthentication
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C9E9340;
  v3[3] = &unk_29F33E660;
  objc_copyWeak(&v4, &location);
  [(SHShazamMenuModuleViewController *)self requestAuthenticationIfLockedWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a5;
  if ([a3 isEqualToString:@"isControlToggleOn"])
  {
    v8 = [v11 objectForKeyedSubscript:*MEMORY[0x29EDB9EA8]];
    v9 = [v8 BOOLValue];

    v10 = [(SHShazamMenuModuleViewController *)self toggleManager];
    [v10 toggleToState:v9 ^ 1u];
  }
}

@end