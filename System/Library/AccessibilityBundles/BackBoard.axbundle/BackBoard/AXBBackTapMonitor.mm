@interface AXBBackTapMonitor
+ (id)controller;
- (AXBBackTapMonitor)init;
- (AXUIClient)backTapClient;
- (unint64_t)_policyOption;
- (void)_backTapSettingsDidUpdate;
- (void)_registerForBackTap;
- (void)_registerForBackTapFromMagnifier;
- (void)_unregisterForBackTap;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)dealloc;
@end

@implementation AXBBackTapMonitor

+ (id)controller
{
  if (controller_onceToken != -1)
  {
    +[AXBBackTapMonitor controller];
  }

  v3 = controller__sMonitor;

  return v3;
}

uint64_t __31__AXBBackTapMonitor_controller__block_invoke()
{
  controller__sMonitor = objc_alloc_init(AXBBackTapMonitor);

  return MEMORY[0x2A1C71028]();
}

- (AXBBackTapMonitor)init
{
  v25.receiver = self;
  v25.super_class = AXBBackTapMonitor;
  v2 = [(AXBBackTapMonitor *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(AXBBackTapMonitor *)v2 _backTapSettingsDidUpdate];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _updateBackTap, *MEMORY[0x29EDC83F0], 0, 1028);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, _updateBackTap, *MEMORY[0x29EDC8538], 0, 1028);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v3, _updateBackTap, *MEMORY[0x29EDC83E8], 0, 1028);
    v7 = [MEMORY[0x29EDB9F98] defaultCenter];
    [v7 addObserver:v3 selector:sel__magnifierBackTapSettingsDidSetBackTap name:*MEMORY[0x29EDC84A8] object:0];
    [v7 addObserver:v3 selector:sel__backTapSettingsDidUpdate name:*MEMORY[0x29EDC84A0] object:0];
    v8 = [objc_alloc(MEMORY[0x29EDC82C8]) initPreferringUserProfileWithoutShortcuts];
    commandManager = v3->_commandManager;
    v3->_commandManager = v8;

    objc_initWeak(&location, v3);
    v10 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __25__AXBBackTapMonitor_init__block_invoke;
    v22[3] = &unk_29F2A4D08;
    objc_copyWeak(&v23, &location);
    v11 = objc_loadWeakRetained(&location);
    [v10 registerUpdateBlock:v22 forRetrieveSelector:sel_voiceOverCustomCommandProfile withListener:v11];

    objc_destroyWeak(&v23);
    v12 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __25__AXBBackTapMonitor_init__block_invoke_3;
    v20[3] = &unk_29F2A4D08;
    objc_copyWeak(&v21, &location);
    [v12 registerUpdateBlock:v20 forRetrieveSelector:sel_assistiveTouchSwitches withListener:v3];

    objc_destroyWeak(&v21);
    v13 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __25__AXBBackTapMonitor_init__block_invoke_5;
    v18[3] = &unk_29F2A4D08;
    objc_copyWeak(&v19, &location);
    [v13 registerUpdateBlock:v18 forRetrieveSelector:sel_backTapDoubleTapAction withListener:v3];

    objc_destroyWeak(&v19);
    v14 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __25__AXBBackTapMonitor_init__block_invoke_7;
    v16[3] = &unk_29F2A4D08;
    objc_copyWeak(&v17, &location);
    [v14 registerUpdateBlock:v16 forRetrieveSelector:sel_backTapTripleTapAction withListener:v3];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __25__AXBBackTapMonitor_init__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXBBackTapMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained commandManager];
  [v3 reloadPreferringUserProfile];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _backTapSettingsDidUpdate];
}

void __25__AXBBackTapMonitor_init__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXBBackTapMonitor_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backTapSettingsDidUpdate];
}

void __25__AXBBackTapMonitor_init__block_invoke_5(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXBBackTapMonitor_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backTapSettingsDidUpdate];
}

void __25__AXBBackTapMonitor_init__block_invoke_7(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __25__AXBBackTapMonitor_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backTapSettingsDidUpdate];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x29EDC83F0], 0);
  v4.receiver = self;
  v4.super_class = AXBBackTapMonitor;
  [(AXBBackTapMonitor *)&v4 dealloc];
}

- (void)_backTapSettingsDidUpdate
{
  if ([(AXBBackTapMonitor *)self _shouldEnableBackTap])
  {

    [(AXBBackTapMonitor *)self _registerForBackTap];
  }

  else if (self->_backTapClient)
  {

    [(AXBBackTapMonitor *)self _unregisterForBackTap];
  }
}

- (void)_registerForBackTapFromMagnifier
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(AXBBackTapMonitor *)self _policyOption];
  v4 = [(AXBBackTapMonitor *)self backTapClient];
  v9 = *MEMORY[0x29EDBDE48];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v3 | 1];
  v10[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x29EDBD688] mainAccessQueue];
  [v4 sendAsynchronousMessage:v6 withIdentifier:10000 targetAccessQueue:v7 completion:&__block_literal_global_303];

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t __53__AXBBackTapMonitor__registerForBackTapFromMagnifier__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)_registerForBackTap
{
  v11[1] = *MEMORY[0x29EDCA608];
  v3 = AXLogBackTap();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Registering for Back Tap", v9, 2u);
  }

  v4 = [(AXBBackTapMonitor *)self backTapClient];
  v10 = *MEMORY[0x29EDBDE48];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{-[AXBBackTapMonitor _policyOption](self, "_policyOption")}];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [MEMORY[0x29EDBD688] mainAccessQueue];
  [v4 sendAsynchronousMessage:v6 withIdentifier:10000 targetAccessQueue:v7 completion:&__block_literal_global_308];

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t __40__AXBBackTapMonitor__registerForBackTap__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)_unregisterForBackTap
{
  v3 = [(AXBBackTapMonitor *)self backTapClient];
  v4 = [MEMORY[0x29EDBD688] mainAccessQueue];
  [v3 sendAsynchronousMessage:0 withIdentifier:10001 targetAccessQueue:v4 completion:&__block_literal_global_310];

  backTapClient = self->_backTapClient;
  self->_backTapClient = 0;
}

uint64_t __42__AXBBackTapMonitor__unregisterForBackTap__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (AXUIClient)backTapClient
{
  backTapClient = self->_backTapClient;
  if (!backTapClient)
  {
    v4 = objc_alloc(MEMORY[0x29EDBDDD0]);
    v5 = [v4 initWithIdentifier:*MEMORY[0x29EDBDE40] serviceBundleName:@"BackTapUIServer"];
    v6 = self->_backTapClient;
    self->_backTapClient = v5;

    [(AXUIClient *)self->_backTapClient setDelegate:self];
    backTapClient = self->_backTapClient;
  }

  return backTapClient;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  if (self->_backTapClient == a3)
  {
    AXPerformBlockOnMainThread();
  }
}

uint64_t __79__AXBBackTapMonitor_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);

  return [v4 _backTapSettingsDidUpdate];
}

- (unint64_t)_policyOption
{
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = [v3 backTapEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v6 = [v5 backTapDoubleTapAction];
    v7 = v6 != 0;

    v8 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v9 = [v8 backTapTripleTapAction];
    v10 = v7 | (2 * (v9 != 0));
  }

  else
  {
    v10 = 0;
  }

  if (_AXSAssistiveTouchScannerEnabled())
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v11 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v12 = [v11 assistiveTouchSwitches];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = __34__AXBBackTapMonitor__policyOption__block_invoke;
    v24[3] = &unk_29F2A4D50;
    v24[4] = &v29;
    v24[5] = &v25;
    [v12 enumerateObjectsUsingBlock:v24];

    v13 = 2;
    if (!*(v26 + 24))
    {
      v13 = 0;
    }

    v10 |= v13 | *(v30 + 24);
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
  }

  if (_AXSVoiceOverTouchEnabled())
  {
    v14 = [MEMORY[0x29EDC82D0] resolverForCurrentHost];
    v15 = [(AXBBackTapMonitor *)self commandManager];
    v16 = [MEMORY[0x29EDC82D8] BackTapDoubleTap];
    v17 = [v15 commandForTouchGesture:v16 withResolver:v14];
    v18 = v17 != 0;

    v19 = [(AXBBackTapMonitor *)self commandManager];
    v20 = [MEMORY[0x29EDC82D8] BackTapTripleTap];
    v21 = [v19 commandForTouchGesture:v20 withResolver:v14];
    v22 = v21 != 0;

    v10 |= v18 || 2 * v22;
  }

  return v10;
}

void __34__AXBBackTapMonitor__policyOption__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 source];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDBDFD0]];

  if (v4)
  {
    if ([v5 accessibilityEventUsage] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    if ([v5 accessibilityEventUsage] == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

@end