@interface AXBackBoardServerInstance
+ (id)backBoardServerInstance;
- (AXBColorFilterDescription)colorFilterFromLastUpdate;
- (AXBackBoardServerInstanceDelegate)delegate;
- (BOOL)adaptationEnabled;
- (BOOL)blueLightStatusEnabled;
- (BOOL)brightnessFiltersEnabled;
- (BOOL)supportsAdaptation;
- (id)_axPreferenceAsMobile:(id)mobile;
- (id)_gaxBackboard;
- (id)_handleAXUIServerPID:(id)d;
- (id)_handleAdaptationEnabled:(id)enabled;
- (id)_handleAssistiveTouchPID:(id)d;
- (id)_handleBlueLightStatusEnabled:(id)enabled;
- (id)_handleBrightnessFiltersEnabled:(id)enabled;
- (id)_handleContextHostingIdForContextId:(id)id;
- (id)_handleContextIdForPosition:(id)position;
- (id)_handleConvertFrameFromContextId:(id)id;
- (id)_handleConvertFrameFromContextIdToContextId:(id)id;
- (id)_handleConvertFrameToContextId:(id)id;
- (id)_handleConvertPointFromContextId:(id)id;
- (id)_handleConvertPointToContextId:(id)id;
- (id)_handleEventListenerRegistration:(id)registration;
- (id)_handleFullKeyboardAccessDaemonPID:(id)d;
- (id)_handleGetGuidedAccessAvailability:(id)availability;
- (id)_handleGetLastSetColorFilter:(id)filter;
- (id)_handleGetZoomInitialFocusRect:(id)rect;
- (id)_handleGuidedAccessCurrentModeAndSessionApp:(id)app;
- (id)_handleGuidedAccessEffectiveAppBundleIdentifier:(id)identifier;
- (id)_handleGuidedAccessIgnoredRegions:(id)regions;
- (id)_handleHearingAidServerPID:(id)d;
- (id)_handleHomeClickSwallowedForGuidedAccess:(id)access;
- (id)_handleInvertColorsChange:(id)change;
- (id)_handleIsGuidedAccessActive:(id)active;
- (id)_handleIsGuidedAccessInWorkspace:(id)workspace;
- (id)_handleIsGuidedAccessSelfLockedToRequestingApp:(id)app;
- (id)_handleIsGuidedAccessUnmanagedSelfLocked:(id)locked;
- (id)_handleIsHearingControlEnabled:(id)enabled;
- (id)_handleIsRestrictedForAAC:(id)c;
- (id)_handleLockScreenDimTimerEnabled:(id)enabled;
- (id)_handlePostEvent:(id)event;
- (id)_handleRegisterAccessibilityUIServerPID:(id)d;
- (id)_handleRegisterAssistiveTouchPID:(id)d;
- (id)_handleRegisterFullKeyboardAccessDaemonPID:(id)d;
- (id)_handleRegisterHearingAidServerPID:(id)d;
- (id)_handleRegisterLiveCaptionsPID:(id)d;
- (id)_handleRegisterSiriViewServicePID:(id)d;
- (id)_handleRegisterZoomConflict:(id)conflict;
- (id)_handleResetAccessibilityFeatures:(id)features;
- (id)_handleSessionIsLoginSession:(id)session;
- (id)_handleSetCapsLockLightOn:(id)on;
- (id)_handleSetClarityUIAdminPasscode:(id)passcode;
- (id)_handleSetIsSpeakScreenHighlightVisible:(id)visible;
- (id)_handleSetSessionIsLoginSession:(id)session;
- (id)_handleSetSwitchControlHasScreenSwitch:(id)switch;
- (id)_handleSetSwitchControlRendersDeviceUnusable:(id)unusable;
- (id)_handleSetZoomInitialFocusRect:(id)rect;
- (id)_handleSupportsAdaptation:(id)adaptation;
- (id)_handleToggleGuidedAccess:(id)access;
- (id)_handleTripleClickHomeButtonFired:(id)fired;
- (id)_handleUserEventOccurred:(id)occurred;
- (id)_handleValidateClarityUIAdminPasscode:(id)passcode;
- (id)_handleZoomAdjustment:(id)adjustment;
- (id)_initServer;
- (id)_setAXPreferenceAsMobile:(id)mobile;
- (id)_setDeviceOrientation:(id)orientation;
- (void)_handleGuidedAccessAutomationCommand:(id)command completion:(id)completion;
- (void)_handleSetGuidedAccessEnabledByRequestingApp:(id)app completion:(id)completion;
- (void)_initializeHandlers;
- (void)dealloc;
- (void)disableBrightnessFilters;
- (void)forceLoadGAXBundle;
- (void)resetAccessibilityFeatures;
- (void)restoreCachedBrightnessFilters;
@end

@implementation AXBackBoardServerInstance

+ (id)backBoardServerInstance
{
  if (backBoardServerInstance_onceToken != -1)
  {
    +[AXBackBoardServerInstance backBoardServerInstance];
  }

  v3 = ServerInstance;

  return v3;
}

uint64_t __52__AXBackBoardServerInstance_backBoardServerInstance__block_invoke()
{
  ServerInstance = [[AXBackBoardServerInstance alloc] _initServer];

  return MEMORY[0x2A1C71028]();
}

- (void)_initializeHandlers
{
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterZoomConflict_ forKey:2000 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleZoomAdjustment_ forKey:2024 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleConvertFrameFromContextId_ forKey:2007 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleConvertFrameToContextId_ forKey:2008 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleConvertFrameFromContextIdToContextId_ forKey:2042 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.voiceover", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleContextHostingIdForContextId_ forKey:2031 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleContextIdForPosition_ forKey:2032 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handlePostEvent_ forKey:2009 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.physicalinteraction.client", @"com.apple.accessibility.api", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleUserEventOccurred_ forKey:2011 possibleRequiredEntitlements:@"com.apple.accessibility.BackBoard", @"com.apple.accessibility.SpringBoard", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetCapsLockLightOn_ forKey:2043 possibleRequiredEntitlements:@"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleEventListenerRegistration_ forKey:2012 possibleRequiredEntitlements:@"com.apple.ax.eventlisten", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterAssistiveTouchPID_ forKey:2014 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterLiveCaptionsPID_ forKey:2018 possibleRequiredEntitlements:@"com.apple.livetranscriptionui", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterAccessibilityUIServerPID_ forKey:2015 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterSiriViewServicePID_ forKey:2016 possibleRequiredEntitlements:@"com.apple.voiceservices.tts.customvoice", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterHearingAidServerPID_ forKey:2017 possibleRequiredEntitlements:@"com.apple.hearingaids", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleAXUIServerPID_ forKey:2033 possibleRequiredEntitlements:@"com.apple.accessibility.automation.client", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleAssistiveTouchPID_ forKey:2063 possibleRequiredEntitlements:@"com.apple.accessibility.automation.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleHearingAidServerPID_ forKey:2073 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleFullKeyboardAccessDaemonPID_ forKey:2070 possibleRequiredEntitlements:@"com.apple.accessibility.automation.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRegisterFullKeyboardAccessDaemonPID_ forKey:2071 possibleRequiredEntitlements:@"com.apple.fullkeyboardaccess", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLockScreenDimTimerEnabled_ forKey:2019 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.accessibility.voiceover", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetGuidedAccessAvailability_ forKey:2020 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSessionIsLoginSession_ forKey:2045 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetSessionIsLoginSession_ forKey:2044 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsGuidedAccessActive_ forKey:2030 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.entitled.guidedaccess.enable", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsGuidedAccessInWorkspace_ forKey:2034 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.entitled.guidedaccess.enable", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGuidedAccessEffectiveAppBundleIdentifier_ forKey:2060 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.entitled.guidedaccess.enable", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGuidedAccessIgnoredRegions_ forKey:2035 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGuidedAccessAutomationCommand_completion_ async:1 forKey:2037 possibleRequiredEntitlements:@"com.apple.accessibility.api", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGuidedAccessCurrentModeAndSessionApp_ forKey:2061 possibleRequiredEntitlements:@"com.apple.GAX.SPI", @"com.apple.accessibility.SpringBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsGuidedAccessSelfLockedToRequestingApp_ forKey:2021 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetGuidedAccessEnabledByRequestingApp_completion_ async:1 forKey:2022 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsGuidedAccessUnmanagedSelfLocked_ forKey:2054];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsRestrictedForAAC_ forKey:2072];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleInvertColorsChange_ forKey:2025 possibleRequiredEntitlements:@"com.apple.invert.colors.write.access", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setAXPreferenceAsMobile_ forKey:2027 possibleRequiredEntitlements:@"com.apple.accessibility.api", @"com.apple.private.iamlockdown", @"com.apple.accessibility.axctl", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__axPreferenceAsMobile_ forKey:2067 possibleRequiredEntitlements:@"com.apple.accessibility.api", @"com.apple.private.iamlockdown", @"com.apple.accessibility.axctl", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetSwitchControlRendersDeviceUnusable_ forKey:2036 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetSwitchControlHasScreenSwitch_ forKey:2062 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetZoomInitialFocusRect_ async:0 forKey:2040];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetZoomInitialFocusRect_ async:0 forKey:2041];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleTripleClickHomeButtonFired_ async:0 forKey:2055 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.backboard.client", @"com.apple.backboard.client", @"com.apple.accessibility.voiceover", @"com.apple.fullkeyboardaccess", @"com.apple.commandandcontrol", @"com.apple.assistivetouch.daemon", @"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleHomeClickSwallowedForGuidedAccess_ forKey:2056 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleIsHearingControlEnabled_ forKey:2023 possibleRequiredEntitlements:0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleDisableBrightnessFilters_ forKey:2047 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleBrightnessFiltersEnabled_ forKey:2048 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleBlueLightStatusEnabled_ forKey:2049 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleRestoreCachedBrightnessFilters_ forKey:2050 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleAdaptationEnabled_ forKey:2051 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSupportsAdaptation_ forKey:2052 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleLoadGAXBundleForUnmanagedASAM_ forKey:2053];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleResetAccessibilityFeatures_ forKey:2057 possibleRequiredEntitlements:*MEMORY[0x29EDC83B0], 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleToggleGuidedAccess_ forKey:2058 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.BackBoard", @"com.apple.accessibility.entitled.guidedaccess.enable", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleGetLastSetColorFilter_ forKey:2066 possibleRequiredEntitlements:@"com.apple.AXApp", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleConvertPointFromContextId_ forKey:2068 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleConvertPointToContextId_ forKey:2069 possibleRequiredEntitlements:@"com.apple.assistivetouch.daemon", @"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetIsSpeakScreenHighlightVisible_ forKey:2074 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__setDeviceOrientation_ forKey:2075 possibleRequiredEntitlements:@"com.apple.accessibility.SpringBoard", @"com.apple.accessibility.physicalinteraction.client", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleSetClarityUIAdminPasscode_ forKey:2076 possibleRequiredEntitlements:@"com.apple.CoreRoutine.preferences", 0];
  [(AXIPCServer *)self->_server setHandlerWithTarget:self selector:sel__handleValidateClarityUIAdminPasscode_ forKey:2077 possibleRequiredEntitlements:@"com.apple.accessibility.AccessibilityUIServer", @"com.apple.ClarityBoard", 0];
}

- (id)_initServer
{
  v29 = *MEMORY[0x29EDCA608];
  v24.receiver = self;
  v24.super_class = AXBackBoardServerInstance;
  v2 = [(AXBackBoardServerInstance *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    eventListeners = v2->_eventListeners;
    v2->_eventListeners = v3;

    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    zoomListeners = v2->_zoomListeners;
    v2->_zoomListeners = v5;

    v7 = *(MEMORY[0x29EDB90D8] + 16);
    v2->_initialZoomFocusRect.origin = *MEMORY[0x29EDB90D8];
    v2->_initialZoomFocusRect.size = v7;
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "Initialize AX backboard server", buf, 2u);
    }

    v9 = objc_alloc(MEMORY[0x29EDBDF78]);
    v10 = [v9 initWithServiceName:*MEMORY[0x29EDBDE38] perPidService:0];
    server = v2->_server;
    v2->_server = v10;

    v12 = v2->_server;
    v23 = 0;
    [(AXIPCServer *)v12 startServerWithError:&v23];
    v13 = v23;
    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_29BBBD000, v14, OS_LOG_TYPE_DEFAULT, "Started AX Backboard server %@", buf, 0xCu);
    }

    [(AXIPCServer *)v2->_server setQueueSize:100];
    [(AXBackBoardServerInstance *)v2 _initializeHandlers];
    date = [MEMORY[0x29EDB8DB0] date];
    [date timeIntervalSince1970];
    v17 = v16;
    v18 = AXBSystemBootTime___boottime;
    if (!AXBSystemBootTime___boottime)
    {
      v28 = 0;
      *v27 = 0x1500000001;
      *buf = 0uLL;
      v25 = 16;
      v19 = sysctl(v27, 2u, buf, &v25, 0, 0);
      v18 = *buf;
      if (v19 == -1)
      {
        v18 = 0;
      }

      AXBSystemBootTime___boottime = v18;
    }

    v20 = v17 - v18;

    if (v20 <= 99)
    {
      _AXSSetAutomationEnabled();
    }

    if (v13)
    {
      NSLog(&cfstr_Error.isa, v13);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return v2;
}

- (void)dealloc
{
  [(AXIPCServer *)self->_server removeAllHandlersForTarget:self];
  v3.receiver = self;
  v3.super_class = AXBackBoardServerInstance;
  [(AXBackBoardServerInstance *)&v3 dealloc];
}

- (void)disableBrightnessFilters
{
  v2 = +[AXBBlueLightManager sharedManager];
  [v2 disableBrightnessFilters];
}

- (BOOL)brightnessFiltersEnabled
{
  v2 = +[AXBBlueLightManager sharedManager];
  brightnessFiltersEnabled = [v2 brightnessFiltersEnabled];

  return brightnessFiltersEnabled;
}

- (BOOL)blueLightStatusEnabled
{
  v2 = +[AXBBlueLightManager sharedManager];
  blueLightStatusEnabled = [v2 blueLightStatusEnabled];

  return blueLightStatusEnabled;
}

- (void)restoreCachedBrightnessFilters
{
  v2 = +[AXBBlueLightManager sharedManager];
  [v2 restoreCachedBrightnessFilters];
}

- (BOOL)adaptationEnabled
{
  v2 = +[AXBBlueLightManager sharedManager];
  adaptationEnabled = [v2 adaptationEnabled];

  return adaptationEnabled;
}

- (BOOL)supportsAdaptation
{
  v2 = +[AXBBlueLightManager sharedManager];
  supportsAdaptation = [v2 supportsAdaptation];

  return supportsAdaptation;
}

- (void)forceLoadGAXBundle
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x29EDC8438] object:0];

  replayer = [MEMORY[0x29EDBDF98] replayer];
  [replayer replayWithName:@"Ping SpringBoard for unmanaged ASAM" attempts:10 interval:1 async:MEMORY[0x29EDCA578] queue:&__block_literal_global_490 replayBlock:&__block_literal_global_494 completion:0.5];
}

uint64_t __47__AXBackBoardServerInstance_forceLoadGAXBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  v1 = [v0 loadGAXBundleForUnmanagedASAM];

  return v1;
}

uint64_t __47__AXBackBoardServerInstance_forceLoadGAXBundle__block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _AXLogWithFacility();
  }

  return result;
}

- (void)resetAccessibilityFeatures
{
  _AXSVoiceOverTouchSetEnabled();
  _AXSAssistiveTouchSetEnabled();
  _AXSAssistiveTouchScannerSetEnabled();
  _AXSZoomTouchSetEnabled();
  _AXSInvertColorsSetEnabled();
  _AXSGrayscaleSetEnabled();
  _AXSSetReduceWhitePointEnabled();

  MEMORY[0x2A1C6CA10](0);
}

- (AXBColorFilterDescription)colorFilterFromLastUpdate
{
  v4 = +[AXBDisplayFilterManager sharedInstance];
  [v4 displayFilterFromLastUpdate];

  result = MADisplayFilterGetMatrix();
  *&retstr->var0[0][0] = 0u;
  *&retstr->var0[0][2] = 0u;
  *&retstr->var0[1][1] = 0u;
  *&retstr->var0[2][0] = 0u;
  retstr->var0[2][2] = 0.0;
  return result;
}

- (id)_handleRegisterZoomConflict:(id)conflict
{
  v3 = MEMORY[0x29EDBA068];
  conflictCopy = conflict;
  defaultCenter = [v3 defaultCenter];
  payload = [conflictCopy payload];

  [defaultCenter postNotificationName:@"UIAXZoomRegisterConflict" object:0 userInfo:payload];
  return 0;
}

- (id)_handleZoomAdjustment:(id)adjustment
{
  v3 = MEMORY[0x29EDBA068];
  adjustmentCopy = adjustment;
  defaultCenter = [v3 defaultCenter];
  v6 = *MEMORY[0x29EDBDFE8];
  payload = [adjustmentCopy payload];

  [defaultCenter postNotificationName:v6 object:0 userInfo:payload];
  return 0;
}

- (id)_handleContextIdForPosition:(id)position
{
  v16[1] = *MEMORY[0x29EDCA608];
  payload = [position payload];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  v6 = [payload objectForKey:@"displayPoint"];
  v7 = NSPointFromString(v6);
  v8 = [delegate contextIdForDisplayPoint:{v7.x, v7.y}];

  v9 = objc_alloc(MEMORY[0x29EDBDF70]);
  v15 = @"result";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v8];
  v16[0] = v10;
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithKey:2032 payload:v11];

  v13 = *MEMORY[0x29EDCA608];

  return v12;
}

- (id)_handleContextHostingIdForContextId:(id)id
{
  v15[1] = *MEMORY[0x29EDCA608];
  payload = [id payload];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  v6 = [payload objectForKey:@"contextId"];
  v7 = [delegate contextIdHosterForContextId:{objc_msgSend(v6, "unsignedIntValue")}];

  v8 = objc_alloc(MEMORY[0x29EDBDF70]);
  v14 = @"result";
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v7];
  v15[0] = v9;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v8 initWithKey:2031 payload:v10];

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_handleConvertFrameToContextId:(id)id
{
  payload = [id payload];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  v6 = [payload objectForKey:@"frame"];
  v29 = NSRectFromString(v6);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = [payload objectForKey:@"contextId"];
  unsignedIntValue = [v11 unsignedIntValue];
  v13 = [payload objectForKeyedSubscript:@"displayId"];
  [delegate convertFrame:unsignedIntValue toContextId:objc_msgSend(v13 displayId:{"unsignedIntValue"), x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = objc_alloc(MEMORY[0x29EDBDF70]);
  v23 = MEMORY[0x29EDB8DC0];
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v24 = NSStringFromRect(v30);
  v25 = [v23 dictionaryWithObject:v24 forKey:@"frame"];
  v26 = [v22 initWithKey:2007 payload:v25];

  return v26;
}

- (id)_handleConvertFrameFromContextId:(id)id
{
  payload = [id payload];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  v6 = [payload objectForKey:@"frame"];
  v29 = NSRectFromString(v6);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = [payload objectForKey:@"contextId"];
  unsignedIntValue = [v11 unsignedIntValue];
  v13 = [payload objectForKeyedSubscript:@"displayId"];
  [delegate convertFrame:unsignedIntValue fromContextId:objc_msgSend(v13 displayId:{"unsignedIntValue"), x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = objc_alloc(MEMORY[0x29EDBDF70]);
  v23 = MEMORY[0x29EDB8DC0];
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v24 = NSStringFromRect(v30);
  v25 = [v23 dictionaryWithObject:v24 forKey:@"frame"];
  v26 = [v22 initWithKey:2007 payload:v25];

  return v26;
}

- (id)_handleConvertFrameFromContextIdToContextId:(id)id
{
  v46[1] = *MEMORY[0x29EDCA608];
  idCopy = id;
  delegate = [(AXBackBoardServerInstance *)self delegate];
  payload = [idCopy payload];
  v7 = [payload objectForKeyedSubscript:@"frame"];
  v48 = NSRectFromString(v7);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  payload2 = [idCopy payload];
  v13 = [payload2 objectForKeyedSubscript:@"fromContextId"];
  unsignedIntValue = [v13 unsignedIntValue];
  payload3 = [idCopy payload];
  v16 = [payload3 objectForKeyedSubscript:@"displayId"];
  [delegate convertFrame:unsignedIntValue fromContextId:objc_msgSend(v16 displayId:{"unsignedIntValue"), x, y, width, height}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  delegate2 = [(AXBackBoardServerInstance *)self delegate];
  payload4 = [idCopy payload];
  v27 = [payload4 objectForKeyedSubscript:@"toContextId"];
  unsignedIntValue2 = [v27 unsignedIntValue];
  payload5 = [idCopy payload];

  v30 = [payload5 objectForKeyedSubscript:@"displayId"];
  [delegate2 convertFrame:unsignedIntValue2 toContextId:objc_msgSend(v30 displayId:{"unsignedIntValue"), v18, v20, v22, v24}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = objc_alloc(MEMORY[0x29EDBDF70]);
  v45 = @"frame";
  v49.origin.x = v32;
  v49.origin.y = v34;
  v49.size.width = v36;
  v49.size.height = v38;
  v40 = NSStringFromRect(v49);
  v46[0] = v40;
  v41 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v42 = [v39 initWithKey:2042 payload:v41];

  v43 = *MEMORY[0x29EDCA608];

  return v42;
}

- (id)_handleConvertPointFromContextId:(id)id
{
  payload = [id payload];
  v5 = [payload objectForKey:@"contextId"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [payload objectForKey:@"displayId"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  v9 = [payload objectForKey:@"point"];
  v10 = NSPointFromString(v9);

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate convertPoint:unsignedIntValue fromContextId:unsignedIntValue2 displayId:{v10.x, v10.y}];
  v13 = v12;
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x29EDBDF70]);
  v17 = MEMORY[0x29EDB8DC0];
  v23.x = v13;
  v23.y = v15;
  v18 = NSStringFromPoint(v23);
  v19 = [v17 dictionaryWithObject:v18 forKey:@"point"];
  v20 = [v16 initWithKey:2068 payload:v19];

  return v20;
}

- (id)_handleConvertPointToContextId:(id)id
{
  payload = [id payload];
  v5 = [payload objectForKey:@"contextId"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [payload objectForKey:@"displayId"];
  unsignedIntValue2 = [v7 unsignedIntValue];

  v9 = [payload objectForKey:@"point"];
  v10 = NSPointFromString(v9);

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate convertPoint:unsignedIntValue toContextId:unsignedIntValue2 displayId:{v10.x, v10.y}];
  v13 = v12;
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x29EDBDF70]);
  v17 = MEMORY[0x29EDB8DC0];
  v23.x = v13;
  v23.y = v15;
  v18 = NSStringFromPoint(v23);
  v19 = [v17 dictionaryWithObject:v18 forKey:@"point"];
  v20 = [v16 initWithKey:2069 payload:v19];

  return v20;
}

- (id)_handlePostEvent:(id)event
{
  eventCopy = event;
  if (_handlePostEvent__onceToken != -1)
  {
    [AXBackBoardServerInstance _handlePostEvent:];
  }

  v5 = _handlePostEvent__postQueue;
  if (_handlePostEvent__postQueue)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __46__AXBackBoardServerInstance__handlePostEvent___block_invoke_2;
    v7[3] = &unk_29F2A4CC0;
    v8 = eventCopy;
    selfCopy = self;
    dispatch_async(v5, v7);
  }

  return 0;
}

uint64_t __46__AXBackBoardServerInstance__handlePostEvent___block_invoke()
{
  _handlePostEvent__postQueue = dispatch_queue_create("axbackboard-post", 0);

  return MEMORY[0x2A1C71028]();
}

void __46__AXBackBoardServerInstance__handlePostEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) payload];
  v11 = [v2 objectForKey:@"record"];

  v3 = [*(a1 + 32) payload];
  v4 = [v3 objectForKey:@"systemEvent"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 40) delegate];
  v7 = [*(a1 + 32) payload];
  v8 = [v7 objectForKey:@"afterNamedTap"];
  v9 = [*(a1 + 32) payload];
  v10 = [v9 objectForKey:@"namedTaps"];
  [v6 postEvent:v11 systemEvent:v5 afterNamedTap:v8 namedTaps:v10];
}

- (id)_handleUserEventOccurred:(id)occurred
{
  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate userEventOccurred];

  return 0;
}

- (id)_handleSetCapsLockLightOn:(id)on
{
  payload = [on payload];
  v5 = [payload objectForKeyedSubscript:@"on"];
  bOOLValue = [v5 BOOLValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setCapsLockLightOn:bOOLValue];

  return 0;
}

- (id)_handleEventListenerRegistration:(id)registration
{
  registrationCopy = registration;
  clientPort = [registrationCopy clientPort];
  eventListeners = self->_eventListeners;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __62__AXBackBoardServerInstance__handleEventListenerRegistration___block_invoke;
  v16[3] = &__block_descriptor_36_e15_B32__0_8Q16_B24l;
  v17 = clientPort;
  v7 = [(NSMutableArray *)eventListeners indexOfObjectPassingTest:v16];
  payload = [registrationCopy payload];

  v9 = [payload objectForKey:@"start"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      delegate2 = [objc_alloc(MEMORY[0x29EDBDF68]) initWithPort:clientPort];
      [delegate2 connectWithError:0];
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = __62__AXBackBoardServerInstance__handleEventListenerRegistration___block_invoke_2;
      v14[3] = &unk_29F2A4F40;
      v14[4] = self;
      v15 = clientPort;
      [delegate2 setPortDeathHandler:v14];
      [(NSMutableArray *)self->_eventListeners addObject:delegate2];
      delegate = [(AXBackBoardServerInstance *)self delegate];
      [delegate registerEventListener:1];

LABEL_7:
    }
  }

  else if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_eventListeners removeObjectAtIndex:v7];
    if (![(NSMutableArray *)self->_eventListeners count])
    {
      delegate2 = [(AXBackBoardServerInstance *)self delegate];
      [delegate2 registerEventListener:0];
      goto LABEL_7;
    }
  }

  return 0;
}

void __62__AXBackBoardServerInstance__handleEventListenerRegistration___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __62__AXBackBoardServerInstance__handleEventListenerRegistration___block_invoke_3;
  v5[3] = &__block_descriptor_36_e15_B32__0_8Q16_B24l;
  v6 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v5];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
    if (![*(*(a1 + 32) + 16) count])
    {
      v4 = [*(a1 + 32) delegate];
      [v4 registerEventListener:0];
    }
  }
}

- (id)_handleRegisterLiveCaptionsPID:(id)d
{
  payload = [d payload];
  v5 = [payload objectForKey:@"pid"];
  intValue = [v5 intValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setLiveCaptionsPid:intValue];

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __60__AXBackBoardServerInstance__handleRegisterLiveCaptionsPID___block_invoke;
  v12[3] = &unk_29F2A4F40;
  v12[4] = self;
  v13 = intValue;
  v9 = [v8 initWithPID:intValue queue:MEMORY[0x29EDCA578] deathHandler:v12];
  lcDeathWatcher = self->_lcDeathWatcher;
  self->_lcDeathWatcher = v9;

  return 0;
}

void __60__AXBackBoardServerInstance__handleRegisterLiveCaptionsPID___block_invoke(uint64_t a1)
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "LC process went away, resetting pid", v7, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 accessibilityLiveCaptionsPid];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 setLiveCaptionsPid:0];
  }
}

- (id)_handleRegisterAssistiveTouchPID:(id)d
{
  payload = [d payload];
  v5 = [payload objectForKey:@"pid"];
  intValue = [v5 intValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setAssistiveTouchPid:intValue];

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __62__AXBackBoardServerInstance__handleRegisterAssistiveTouchPID___block_invoke;
  v12[3] = &unk_29F2A4F40;
  v12[4] = self;
  v13 = intValue;
  v9 = [v8 initWithPID:intValue queue:MEMORY[0x29EDCA578] deathHandler:v12];
  astDeathWatcher = self->_astDeathWatcher;
  self->_astDeathWatcher = v9;

  return 0;
}

void __62__AXBackBoardServerInstance__handleRegisterAssistiveTouchPID___block_invoke(uint64_t a1)
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "AST process went away, resetting pid", v7, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 accessibilityAssistiveTouchPid];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 setAssistiveTouchPid:0];
  }
}

- (id)_handleAXUIServerPID:(id)d
{
  v12[1] = *MEMORY[0x29EDCA608];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  accessibilityUIServerPid = [delegate accessibilityUIServerPid];

  v5 = objc_alloc(MEMORY[0x29EDBDF70]);
  v11 = @"pid";
  v6 = [MEMORY[0x29EDBA070] numberWithInt:accessibilityUIServerPid];
  v12[0] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:2033 payload:v7];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_handleAssistiveTouchPID:(id)d
{
  v12[1] = *MEMORY[0x29EDCA608];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  accessibilityAssistiveTouchPid = [delegate accessibilityAssistiveTouchPid];

  v5 = objc_alloc(MEMORY[0x29EDBDF70]);
  v11 = @"pid";
  v6 = [MEMORY[0x29EDBA070] numberWithInt:accessibilityAssistiveTouchPid];
  v12[0] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:2063 payload:v7];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_handleHearingAidServerPID:(id)d
{
  v12[1] = *MEMORY[0x29EDCA608];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  hearingAidServerPid = [delegate hearingAidServerPid];

  v5 = objc_alloc(MEMORY[0x29EDBDF70]);
  v11 = @"pid";
  v6 = [MEMORY[0x29EDBA070] numberWithInt:hearingAidServerPid];
  v12[0] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:2073 payload:v7];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_handleFullKeyboardAccessDaemonPID:(id)d
{
  v12[1] = *MEMORY[0x29EDCA608];
  delegate = [(AXBackBoardServerInstance *)self delegate];
  accessibilityFullKeyboardAccessDaemonPid = [delegate accessibilityFullKeyboardAccessDaemonPid];

  v5 = objc_alloc(MEMORY[0x29EDBDF70]);
  v11 = @"pid";
  v6 = [MEMORY[0x29EDBA070] numberWithInt:accessibilityFullKeyboardAccessDaemonPid];
  v12[0] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v5 initWithKey:2070 payload:v7];

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_handleRegisterAccessibilityUIServerPID:(id)d
{
  payload = [d payload];
  v5 = [payload objectForKey:@"pid"];
  intValue = [v5 intValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setAccessibilityUIServerPid:intValue];

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __69__AXBackBoardServerInstance__handleRegisterAccessibilityUIServerPID___block_invoke;
  v12[3] = &unk_29F2A4F40;
  v12[4] = self;
  v13 = intValue;
  v9 = [v8 initWithPID:intValue queue:MEMORY[0x29EDCA578] deathHandler:v12];
  uiServerDeathWatcher = self->_uiServerDeathWatcher;
  self->_uiServerDeathWatcher = v9;

  return 0;
}

void __69__AXBackBoardServerInstance__handleRegisterAccessibilityUIServerPID___block_invoke(uint64_t a1)
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "UIServer process went away, resetting pid", v7, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 accessibilityUIServerPid];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 setAccessibilityUIServerPid:0];
  }
}

- (id)_handleRegisterFullKeyboardAccessDaemonPID:(id)d
{
  payload = [d payload];
  v5 = [payload objectForKey:@"pid"];
  intValue = [v5 intValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setFullKeyboardAccessDaemonPID:intValue];

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __72__AXBackBoardServerInstance__handleRegisterFullKeyboardAccessDaemonPID___block_invoke;
  v12[3] = &unk_29F2A4F40;
  v12[4] = self;
  v13 = intValue;
  v9 = [v8 initWithPID:intValue queue:MEMORY[0x29EDCA578] deathHandler:v12];
  fkaDeathWatcher = self->_fkaDeathWatcher;
  self->_fkaDeathWatcher = v9;

  return 0;
}

void __72__AXBackBoardServerInstance__handleRegisterFullKeyboardAccessDaemonPID___block_invoke(uint64_t a1)
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "FKA process went away, resetting pid", v7, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 accessibilityFullKeyboardAccessDaemonPid];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 setFullKeyboardAccessDaemonPID:0];
  }
}

- (id)_handleRegisterSiriViewServicePID:(id)d
{
  dCopy = d;
  delegate = [(AXBackBoardServerInstance *)self delegate];
  payload = [dCopy payload];

  v7 = [payload objectForKey:@"pid"];
  [delegate setSiriViewServicePid:{objc_msgSend(v7, "intValue")}];

  return 0;
}

- (id)_handleRegisterHearingAidServerPID:(id)d
{
  payload = [d payload];
  v5 = [payload objectForKey:@"pid"];
  intValue = [v5 intValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  [delegate setHearingAidServerPid:intValue];

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __64__AXBackBoardServerInstance__handleRegisterHearingAidServerPID___block_invoke;
  v12[3] = &unk_29F2A4F40;
  v12[4] = self;
  v13 = intValue;
  v9 = [v8 initWithPID:intValue queue:MEMORY[0x29EDCA578] deathHandler:v12];
  heardDeathWatcher = self->_heardDeathWatcher;
  self->_heardDeathWatcher = v9;

  return 0;
}

void __64__AXBackBoardServerInstance__handleRegisterHearingAidServerPID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hearingAidServerPid];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 setHearingAidServerPid:0];
  }
}

- (id)_handleInvertColorsChange:(id)change
{
  payload = [change payload];
  v4 = [payload objectForKey:@"enabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 BOOLValue];
    _AXSInvertColorsSetEnabled();
  }

  return 0;
}

- (id)_handleLockScreenDimTimerEnabled:(id)enabled
{
  enabledCopy = enabled;
  delegate = [(AXBackBoardServerInstance *)self delegate];
  payload = [enabledCopy payload];

  v7 = [payload objectForKey:@"enabled"];
  [delegate setLockScreenDimTimerEnabled:{objc_msgSend(v7, "BOOLValue")}];

  return 0;
}

- (id)_handleSetSwitchControlRendersDeviceUnusable:(id)unusable
{
  v3 = MEMORY[0x29EDBDFB8];
  payload = [unusable payload];
  v5 = [payload objectForKey:@"result"];
  [v3 setSwitchControlRendersDeviceUnusable:{objc_msgSend(v5, "BOOLValue")}];

  return 0;
}

- (id)_handleSetSwitchControlHasScreenSwitch:(id)switch
{
  v3 = MEMORY[0x29EDBDFB8];
  payload = [switch payload];
  v5 = [payload objectForKey:@"result"];
  [v3 setSwitchControlHasScreenSwitch:{objc_msgSend(v5, "BOOLValue")}];

  return 0;
}

- (id)_handleSetZoomInitialFocusRect:(id)rect
{
  payload = [rect payload];
  v5 = [payload objectForKeyedSubscript:@"rect"];
  v19 = NSRectFromString(v5);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v10 = [payload objectForKeyedSubscript:@"contextId"];
  unsignedIntValue = [v10 unsignedIntValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  v13 = [payload objectForKeyedSubscript:@"displayId"];
  [delegate convertFrame:unsignedIntValue fromContextId:objc_msgSend(v13 displayId:{"unsignedIntValue"), x, y, width, height}];
  self->_initialZoomFocusRect.origin.x = v14;
  self->_initialZoomFocusRect.origin.y = v15;
  self->_initialZoomFocusRect.size.width = v16;
  self->_initialZoomFocusRect.size.height = v17;

  return 0;
}

- (id)_handleGetZoomInitialFocusRect:(id)rect
{
  v25[1] = *MEMORY[0x29EDCA608];
  rectCopy = rect;
  payload = [rectCopy payload];
  v6 = [payload objectForKeyedSubscript:@"contextId"];
  unsignedIntValue = [v6 unsignedIntValue];

  delegate = [(AXBackBoardServerInstance *)self delegate];
  payload2 = [rectCopy payload];

  v10 = [payload2 objectForKeyedSubscript:@"displayId"];
  [delegate convertFrame:unsignedIntValue toContextId:objc_msgSend(v10 displayId:{"unsignedIntValue"), self->_initialZoomFocusRect.origin.x, self->_initialZoomFocusRect.origin.y, self->_initialZoomFocusRect.size.width, self->_initialZoomFocusRect.size.height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v24 = @"rect";
  v27.origin.x = v12;
  v27.origin.y = v14;
  v27.size.width = v16;
  v27.size.height = v18;
  v19 = NSStringFromRect(v27);
  v25[0] = v19;
  v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v21 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2041 payload:v20];
  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

- (id)_gaxBackboard
{
  v2 = _gaxBackboard_gaxBackboard;
  if (!_gaxBackboard_gaxBackboard)
  {
    v3 = [NSClassFromString(&cfstr_Gaxbackboard.isa) safeValueForKey:@"sharedInstance"];
    v4 = _gaxBackboard_gaxBackboard;
    _gaxBackboard_gaxBackboard = v3;

    v2 = _gaxBackboard_gaxBackboard;
  }

  return v2;
}

- (id)_handleTripleClickHomeButtonFired:(id)fired
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, *MEMORY[0x29EDC8518], 0, 0, 1u);
  return 0;
}

- (id)_handleHomeClickSwallowedForGuidedAccess:(id)access
{
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  if (objc_opt_respondsToSelector())
  {
    v5 = _gaxBackboard;
    AXPerformSafeBlock();
  }

  return 0;
}

- (id)_handleSessionIsLoginSession:(id)session
{
  v11[1] = *MEMORY[0x29EDCA608];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"result";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:{-[AXBackBoardServerInstance _sessionIsLoginSession](self, "_sessionIsLoginSession")}];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:2045 payload:v6];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleSetSessionIsLoginSession:(id)session
{
  payload = [session payload];
  v4 = [payload objectForKeyedSubscript:@"sesionIsLoginSession"];
  SessionIsLoginSession = [v4 BOOLValue];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDBDEB8], 0, 0, 1u);
  if (SessionIsLoginSession == 1)
  {
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    [mEMORY[0x29EDBDFA0] addRotorOptionsForLoginSession];

    mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    [mEMORY[0x29EDBDFA0]2 configureZoomForLoginSession];
  }

  return 0;
}

- (id)_handleGetGuidedAccessAvailability:(id)availability
{
  v20[1] = *MEMORY[0x29EDCA608];
  availabilityCopy = availability;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 12;
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v6 = _gaxBackboard;
  if (_gaxBackboard)
  {
    v13 = _gaxBackboard;
    v14 = availabilityCopy;
    AXPerformSafeBlock();
  }

  v7 = objc_alloc(MEMORY[0x29EDBDF70]);
  v19 = @"availability";
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v16[3]];
  v20[0] = v8;
  v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [v7 initWithKey:2020 payload:v9];

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

void __64__AXBackBoardServerInstance__handleGetGuidedAccessAvailability___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) payload];
  *(*(*(a1 + 48) + 8) + 24) = [v2 availabilityForExternalRequestWithSpringboardParameters:v3];
}

- (id)_handleIsGuidedAccessInWorkspace:(id)workspace
{
  v13[1] = *MEMORY[0x29EDCA608];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v4 = _gaxBackboard;
  if (_gaxBackboard)
  {
    v12 = @"result";
    v5 = MEMORY[0x29EDBA070];
    if ([_gaxBackboard safeBoolForKey:@"isInWorkspace"])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 safeBoolForKey:@"isPasscodeViewVisible"];
    }

    v8 = [v5 numberWithInt:v6];
    v13[0] = v8;
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v7 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2034 payload:v9];
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleGuidedAccessEffectiveAppBundleIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x29EDCA608];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v4 = [_gaxBackboard safeValueForKey:@"effectiveAppBundleIdentifier"];
  v5 = v4;
  if (v4)
  {
    v10 = @"result";
    v11[0] = v4;
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2060 payload:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (void)_handleGuidedAccessAutomationCommand:(id)command completion:(id)completion
{
  v23[1] = *MEMORY[0x29EDCA608];
  commandCopy = command;
  completionCopy = completion;
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AXBackBoardServerInstance__handleGuidedAccessAutomationCommand_completion___block_invoke;
  aBlock[3] = &unk_29F2A5208;
  v9 = completionCopy;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  if (_gaxBackboard)
  {
    if (objc_opt_respondsToSelector())
    {
      payload = [commandCopy payload];
      v12 = [payload objectForKeyedSubscript:@"command"];

      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __77__AXBackBoardServerInstance__handleGuidedAccessAutomationCommand_completion___block_invoke_2;
      v18[3] = &unk_29F2A5230;
      v19 = v10;
      [_gaxBackboard handleGuidedAccessAutomationCommand:v12 completion:v18];

      v13 = 0;
      goto LABEL_9;
    }

    v13 = @"GAX Backbaord instance does not respond to handleGuidedAccessAutomationCommand:";
    v16 = @"%@";
    v17 = @"GAX Backbaord instance does not respond to handleGuidedAccessAutomationCommand:";
    LOBYTE(v15) = 1;
    _AXLogWithFacility();
  }

  else
  {
    v13 = @"Guided Access is not loaded";
  }

  if (([(__CFString *)v13 hasPrefix:@"ERROR:", v15, v16, v17]& 1) == 0)
  {
    v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"ERROR: %@", v13];
  }

  v22 = @"error";
  v23[0] = v13;
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  (*(v10 + 2))(v10, v12);
LABEL_9:

  v14 = *MEMORY[0x29EDCA608];
}

void __77__AXBackBoardServerInstance__handleGuidedAccessAutomationCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29EDBDF70];
  v4 = a2;
  v5 = [[v3 alloc] initWithKey:2037 payload:v4];

  (*(v2 + 16))(v2, v5);
}

void __77__AXBackBoardServerInstance__handleGuidedAccessAutomationCommand_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"result"];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_handleIsGuidedAccessActive:(id)active
{
  v11[1] = *MEMORY[0x29EDCA608];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  if (_gaxBackboard)
  {
    v4 = objc_alloc(MEMORY[0x29EDBDF70]);
    v10 = @"result";
    v5 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(_gaxBackboard, "safeBoolForKey:", @"isActive"}];
    v11[0] = v5;
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 initWithKey:2030 payload:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (void)_handleSetGuidedAccessEnabledByRequestingApp:(id)app completion:(id)completion
{
  v34 = *MEMORY[0x29EDCA608];
  appCopy = app;
  completionCopy = completion;
  senderBundleId = [appCopy senderBundleId];
  payload = [appCopy payload];
  v10 = [payload objectForKey:*MEMORY[0x29EDBDE90]];
  bOOLValue = [v10 BOOLValue];

  payload2 = [appCopy payload];
  v13 = [payload2 objectForKey:*MEMORY[0x29EDBDE70]];

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__AXBackBoardServerInstance__handleSetGuidedAccessEnabledByRequestingApp_completion___block_invoke;
  aBlock[3] = &unk_29F2A5258;
  v14 = completionCopy;
  v31 = v14;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (senderBundleId)
  {
    _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
    v18 = _gaxBackboard;
    if (_gaxBackboard)
    {
      v23[1] = MEMORY[0x29EDCA5F8];
      v23[2] = 3221225472;
      v23[3] = __85__AXBackBoardServerInstance__handleSetGuidedAccessEnabledByRequestingApp_completion___block_invoke_2;
      v23[4] = &unk_29F2A5280;
      v19 = &v24;
      v24 = _gaxBackboard;
      v29 = bOOLValue;
      v25 = senderBundleId;
      v26 = appCopy;
      v27 = v13;
      v28 = v16;
      AXPerformSafeBlock();
    }

    else
    {
      v20 = GAXLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v33 = bOOLValue;
        _os_log_impl(&dword_29BBBD000, v20, OS_LOG_TYPE_INFO, "Received request to set Guided Access enabled=%i, but GAXBackboard was nil.", buf, 8u);
      }

      v19 = v23;
      v23[0] = v16;
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  else
  {
    v22 = v15;
    AXPerformBlockAsynchronouslyOnMainThread();
    v18 = v22;
  }

  v21 = *MEMORY[0x29EDCA608];
}

void __85__AXBackBoardServerInstance__handleSetGuidedAccessEnabledByRequestingApp_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v10[0] = *MEMORY[0x29EDBDE90];
  v5 = [MEMORY[0x29EDBA070] numberWithBool:a2];
  v11[0] = v5;
  v10[1] = *MEMORY[0x29EDBDE80];
  v6 = [MEMORY[0x29EDBA070] numberWithBool:a3];
  v11[1] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2022 payload:v7];
  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x29EDCA608];
}

void __85__AXBackBoardServerInstance__handleSetGuidedAccessEnabledByRequestingApp_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __85__AXBackBoardServerInstance__handleSetGuidedAccessEnabledByRequestingApp_completion___block_invoke_3;
  v7[3] = &unk_29F2A5258;
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v3 setEnabled:v2 fromAppWithIdentifier:v4 withAuditToken:v9 configuration:v6 completion:v7];
}

- (id)_handleIsGuidedAccessSelfLockedToRequestingApp:(id)app
{
  v21[1] = *MEMORY[0x29EDCA608];
  appCopy = app;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  senderBundleId = [appCopy senderBundleId];
  if (senderBundleId)
  {
    _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
    v7 = _gaxBackboard;
    if (_gaxBackboard)
    {
      v14 = _gaxBackboard;
      v15 = senderBundleId;
      AXPerformSafeBlock();
    }
  }

  v8 = objc_alloc(MEMORY[0x29EDBDF70]);
  v20 = *MEMORY[0x29EDBDE88];
  v9 = [MEMORY[0x29EDBA070] numberWithBool:*(v17 + 24)];
  v21[0] = v9;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v11 = [v8 initWithKey:2022 payload:v10];

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

uint64_t __76__AXBackBoardServerInstance__handleIsGuidedAccessSelfLockedToRequestingApp___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSelfLockedToAppWithIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_handleIsGuidedAccessUnmanagedSelfLocked:(id)locked
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = @"result";
  v3 = MEMORY[0x29EDBA070];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v5 = [v3 numberWithBool:{objc_msgSend(_gaxBackboard, "isUnmanagedSelfLocked")}];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2054 payload:v6];
  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleIsRestrictedForAAC:(id)c
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = @"result";
  v3 = MEMORY[0x29EDBA070];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v5 = [v3 numberWithBool:{objc_msgSend(_gaxBackboard, "isRestrictedForAAC")}];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2072 payload:v6];
  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleGuidedAccessIgnoredRegions:(id)regions
{
  v25 = *MEMORY[0x29EDCA608];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  v4 = _gaxBackboard;
  if (!_gaxBackboard)
  {
    goto LABEL_12;
  }

  v5 = [_gaxBackboard safeValueForKey:@"_accessIgnoredTouchRegions"];
  if (![v5 count])
  {

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = AX_CGPathCopyDataRepresentation();
        [v6 addObject:{v13, v18}];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v22 = @"result";
  v23 = v6;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2035 payload:v14];

LABEL_13:
  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

- (id)_handleGuidedAccessCurrentModeAndSessionApp:(id)app
{
  v14[1] = *MEMORY[0x29EDCA608];
  _gaxBackboard = [(AXBackBoardServerInstance *)self _gaxBackboard];
  if (_gaxBackboard)
  {
    v4 = objc_opt_new();
    currentGuidedAccessModeForBackboardServer = [_gaxBackboard currentGuidedAccessModeForBackboardServer];
    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:currentGuidedAccessModeForBackboardServer];
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x29EDBDE78]];

    if (currentGuidedAccessModeForBackboardServer)
    {
      currentSessionApp = [_gaxBackboard currentSessionApp];
      if (currentSessionApp)
      {
        [v4 setObject:currentSessionApp forKeyedSubscript:*MEMORY[0x29EDBDE98]];
      }
    }

    v8 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2061 payload:v4];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x29EDBDF70]);
    v13 = *MEMORY[0x29EDBDE78];
    v14[0] = &unk_2A2121930;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 initWithKey:2061 payload:v10];
  }

  v11 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_axPreferenceAsMobile:(id)mobile
{
  mobileCopy = mobile;
  payload = [mobileCopy payload];
  v5 = [payload objectForKey:@"preference"];
  v6 = __UIAccessibilitySafeClass();

  payload2 = [mobileCopy payload];
  v8 = [payload2 objectForKey:@"domain"];
  v9 = __UIAccessibilitySafeClass();

  if (![v9 length])
  {

    v9 = 0;
  }

  v10 = MEMORY[0x29C2CBB40](v6, v9, 0);
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v12 = dictionary;
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:@"value"];
  }

  v13 = [objc_alloc(MEMORY[0x29EDBDF70]) initWithKey:2067 payload:v12];

  return v13;
}

- (id)_setAXPreferenceAsMobile:(id)mobile
{
  mobileCopy = mobile;
  payload = [mobileCopy payload];
  v5 = [payload objectForKey:@"preference"];

  payload2 = [mobileCopy payload];
  v7 = [payload2 objectForKey:@"value"];

  null = [MEMORY[0x29EDB8E28] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {

    v7 = 0;
  }

  payload3 = [mobileCopy payload];
  v11 = [payload3 objectForKey:@"notification"];

  null2 = [MEMORY[0x29EDB8E28] null];
  v13 = [v11 isEqual:null2];

  if (v13)
  {

    v11 = 0;
  }

  _AXSetPreferenceWithNotification();

  return 0;
}

- (id)_handleIsHearingControlEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[AXBHomeClickController controller];
  payload = [enabledCopy payload];

  v6 = [payload objectForKey:@"result"];
  [v4 setIsHearingAidControlVisible:{objc_msgSend(v6, "BOOLValue")}];

  return 0;
}

- (id)_handleBrightnessFiltersEnabled:(id)enabled
{
  v11[1] = *MEMORY[0x29EDCA608];
  brightnessFiltersEnabled = [(AXBackBoardServerInstance *)self brightnessFiltersEnabled];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"result";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:brightnessFiltersEnabled];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:2048 payload:v6];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleBlueLightStatusEnabled:(id)enabled
{
  v11[1] = *MEMORY[0x29EDCA608];
  blueLightStatusEnabled = [(AXBackBoardServerInstance *)self blueLightStatusEnabled];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"result";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:blueLightStatusEnabled];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:2049 payload:v6];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleAdaptationEnabled:(id)enabled
{
  v11[1] = *MEMORY[0x29EDCA608];
  adaptationEnabled = [(AXBackBoardServerInstance *)self adaptationEnabled];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"result";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:adaptationEnabled];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:2051 payload:v6];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleSupportsAdaptation:(id)adaptation
{
  v11[1] = *MEMORY[0x29EDCA608];
  supportsAdaptation = [(AXBackBoardServerInstance *)self supportsAdaptation];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"result";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:supportsAdaptation];
  v11[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithKey:2052 payload:v6];

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_handleResetAccessibilityFeatures:(id)features
{
  senderBundleId = [features senderBundleId];
  LOBYTE(v5) = 1;
  _AXLogWithFacility();

  [(AXBackBoardServerInstance *)self resetAccessibilityFeatures:v5];
  return 0;
}

- (id)_handleToggleGuidedAccess:(id)access
{
  v10 = *MEMORY[0x29EDCA608];
  accessCopy = access;
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = accessCopy;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "_handleToggleGuidedAccess: %@", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x29EDBDE50] object:0];

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

- (id)_handleGetLastSetColorFilter:(id)filter
{
  v11[1] = *MEMORY[0x29EDCA608];
  [(AXBackBoardServerInstance *)self colorFilterFromLastUpdate:filter];
  v3 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v9 length:72];
  v4 = objc_alloc(MEMORY[0x29EDBDF70]);
  v10 = @"filterData";
  v11[0] = v3;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v4 initWithKey:2066 payload:v5];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_handleSetIsSpeakScreenHighlightVisible:(id)visible
{
  payload = [visible payload];
  v5 = [payload objectForKey:@"visible"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(AXBackBoardServerInstance *)self delegate];
    [delegate setIsSpeakScreenHighlightVisible:{objc_msgSend(v5, "BOOLValue")}];
  }

  return 0;
}

- (id)_setDeviceOrientation:(id)orientation
{
  payload = [orientation payload];
  v4 = [payload objectForKey:@"deviceOrientation"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 integerValue] - 1) <= 3)
  {
    BKSHIDServicesSetDeviceOrientationForAutomation();
  }

  return 0;
}

- (id)_handleSetClarityUIAdminPasscode:(id)passcode
{
  payload = [passcode payload];
  v4 = [payload objectForKey:@"passcode"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = +[AXBClarityUIManager sharedManager];
    [v6 setAdminPasscode:v5];
  }

  else
  {
    v6 = CLFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AXBackBoardServerInstance _handleSetClarityUIAdminPasscode:v6];
    }
  }

  return 0;
}

- (id)_handleValidateClarityUIAdminPasscode:(id)passcode
{
  v15[1] = *MEMORY[0x29EDCA608];
  payload = [passcode payload];
  v4 = [payload objectForKey:@"passcode"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = +[AXBClarityUIManager sharedManager];
    v7 = [v6 validateAdminPasscode:v5];

    v8 = objc_alloc(MEMORY[0x29EDBDF70]);
    v14 = @"result";
    v9 = [MEMORY[0x29EDBA070] numberWithBool:v7];
    v15[0] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v8 initWithKey:2077 payload:v10];
  }

  else
  {
    v9 = CLFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXBackBoardServerInstance _handleValidateClarityUIAdminPasscode:v9];
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (AXBackBoardServerInstanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end