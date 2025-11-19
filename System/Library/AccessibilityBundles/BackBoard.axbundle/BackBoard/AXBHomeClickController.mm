@interface AXBHomeClickController
+ (id)controller;
+ (void)initializeMonitor;
- (BOOL)_accessibilityIsFactoryDiskImagePresent;
- (BOOL)_checkIfZoomWasActivated:(id)a3 stealEvent:(BOOL *)a4;
- (BOOL)_voiceOverWasToggledSinceBoot;
- (BOOL)captureHomeClick:(id)a3;
- (id)_votExistsBreadCrumbFile;
- (id)_writeLoginNoteTimer;
- (id)displayFilterUIClient;
- (void)_appTransition;
- (void)_didHideAlert;
- (void)_handleZoomInBuddyAlertResult:(int64_t)a3;
- (void)_launchAccessibilityReader;
- (void)_promptToDisableBrightnessFilters:(id)a3 data:(id)a4;
- (void)_setVoiceOverWasToggledSinceBoot:(BOOL)a3;
- (void)_springBoardDied:(id)a3;
- (void)_startVoiceOverSequence;
- (void)_toggleDetectionMode;
- (void)_toggleDisplayAskSheet;
- (void)_toggleGuidedAccessBlock:(id)a3;
- (void)_toggleMagnifier;
- (void)_toggleOnDeviceEyeTracking;
- (void)_toggleVoiceOver;
- (void)_triggerAppTransition;
- (void)_updateBuddyVoiceOverStatus;
- (void)_updateEventTapSettings;
- (void)_updateHomeClickEnabled;
- (void)_updateTripleHomeSettings:(BOOL)a3;
- (void)_willShowAlert;
- (void)_writeNoteToNewUserSession;
- (void)clearNoteToUserSession;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)initialize;
@end

@implementation AXBHomeClickController

- (void)_updateHomeClickEnabled
{
  _HomeClickEnabled = _AXSHomeClickEnabled() != 0;

  [(AXBHomeClickController *)self _updateEventTapSettings];
}

- (id)_writeLoginNoteTimer
{
  writeLoginNoteTimer = self->_writeLoginNoteTimer;
  if (!writeLoginNoteTimer)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBD6A0]);
    v5 = self->_writeLoginNoteTimer;
    self->_writeLoginNoteTimer = v4;

    [(AXDispatchTimer *)self->_writeLoginNoteTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    writeLoginNoteTimer = self->_writeLoginNoteTimer;
  }

  return writeLoginNoteTimer;
}

- (void)_writeNoteToNewUserSession
{
  v2 = [(AXBHomeClickController *)self _writeLoginNoteTimer];
  [v2 afterDelay:&__block_literal_global_13 processBlock:0.5];
}

void __52__AXBHomeClickController__writeNoteToNewUserSession__block_invoke()
{
  v7[2] = *MEMORY[0x29EDCA608];
  if (AXSessionIsLoginSession())
  {
    v6[0] = *MEMORY[0x29EDBDEC8];
    v0 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
    v7[0] = v0;
    v6[1] = *MEMORY[0x29EDBDED0];
    v1 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:_AXSZoomTouchEnabled()];
    v7[1] = v1;
    v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

    v3 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v2 format:200 options:0 error:0];
    v4 = [MEMORY[0x29EDBD5F8] sharedManager];
    [v4 writeData:v3 toFileAtAccessibilityContainerPath:*MEMORY[0x29EDBDEC0] completion:&__block_literal_global_287_0];
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t __52__AXBHomeClickController__writeNoteToNewUserSession__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)clearNoteToUserSession
{
  v2 = [MEMORY[0x29EDBD5F8] sharedManager];
  [v2 deleteFileAtAccessibilityContainerPath:*MEMORY[0x29EDBDEC0] completion:&__block_literal_global_292_0];
}

uint64_t __48__AXBHomeClickController_clearNoteToUserSession__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)_promptToDisableBrightnessFilters:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x29EDBDFA8];
  v7 = a4;
  v8 = [v6 server];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __65__AXBHomeClickController__promptToDisableBrightnessFilters_data___block_invoke;
  v10[3] = &unk_29F2A50D0;
  v11 = v5;
  v9 = v5;
  [v8 showAlert:7 withHandler:v10 withData:v7];
}

uint64_t __65__AXBHomeClickController__promptToDisableBrightnessFilters_data___block_invoke(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    (*(*(result + 32) + 16))(*(result + 32));

    return MEMORY[0x2A1C6CB40](0);
  }

  return result;
}

- (id)_votExistsBreadCrumbFile
{
  v2 = MEMORY[0x29EDB8E70];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = [v4 URLByAppendingPathComponent:@"VoiceOverToggled"];

  return v5;
}

- (BOOL)_voiceOverWasToggledSinceBoot
{
  v3 = [MEMORY[0x29EDB9FB8] defaultManager];
  v4 = [(AXBHomeClickController *)self _votExistsBreadCrumbFile];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

- (void)_setVoiceOverWasToggledSinceBoot:(BOOL)a3
{
  v3 = a3;
  v8 = [MEMORY[0x29EDB9FB8] defaultManager];
  v5 = [(AXBHomeClickController *)self _votExistsBreadCrumbFile];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 path];
    [v8 createFileAtPath:v7 contents:0 attributes:0];
  }

  else
  {
    [v8 removeItemAtURL:v5 error:0];
  }
}

- (void)_toggleVoiceOver
{
  if (!_AXSVoiceOverTouchUsageConfirmed())
  {
    _AXSVoiceOverTouchSetUsageConfirmed();
  }

  v3 = _AXSVoiceOverTouchEnabled();
  v5 = _AXSTripleClickCopyOptions();
  if (v3)
  {
    if (_AXSTripleClickContainsOption())
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (_AXSCanDisableApplicationAccessibility())
    {
      _AXSApplicationAccessibilitySetEnabled();
    }

    if (_AXSTripleClickContainsOption())
    {
      _AXSApplicationAccessibilitySetEnabled();
LABEL_13:
      _AXSSetTripleClickOptions();
      v4 = *MEMORY[0x29EDC8530];
      _AXSAccessibilitySetiTunesPreference();
      goto LABEL_14;
    }
  }

  if (((_IsBuddyRunning & 1) != 0 || AXSessionIsLoginSession()) && v3)
  {
    goto LABEL_13;
  }

LABEL_14:
  _AXSVoiceOverTouchSetEnabled();
  _AXSVoiceOverTouchSetUIEnabled();
  if (_AXSVoiceOverTouchEnabled())
  {
    [(AXBHomeClickController *)self _setVoiceOverWasToggledSinceBoot:1];
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  if (self->_displayFilterUIClient == a3)
  {
    self->_displayFilterUIClient = 0;
    MEMORY[0x2A1C71028]();
  }
}

- (id)displayFilterUIClient
{
  displayFilterUIClient = self->_displayFilterUIClient;
  if (!displayFilterUIClient)
  {
    v4 = objc_alloc(MEMORY[0x29EDBDDD0]);
    v5 = [v4 initWithIdentifier:@"HomeClickController" serviceBundleName:*MEMORY[0x29EDBDE58]];
    v6 = self->_displayFilterUIClient;
    self->_displayFilterUIClient = v5;

    [(AXUIClient *)self->_displayFilterUIClient setDelegate:self];
    displayFilterUIClient = self->_displayFilterUIClient;
  }

  return displayFilterUIClient;
}

- (void)_toggleMagnifier
{
  v2 = [MEMORY[0x29EDC8318] sharedInstance];
  [v2 startMagnifier];
}

- (void)_toggleDetectionMode
{
  if (_AXSVoiceOverTouchEnabled())
  {
    v2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v3 = [v2 liveRecognitionActive];

    v4 = [MEMORY[0x29EDBDFC8] server];
    v6 = v4;
    if (v3)
    {
      v5 = 51;
    }

    else
    {
      v5 = 50;
    }

    [v4 triggerCommand:v5];
  }

  else
  {
    v6 = [MEMORY[0x29EDBDFA8] server];
    [v6 toggleDetectionMode];
  }
}

- (void)_launchAccessibilityReader
{
  v2 = AXLogReader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Launching reader in AXBHomeClickController", v4, 2u);
  }

  v3 = [MEMORY[0x29EDBDFA8] server];
  [v3 launchAccessibilityReader];
}

- (void)_toggleGuidedAccessBlock:(id)a3
{
  v3 = a3;
  v4 = _AXSTripleClickCopyOptions();
  [v4 count];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_toggleOnDeviceEyeTracking
{
  v2 = _AXSOnDeviceEyeTrackingEnabled() == 0;
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v3 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:v2];
}

- (void)_didHideAlert
{
  if ([(AXBHomeClickController *)self didShowHoldDurationTripleClickHelp])
  {
    +[AXBTouchAccommodationsController hideHoldDurationTripleClickHelp];

    [(AXBHomeClickController *)self setDidShowHoldDurationTripleClickHelp:0];
  }
}

- (void)_willShowAlert
{
  if ([(AXBHomeClickController *)self didShowHoldDurationTripleClickHelp])
  {
    _AXAssert();
  }

  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  if ([v3 touchAccommodationsEnabled] && objc_msgSend(v3, "touchAccommodationsHoldDurationEnabled"))
  {
    +[AXBTouchAccommodationsController showHoldDurationTripleClickHelp];
    [(AXBHomeClickController *)self setDidShowHoldDurationTripleClickHelp:1];
  }
}

- (void)_toggleDisplayAskSheet
{
  isAlertVisible = self->_isAlertVisible;
  v4 = [MEMORY[0x29EDBDFA8] server];
  v10 = v4;
  if (isAlertVisible)
  {
    [v4 hideAlert];
  }

  else
  {
    v5 = [v4 isShowingAXAlert];

    if ((v5 & 1) == 0)
    {
      if (_AXSTwiceRemoteScreenEnabled())
      {
        v9 = @"[TWICE] Dismiss AppleWatchMirroring card before showing the AX Shortcut sheet";
        LOBYTE(v8) = 1;
        _AXLogWithFacility();
        _AXSTwiceRemoteScreenSetEnabled();
      }

      self->_isAlertVisible = 1;
      [(AXBHomeClickController *)self _willShowAlert:v8];
      v6 = AXLogBackboardServer();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "Triple click: presenting from backboardd.", buf, 2u);
      }

      v7 = [MEMORY[0x29EDBDFA8] server];
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __48__AXBHomeClickController__toggleDisplayAskSheet__block_invoke;
      v11[3] = &unk_29F2A50F8;
      v11[4] = self;
      [v7 showAlert:0 withHandler:v11];
    }
  }
}

uint64_t __48__AXBHomeClickController__toggleDisplayAskSheet__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = AXLogBackboardServer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "Triple click: handling from backboardd with %ld.", &v8, 0xCu);
  }

  [MEMORY[0x29EDBDFB8] registerObserverForTripleClickOption:a2];
  if (a2 <= 15)
  {
    if (a2 == 1)
    {
      [*(a1 + 32) _startVoiceOverSequence];
      goto LABEL_17;
    }

    if (a2 == 12)
    {
      [*(a1 + 32) _toggleMagnifier];
      goto LABEL_17;
    }

LABEL_16:
    [MEMORY[0x29EDBDFB8] toggleTripleClickOption:a2];
    goto LABEL_17;
  }

  if (a2 == 16)
  {
    [*(a1 + 32) _showLookingGlassMenu];
    goto LABEL_17;
  }

  if (a2 == 22)
  {
    [*(a1 + 32) _toggleDetectionMode];
    goto LABEL_17;
  }

  if (a2 != 44)
  {
    goto LABEL_16;
  }

  v5 = AXLogReader();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Launching reader from ASK Sheet", &v8, 2u);
  }

  [*(a1 + 32) _launchAccessibilityReader];
LABEL_17:
  *(*(a1 + 32) + 8) = 0;
  result = [*(a1 + 32) _didHideAlert];
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)_startVoiceOverSequence
{
  if (_AXSVoiceOverTouchEnabled())
  {
LABEL_2:
    v3 = _Controller;

    [v3 _toggleVoiceOver];
    return;
  }

  if (_isBuddyRunning() && [(AXBHomeClickController *)self _accessibilityIsFactoryDiskImagePresent])
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "User activated VoiceOver gesture during setup, but FDI present so VoiceOver gesture will be suppressed", v10, 2u);
    }
  }

  else
  {
    v5 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v6 = [v5 voiceOverActivationWorkaround];

    switch(v6)
    {
      case 1:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v8 = MEMORY[0x29EDBDEF0];
        break;
      case 3:
        return;
      case 2:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v8 = MEMORY[0x29EDBDEE8];
        break;
      default:
        goto LABEL_2;
    }

    v9 = *v8;

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v9, 0, 0, 1u);
  }
}

- (void)_updateTripleHomeSettings:(BOOL)a3
{
  v5 = _AXSTripleClickCopyOptions();
  if ([v5 count])
  {
    _TripleHomeEnabled = 1;
  }

  else
  {
    _TripleHomeEnabled = 0;
    if (!a3 && _AXSApplicationAccessibilityEnabled() && _AXSCanDisableApplicationAccessibility())
    {
      _AXSApplicationAccessibilitySetEnabled();
    }
  }

  [(AXBHomeClickController *)self _updateEventTapSettings];
}

- (BOOL)captureHomeClick:(id)a3
{
  v4 = a3;
  if (captureHomeClick__onceToken != -1)
  {
    [AXBHomeClickController captureHomeClick:];
  }

  if (_HomeClickEnabled)
  {
    if (!v4)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v5 = 0;
    if (!v4 || (_TripleHomeEnabled & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if (AXDeviceHasHomeButton())
  {
    v6 = 1000;
  }

  else
  {
    v6 = 1010;
  }

  if (captureHomeClick__RequiresReachability == 1 && [v4 type] == 1000 && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
  {
    v7 = [MEMORY[0x29EDBDFA8] server];
    [v7 cancelReachabilityDetection];
  }

  if (_TripleHomeEnabled == 1 && self->_isAlertVisible)
  {
    if ([v4 type] == 50)
    {
      v5 = AXDeviceIsPad() ^ 1;
      goto LABEL_68;
    }

    if ([v4 type] == 1001 || objc_msgSend(v4, "type") == 1011 || objc_msgSend(v4, "type") == 1104)
    {
      [_HomeClickTimer cancel];
      if ([v4 type] == 1001 && (_LockButtonDown & 1) == 0)
      {
        _MergedGlobals = 0;
        qword_2A178F7B8 = 0;
        [(NSLock *)self->_menuButtonLock lock];
        [(NSMutableArray *)self->_menuButtonClientIds removeAllObjects];
        [(NSLock *)self->_menuButtonLock unlock];
        v5 = 1;
      }

      else
      {
        [(AXBHomeClickController *)self _fireHomeButtons:0];
        v5 = 0;
      }

      if ([v4 type] == 1011 || objc_msgSend(v4, "type") == 1104)
      {
        _LockButtonDown = 0;
      }

      [(AXBHomeClickController *)self _toggleDisplayAskSheet];
      location[1] = MEMORY[0x29EDCA5F8];
      location[2] = 3221225472;
      location[3] = __43__AXBHomeClickController_captureHomeClick___block_invoke_2;
      location[4] = &unk_29F2A4B10;
      location[5] = self;
      AXPerformBlockOnMainThreadAfterDelay();
      goto LABEL_68;
    }

    if ([v4 type] == 1010 || objc_msgSend(v4, "type") == 1103)
    {
      _LockButtonDown = 1;
    }

    else if ([v4 type] == v6)
    {
      [(NSLock *)self->_menuButtonLock lock];
      [(NSMutableArray *)self->_menuButtonClientIds addObject:v4];
      [(NSLock *)self->_menuButtonLock unlock];
      ++qword_2A178F7B8;
      if (_LockButtonDown != 1)
      {
LABEL_91:
        v5 = 1;
        goto LABEL_68;
      }

LABEL_90:
      [(AXBHomeClickController *)self _fireHomeButtons:0];
      goto LABEL_91;
    }
  }

  if ([v4 type] == 1011 || objc_msgSend(v4, "type") == 1104)
  {
    v8 = 0;
  }

  else
  {
    if ([v4 type] != 1010 && objc_msgSend(v4, "type") != 1103)
    {
      goto LABEL_38;
    }

    v8 = 1;
  }

  _LockButtonDown = v8;
LABEL_38:
  if (([v4 type] == 1001 || objc_msgSend(v4, "type") == 1000) && (+[AXBackBoardGlue isDisplayBacklightOff](AXBackBoardGlue, "isDisplayBacklightOff") || CFAbsoluteTimeGetCurrent() - *&_LastHomeButtonPressWithBacklightOff < 0.25) && (AXInPreboardScenario() & 1) == 0 && (AXInCheckerBoardScenario() & 1) == 0)
  {
    CFAbsoluteTimeGetCurrent();
    v5 = 0;
    _LastHomeButtonPressWithBacklightOff = CFAbsoluteTimeGetCurrent();
    goto LABEL_68;
  }

  if (AXDeviceHasHomeButton() && ([v4 type] == 1000 && (_LockButtonDown & 1) != 0 || (objc_msgSend(v4, "type") == 1010 || objc_msgSend(v4, "type") == 1103) && qword_2A178F7B8 == 1))
  {
    [(AXBHomeClickController *)self _fireHomeButtons:0];
    v5 = 0;
    _LastScreenshotTake = CFAbsoluteTimeGetCurrent();
    goto LABEL_68;
  }

  if (-[AXBHomeClickController isHearingAidControlVisible](self, "isHearingAidControlVisible") && [v4 type] == 1001 && CFAbsoluteTimeGetCurrent() - *&_LastScreenshotTake > 0.5)
  {
    [(NSMutableArray *)self->_menuButtonClientIds removeAllObjects];
    qword_2A178F7B8 = 0;
    [(AXBHomeClickController *)self _setHearingAidControlVisible:0];
    [_HomeClickTimer cancel];
    v9 = _HomeClickTimer;
    _HomeClickTimer = 0;

LABEL_67:
    v5 = 0;
    goto LABEL_68;
  }

  if (((_IsBuddyRunning & 1) != 0 || AXSessionIsLoginSession()) && [v4 type] == 3001)
  {
    LOBYTE(location[0]) = 0;
    [(AXBHomeClickController *)self _checkIfZoomWasActivated:v4 stealEvent:location];
    v5 = location[0];
    goto LABEL_68;
  }

  HasHomeButton = AXDeviceHasHomeButton();
  v11 = [v4 type];
  if (HasHomeButton)
  {
    v12 = 1000;
  }

  else
  {
    v12 = 1010;
  }

  if (AXDeviceHasHomeButton())
  {
    v13 = 1000;
  }

  else
  {
    v13 = 1011;
  }

  v14 = [v4 type];
  v15 = v14;
  if (v11 != v12 && v14 != v13)
  {
    goto LABEL_67;
  }

  if (v11 == v12)
  {
    [_HomeClickTimer cancel];
    v17 = _HomeClickTimer;
    _HomeClickTimer = 0;
  }

  v18 = &qword_2A178F7B8;
  v19 = qword_2A178F7B8;
  if (v15 == v13)
  {
    if (!qword_2A178F7B8)
    {
      goto LABEL_67;
    }

    v18 = &_MergedGlobals;
    v19 = _MergedGlobals;
  }

  *v18 = v19 + 1;
  [(NSLock *)self->_menuButtonLock lock];
  [(NSMutableArray *)self->_menuButtonClientIds addObject:v4];
  [(NSLock *)self->_menuButtonLock unlock];
  v20 = _MergedGlobals;
  if (_MergedGlobals != 2)
  {
    goto LABEL_82;
  }

  if ((_TripleHomeEnabled & 1) == 0 && (_IsBuddyRunning & 1) == 0)
  {
    if (AXSessionIsLoginSession())
    {
      v20 = _MergedGlobals;
LABEL_82:
      if (v20 == 3)
      {
        _MergedGlobals = 0;
        qword_2A178F7B8 = 0;
        [(NSLock *)self->_menuButtonLock lock];
        [(NSMutableArray *)self->_menuButtonClientIds removeAllObjects];
        [(NSLock *)self->_menuButtonLock unlock];
        LocalCenter = CFNotificationCenterGetLocalCenter();
        v5 = 1;
        CFNotificationCenterPostNotification(LocalCenter, *MEMORY[0x29EDC8518], 0, 0, 1u);
        goto LABEL_68;
      }

      goto LABEL_85;
    }

    goto LABEL_90;
  }

LABEL_85:
  v5 = 1;
  if (!_HomeClickTimer && v11 == v12)
  {
    v22 = objc_alloc_init(MEMORY[0x29EDBD6A0]);
    v23 = _HomeClickTimer;
    _HomeClickTimer = v22;

    objc_initWeak(location, self);
    v24 = _HomeClickTimer;
    v25 = *&_HomeClickTimeout;
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = __43__AXBHomeClickController_captureHomeClick___block_invoke_3;
    v26[3] = &unk_29F2A4D08;
    objc_copyWeak(&v27, location);
    [v24 afterDelay:v26 processBlock:v25];
    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

LABEL_68:

  return v5 & 1;
}

uint64_t __43__AXBHomeClickController_captureHomeClick___block_invoke()
{
  result = MGGetBoolAnswer();
  captureHomeClick__RequiresReachability = result;
  return result;
}

uint64_t __43__AXBHomeClickController_captureHomeClick___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v1 = result;
    LOBYTE(v2) = 1;
    _AXLogWithFacility();
    result = [*(v1 + 32) _didHideAlert];
    *(*(v1 + 32) + 8) = 0;
  }

  return result;
}

void __43__AXBHomeClickController_captureHomeClick___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireHomeButtons:1];
}

- (void)_updateBuddyVoiceOverStatus
{
  if (_IsBuddyRunning & 1) != 0 || (AXSessionIsLoginSession())
  {
    return;
  }

  v2 = _AXSTripleClickCopyOptions();
  if (_AXSTripleClickContainsOption())
  {
    _AXSTripleClickRemoveOption();
    if (_AXSVoiceOverTouchEnabled())
    {
      _AXSTripleClickAddOption();
      goto LABEL_10;
    }

    if (!_AXSCanDisableApplicationAccessibility())
    {
      goto LABEL_10;
    }

LABEL_9:
    _AXSApplicationAccessibilitySetEnabled();
    goto LABEL_10;
  }

  if (_AXSCanDisableApplicationAccessibility() && _AXSApplicationAccessibilityEnabled())
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_appTransition
{
  v29 = *MEMORY[0x29EDCA608];
  if ([MEMORY[0x29EDBA108] isMainThread])
  {
    _AXAssert();
  }

  v3 = _IsBuddyRunning;
  v4 = _IsLoginUIRunning;
  isBuddyRunning = _isBuddyRunning();
  IsLoginSession = AXSessionIsLoginSession();
  if ((isBuddyRunning & 1) == 0 && ![(AXBHomeClickController *)self _purpleBuddySetupComplete]&& (IsLoginSession & 1) == 0)
  {
    AXPerformBlockOnMainThreadAfterDelay();
    goto LABEL_50;
  }

  v7 = VOTLogLifeCycle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v26 = isBuddyRunning;
    *&v26[4] = 1024;
    *&v26[6] = IsLoginSession;
    v27 = 1024;
    v28 = 0;
    _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Home click controller transition %d %d %d", buf, 0x14u);
  }

  _IsBuddyRunning = isBuddyRunning;
  _IsLoginUIRunning = IsLoginSession;
  [(AXBHomeClickController *)self _updateBuddyVoiceOverStatus];
  if ((!v3 || (_IsBuddyRunning & 1) == 0) && (!v4 || (_IsLoginUIRunning & 1) == 0))
  {
    if ((_IsBuddyRunning & 1) != 0 || AXSessionIsLoginSession())
    {
      _PreBuddyOptions = _AXSTripleClickCopyOptions();
      v8 = VOTLogLifeCycle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v26 = _PreBuddyOptions;
        _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "Prebuddy options: %@", buf, 0xCu);
      }

      IsMultiUser = AXDeviceIsMultiUser();
      if (_PreBuddyOptions && [_PreBuddyOptions containsObject:&unk_2A2121828] && !(IsMultiUser & 1 | ((objc_msgSend(_PreBuddyOptions, "containsObject:", &unk_2A2121840) & 1) == 0)) && !-[AXBHomeClickController _voiceOverWasToggledSinceBoot](self, "_voiceOverWasToggledSinceBoot"))
      {
        _AXSVoiceOverTouchSetEnabled();
        if (_AXSCanDisableApplicationAccessibility())
        {
          _AXSApplicationAccessibilitySetEnabled();
        }

        v10 = [MEMORY[0x29EDBD6D8] sharedInstance];
        v11 = [v10 ignoreLogging];

        if ((v11 & 1) == 0)
        {
          v12 = [MEMORY[0x29EDBD6D8] identifier];
          v13 = AXLoggerForFacility();

          v14 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = AXColorizeFormatLog();
            v16 = _AXStringForArgs();
            if (os_log_type_enabled(v13, v14))
            {
              *buf = 138543362;
              *v26 = v16;
              _os_log_impl(&dword_29BBBD000, v13, v14, "%{public}@", buf, 0xCu);
            }
          }
        }
      }

      v17 = MEMORY[0x29EDB8D80];
      v18 = [MEMORY[0x29EDBA070] numberWithInt:5];
      v19 = [v17 arrayWithObject:v18];

      _AXSSetTripleClickOptions();
      goto LABEL_27;
    }

    if (v3 && _IsBuddyRunning != 1 || v4 && (_IsLoginUIRunning & 1) == 0)
    {
      if (_AXSVoiceOverTouchEnabled())
      {
        _AXSTripleClickRemoveOption();
        _AXSTripleClickAddOption();
      }

      else
      {
        if (_AXSCanDisableApplicationAccessibility())
        {
          _AXSApplicationAccessibilitySetEnabled();
        }

        _AXSSetTripleClickOptions();
        if (_PreBuddyOptions)
        {
          CFRelease(_PreBuddyOptions);
          _PreBuddyOptions = 0;
        }
      }
    }

    else if (_IsBuddyRunning & 1) != 0 || (AXSessionIsLoginSession())
    {
      goto LABEL_27;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.SubstantialTransition", 0);
LABEL_27:
    if ((_IsBuddyRunning & 1) == 0 && (AXSessionIsLoginSession() & 1) == 0)
    {
      _AXSTripleClickRemoveOption();
      if (_AXSCanDisableApplicationAccessibility() || _AXSVoiceOverTouchEnabled())
      {
        _AXSApplicationAccessibilitySetEnabled();
      }
    }

    if ((v4 & 1) == 0 && _IsLoginUIRunning == 1)
    {
      _AXSZoomTouchSetEnabled();
      _AXSVoiceOverTouchSetEnabled();
      v20 = MEMORY[0x29EDB8D80];
      v21 = [MEMORY[0x29EDBA070] numberWithInt:5];
      v22 = [v20 arrayWithObject:v21];

      _AXSSetTripleClickOptions();
      if (_AXSCanDisableApplicationAccessibility())
      {
        _AXSApplicationAccessibilitySetEnabled();
      }

      [(AXBHomeClickController *)self clearNoteToUserSession];
    }
  }

LABEL_50:
  v23 = *MEMORY[0x29EDCA608];
}

- (void)_triggerAppTransition
{
  if (_triggerAppTransition_onceToken != -1)
  {
    [AXBHomeClickController _triggerAppTransition];
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __47__AXBHomeClickController__triggerAppTransition__block_invoke_2;
  block[3] = &unk_29F2A4B10;
  block[4] = self;
  dispatch_async(_triggerAppTransition_AppTransitionQueue, block);
}

uint64_t __47__AXBHomeClickController__triggerAppTransition__block_invoke()
{
  _triggerAppTransition_AppTransitionQueue = dispatch_queue_create("AXAppAccessQueue", 0);

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_checkIfZoomWasActivated:(id)a3 stealEvent:(BOOL *)a4
{
  v6 = a3;
  if (!_AXSZoomTouchEnabled() && !_AXSVoiceOverTouchEnabled())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = [v6 handInfo];
    v9 = [v8 eventType];
    if (v9 <= 0xA && ((1 << v9) & 0x640) != 0)
    {
      if ((v9 & 0xFFFFFFFB) != 1)
      {
        if ([v8 currentFingerCount] || _checkIfZoomWasActivated_stealEvent__FingerCount < 1)
        {
          goto LABEL_33;
        }

        if (*&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo == 0.0 || Current - *&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo >= 0.2)
        {
          if (*&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne == 0.0 || Current - *&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne >= 0.2)
          {
            _checkIfZoomWasActivated_stealEvent__TapCount = 0;
            _checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo = 0;
            _checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne = 0;
            goto LABEL_32;
          }

          if (_checkIfZoomWasActivated_stealEvent__TapCount)
          {
LABEL_32:
            _checkIfZoomWasActivated_stealEvent__FingerCount = 0;
LABEL_33:

            goto LABEL_34;
          }

          _checkIfZoomWasActivated_stealEvent__TapCount = 1;
        }

        else
        {
          if (_checkIfZoomWasActivated_stealEvent__TapCount == 1 && *&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo - *&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne < 0.65)
          {
            [(AXBHomeClickController *)self _handleZoomActivationDuringBuddy];
          }

          _checkIfZoomWasActivated_stealEvent__TapCount = 0;
          _checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo = 0;
          _checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne = 0;
        }

        *a4 = 1;
        BKSHIDServicesCancelTouchesOnMainDisplay();
        goto LABEL_32;
      }
    }

    else if ((v9 & 0xFFFFFFFB) != 1)
    {
      if ([v8 eventType] == 8 && _checkIfZoomWasActivated_stealEvent__FingerCount >= 1)
      {
        _checkIfZoomWasActivated_stealEvent__TapCount = 0;
        _checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo = 0;
        _checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne = 0;
      }

      goto LABEL_33;
    }

    if ([v8 currentFingerCount] == 3)
    {
      if (_checkIfZoomWasActivated_stealEvent__TapCount == 1 && Current - *&_checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne <= 0.5)
      {
        _checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo = *&Current;
      }

      else
      {
        _checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne = *&Current;
      }
    }

    else if ([v8 currentFingerCount] >= 4)
    {
      _checkIfZoomWasActivated_stealEvent__TapCount = 0;
      _checkIfZoomWasActivated_stealEvent__ThreeDownTimeTwo = 0;
      _checkIfZoomWasActivated_stealEvent__ThreeDownTimeOne = 0;
    }

    _checkIfZoomWasActivated_stealEvent__FingerCount = [v8 currentFingerCount];
    goto LABEL_33;
  }

LABEL_34:

  return 0;
}

- (BOOL)_accessibilityIsFactoryDiskImagePresent
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = MobileStorageCopyDevices();
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x29EDC5D50];
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{v5, v13}];
        v9 = [v8 hasPrefix:@"/private/var/personalized_factory"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

void __58__AXBHomeClickController__handleZoomActivationDuringBuddy__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _accessibilityIsFactoryDiskImagePresent])
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "User activated Zoom gesture during setup, but FDI present so Zoom gesture will be suppressed", buf, 2u);
    }
  }

  else
  {
    v3 = [MEMORY[0x29EDBDFA8] server];
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __58__AXBHomeClickController__handleZoomActivationDuringBuddy__block_invoke_362;
    v4[3] = &unk_29F2A50F8;
    v4[4] = *(a1 + 32);
    [v3 showAlert:1 withHandler:v4];
  }
}

- (void)_handleZoomInBuddyAlertResult:(int64_t)a3
{
  if (!a3)
  {
    _AXSZoomTouchSetEnabled();
    v4 = *MEMORY[0x29EDC8550];

    _AXSAccessibilitySetiTunesPreference();
  }
}

- (void)_springBoardDied:(id)a3
{
  [(AXBHomeClickController *)self _didHideAlert];
  self->_isAlertVisible = 0;
  v4 = [MEMORY[0x29EDBDFA8] server];
  [v4 cleanupAlertHandler];
}

- (void)_updateEventTapSettings
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x29EDBA070] numberWithBool:_HomeClickEnabled];
    v5 = [MEMORY[0x29EDBA070] numberWithBool:_TripleHomeEnabled];
    v6 = [MEMORY[0x29EDBA070] numberWithBool:{-[AXBHomeClickController _sideButtonEnabled](self, "_sideButtonEnabled")}];
    v15 = 138412802;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Home click controller enabling tap: Home click: %@, triple click %@, side button: %@", &v15, 0x20u);
  }

  if ((_HomeClickEnabled & 1) == 0 && (_TripleHomeEnabled & 1) == 0 && ![(AXBHomeClickController *)self _sideButtonEnabled])
  {
    if (!self->_eventTapIdentifier)
    {
      goto LABEL_11;
    }

    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_29BBBD000, v13, OS_LOG_TYPE_DEFAULT, "Removing home click event tap", &v15, 2u);
    }

    v14 = [MEMORY[0x29EDBDF60] sharedManager];
    [v14 removeEventTap:self->_eventTapIdentifier];

    eventTapIdentifier = self->_eventTapIdentifier;
    self->_eventTapIdentifier = 0;
    goto LABEL_10;
  }

  if (!self->_eventTapIdentifier)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Installing home click event tap", &v15, 2u);
    }

    v8 = [MEMORY[0x29EDBDF60] sharedManager];
    v9 = [v8 installEventTap:&__block_literal_global_369 identifier:@"HomeClick" type:0];
    v10 = self->_eventTapIdentifier;
    self->_eventTapIdentifier = v9;

    eventTapIdentifier = [MEMORY[0x29EDBDF60] sharedManager];
    [eventTapIdentifier setEventTapPriority:self->_eventTapIdentifier priority:70];
LABEL_10:
  }

LABEL_11:
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t __49__AXBHomeClickController__updateEventTapSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 3001 || AXInCheckerBoardScenario())
  {
    v3 = [_Controller captureHomeClick:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)controller
{
  v2 = _Controller;
  if (!_Controller)
  {
    v3 = [objc_allocWithZone(AXBHomeClickController) init];
    v4 = _Controller;
    _Controller = v3;

    [_Controller _updateTripleHomeSettings:1];
    [_Controller _updateHomeClickEnabled];
    [_Controller _updateHomeClickSpeed];
    [_Controller initialize];
    v2 = _Controller;
  }

  return v2;
}

- (void)initialize
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _accessibilityTripleHomeStatusChange, *MEMORY[0x29EDC8510], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, 0, _accessibilityTripleHomeStatusChange, *MEMORY[0x29EDC8538], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, 0, _accessibilityTripleHomeStatusChange, *MEMORY[0x29EDC8558], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*MEMORY[0x29EDC14D8]];
  CFNotificationCenterAddObserver(v6, 0, _accessibilityTripleHomeStatusChange, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _accessibilityTripleHomeFired, *MEMORY[0x29EDC8518], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, 0, _accessibilityHomeClickEnabled, *MEMORY[0x29EDC8458], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, 0, _accessibilityHomeClickSpeedChanged, *MEMORY[0x29EDC8460], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (![(AXBHomeClickController *)self _purpleBuddySetupComplete])
  {
    [(AXBHomeClickController *)self _triggerAppTransition];
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, self, _appTransitionOccurred, @"com.apple.mobile.SubstantialTransition", 0, 1028);
  }

  v12 = [MEMORY[0x29EDBA068] defaultCenter];
  [v12 addObserver:self selector:sel__springBoardDied_ name:*MEMORY[0x29EDBDF10] object:0];

  v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  menuButtonClientIds = self->_menuButtonClientIds;
  self->_menuButtonClientIds = v13;

  v15 = objc_alloc_init(MEMORY[0x29EDBA020]);
  menuButtonLock = self->_menuButtonLock;
  self->_menuButtonLock = v15;

  _handleInPreBoardModeUpdate();
  v17 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v17, 0, _handleInPreBoardModeUpdate, *MEMORY[0x29EDBDEB0], 0, CFNotificationSuspensionBehaviorCoalesce);
  _handleInCheckerBoardModeUpdate();
  v18 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v18, 0, _handleInCheckerBoardModeUpdate, *MEMORY[0x29EDBDEA8], 0, CFNotificationSuspensionBehaviorCoalesce);
  if (AXSessionIsLoginSession())
  {
    [(AXBHomeClickController *)self clearNoteToUserSession];
    [(AXBHomeClickController *)self _triggerAppTransition];
  }

  v19 = CFNotificationCenterGetLocalCenter();
  v20 = *MEMORY[0x29EDBDEE0];

  CFNotificationCenterAddObserver(v19, 0, _handleSessionIsLoginSessionUpdate, v20, 0, CFNotificationSuspensionBehaviorCoalesce);
}

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_7 != -1)
  {
    +[AXBHomeClickController initializeMonitor];
  }
}

uint64_t __43__AXBHomeClickController_initializeMonitor__block_invoke()
{
  initializeMonitor__SharedHomeClickController = +[AXBHomeClickController controller];

  return MEMORY[0x2A1C71028]();
}

- (void)_fireHomeButtons:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4 = 138412802;
  v5 = v2;
  v6 = 1024;
  v7 = _MergedGlobals;
  v8 = 1024;
  v9 = qword_2A178F7B8;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Our menu button ids are messed up: %@ != %d + %d", &v4, 0x18u);
  v3 = *MEMORY[0x29EDCA608];
}

@end