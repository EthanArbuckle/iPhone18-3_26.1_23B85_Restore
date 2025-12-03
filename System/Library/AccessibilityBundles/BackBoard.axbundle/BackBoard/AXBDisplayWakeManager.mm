@interface AXBDisplayWakeManager
+ (void)initializeManager;
- (AXBDisplayWakeManager)init;
- (BOOL)_shouldShowAccessibilityHelpBanner;
- (void)_handleDisplayDidSleep;
- (void)_handleDisplayDidWake;
- (void)_setupBannerClient;
- (void)_setupScreenStateMonitoring;
- (void)_showAccessibilityHelpBannerForVoiceOver:(BOOL)over switchControl:(BOOL)control touchAccommodations:(BOOL)accommodations;
- (void)dealloc;
@end

@implementation AXBDisplayWakeManager

+ (void)initializeManager
{
  if (initializeManager_onceToken != -1)
  {
    +[AXBDisplayWakeManager initializeManager];
  }
}

uint64_t __42__AXBDisplayWakeManager_initializeManager__block_invoke()
{
  SharedManager_0 = objc_alloc_init(AXBDisplayWakeManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBDisplayWakeManager)init
{
  v5.receiver = self;
  v5.super_class = AXBDisplayWakeManager;
  v2 = [(AXBDisplayWakeManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_screenStateToken = 0;
    [(AXBDisplayWakeManager *)v2 _setupScreenStateMonitoring];
    [(AXBDisplayWakeManager *)v3 _setupBannerClient];
  }

  return v3;
}

- (void)_setupBannerClient
{
  bannerClient = [(AXBDisplayWakeManager *)self bannerClient];

  if (!bannerClient)
  {
    v4 = [objc_alloc(MEMORY[0x29EDBDDD0]) initWithIdentifier:@"AXBDisplayWakeManagerBannerClient" serviceBundleName:@"TouchAccommodations"];
    [(AXBDisplayWakeManager *)self setBannerClient:v4];

    v5 = AXLogBackboardServer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Banner client setup complete", v6, 2u);
    }
  }
}

- (void)_setupScreenStateMonitoring
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Failed to register for screen state notifications: %d", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

void __52__AXBDisplayWakeManager__setupScreenStateMonitoring__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v4 = state64;
      v5 = AXLogBackboardServer();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v6)
        {
          *v7 = 0;
          _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Display sleep detected", v7, 2u);
        }

        [WeakRetained _handleDisplayDidSleep];
      }

      else
      {
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Display wake detected", buf, 2u);
        }

        [WeakRetained _handleDisplayDidWake];
      }
    }
  }
}

- (BOOL)_shouldShowAccessibilityHelpBanner
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  accessibilityHelpBannerFirstShownTimestamp = [mEMORY[0x29EDBDFA0] accessibilityHelpBannerFirstShownTimestamp];

  if (accessibilityHelpBannerFirstShownTimestamp)
  {
    date = [MEMORY[0x29EDB8DB0] date];
    [date timeIntervalSinceDate:accessibilityHelpBannerFirstShownTimestamp];
    v6 = v5;
    mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    accessibilityHelpBannerLastShownTimestamp = [mEMORY[0x29EDBDFA0]2 accessibilityHelpBannerLastShownTimestamp];

    if (accessibilityHelpBannerLastShownTimestamp)
    {
      [date timeIntervalSinceDate:accessibilityHelpBannerLastShownTimestamp];
      v10 = v9 > 30.0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v6 <= 259200.0 && v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_handleDisplayDidWake
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = _AXSVoiceOverTouchEnabled();
  v4 = _AXSAssistiveTouchScannerEnabled();
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  if ([mEMORY[0x29EDBDFA0] touchAccommodationsEnabled])
  {
    mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    touchAccommodationsAreConfigured = [mEMORY[0x29EDBDFA0]2 touchAccommodationsAreConfigured];
  }

  else
  {
    touchAccommodationsAreConfigured = 0;
  }

  if (v3 || v4 || touchAccommodationsAreConfigured)
  {
    v8 = AXLogBackboardServer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 67109632;
      *&v37[4] = v3 != 0;
      *&v37[8] = 1024;
      *&v37[10] = v4 != 0;
      v38 = 1024;
      v39 = touchAccommodationsAreConfigured;
      _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "Display wake: VoiceOver=%{BOOL}d, SwitchControl=%{BOOL}d, TouchAccommodations=%{BOOL}d", v37, 0x14u);
    }

    v9 = _AXSTripleClickCopyOptions();
    v10 = v9;
    if (v9)
    {
      v11 = [v9 count] != 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = AXLogBackboardServer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v13 = [v10 count];
      }

      else
      {
        v13 = 0;
      }

      *v37 = 134217984;
      *&v37[4] = v13;
      _os_log_impl(&dword_29BBBD000, v12, OS_LOG_TYPE_DEFAULT, "Current triple-click options count: %lu", v37, 0xCu);
    }

    if (v11 && [v10 count] != 1)
    {
      goto LABEL_48;
    }

    array = [MEMORY[0x29EDB8DE8] array];
    v15 = array;
    v16 = &unk_2A2121918;
    if (v4)
    {
      v16 = &unk_2A2121900;
    }

    if (v3)
    {
      v17 = &unk_2A21218E8;
    }

    else
    {
      v17 = v16;
    }

    [array addObject:v17];
    if (![v15 count] || !-[AXBDisplayWakeManager _shouldShowAccessibilityHelpBanner](self, "_shouldShowAccessibilityHelpBanner"))
    {
      if (![v15 count])
      {
LABEL_47:

LABEL_48:
        goto LABEL_49;
      }

      v22 = AXLogBackboardServer();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&dword_29BBBD000, v22, OS_LOG_TYPE_DEFAULT, "Accessibility features available but not temporarily setting triple-click options (3-day window has expired)", v37, 2u);
      }

      mEMORY[0x29EDBDFA0]3 = [MEMORY[0x29EDBDFA0] sharedInstance];
      accessibilityHelpBannerTemporaryTripleClickOptions = [mEMORY[0x29EDBDFA0]3 accessibilityHelpBannerTemporaryTripleClickOptions];

      v25 = _AXSTripleClickCopyOptions();
      v26 = v25;
      if (accessibilityHelpBannerTemporaryTripleClickOptions && v25 && [accessibilityHelpBannerTemporaryTripleClickOptions isEqualToArray:v25])
      {
        mEMORY[0x29EDBDFA0]4 = [MEMORY[0x29EDBDFA0] sharedInstance];
        [mEMORY[0x29EDBDFA0]4 setAccessibilityHelpBannerTemporaryTripleClickOptions:0];
      }

      goto LABEL_46;
    }

    mEMORY[0x29EDBDFA0]5 = [MEMORY[0x29EDBDFA0] sharedInstance];
    accessibilityHelpBannerTemporaryTripleClickOptions2 = [mEMORY[0x29EDBDFA0]5 accessibilityHelpBannerTemporaryTripleClickOptions];

    if (accessibilityHelpBannerTemporaryTripleClickOptions2)
    {
      v20 = AXLogBackboardServer();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *v37 = 0;
      v21 = "Not adding features to triple-click options because we already did this";
    }

    else
    {
      _AXSSetTripleClickOptions();
      mEMORY[0x29EDBDFA0]6 = [MEMORY[0x29EDBDFA0] sharedInstance];
      [mEMORY[0x29EDBDFA0]6 setAccessibilityHelpBannerTemporaryTripleClickOptions:v15];

      v20 = AXLogBackboardServer();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *v37 = 0;
      v21 = "Temporarily added accessibility features to triple-click options";
    }

    _os_log_impl(&dword_29BBBD000, v20, OS_LOG_TYPE_DEFAULT, v21, v37, 2u);
LABEL_40:

    [(AXBDisplayWakeManager *)self _showAccessibilityHelpBannerForVoiceOver:v3 != 0 switchControl:v4 != 0 touchAccommodations:touchAccommodationsAreConfigured];
    date = [MEMORY[0x29EDB8DB0] date];
    mEMORY[0x29EDBDFA0]7 = [MEMORY[0x29EDBDFA0] sharedInstance];
    [mEMORY[0x29EDBDFA0]7 setAccessibilityHelpBannerLastShownTimestamp:date];

    mEMORY[0x29EDBDFA0]8 = [MEMORY[0x29EDBDFA0] sharedInstance];
    accessibilityHelpBannerFirstShownTimestamp = [mEMORY[0x29EDBDFA0]8 accessibilityHelpBannerFirstShownTimestamp];

    if (accessibilityHelpBannerFirstShownTimestamp)
    {
      accessibilityHelpBannerTemporaryTripleClickOptions = AXLogBackboardServer();
      if (os_log_type_enabled(accessibilityHelpBannerTemporaryTripleClickOptions, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        v33 = "Accessibility help banner shown (still within 3-day window)";
LABEL_45:
        _os_log_impl(&dword_29BBBD000, accessibilityHelpBannerTemporaryTripleClickOptions, OS_LOG_TYPE_DEFAULT, v33, v37, 2u);
      }
    }

    else
    {
      date2 = [MEMORY[0x29EDB8DB0] date];
      mEMORY[0x29EDBDFA0]9 = [MEMORY[0x29EDBDFA0] sharedInstance];
      [mEMORY[0x29EDBDFA0]9 setAccessibilityHelpBannerFirstShownTimestamp:date2];

      accessibilityHelpBannerTemporaryTripleClickOptions = AXLogBackboardServer();
      if (os_log_type_enabled(accessibilityHelpBannerTemporaryTripleClickOptions, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        v33 = "Accessibility help banner shown for first time, timestamp recorded";
        goto LABEL_45;
      }
    }

LABEL_46:

    goto LABEL_47;
  }

LABEL_49:
  v36 = *MEMORY[0x29EDCA608];
}

- (void)_handleDisplayDidSleep
{
  v2 = AXLogBackboardServer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Display sleep detected", v3, 2u);
  }
}

- (void)_showAccessibilityHelpBannerForVoiceOver:(BOOL)over switchControl:(BOOL)control touchAccommodations:(BOOL)accommodations
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (control || accommodations || over)
  {
    v6 = AXLocStringKeyForHomeButton();
    v7 = AXLocStringKeyForModel();

    if (v7)
    {
      [(AXBDisplayWakeManager *)self _setupBannerClient];
      bannerClient = [(AXBDisplayWakeManager *)self bannerClient];

      if (bannerClient)
      {
        v14[0] = @"title";
        v9 = accessibilityLocalizedString(@"accessibility");
        v14[1] = @"text";
        v15[0] = v9;
        v10 = accessibilityLocalizedString(v7);
        v15[1] = v10;
        v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

        v12 = v11;
        AXPerformBlockOnMainThreadAfterDelay();
      }

      else
      {
        v12 = AXLogBackboardServer();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [AXBDisplayWakeManager _showAccessibilityHelpBannerForVoiceOver:v12 switchControl:? touchAccommodations:?];
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void __100__AXBDisplayWakeManager__showAccessibilityHelpBannerForVoiceOver_switchControl_touchAccommodations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bannerClient];
  [v2 sendAsynchronousMessage:*(a1 + 40) withIdentifier:6 targetAccessQueue:0 completion:0];

  v3 = AXLogBackboardServer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Sent dismissible banner display request to TouchAccommodationsUIServer", v4, 2u);
  }
}

- (void)dealloc
{
  screenStateToken = self->_screenStateToken;
  if (screenStateToken)
  {
    notify_cancel(screenStateToken);
    self->_screenStateToken = 0;
  }

  [(AXBDisplayWakeManager *)self setBannerClient:0];
  v4.receiver = self;
  v4.super_class = AXBDisplayWakeManager;
  [(AXBDisplayWakeManager *)&v4 dealloc];
}

@end