@interface CCUILowPowerModuleViewController
- (BOOL)isEAconnected;
- (CCUILowPowerModuleViewController)init;
- (id)_makeLocalizedMenuItem:(id)item handler:(id)handler;
- (id)glyphPackageDescription;
- (id)glyphState;
- (void)_configureMenu;
- (void)_observeSystemNotifications;
- (void)_unobserveSystemNotifications;
- (void)_updateState;
- (void)dealloc;
- (void)reconfigureView;
- (void)refreshStateAnimated:(BOOL)animated;
- (void)setLowPowerMode:(BOOL)mode;
- (void)setMobileChargeMode:(BOOL)mode;
- (void)toggleLowPowerMode;
- (void)toggleMobileChargeMode;
- (void)viewDidLoad;
@end

@implementation CCUILowPowerModuleViewController

- (CCUILowPowerModuleViewController)init
{
  v10.receiver = self;
  v10.super_class = CCUILowPowerModuleViewController;
  v2 = [(CCUILowPowerModuleViewController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC57F8]);
    lowPowerMode = v2->_lowPowerMode;
    v2->_lowPowerMode = v3;

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = qword_2A1A12990;
    v15 = qword_2A1A12990;
    if (!qword_2A1A12990)
    {
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = sub_29C9CFFC0;
      v11[3] = &unk_29F33D060;
      v11[4] = &v12;
      sub_29C9CFFC0(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = [[v5 alloc] initWithClientName:@"BatteryModule"];
    smartChargeClient = v2->_smartChargeClient;
    v2->_smartChargeClient = v7;

    [(CCUILowPowerModuleViewController *)v2 _observeSystemNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(CCUILowPowerModuleViewController *)self _unobserveSystemNotifications];
  v3.receiver = self;
  v3.super_class = CCUILowPowerModuleViewController;
  [(CCUILowPowerModuleViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUILowPowerModuleViewController;
  [(CCUIMenuModuleViewController *)&v3 viewDidLoad];
  [(CCUILowPowerModuleViewController *)self reconfigureView];
  [(CCUILowPowerModuleViewController *)self refreshStateAnimated:0];
}

- (void)reconfigureView
{
  glyphPackageDescription = [(CCUILowPowerModuleViewController *)self glyphPackageDescription];
  [(CCUIMenuModuleViewController *)self setGlyphPackageDescription:glyphPackageDescription];

  v4 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_TITLE" value:&stru_2A23EED98 table:0];
  [(CCUIMenuModuleViewController *)self setTitle:v5];

  [(CCUIMenuModuleViewController *)self setIndentation:1];

  MEMORY[0x2A1C70FE8](self, sel_setUseTrailingCheckmarkLayout_);
}

- (void)refreshStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C9CF2AC;
  v9[3] = &unk_29F33CFE8;
  v9[4] = self;
  v5 = MEMORY[0x29ED504A0](v9, a2);
  if (animatedCopy)
  {
    v6 = MEMORY[0x29EDC0CB0];
    viewIfLoaded = [(CCUILowPowerModuleViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    [v6 performWithoutAnimationWhileHiddenInWindow:window actions:v5];
  }

  else
  {
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v5];
  }
}

- (id)_makeLocalizedMenuItem:(id)item handler:(id)handler
{
  v5 = MEMORY[0x29EDB9F48];
  handlerCopy = handler;
  itemCopy = item;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:itemCopy value:&stru_2A23EED98 table:0];

  v10 = [objc_alloc(MEMORY[0x29EDC0CE0]) initWithTitle:v9 identifier:v9 handler:handlerCopy];

  return v10;
}

- (void)_configureMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = sub_29C9CF640;
  v23[3] = &unk_29F33D010;
  objc_copyWeak(&v24, &location);
  v4 = [(CCUILowPowerModuleViewController *)self _makeLocalizedMenuItem:@"CONTROL_CENTER_TITLE" handler:v23];
  [v4 setSelected:{-[CCUILowPowerModuleViewController isSelected](self, "isSelected")}];
  [v3 addObject:v4];
  smartChargeClient = self->_smartChargeClient;
  v22 = 0;
  v6 = [(PowerUISmartChargeClient *)smartChargeClient isMCMCurrentlyEnabled:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D01F0(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    if ([(CCUILowPowerModuleViewController *)self isEAconnected])
    {
      v17 = MEMORY[0x29EDCA5F8];
      v18 = 3221225472;
      v19 = sub_29C9CF674;
      v20 = &unk_29F33D010;
      objc_copyWeak(&v21, &location);
      v16 = [(CCUILowPowerModuleViewController *)self _makeLocalizedMenuItem:@"MENU_MCM_DISABLE" handler:&v17];
      [v16 setSelected:{v6 == 2, v17, v18, v19, v20}];
      [v3 addObject:v16];

      objc_destroyWeak(&v21);
    }

    [(CCUIMenuModuleViewController *)self setMenuItems:v3];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (id)glyphPackageDescription
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = @"LowPower";
  if (v2)
  {
    v3 = @"LowPower_IC";
  }

  v4 = MEMORY[0x29EDC0CA0];
  v5 = MEMORY[0x29EDB9F48];
  v6 = v3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v4 descriptionForPackageNamed:v6 inBundle:v7];

  [v8 setFlipsForRightToLeftLayoutDirection:1];

  return v8;
}

- (id)glyphState
{
  if ([(CCUIButtonModuleViewController *)self appearsSelected])
  {
    return @"enabled";
  }

  else
  {
    return @"disabled";
  }
}

- (BOOL)isEAconnected
{
  smartChargeClient = self->_smartChargeClient;
  v5 = 0;
  v3 = [(PowerUISmartChargeClient *)smartChargeClient shouldMCMBeDisplayed:&v5];
  return (v5 == 0) & v3;
}

- (void)_observeSystemNotifications
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateState name:*MEMORY[0x29EDB9F00] object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  v5 = sub_29C9CF92C();
  [defaultCenter2 addObserver:self selector:sel__updateState name:v5 object:0];

  defaultCenter3 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__updateForDarkerSystemColorsChange name:*MEMORY[0x29EDC7EB0] object:0];
}

- (void)_unobserveSystemNotifications
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDB9F00] object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  v5 = sub_29C9CF92C();
  [defaultCenter2 removeObserver:self name:v5 object:0];

  defaultCenter3 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x29EDC7EB0] object:0];
}

- (void)_updateState
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9CFB78;
  block[3] = &unk_29F33CFE8;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)toggleLowPowerMode
{
  [(CCUILowPowerModuleViewController *)self isSelected];

  MEMORY[0x2A1C70FE8](self, sel_setLowPowerMode_);
}

- (void)setLowPowerMode:(BOOL)mode
{
  modeCopy = mode;
  if ([(CCUILowPowerModuleViewController *)self isSelected]!= mode)
  {
    objc_initWeak(&location, self);
    lowPowerMode = self->_lowPowerMode;
    v6 = *MEMORY[0x29EDC5800];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = sub_29C9CFCC8;
    v7[3] = &unk_29F33D038;
    v9 = modeCopy;
    objc_copyWeak(&v8, &location);
    [(_PMLowPowerMode *)lowPowerMode setPowerMode:modeCopy fromSource:v6 withCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)toggleMobileChargeMode
{
  smartChargeClient = self->_smartChargeClient;
  v14 = 0;
  v4 = [(PowerUISmartChargeClient *)smartChargeClient isMCMCurrentlyEnabled:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D01F0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    [(CCUILowPowerModuleViewController *)self setMobileChargeMode:v4 != 1];
  }
}

- (void)setMobileChargeMode:(BOOL)mode
{
  smartChargeClient = self->_smartChargeClient;
  if (mode)
  {
    v15 = 0;
    v4 = &v15;
    [(PowerUISmartChargeClient *)smartChargeClient enableMCM:&v15];
  }

  else
  {
    v14 = 0;
    v4 = &v14;
    [(PowerUISmartChargeClient *)smartChargeClient temporarilyDisableMCM:&v14];
  }

  v5 = *v4;
  if (v5)
  {
    v6 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D02A0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

@end