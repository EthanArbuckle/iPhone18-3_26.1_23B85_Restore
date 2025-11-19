@interface AXCCMotionCuesModuleViewController
- (AXCCMotionCuesModuleViewControllerDelegate)motionCuesDelegate;
- (CCUIToggleModule)module;
- (id)localizedStringForKey:(id)a3;
- (id)trailingImageForMenuItem:(id)a3;
- (void)_settingsDidChange;
- (void)_updateGlyphImage;
- (void)_updateMenuItems;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation AXCCMotionCuesModuleViewController

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AXCCMotionCuesModuleViewController;
  [(AXCCMotionCuesModuleViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = AXCCMotionCuesModuleViewController;
  [(CCUIMenuModuleViewController *)&v13 viewDidLoad];
  if (AXDeviceIsPad())
  {
    v3 = [MEMORY[0x29EDC7AC8] _systemImageNamed:@"motion.cues"];
    v4 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:30.0];
    v5 = [v3 imageByApplyingSymbolConfiguration:v4];
    [(CCUIMenuModuleViewController *)self setGlyphImage:v5];
  }

  else
  {
    [(AXCCMotionCuesModuleViewController *)self _updateGlyphImage];
    [(CCUIMenuModuleViewController *)self setIndentation:2];
  }

  v6 = [(AXCCMotionCuesModuleViewController *)self localizedStringForKey:@"MotionCuesTitle"];
  [(CCUIMenuModuleViewController *)self setTitle:v6];

  v7 = [MEMORY[0x29EDC7A00] systemBlueColor];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v7];

  [(CCUIButtonModuleViewController *)self setSelected:_AXSMotionCuesActive() != 0];
  objc_initWeak(&location, self);
  v8 = [(AXCCMotionCuesModuleViewController *)self localizedStringForKey:@"MotionCuesSettings"];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C9291A8;
  v10[3] = &unk_29F334230;
  objc_copyWeak(&v11, &location);
  [(CCUIMenuModuleViewController *)self setFooterButtonTitle:v8 handler:v10];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_29C9291EC, *MEMORY[0x29EDC84B0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_29C9291EC, *MEMORY[0x29EDC8398], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_29C9291EC, *MEMORY[0x29EDC83A0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v9 = *MEMORY[0x29EDCA608];
  if (AXDeviceIsPad())
  {
    v5 = _AXSMotionCuesActive();
    v6 = AXLogMotionCues();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&dword_29C928000, v6, OS_LOG_TYPE_DEFAULT, "CC button tapped: current active=%{BOOL}d, changing to opposite.", v8, 8u);
    }

    [(CCUIButtonModuleViewController *)self setSelected:v5 == 0];
    _AXSSetMotionCuesMode();
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)_updateGlyphImage
{
  v3 = _AXSMotionCuesMode();
  if (v3 <= 2)
  {
    v6 = [MEMORY[0x29EDC7AC8] _systemImageNamed:off_29F3342A8[v3]];
    v4 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:30.0];
    v5 = [v6 imageByApplyingSymbolConfiguration:v4];
    [(CCUIMenuModuleViewController *)self setGlyphImage:v5];
  }
}

- (id)trailingImageForMenuItem:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"AlwaysOn"];

  if (v5)
  {
    v6 = MEMORY[0x29EDC7AC8];
    v7 = @"motion.cues";
  }

  else
  {
    v8 = [v3 identifier];
    v9 = [v8 isEqualToString:@"OnInTheCar"];

    v6 = MEMORY[0x29EDC7AC8];
    if (v9)
    {
      v7 = @"motion.cues.and.car";
    }

    else
    {
      v7 = @"motion.cues.slash";
    }
  }

  v10 = [v6 _systemImageNamed:v7];

  return v10;
}

- (id)localizedStringForKey:(id)a3
{
  v3 = MEMORY[0x29EDB9F48];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_2A23DF5F8 table:@"MotionCues"];

  return v6;
}

- (void)_settingsDidChange
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = _AXSMotionCuesActive();
  v4 = AXLogMotionCues();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109632;
    v6[1] = v3;
    v7 = 1024;
    v8 = _AXSMotionCuesEnabled();
    v9 = 1024;
    v10 = _AXSMotionCuesMode();
    _os_log_impl(&dword_29C928000, v4, OS_LOG_TYPE_DEFAULT, "CC setting did change: active=%{BOOL}d, enabled=%{BOOL}d, mode=%d", v6, 0x14u);
  }

  if (AXDeviceIsPad())
  {
    [(CCUIButtonModuleViewController *)self setSelected:v3 != 0];
  }

  else
  {
    [(CCUIButtonModuleViewController *)self setSelected:(v3 != 0) & ~[(CCUIButtonModuleViewController *)self isExpanded]];
    [(AXCCMotionCuesModuleViewController *)self _updateGlyphImage];
    if ([(CCUIButtonModuleViewController *)self isExpanded])
    {
      [(AXCCMotionCuesModuleViewController *)self _updateMenuItems];
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

- (void)_updateMenuItems
{
  if ((AXDeviceIsPad() & 1) == 0)
  {
    if (_AXSMotionCuesEnabled())
    {
      v11 = _AXSMotionCuesMode();
    }

    else
    {
      v11 = 2;
    }

    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v4 = &dword_29F334258;
    v5 = 3;
    do
    {
      v6 = *v4;
      objc_initWeak(&location, self);
      v7 = *(v4 - 1);
      v8 = [(AXCCMotionCuesModuleViewController *)self localizedStringForKey:v7];
      v9 = objc_alloc(MEMORY[0x29EDC0CE0]);
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 3221225472;
      v12[2] = sub_29C92987C;
      v12[3] = &unk_29F334288;
      v14 = v6;
      objc_copyWeak(&v13, &location);
      v10 = [v9 initWithTitle:v8 identifier:v7 handler:v12];
      [v10 setSelected:v6 == v11];
      [v3 addObject:v10];
      v4 += 4;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      --v5;
    }

    while (v5);
    [(CCUIMenuModuleViewController *)self setMenuItems:v3];
  }
}

- (CCUIToggleModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

- (AXCCMotionCuesModuleViewControllerDelegate)motionCuesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_motionCuesDelegate);

  return WeakRetained;
}

@end