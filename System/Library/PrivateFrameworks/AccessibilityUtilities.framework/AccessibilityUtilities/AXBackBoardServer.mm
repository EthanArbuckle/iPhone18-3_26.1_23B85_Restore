@interface AXBackBoardServer
+ (id)server;
- (AXBColorFilterDescription)colorFilterFromLastUpdate;
- (AXBackBoardServer)init;
- (BOOL)_shouldDispatchLocally;
- (BOOL)adaptationEnabled;
- (BOOL)blueLightStatusEnabled;
- (BOOL)brightnessFiltersEnabled;
- (BOOL)inCheckerBoardMode;
- (BOOL)inPreboardMode;
- (BOOL)isGuidedAccessActive;
- (BOOL)isGuidedAccessInWorkspace;
- (BOOL)isGuidedAccessSelfLockedToApp:(id)a3;
- (BOOL)isGuidedAccessUnmanagedSelfLocked;
- (BOOL)isRestrictedForAAC;
- (BOOL)loadGAXBundleForUnmanagedASAM;
- (BOOL)supportsAccessibilityDisplayFilters;
- (BOOL)supportsAdaptation;
- (BOOL)tripleClickHomeButtonPress;
- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4;
- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 toContextId:(unsigned int)a5;
- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 toContextId:(unsigned int)a5 displayId:(unsigned int)a6;
- (CGRect)convertFrame:(CGRect)a3 toContextId:(unsigned int)a4;
- (CGRect)convertFrame:(CGRect)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5;
- (CGRect)zoomInitialFocusRectWithQueryingContext:(unsigned int)a3;
- (id)_springboardParametersForGuidedAccessAvailability;
- (id)accessibilityPreferenceAsMobile:(id)a3 domain:(id)a4;
- (id)backboardServiceInstance;
- (id)guidedAccessEffectiveAppBundleIdentifier;
- (id)guidedAccessIgnoredRegions;
- (id)performGuidedAccessAutomationCommand:(id)a3 error:(id *)a4;
- (int)accessibilityAssistiveTouchPID;
- (int)accessibilityFullKeyboardAccessDaemonPID;
- (int)accessibilityLiveCaptionsPID;
- (int)accessibilityUIServicePID;
- (int)hearingAidServerPID;
- (unint64_t)currentGuidedAccessModeAndSessionApp:(id *)a3;
- (unint64_t)guidedAccessAvailability;
- (unsigned)contextIdForPosition:(CGPoint)a3;
- (unsigned)contextIdHostingContextId:(unsigned int)a3;
- (void)_initializeCheckerboardNotify;
- (void)_initializePreboardNotify;
- (void)_sendRequestGuidedAccessSessionMessage:(id)a3 numberOfRetryAttempts:(unint64_t)a4 completion:(id)a5;
- (void)adjustSystemZoom:(int)a3;
- (void)colorFilterFromLastUpdate;
- (void)dealloc;
- (void)disableBrightnessFilters;
- (void)guidedAccessEffectiveAppBundleIdentifier:(id)a3;
- (void)homeClickSwallowedForGuidedAccess;
- (void)jetsamThirdPartyApps;
- (void)postEvent:(id)a3 afterNamedTap:(id)a4 includeTaps:(id)a5;
- (void)postEvent:(id)a3 systemEvent:(BOOL)a4;
- (void)registerAccessibilityUIServicePID:(int)a3;
- (void)registerAssistiveTouchPID:(int)a3;
- (void)registerFullKeyboardAccessDaemonPID:(int)a3;
- (void)registerGestureConflictWithZoom:(id)a3;
- (void)registerHearingAidServerPID:(int)a3;
- (void)registerLiveCaptionsPID:(int)a3;
- (void)registerSiriViewServicePID:(int)a3;
- (void)requestGuidedAccessSessionEndWithCompletion:(id)a3;
- (void)requestGuidedAccessSessionStartWithConfigurationDictionary:(id)a3 completion:(id)a4;
- (void)resetAccessibilityFeatures;
- (void)restoreCachedBrightnessFilters;
- (void)sessionIsLoginSessionWithResult:(id)a3;
- (void)setAccessibilityPreferenceAsMobile:(id)a3 value:(id)a4 notification:(id)a5;
- (void)setCapsLockLightOn:(BOOL)a3;
- (void)setClarityUIAdminPasscode:(id)a3;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setHearingAidControlIsVisible:(BOOL)a3;
- (void)setInCheckerBoardMode:(BOOL)a3;
- (void)setInPreboardMode:(BOOL)a3;
- (void)setInvertColorsEnabled:(BOOL)a3;
- (void)setIsSpeakScreenHighlightVisible:(BOOL)a3;
- (void)setLockScreenDimTimerEnabled:(BOOL)a3;
- (void)setSessionIsLoginSession:(BOOL)a3;
- (void)setSwitchControlHasScreenSwitch:(BOOL)a3;
- (void)setSwitchControlRendersDeviceUnusable:(BOOL)a3;
- (void)setZoomInitialFocusRect:(CGRect)a3 fromContext:(unsigned int)a4;
- (void)toggleGuidedAccess;
- (void)userEventOccurred;
- (void)validateClarityUIAdminPasscode:(id)a3 completion:(id)a4;
@end

@implementation AXBackBoardServer

+ (id)server
{
  if (_AXSIsNonUIBuild())
  {
    goto LABEL_5;
  }

  if (AXIsASVAssetViewer_onceToken[0] != -1)
  {
    +[AXBackBoardServer server];
  }

  if (AXIsASVAssetViewer_sIsASVAssetViewer)
  {
LABEL_5:
    v2 = 0;
  }

  else
  {
    if (server_onceToken_2 != -1)
    {
      +[AXBackBoardServer server];
    }

    v2 = server_Server_2;
  }

  return v2;
}

- (BOOL)inPreboardMode
{
  [(AXBackBoardServer *)self _initializePreboardNotify];
  state64 = 0;
  notify_get_state(self->_preboardNotifyState, &state64);
  return state64 == 1;
}

- (void)_initializePreboardNotify
{
  if (self->_preboardNotifyState == -1)
  {
    notify_register_dispatch("ax-in-preboard", &self->_preboardNotifyState, MEMORY[0x1E69E96A0], &__block_literal_global_29);
  }
}

uint64_t __27__AXBackBoardServer_server__block_invoke()
{
  server_Server_2 = objc_alloc_init(AXBackBoardServer);

  return MEMORY[0x1EEE66BB8]();
}

- (AXBackBoardServer)init
{
  v8.receiver = self;
  v8.super_class = AXBackBoardServer;
  v2 = [(AXServer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_checkerBoardNotifyState = -1;
    v2->_preboardNotifyState = -1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventListeners = v3->_eventListeners;
    v3->_eventListeners = v4;

    v6 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(AXServer *)self client];
  [v3 setPortDeathHandler:0];

  v4.receiver = self;
  v4.super_class = AXBackBoardServer;
  [(AXServer *)&v4 dealloc];
}

- (void)registerGestureConflictWithZoom:(id)a3
{
  v4 = a3;
  [(AXServer *)self _connectIfNecessary];
  v6 = [[AXIPCMessage alloc] initWithKey:2000 payload:v4];

  v5 = [(AXServer *)self client];
  [v5 sendSimpleMessage:v6];
}

- (void)adjustSystemZoom:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"adjustment";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2024 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setLockScreenDimTimerEnabled:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"enabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2019 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)registerSiriViewServicePID:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2016 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (int)accessibilityAssistiveTouchPID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2063 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 unsignedIntValue];

  return v8;
}

- (int)accessibilityFullKeyboardAccessDaemonPID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2070 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 unsignedIntValue];

  return v8;
}

- (int)accessibilityUIServicePID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2033 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 unsignedIntValue];

  return v8;
}

- (void)registerFullKeyboardAccessDaemonPID:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Registering FKA pid: %d", buf, 8u);
    }

    v6 = [AXIPCMessage alloc];
    v11 = @"pid";
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v12 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [(AXIPCMessage *)v6 initWithKey:2071 payload:v8];

    v10 = [(AXServer *)self client];
    [v10 sendSimpleMessage:v9];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)registerAccessibilityUIServicePID:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2015 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (int)hearingAidServerPID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2073 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 unsignedIntValue];

  return v8;
}

- (void)registerHearingAidServerPID:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2017 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_initializeCheckerboardNotify
{
  if (self->_checkerBoardNotifyState == -1)
  {
    notify_register_dispatch("ax-in-checkerboard", &self->_checkerBoardNotifyState, MEMORY[0x1E69E96A0], &__block_literal_global_32);
  }
}

- (void)setInPreboardMode:(BOOL)a3
{
  v3 = a3;
  [(AXBackBoardServer *)self _initializePreboardNotify];
  notify_set_state(self->_preboardNotifyState, v3);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXInternalInPreBoardModeUpdatedNotification", 0, 0, 1u);
}

- (void)setInCheckerBoardMode:(BOOL)a3
{
  v3 = a3;
  [(AXBackBoardServer *)self _initializeCheckerboardNotify];
  notify_set_state(self->_checkerBoardNotifyState, v3);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXInternalInCheckerBoardModeUpdatedNotification", 0, 0, 1u);
}

- (BOOL)_shouldDispatchLocally
{
  if (_shouldDispatchLocally_onceToken_0 != -1)
  {
    [AXBackBoardServer _shouldDispatchLocally];
  }

  return _shouldDispatchLocally_IsBackboard;
}

uint64_t __43__AXBackBoardServer__shouldDispatchLocally__block_invoke()
{
  result = AXProcessIsBackboard();
  _shouldDispatchLocally_IsBackboard = result;
  return result;
}

- (id)backboardServiceInstance
{
  v2 = [NSClassFromString(&cfstr_Axbackboardser_0.isa) safeValueForKey:@"backBoardServerInstanceIfExists"];
  v3 = &unk_1EFECA7F0;
  if ([v2 conformsToProtocol:v3])
  {
    v4 = v2;
  }

  else
  {
    protocol_getName(v3);
    _AXLogWithFacility();
    v4 = 0;
  }

  return v4;
}

- (BOOL)inCheckerBoardMode
{
  [(AXBackBoardServer *)self _initializeCheckerboardNotify];
  state64 = 0;
  notify_get_state(self->_checkerBoardNotifyState, &state64);
  return state64 == 1;
}

- (void)setSessionIsLoginSession:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"sesionIsLoginSession";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2044 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)sessionIsLoginSessionWithResult:(id)a3
{
  v4 = a3;
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXBackBoardServer *)self backboardServiceInstance];
    v6 = [v5 _sessionIsLoginSession];
    if (v4)
    {
      v4[2](v4, v6);
    }
  }

  else
  {
    v7 = [[AXIPCMessage alloc] initWithKey:2045 payload:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__AXBackBoardServer_sessionIsLoginSessionWithResult___block_invoke;
    v8[3] = &unk_1E71EA340;
    v9 = v4;
    [(AXServer *)self sendAsynchronousMessage:v7 replyOnQueue:MEMORY[0x1E69E96A0] handler:v8];
  }
}

void __53__AXBackBoardServer_sessionIsLoginSessionWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v6 = [v3 objectForKey:@"result"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {

    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v4;
    (*(v5 + 16))(v5, [v4 BOOLValue]);
    v4 = v7;
  }
}

- (void)registerAssistiveTouchPID:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2014 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)registerLiveCaptionsPID:(int)a3
{
  v3 = *&a3;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2018 payload:v7];

    v9 = [(AXServer *)self client];
    [v9 sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (int)accessibilityLiveCaptionsPID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2078 payload:0];
  v4 = [(AXServer *)self client];
  v5 = [v4 sendMessage:v3 withError:0];

  v6 = [v5 payload];
  v7 = [v6 objectForKey:@"pid"];
  v8 = [v7 unsignedIntValue];

  return v8;
}

- (void)setInvertColorsEnabled:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"enabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2025 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8 withError:0];
}

- (void)postEvent:(id)a3 afterNamedTap:(id)a4 includeTaps:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  [(AXServer *)self _connectIfNecessary];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v14)
  {
    [v10 setObject:v14 forKeyedSubscript:@"record"];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:@"namedTaps"];
  }

  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"afterNamedTap"];
  }

  v12 = [[AXIPCMessage alloc] initWithKey:2009 payload:v11];
  v13 = [(AXServer *)self client];
  [v13 sendSimpleMessage:v12];
}

- (void)postEvent:(id)a3 systemEvent:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  [(AXServer *)self _connectIfNecessary];
  v6 = MEMORY[0x1E695DF90];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"systemEvent"];

  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"record"];
  }

  v9 = [[AXIPCMessage alloc] initWithKey:2009 payload:v8];
  v10 = [(AXServer *)self client];
  [v10 sendSimpleMessage:v9];
}

- (unsigned)contextIdForPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v14 = @"displayPoint";
  v16.x = x;
  v16.y = y;
  v6 = NSStringFromPoint(v16);
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v8 = [[AXIPCMessage alloc] initWithKey:2032 payload:v7];
  v9 = [(AXServer *)self client];
  v10 = [v9 sendMessage:v8 withError:0];

  v11 = [v10 payload];
  v12 = [v11 objectForKey:@"result"];
  LODWORD(v9) = [v12 unsignedIntValue];

  return v9;
}

- (unsigned)contextIdHostingContextId:(unsigned int)a3
{
  v3 = *&a3;
  v14[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v13 = @"contextId";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v7 = [[AXIPCMessage alloc] initWithKey:2031 payload:v6];
  v8 = [(AXServer *)self client];
  v9 = [v8 sendMessage:v7 withError:0];

  v10 = [v9 payload];
  v11 = [v10 objectForKey:@"result"];
  LODWORD(v8) = [v11 unsignedIntValue];

  return v8;
}

- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 toContextId:(unsigned int)a5
{
  [(AXBackBoardServer *)self convertFrame:*&a4 fromContextId:*&a5 toContextId:0 displayId:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)convertFrame:(CGRect)a3 toContextId:(unsigned int)a4
{
  [(AXBackBoardServer *)self convertFrame:*&a4 toContextId:0 displayId:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4
{
  [(AXBackBoardServer *)self convertFrame:*&a4 fromContextId:0 displayId:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 toContextId:(unsigned int)a5 displayId:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v36[4] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v35[0] = @"fromContextId";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  v36[0] = v14;
  v35[1] = @"toContextId";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v36[1] = v15;
  v35[2] = @"displayId";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v36[2] = v16;
  v35[3] = @"frame";
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v17 = NSStringFromRect(v37);
  v36[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];

  v19 = [[AXIPCMessage alloc] initWithKey:2042 payload:v18];
  v20 = [(AXServer *)self client];
  v34 = 0;
  v21 = [v20 sendMessage:v19 withError:&v34];
  v22 = v34;

  if (v22)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v33 = NSStringFromRect(v38);
    _AXLogWithFacility();

    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v27 = [v21 payload];
    v28 = [v27 objectForKeyedSubscript:@"frame"];
    v39 = NSRectFromString(v28);
    v23 = v39.origin.x;
    v24 = v39.origin.y;
    v25 = v39.size.width;
    v26 = v39.size.height;
  }

  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)convertFrame:(CGRect)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30[3] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v29[0] = @"contextId";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v30[0] = v12;
  v29[1] = @"displayId";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v30[1] = v13;
  v29[2] = @"frame";
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v14 = NSStringFromRect(v31);
  v30[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  v16 = [[AXIPCMessage alloc] initWithKey:2008 payload:v15];
  v17 = [(AXServer *)self client];
  v18 = [v17 sendMessage:v16 withError:0];

  v19 = [v18 payload];
  v20 = [v19 objectForKey:@"frame"];
  v32 = NSRectFromString(v20);
  v21 = v32.origin.x;
  v22 = v32.origin.y;
  v23 = v32.size.width;
  v24 = v32.size.height;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)convertFrame:(CGRect)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37[3] = *MEMORY[0x1E69E9840];
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v12 = [(AXBackBoardServer *)self backboardServiceInstance];
    v13 = [v12 delegate];
    v14 = &unk_1EFECA850;
    if ([v13 conformsToProtocol:v14])
    {
      [v13 convertFrame:v6 fromContextId:0 displayId:{x, y, width, height}];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
    }

    else
    {
      protocol_getName(v14);
      _AXLogWithFacility();
      v16 = *MEMORY[0x1E695F050];
      v18 = *(MEMORY[0x1E695F050] + 8);
      v20 = *(MEMORY[0x1E695F050] + 16);
      v22 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v36[0] = @"contextId";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v37[0] = v23;
    v36[1] = @"displayId";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    v37[1] = v24;
    v36[2] = @"frame";
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v25 = NSStringFromRect(v38);
    v37[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

    v27 = [[AXIPCMessage alloc] initWithKey:2007 payload:v26];
    v28 = [(AXServer *)self client];
    v29 = [v28 sendMessage:v27 withError:0];

    v30 = [v29 payload];
    v31 = [v30 objectForKey:@"frame"];
    v39 = NSRectFromString(v31);
    v16 = v39.origin.x;
    v18 = v39.origin.y;
    v20 = v39.size.width;
    v22 = v39.size.height;
  }

  v32 = v16;
  v33 = v18;
  v34 = v20;
  v35 = v22;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4
{
  [(AXBackBoardServer *)self convertPoint:*&a4 fromContextId:0 displayId:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4
{
  [(AXBackBoardServer *)self convertPoint:*&a4 toContextId:0 displayId:a3.x, a3.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  y = a3.y;
  x = a3.x;
  v23[3] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v22[0] = @"contextId";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v23[0] = v10;
  v22[1] = @"displayId";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v23[1] = v11;
  v22[2] = @"point";
  v24.x = x;
  v24.y = y;
  v12 = NSStringFromPoint(v24);
  v23[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v14 = [[AXIPCMessage alloc] initWithKey:2068 payload:v13];
  v15 = [(AXServer *)self client];
  v16 = [v15 sendMessage:v14 withError:0];

  v17 = [v16 payload];
  v18 = [v17 objectForKey:@"point"];
  v19 = NSPointFromString(v18);

  v20 = v19.x;
  v21 = v19.y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toContextId:(unsigned int)a4 displayId:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  y = a3.y;
  x = a3.x;
  v23[3] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v22[0] = @"contextId";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v23[0] = v10;
  v22[1] = @"displayId";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v23[1] = v11;
  v22[2] = @"point";
  v24.x = x;
  v24.y = y;
  v12 = NSStringFromPoint(v24);
  v23[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v14 = [[AXIPCMessage alloc] initWithKey:2069 payload:v13];
  v15 = [(AXServer *)self client];
  v16 = [v15 sendMessage:v14 withError:0];

  v17 = [v16 payload];
  v18 = [v17 objectForKey:@"point"];
  v19 = NSPointFromString(v18);

  v20 = v19.x;
  v21 = v19.y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)userEventOccurred
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:2011 payload:0];
  v3 = [(AXServer *)self client];
  [v3 sendSimpleMessage:v4];
}

- (void)setCapsLockLightOn:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"on";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2043 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setHearingAidControlIsVisible:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2023 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setSwitchControlRendersDeviceUnusable:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2036 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (void)setSwitchControlHasScreenSwitch:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2062 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8];
}

- (id)accessibilityPreferenceAsMobile:(id)a3 domain:(id)a4
{
  v46[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(AXServer *)self _connectIfNecessary];
    v45[0] = @"preference";
    v45[1] = @"domain";
    v8 = &stru_1EFE6D570;
    if (v7)
    {
      v8 = v7;
    }

    v46[0] = v6;
    v46[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke;
    aBlock[3] = &unk_1E71EAD88;
    v10 = v9;
    v39 = v10;
    v40 = self;
    v11 = _Block_copy(aBlock);
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__5;
    v36 = __Block_byref_object_dispose__5;
    v37 = 0;
    v12 = dispatch_semaphore_create(0);
    if ([(AXBackBoardServer *)self preferenceRetrievalRequiresValidConnection])
    {
      v13 = AXLogBackboardServer();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Requiring valid connection before requesting preference %@", buf, 0xCu);
      }

      v14 = [(AXServer *)self client];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke_198;
      v28[3] = &unk_1E71EADB0;
      v31 = &v32;
      v30 = v11;
      v15 = v12;
      v29 = v15;
      [v14 establishConnectionWithTimeout:v28 completion:10000.0];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = AXLogBackboardServer();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v33[5] payload];
        v18 = [v17 objectForKeyedSubscript:@"value"];
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "Made connection and result: %@", buf, 0xCu);
      }

      v19 = v30;
    }

    else
    {
      v27 = 0;
      v21 = (*(v11 + 2))(v11, &v27);
      v19 = v27;
      v22 = v33[5];
      v33[5] = v21;

      v23 = AXLogBackboardServer();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = v33[5];
        *buf = 138412546;
        v42 = v24;
        v43 = 2112;
        v44 = v19;
        _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_INFO, "Fetched value: %@ with error: %@", buf, 0x16u);
      }
    }

    v25 = [v33[5] payload];
    v20 = [v25 objectForKeyedSubscript:@"value"];

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[AXIPCMessage alloc] initWithKey:2067 payload:*(a1 + 32)];
  v5 = [*(a1 + 40) client];
  v6 = [v5 sendMessage:v4 withError:a2];

  return v6;
}

intptr_t __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke_198(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AXLogBackboardServer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Establish connect? %@", buf, 0xCu);
  }

  v6 = 21;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = (*(*(a1 + 40) + 16))();
    v8 = 0;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    v11 = AXLogBackboardServer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "Fetched value: %@ with error: %@", buf, 0x16u);
    }
  }

  while (v8);
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setAccessibilityPreferenceAsMobile:(id)a3 value:(id)a4 notification:(id)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v9)
    {
      if (v10)
      {
LABEL_4:
        [(AXServer *)self _connectIfNecessary];
        v16[0] = @"preference";
        v16[1] = @"value";
        v17[0] = v8;
        v17[1] = v9;
        v16[2] = @"notification";
        v17[2] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
        v13 = [[AXIPCMessage alloc] initWithKey:2027 payload:v12];
        v14 = [(AXServer *)self client];
        v15 = [v14 sendMessage:v13 withError:0];

        goto LABEL_5;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v11 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setZoomInitialFocusRect:(CGRect)a3 fromContext:(unsigned int)a4
{
  v4 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16[2] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v15[0] = @"rect";
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = NSStringFromRect(v17);
  v15[1] = @"contextId";
  v16[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [[AXIPCMessage alloc] initWithKey:2040 payload:v12];
  v14 = [(AXServer *)self client];
  [v14 sendSimpleMessage:v13];
}

- (CGRect)zoomInitialFocusRectWithQueryingContext:(unsigned int)a3
{
  v3 = *&a3;
  v24[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v23 = @"contextId";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2041 payload:v7];

  v9 = [(AXServer *)self client];
  v22 = 0;
  v10 = [v9 sendMessage:v8 withError:&v22];
  v11 = v22;

  if (v11)
  {
    _AXLogWithFacility();
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v16 = [v10 payload];
    v17 = [v16 objectForKeyedSubscript:@"rect"];
    v25 = NSRectFromString(v17);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)tripleClickHomeButtonPress
{
  v2 = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2055 payload:0];
  LOBYTE(v2) = [(AXServer *)v2 sendSimpleMessageWithResult:v3];

  return v2;
}

- (void)homeClickSwallowedForGuidedAccess
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2056 payload:0];
  [(AXServer *)self sendSimpleMessage:v3];
}

- (id)_springboardParametersForGuidedAccessAvailability
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 isAppSwitcherVisible];
  v4 = [v2 isSystemAppFrontmostExludingSiri];
  v5 = [v2 isSyncingRestoringResettingOrUpdating];
  v11[0] = @"isSpringBoardFrontmost";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v12[0] = v6;
  v11[1] = @"isSyncingRestoringResettingOrUpdating";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v12[1] = v7;
  v11[2] = @"isAppSwitcherVisible";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (BOOL)isGuidedAccessActive
{
  v2 = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2030 payload:0];
  LOBYTE(v2) = [(AXServer *)v2 sendSimpleMessageWithResult:v3];

  return v2;
}

- (BOOL)isGuidedAccessInWorkspace
{
  v2 = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2034 payload:0];
  LOBYTE(v2) = [(AXServer *)v2 sendSimpleMessageWithResult:v3];

  return v2;
}

- (id)guidedAccessEffectiveAppBundleIdentifier
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2060 payload:0];
  v4 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];

  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  return v5;
}

- (void)guidedAccessEffectiveAppBundleIdentifier:(id)a3
{
  v4 = a3;
  [(AXServer *)self _connectIfNecessary];
  v5 = [[AXIPCMessage alloc] initWithKey:2060 payload:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AXBackBoardServer_guidedAccessEffectiveAppBundleIdentifier___block_invoke;
  v7[3] = &unk_1E71EA340;
  v8 = v4;
  v6 = v4;
  [(AXServer *)self sendAsynchronousMessage:v5 replyOnQueue:MEMORY[0x1E69E96A0] handler:v7];
}

uint64_t __62__AXBackBoardServer_guidedAccessEffectiveAppBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v6 = [v3 objectForKey:@"result"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)performGuidedAccessAutomationCommand:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(AXServer *)self _connectIfNecessary];
  v7 = [AXIPCMessage alloc];
  v17 = @"command";
  v18[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v9 = [(AXIPCMessage *)v7 initWithKey:2037 payload:v8];
  v10 = [(AXServer *)self sendMessage:v9];

  if (a4)
  {
    v11 = [v10 payload];
    v12 = [v11 objectForKey:@"error"];

    v13 = v12;
    *a4 = v12;
  }

  v14 = [v10 payload];
  v15 = [v14 objectForKey:@"result"];

  return v15;
}

- (unint64_t)guidedAccessAvailability
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [AXIPCMessage alloc];
  v4 = [(AXBackBoardServer *)self _springboardParametersForGuidedAccessAvailability];
  v5 = [(AXIPCMessage *)v3 initWithKey:2020 payload:v4];

  v6 = [(AXServer *)self client];
  v13 = 0;
  v7 = [v6 sendMessage:v5 withError:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer guidedAccessAvailability];
    }

    v10 = 12;
  }

  else
  {
    v9 = [v7 payload];
    v11 = [v9 objectForKey:@"availability"];
    v10 = [v11 unsignedIntegerValue];
  }

  return v10;
}

- (void)_sendRequestGuidedAccessSessionMessage:(id)a3 numberOfRetryAttempts:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(AXServer *)self client];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__AXBackBoardServer__sendRequestGuidedAccessSessionMessage_numberOfRetryAttempts_completion___block_invoke;
  v13[3] = &unk_1E71EAE00;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  [v10 sendAsyncMessage:v12 withReplyHandler:v13];
}

void __93__AXBackBoardServer__sendRequestGuidedAccessSessionMessage_numberOfRetryAttempts_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __93__AXBackBoardServer__sendRequestGuidedAccessSessionMessage_numberOfRetryAttempts_completion___block_invoke_cold_1();
    }

    goto LABEL_5;
  }

  v8 = [v5 payload];
  v9 = [v8 objectForKey:@"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled"];
  v10 = [v9 BOOLValue];

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"AXGuidedAccessPayloadKeyIsTemporaryFailure"];
  v13 = [v12 BOOLValue];

  if ((v10 & 1) != 0 || !v13 || !*(a1 + 56))
  {
LABEL_5:
    (*(*(a1 + 48) + 16))();
    goto LABEL_6;
  }

  v14 = GAXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 56);
    *buf = 134217984;
    v19 = v15;
    _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_INFO, "Attempting to request session again after temporary failure. Attempts remaining: %lu", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  AXPerformBlockOnMainThreadAfterDelay();

LABEL_6:
}

- (void)requestGuidedAccessSessionStartWithConfigurationDictionary:(id)a3 completion:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(AXServer *)self _connectIfNecessary];
  v11[0] = @"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled";
  v11[1] = @"AXGuidedAccessPayloadKeyGAXConfiguration";
  v12[0] = MEMORY[0x1E695E118];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [AXIPCMessage alloc];

  v10 = [(AXIPCMessage *)v9 initWithKey:2022 payload:v8];
  [(AXBackBoardServer *)self _sendRequestGuidedAccessSessionMessage:v10 numberOfRetryAttempts:5 completion:v6];
}

- (void)requestGuidedAccessSessionEndWithCompletion:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AXServer *)self _connectIfNecessary];
  v11 = @"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled";
  v12[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [[AXIPCMessage alloc] initWithKey:2022 payload:v5];
  v7 = [(AXServer *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AXBackBoardServer_requestGuidedAccessSessionEndWithCompletion___block_invoke;
  v9[3] = &unk_1E71EA340;
  v10 = v4;
  v8 = v4;
  [v7 sendAsyncMessage:v6 withReplyHandler:v9];
}

void __65__AXBackBoardServer_requestGuidedAccessSessionEndWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __93__AXBackBoardServer__sendRequestGuidedAccessSessionMessage_numberOfRetryAttempts_completion___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = [a2 payload];
    v8 = [v7 objectForKey:@"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled"];
    [v8 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isGuidedAccessSelfLockedToApp:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:2021 payload:0];
  v5 = [(AXServer *)self client];
  v12 = 0;
  v6 = [v5 sendMessage:v4 withError:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer isGuidedAccessSelfLockedToApp:];
    }

    v9 = 0;
  }

  else
  {
    v8 = [v6 payload];
    v10 = [v8 objectForKey:@"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled"];
    v9 = [v10 BOOLValue];
  }

  return v9;
}

- (BOOL)isGuidedAccessUnmanagedSelfLocked
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2054 payload:0];
  v4 = [(AXServer *)self client];
  v11 = 0;
  v5 = [v4 sendMessage:v3 withError:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer isGuidedAccessUnmanagedSelfLocked];
    }

    v8 = 0;
  }

  else
  {
    v7 = [v5 payload];
    v9 = [v7 objectForKeyedSubscript:@"result"];
    v8 = [v9 BOOLValue];
  }

  return v8;
}

- (BOOL)isRestrictedForAAC
{
  v2 = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2072 payload:0];
  LOBYTE(v2) = [(AXServer *)v2 sendSimpleMessageWithResult:v3];

  return v2;
}

- (void)toggleGuidedAccess
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "Toggle Guided Access", buf, 2u);
  }

  v4 = GAXLogCommon();
  if (os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B15E000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GuidedAccessToggled", "", v7, 2u);
  }

  [(AXServer *)self _connectIfNecessary];
  v5 = [[AXIPCMessage alloc] initWithKey:2058 payload:0];
  v6 = [(AXServer *)self client];
  [v6 sendSimpleMessage:v5];
}

- (id)guidedAccessIgnoredRegions
{
  v19 = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2035 payload:0];
  v4 = [(AXServer *)self sendSimpleMessageWithObjectResult:v3];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = AX_CGPathCreateWithDataRepresentation(*(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            v12 = v11;
            [v5 addObject:{v11, v14}];
            CFRelease(v12);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)currentGuidedAccessModeAndSessionApp:(id *)a3
{
  [(AXServer *)self _connectIfNecessary];
  v5 = [[AXIPCMessage alloc] initWithKey:2061 payload:0];
  v6 = [(AXServer *)self sendMessage:v5];
  v7 = [v6 payload];

  v8 = [v7 objectForKeyedSubscript:@"AXGuidedAccessPayloadKeyGAXMode"];
  v9 = [v8 unsignedIntegerValue];

  if (a3)
  {
    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:@"AXGuidedAccessPayloadKeySessionApp"];
      *a3 = v10;
    }

    else
    {
      *a3 = 0;
    }
  }

  return v9;
}

- (void)jetsamThirdPartyApps
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:2026 payload:0];
  v3 = [(AXServer *)self client];
  [v3 sendSimpleMessage:v4];
}

- (void)disableBrightnessFilters
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    [(AXIPCMessage *)v3 disableBrightnessFilters];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2047 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)brightnessFiltersEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    v4 = [(AXIPCMessage *)v3 brightnessFiltersEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2048 payload:0];
    v4 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  v5 = v4;

  return v5;
}

- (BOOL)blueLightStatusEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    v4 = [(AXIPCMessage *)v3 blueLightStatusEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2049 payload:0];
    v4 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  v5 = v4;

  return v5;
}

- (void)restoreCachedBrightnessFilters
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    [(AXIPCMessage *)v3 restoreCachedBrightnessFilters];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2050 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)adaptationEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    v4 = [(AXIPCMessage *)v3 adaptationEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2051 payload:0];
    v4 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  v5 = v4;

  return v5;
}

- (BOOL)supportsAdaptation
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    v4 = [(AXIPCMessage *)v3 supportsAdaptation];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2052 payload:0];
    v4 = [(AXServer *)self sendSimpleMessageWithResult:v3];
  }

  v5 = v4;

  return v5;
}

- (BOOL)supportsAccessibilityDisplayFilters
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 supportsAdvancedDisplayFilters];

  return v3;
}

- (BOOL)loadGAXBundleForUnmanagedASAM
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v3 = [(AXBackBoardServer *)self backboardServiceInstance];
    [v3 forceLoadGAXBundle];

    return 1;
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v5 = [[AXIPCMessage alloc] initWithKey:2053 payload:0];
    v6 = [(AXServer *)self client];
    v10 = 0;
    v7 = [v6 sendMessage:v5 withError:&v10];
    v8 = v10;

    v4 = v8 == 0;
  }

  return v4;
}

- (void)resetAccessibilityFeatures
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v7 = [(AXBackBoardServer *)self backboardServiceInstance];
    [v7 resetAccessibilityFeatures];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2057 payload:0];
    v4 = [(AXServer *)self client];
    v8 = 0;
    v5 = [v4 sendMessage:v3 withError:&v8];
    v6 = v8;

    if (v6)
    {
      _AXLogWithFacility();
    }
  }
}

- (AXBColorFilterDescription)colorFilterFromLastUpdate
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    v5 = [(AXBackBoardServer *)self backboardServiceInstance];
    if (v5)
    {
      v19 = v5;
      [v5 colorFilterFromLastUpdate];
      v5 = v19;
    }

    else
    {
      retstr->var0[2][2] = 0.0;
      *&retstr->var0[1][1] = 0u;
      *&retstr->var0[2][0] = 0u;
      *&retstr->var0[0][0] = 0u;
      *&retstr->var0[0][2] = 0u;
    }
  }

  else
  {
    retstr->var0[2][2] = 0.0;
    *&retstr->var0[1][1] = 0u;
    *&retstr->var0[2][0] = 0u;
    *&retstr->var0[0][0] = 0u;
    *&retstr->var0[0][2] = 0u;
    [(AXServer *)self _connectIfNecessary];
    v6 = [[AXIPCMessage alloc] initWithKey:2066 payload:0];
    v7 = [(AXServer *)self client];
    v20 = 0;
    v8 = [v7 sendMessage:v6 withError:&v20];
    v9 = v20;

    if (v9)
    {
      v10 = AXLogBackboardServer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXBackBoardServer colorFilterFromLastUpdate];
      }
    }

    v11 = [v8 payload];
    v12 = [v11 objectForKeyedSubscript:@"filterData"];

    if ([v12 length] == 72)
    {
      v13 = [v12 bytes];
      *&retstr->var0[0][0] = *v13;
      v15 = *(v13 + 32);
      v14 = *(v13 + 48);
      v16 = *(v13 + 16);
      retstr->var0[2][2] = *(v13 + 64);
      *&retstr->var0[1][1] = v15;
      *&retstr->var0[2][0] = v14;
      *&retstr->var0[0][2] = v16;
    }

    else
    {
      v17 = AXLogBackboardServer();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(AXBackBoardServer *)v12 colorFilterFromLastUpdate];
      }
    }
  }

  return result;
}

- (void)setIsSpeakScreenHighlightVisible:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"visible";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2074 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8 withError:0];
}

- (void)setDeviceOrientation:(int64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"deviceOrientation";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2075 payload:v7];

  v9 = [(AXServer *)self client];
  [v9 sendSimpleMessage:v8 withError:0];
}

- (void)setClarityUIAdminPasscode:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v9 = @"passcode";
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(AXIPCMessage *)v5 initWithKey:2076 payload:v6];
  v8 = [(AXServer *)self client];
  [v8 sendSimpleMessage:v7 withError:0];
}

- (void)validateClarityUIAdminPasscode:(id)a3 completion:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(AXServer *)self _connectIfNecessary];
  v8 = [AXIPCMessage alloc];
  v14 = @"passcode";
  v15[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [(AXIPCMessage *)v8 initWithKey:2077 payload:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AXBackBoardServer_validateClarityUIAdminPasscode_completion___block_invoke;
  v12[3] = &unk_1E71EAE28;
  v13 = v6;
  v11 = v6;
  [(AXServer *)self sendAsynchronousMessage:v10 replyOnQueue:MEMORY[0x1E69E96A0] BOOLResultHandler:v12];
}

uint64_t __63__AXBackBoardServer_validateClarityUIAdminPasscode_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)colorFilterFromLastUpdate
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 length];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "bogus length of color filter description %zu", v3, 0xCu);
}

@end