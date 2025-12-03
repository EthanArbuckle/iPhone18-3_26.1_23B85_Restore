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
- (BOOL)isGuidedAccessSelfLockedToApp:(id)app;
- (BOOL)isGuidedAccessUnmanagedSelfLocked;
- (BOOL)isRestrictedForAAC;
- (BOOL)loadGAXBundleForUnmanagedASAM;
- (BOOL)supportsAccessibilityDisplayFilters;
- (BOOL)supportsAdaptation;
- (BOOL)tripleClickHomeButtonPress;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id;
- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id toContextId:(unsigned int)contextId;
- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id toContextId:(unsigned int)contextId displayId:(unsigned int)displayId;
- (CGRect)convertFrame:(CGRect)frame toContextId:(unsigned int)id;
- (CGRect)convertFrame:(CGRect)frame toContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGRect)zoomInitialFocusRectWithQueryingContext:(unsigned int)context;
- (id)_springboardParametersForGuidedAccessAvailability;
- (id)accessibilityPreferenceAsMobile:(id)mobile domain:(id)domain;
- (id)backboardServiceInstance;
- (id)guidedAccessEffectiveAppBundleIdentifier;
- (id)guidedAccessIgnoredRegions;
- (id)performGuidedAccessAutomationCommand:(id)command error:(id *)error;
- (int)accessibilityAssistiveTouchPID;
- (int)accessibilityFullKeyboardAccessDaemonPID;
- (int)accessibilityLiveCaptionsPID;
- (int)accessibilityUIServicePID;
- (int)hearingAidServerPID;
- (unint64_t)currentGuidedAccessModeAndSessionApp:(id *)app;
- (unint64_t)guidedAccessAvailability;
- (unsigned)contextIdForPosition:(CGPoint)position;
- (unsigned)contextIdHostingContextId:(unsigned int)id;
- (void)_initializeCheckerboardNotify;
- (void)_initializePreboardNotify;
- (void)_sendRequestGuidedAccessSessionMessage:(id)message numberOfRetryAttempts:(unint64_t)attempts completion:(id)completion;
- (void)adjustSystemZoom:(int)zoom;
- (void)colorFilterFromLastUpdate;
- (void)dealloc;
- (void)disableBrightnessFilters;
- (void)guidedAccessEffectiveAppBundleIdentifier:(id)identifier;
- (void)homeClickSwallowedForGuidedAccess;
- (void)jetsamThirdPartyApps;
- (void)postEvent:(id)event afterNamedTap:(id)tap includeTaps:(id)taps;
- (void)postEvent:(id)event systemEvent:(BOOL)systemEvent;
- (void)registerAccessibilityUIServicePID:(int)d;
- (void)registerAssistiveTouchPID:(int)d;
- (void)registerFullKeyboardAccessDaemonPID:(int)d;
- (void)registerGestureConflictWithZoom:(id)zoom;
- (void)registerHearingAidServerPID:(int)d;
- (void)registerLiveCaptionsPID:(int)d;
- (void)registerSiriViewServicePID:(int)d;
- (void)requestGuidedAccessSessionEndWithCompletion:(id)completion;
- (void)requestGuidedAccessSessionStartWithConfigurationDictionary:(id)dictionary completion:(id)completion;
- (void)resetAccessibilityFeatures;
- (void)restoreCachedBrightnessFilters;
- (void)sessionIsLoginSessionWithResult:(id)result;
- (void)setAccessibilityPreferenceAsMobile:(id)mobile value:(id)value notification:(id)notification;
- (void)setCapsLockLightOn:(BOOL)on;
- (void)setClarityUIAdminPasscode:(id)passcode;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setHearingAidControlIsVisible:(BOOL)visible;
- (void)setInCheckerBoardMode:(BOOL)mode;
- (void)setInPreboardMode:(BOOL)mode;
- (void)setInvertColorsEnabled:(BOOL)enabled;
- (void)setIsSpeakScreenHighlightVisible:(BOOL)visible;
- (void)setLockScreenDimTimerEnabled:(BOOL)enabled;
- (void)setSessionIsLoginSession:(BOOL)session;
- (void)setSwitchControlHasScreenSwitch:(BOOL)switch;
- (void)setSwitchControlRendersDeviceUnusable:(BOOL)unusable;
- (void)setZoomInitialFocusRect:(CGRect)rect fromContext:(unsigned int)context;
- (void)toggleGuidedAccess;
- (void)userEventOccurred;
- (void)validateClarityUIAdminPasscode:(id)passcode completion:(id)completion;
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
  client = [(AXServer *)self client];
  [client setPortDeathHandler:0];

  v4.receiver = self;
  v4.super_class = AXBackBoardServer;
  [(AXServer *)&v4 dealloc];
}

- (void)registerGestureConflictWithZoom:(id)zoom
{
  zoomCopy = zoom;
  [(AXServer *)self _connectIfNecessary];
  v6 = [[AXIPCMessage alloc] initWithKey:2000 payload:zoomCopy];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v6];
}

- (void)adjustSystemZoom:(int)zoom
{
  v3 = *&zoom;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"adjustment";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2024 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setLockScreenDimTimerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"enabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2019 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)registerSiriViewServicePID:(int)d
{
  v3 = *&d;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2016 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
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
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  unsignedIntValue = [v7 unsignedIntValue];

  return unsignedIntValue;
}

- (int)accessibilityFullKeyboardAccessDaemonPID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2070 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  unsignedIntValue = [v7 unsignedIntValue];

  return unsignedIntValue;
}

- (int)accessibilityUIServicePID
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2033 payload:0];
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  unsignedIntValue = [v7 unsignedIntValue];

  return unsignedIntValue;
}

- (void)registerFullKeyboardAccessDaemonPID:(int)d
{
  v3 = *&d;
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

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v9];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)registerAccessibilityUIServicePID:(int)d
{
  v3 = *&d;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2015 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
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
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  unsignedIntValue = [v7 unsignedIntValue];

  return unsignedIntValue;
}

- (void)registerHearingAidServerPID:(int)d
{
  v3 = *&d;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2017 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
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

- (void)setInPreboardMode:(BOOL)mode
{
  modeCopy = mode;
  [(AXBackBoardServer *)self _initializePreboardNotify];
  notify_set_state(self->_preboardNotifyState, modeCopy);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXInternalInPreBoardModeUpdatedNotification", 0, 0, 1u);
}

- (void)setInCheckerBoardMode:(BOOL)mode
{
  modeCopy = mode;
  [(AXBackBoardServer *)self _initializeCheckerboardNotify];
  notify_set_state(self->_checkerBoardNotifyState, modeCopy);
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

- (void)setSessionIsLoginSession:(BOOL)session
{
  sessionCopy = session;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"sesionIsLoginSession";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:sessionCopy];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2044 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)sessionIsLoginSessionWithResult:(id)result
{
  resultCopy = result;
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    _sessionIsLoginSession = [backboardServiceInstance _sessionIsLoginSession];
    if (resultCopy)
    {
      resultCopy[2](resultCopy, _sessionIsLoginSession);
    }
  }

  else
  {
    v7 = [[AXIPCMessage alloc] initWithKey:2045 payload:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__AXBackBoardServer_sessionIsLoginSessionWithResult___block_invoke;
    v8[3] = &unk_1E71EA340;
    v9 = resultCopy;
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

- (void)registerAssistiveTouchPID:(int)d
{
  v3 = *&d;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2014 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)registerLiveCaptionsPID:(int)d
{
  v3 = *&d;
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(AXServer *)self _connectIfNecessary])
  {
    v5 = [AXIPCMessage alloc];
    v10 = @"pid";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [(AXIPCMessage *)v5 initWithKey:2018 payload:v7];

    client = [(AXServer *)self client];
    [client sendSimpleMessage:v8];
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
  client = [(AXServer *)self client];
  v5 = [client sendMessage:v3 withError:0];

  payload = [v5 payload];
  v7 = [payload objectForKey:@"pid"];
  unsignedIntValue = [v7 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setInvertColorsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"enabled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2025 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8 withError:0];
}

- (void)postEvent:(id)event afterNamedTap:(id)tap includeTaps:(id)taps
{
  eventCopy = event;
  tapCopy = tap;
  tapsCopy = taps;
  [(AXServer *)self _connectIfNecessary];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (eventCopy)
  {
    [v10 setObject:eventCopy forKeyedSubscript:@"record"];
  }

  if (tapsCopy)
  {
    [v11 setObject:tapsCopy forKeyedSubscript:@"namedTaps"];
  }

  if (tapCopy)
  {
    [v11 setObject:tapCopy forKeyedSubscript:@"afterNamedTap"];
  }

  v12 = [[AXIPCMessage alloc] initWithKey:2009 payload:v11];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v12];
}

- (void)postEvent:(id)event systemEvent:(BOOL)systemEvent
{
  systemEventCopy = systemEvent;
  eventCopy = event;
  [(AXServer *)self _connectIfNecessary];
  v6 = MEMORY[0x1E695DF90];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:systemEventCopy];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"systemEvent"];

  if (eventCopy)
  {
    [v8 setObject:eventCopy forKeyedSubscript:@"record"];
  }

  v9 = [[AXIPCMessage alloc] initWithKey:2009 payload:v8];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v9];
}

- (unsigned)contextIdForPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v15[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v14 = @"displayPoint";
  v16.x = x;
  v16.y = y;
  v6 = NSStringFromPoint(v16);
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v8 = [[AXIPCMessage alloc] initWithKey:2032 payload:v7];
  client = [(AXServer *)self client];
  v10 = [client sendMessage:v8 withError:0];

  payload = [v10 payload];
  v12 = [payload objectForKey:@"result"];
  LODWORD(client) = [v12 unsignedIntValue];

  return client;
}

- (unsigned)contextIdHostingContextId:(unsigned int)id
{
  v3 = *&id;
  v14[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v13 = @"contextId";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v7 = [[AXIPCMessage alloc] initWithKey:2031 payload:v6];
  client = [(AXServer *)self client];
  v9 = [client sendMessage:v7 withError:0];

  payload = [v9 payload];
  v11 = [payload objectForKey:@"result"];
  LODWORD(client) = [v11 unsignedIntValue];

  return client;
}

- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id toContextId:(unsigned int)contextId
{
  [(AXBackBoardServer *)self convertFrame:*&id fromContextId:*&contextId toContextId:0 displayId:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)convertFrame:(CGRect)frame toContextId:(unsigned int)id
{
  [(AXBackBoardServer *)self convertFrame:*&id toContextId:0 displayId:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id
{
  [(AXBackBoardServer *)self convertFrame:*&id fromContextId:0 displayId:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id toContextId:(unsigned int)contextId displayId:(unsigned int)displayId
{
  v6 = *&displayId;
  v7 = *&contextId;
  v8 = *&id;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  client = [(AXServer *)self client];
  v34 = 0;
  v21 = [client sendMessage:v19 withError:&v34];
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
    payload = [v21 payload];
    v28 = [payload objectForKeyedSubscript:@"frame"];
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

- (CGRect)convertFrame:(CGRect)frame toContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  client = [(AXServer *)self client];
  v18 = [client sendMessage:v16 withError:0];

  payload = [v18 payload];
  v20 = [payload objectForKey:@"frame"];
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

- (CGRect)convertFrame:(CGRect)frame fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v37[3] = *MEMORY[0x1E69E9840];
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    delegate = [backboardServiceInstance delegate];
    v14 = &unk_1EFECA850;
    if ([delegate conformsToProtocol:v14])
    {
      [delegate convertFrame:v6 fromContextId:0 displayId:{x, y, width, height}];
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
    client = [(AXServer *)self client];
    v29 = [client sendMessage:v27 withError:0];

    payload = [v29 payload];
    v31 = [payload objectForKey:@"frame"];
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

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id
{
  [(AXBackBoardServer *)self convertPoint:*&id fromContextId:0 displayId:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id
{
  [(AXBackBoardServer *)self convertPoint:*&id toContextId:0 displayId:point.x, point.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  y = point.y;
  x = point.x;
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
  client = [(AXServer *)self client];
  v16 = [client sendMessage:v14 withError:0];

  payload = [v16 payload];
  v18 = [payload objectForKey:@"point"];
  v19 = NSPointFromString(v18);

  v20 = v19.x;
  v21 = v19.y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  y = point.y;
  x = point.x;
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
  client = [(AXServer *)self client];
  v16 = [client sendMessage:v14 withError:0];

  payload = [v16 payload];
  v18 = [payload objectForKey:@"point"];
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
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v4];
}

- (void)setCapsLockLightOn:(BOOL)on
{
  onCopy = on;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"on";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:onCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2043 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setHearingAidControlIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:visibleCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2023 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setSwitchControlRendersDeviceUnusable:(BOOL)unusable
{
  unusableCopy = unusable;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:unusableCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2036 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (void)setSwitchControlHasScreenSwitch:(BOOL)switch
{
  switchCopy = switch;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"result";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:switchCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2062 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8];
}

- (id)accessibilityPreferenceAsMobile:(id)mobile domain:(id)domain
{
  v46[2] = *MEMORY[0x1E69E9840];
  mobileCopy = mobile;
  domainCopy = domain;
  if (mobileCopy)
  {
    [(AXServer *)self _connectIfNecessary];
    v45[0] = @"preference";
    v45[1] = @"domain";
    v8 = &stru_1EFE6D570;
    if (domainCopy)
    {
      v8 = domainCopy;
    }

    v46[0] = mobileCopy;
    v46[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke;
    aBlock[3] = &unk_1E71EAD88;
    v10 = v9;
    v39 = v10;
    selfCopy = self;
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
        v42 = mobileCopy;
        _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Requiring valid connection before requesting preference %@", buf, 0xCu);
      }

      client = [(AXServer *)self client];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __60__AXBackBoardServer_accessibilityPreferenceAsMobile_domain___block_invoke_198;
      v28[3] = &unk_1E71EADB0;
      v31 = &v32;
      v30 = v11;
      v15 = v12;
      v29 = v15;
      [client establishConnectionWithTimeout:v28 completion:10000.0];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = AXLogBackboardServer();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        payload = [v33[5] payload];
        v18 = [payload objectForKeyedSubscript:@"value"];
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

    payload2 = [v33[5] payload];
    v20 = [payload2 objectForKeyedSubscript:@"value"];

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

- (void)setAccessibilityPreferenceAsMobile:(id)mobile value:(id)value notification:(id)notification
{
  v17[3] = *MEMORY[0x1E69E9840];
  mobileCopy = mobile;
  valueCopy = value;
  notificationCopy = notification;
  null = notificationCopy;
  if (mobileCopy)
  {
    if (valueCopy)
    {
      if (notificationCopy)
      {
LABEL_4:
        [(AXServer *)self _connectIfNecessary];
        v16[0] = @"preference";
        v16[1] = @"value";
        v17[0] = mobileCopy;
        v17[1] = valueCopy;
        v16[2] = @"notification";
        v17[2] = null;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
        v13 = [[AXIPCMessage alloc] initWithKey:2027 payload:v12];
        client = [(AXServer *)self client];
        v15 = [client sendMessage:v13 withError:0];

        goto LABEL_5;
      }
    }

    else
    {
      valueCopy = [MEMORY[0x1E695DFB0] null];
      if (null)
      {
        goto LABEL_4;
      }
    }

    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setZoomInitialFocusRect:(CGRect)rect fromContext:(unsigned int)context
{
  v4 = *&context;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v13];
}

- (CGRect)zoomInitialFocusRectWithQueryingContext:(unsigned int)context
{
  v3 = *&context;
  v24[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v23 = @"contextId";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2041 payload:v7];

  client = [(AXServer *)self client];
  v22 = 0;
  v10 = [client sendMessage:v8 withError:&v22];
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
    payload = [v10 payload];
    v17 = [payload objectForKeyedSubscript:@"rect"];
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
  selfCopy = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2055 payload:0];
  LOBYTE(selfCopy) = [(AXServer *)selfCopy sendSimpleMessageWithResult:v3];

  return selfCopy;
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
  isAppSwitcherVisible = [v2 isAppSwitcherVisible];
  isSystemAppFrontmostExludingSiri = [v2 isSystemAppFrontmostExludingSiri];
  isSyncingRestoringResettingOrUpdating = [v2 isSyncingRestoringResettingOrUpdating];
  v11[0] = @"isSpringBoardFrontmost";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:isSystemAppFrontmostExludingSiri];
  v12[0] = v6;
  v11[1] = @"isSyncingRestoringResettingOrUpdating";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:isSyncingRestoringResettingOrUpdating];
  v12[1] = v7;
  v11[2] = @"isAppSwitcherVisible";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:isAppSwitcherVisible];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (BOOL)isGuidedAccessActive
{
  selfCopy = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2030 payload:0];
  LOBYTE(selfCopy) = [(AXServer *)selfCopy sendSimpleMessageWithResult:v3];

  return selfCopy;
}

- (BOOL)isGuidedAccessInWorkspace
{
  selfCopy = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2034 payload:0];
  LOBYTE(selfCopy) = [(AXServer *)selfCopy sendSimpleMessageWithResult:v3];

  return selfCopy;
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

- (void)guidedAccessEffectiveAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AXServer *)self _connectIfNecessary];
  v5 = [[AXIPCMessage alloc] initWithKey:2060 payload:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AXBackBoardServer_guidedAccessEffectiveAppBundleIdentifier___block_invoke;
  v7[3] = &unk_1E71EA340;
  v8 = identifierCopy;
  v6 = identifierCopy;
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

- (id)performGuidedAccessAutomationCommand:(id)command error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  [(AXServer *)self _connectIfNecessary];
  v7 = [AXIPCMessage alloc];
  v17 = @"command";
  v18[0] = commandCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v9 = [(AXIPCMessage *)v7 initWithKey:2037 payload:v8];
  v10 = [(AXServer *)self sendMessage:v9];

  if (error)
  {
    payload = [v10 payload];
    v12 = [payload objectForKey:@"error"];

    v13 = v12;
    *error = v12;
  }

  payload2 = [v10 payload];
  v15 = [payload2 objectForKey:@"result"];

  return v15;
}

- (unint64_t)guidedAccessAvailability
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [AXIPCMessage alloc];
  _springboardParametersForGuidedAccessAvailability = [(AXBackBoardServer *)self _springboardParametersForGuidedAccessAvailability];
  v5 = [(AXIPCMessage *)v3 initWithKey:2020 payload:_springboardParametersForGuidedAccessAvailability];

  client = [(AXServer *)self client];
  v13 = 0;
  v7 = [client sendMessage:v5 withError:&v13];
  v8 = v13;

  if (v8)
  {
    payload = GAXLogCommon();
    if (os_log_type_enabled(payload, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer guidedAccessAvailability];
    }

    unsignedIntegerValue = 12;
  }

  else
  {
    payload = [v7 payload];
    v11 = [payload objectForKey:@"availability"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (void)_sendRequestGuidedAccessSessionMessage:(id)message numberOfRetryAttempts:(unint64_t)attempts completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  client = [(AXServer *)self client];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__AXBackBoardServer__sendRequestGuidedAccessSessionMessage_numberOfRetryAttempts_completion___block_invoke;
  v13[3] = &unk_1E71EAE00;
  v13[4] = self;
  v14 = messageCopy;
  v15 = completionCopy;
  attemptsCopy = attempts;
  v11 = completionCopy;
  v12 = messageCopy;
  [client sendAsyncMessage:v12 withReplyHandler:v13];
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

- (void)requestGuidedAccessSessionStartWithConfigurationDictionary:(id)dictionary completion:(id)completion
{
  v12[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dictionaryCopy = dictionary;
  [(AXServer *)self _connectIfNecessary];
  v11[0] = @"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled";
  v11[1] = @"AXGuidedAccessPayloadKeyGAXConfiguration";
  v12[0] = MEMORY[0x1E695E118];
  v12[1] = dictionaryCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [AXIPCMessage alloc];

  v10 = [(AXIPCMessage *)v9 initWithKey:2022 payload:v8];
  [(AXBackBoardServer *)self _sendRequestGuidedAccessSessionMessage:v10 numberOfRetryAttempts:5 completion:completionCopy];
}

- (void)requestGuidedAccessSessionEndWithCompletion:(id)completion
{
  v12[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(AXServer *)self _connectIfNecessary];
  v11 = @"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled";
  v12[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [[AXIPCMessage alloc] initWithKey:2022 payload:v5];
  client = [(AXServer *)self client];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AXBackBoardServer_requestGuidedAccessSessionEndWithCompletion___block_invoke;
  v9[3] = &unk_1E71EA340;
  v10 = completionCopy;
  v8 = completionCopy;
  [client sendAsyncMessage:v6 withReplyHandler:v9];
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

- (BOOL)isGuidedAccessSelfLockedToApp:(id)app
{
  if (!app)
  {
    return 0;
  }

  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:2021 payload:0];
  client = [(AXServer *)self client];
  v12 = 0;
  v6 = [client sendMessage:v4 withError:&v12];
  v7 = v12;

  if (v7)
  {
    payload = GAXLogCommon();
    if (os_log_type_enabled(payload, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer isGuidedAccessSelfLockedToApp:];
    }

    bOOLValue = 0;
  }

  else
  {
    payload = [v6 payload];
    v10 = [payload objectForKey:@"AXGuidedAccessPayloadKeyRequestingAppSetGAXEnabled"];
    bOOLValue = [v10 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isGuidedAccessUnmanagedSelfLocked
{
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2054 payload:0];
  client = [(AXServer *)self client];
  v11 = 0;
  v5 = [client sendMessage:v3 withError:&v11];
  v6 = v11;

  if (v6)
  {
    payload = GAXLogCommon();
    if (os_log_type_enabled(payload, OS_LOG_TYPE_ERROR))
    {
      [AXBackBoardServer isGuidedAccessUnmanagedSelfLocked];
    }

    bOOLValue = 0;
  }

  else
  {
    payload = [v5 payload];
    v9 = [payload objectForKeyedSubscript:@"result"];
    bOOLValue = [v9 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isRestrictedForAAC
{
  selfCopy = self;
  [(AXServer *)self _connectIfNecessary];
  v3 = [[AXIPCMessage alloc] initWithKey:2072 payload:0];
  LOBYTE(selfCopy) = [(AXServer *)selfCopy sendSimpleMessageWithResult:v3];

  return selfCopy;
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
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v5];
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

- (unint64_t)currentGuidedAccessModeAndSessionApp:(id *)app
{
  [(AXServer *)self _connectIfNecessary];
  v5 = [[AXIPCMessage alloc] initWithKey:2061 payload:0];
  v6 = [(AXServer *)self sendMessage:v5];
  payload = [v6 payload];

  v8 = [payload objectForKeyedSubscript:@"AXGuidedAccessPayloadKeyGAXMode"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (app)
  {
    if (unsignedIntegerValue)
    {
      v10 = [payload objectForKeyedSubscript:@"AXGuidedAccessPayloadKeySessionApp"];
      *app = v10;
    }

    else
    {
      *app = 0;
    }
  }

  return unsignedIntegerValue;
}

- (void)jetsamThirdPartyApps
{
  [(AXServer *)self _connectIfNecessary];
  v4 = [[AXIPCMessage alloc] initWithKey:2026 payload:0];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v4];
}

- (void)disableBrightnessFilters
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    [(AXIPCMessage *)backboardServiceInstance disableBrightnessFilters];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2047 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)brightnessFiltersEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    brightnessFiltersEnabled = [(AXIPCMessage *)backboardServiceInstance brightnessFiltersEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2048 payload:0];
    brightnessFiltersEnabled = [(AXServer *)self sendSimpleMessageWithResult:backboardServiceInstance];
  }

  v5 = brightnessFiltersEnabled;

  return v5;
}

- (BOOL)blueLightStatusEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    blueLightStatusEnabled = [(AXIPCMessage *)backboardServiceInstance blueLightStatusEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2049 payload:0];
    blueLightStatusEnabled = [(AXServer *)self sendSimpleMessageWithResult:backboardServiceInstance];
  }

  v5 = blueLightStatusEnabled;

  return v5;
}

- (void)restoreCachedBrightnessFilters
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    [(AXIPCMessage *)backboardServiceInstance restoreCachedBrightnessFilters];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2050 payload:0];
    [(AXServer *)self sendSimpleMessage:?];
  }
}

- (BOOL)adaptationEnabled
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    adaptationEnabled = [(AXIPCMessage *)backboardServiceInstance adaptationEnabled];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2051 payload:0];
    adaptationEnabled = [(AXServer *)self sendSimpleMessageWithResult:backboardServiceInstance];
  }

  v5 = adaptationEnabled;

  return v5;
}

- (BOOL)supportsAdaptation
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    supportsAdaptation = [(AXIPCMessage *)backboardServiceInstance supportsAdaptation];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    backboardServiceInstance = [[AXIPCMessage alloc] initWithKey:2052 payload:0];
    supportsAdaptation = [(AXServer *)self sendSimpleMessageWithResult:backboardServiceInstance];
  }

  v5 = supportsAdaptation;

  return v5;
}

- (BOOL)supportsAccessibilityDisplayFilters
{
  v2 = +[AXSettings sharedInstance];
  supportsAdvancedDisplayFilters = [v2 supportsAdvancedDisplayFilters];

  return supportsAdvancedDisplayFilters;
}

- (BOOL)loadGAXBundleForUnmanagedASAM
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    [backboardServiceInstance forceLoadGAXBundle];

    return 1;
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v5 = [[AXIPCMessage alloc] initWithKey:2053 payload:0];
    client = [(AXServer *)self client];
    v10 = 0;
    v7 = [client sendMessage:v5 withError:&v10];
    v8 = v10;

    v4 = v8 == 0;
  }

  return v4;
}

- (void)resetAccessibilityFeatures
{
  if ([(AXBackBoardServer *)self _shouldDispatchLocally])
  {
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    [backboardServiceInstance resetAccessibilityFeatures];
  }

  else
  {
    [(AXServer *)self _connectIfNecessary];
    v3 = [[AXIPCMessage alloc] initWithKey:2057 payload:0];
    client = [(AXServer *)self client];
    v8 = 0;
    v5 = [client sendMessage:v3 withError:&v8];
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
    backboardServiceInstance = [(AXBackBoardServer *)self backboardServiceInstance];
    if (backboardServiceInstance)
    {
      v19 = backboardServiceInstance;
      [backboardServiceInstance colorFilterFromLastUpdate];
      backboardServiceInstance = v19;
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
    client = [(AXServer *)self client];
    v20 = 0;
    v8 = [client sendMessage:v6 withError:&v20];
    v9 = v20;

    if (v9)
    {
      v10 = AXLogBackboardServer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXBackBoardServer colorFilterFromLastUpdate];
      }
    }

    payload = [v8 payload];
    v12 = [payload objectForKeyedSubscript:@"filterData"];

    if ([v12 length] == 72)
    {
      bytes = [v12 bytes];
      *&retstr->var0[0][0] = *bytes;
      v15 = *(bytes + 32);
      v14 = *(bytes + 48);
      v16 = *(bytes + 16);
      retstr->var0[2][2] = *(bytes + 64);
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

- (void)setIsSpeakScreenHighlightVisible:(BOOL)visible
{
  visibleCopy = visible;
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"visible";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:visibleCopy];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2074 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8 withError:0];
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v10 = @"deviceOrientation";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:orientation];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(AXIPCMessage *)v5 initWithKey:2075 payload:v7];

  client = [(AXServer *)self client];
  [client sendSimpleMessage:v8 withError:0];
}

- (void)setClarityUIAdminPasscode:(id)passcode
{
  v10[1] = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  [(AXServer *)self _connectIfNecessary];
  v5 = [AXIPCMessage alloc];
  v9 = @"passcode";
  v10[0] = passcodeCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(AXIPCMessage *)v5 initWithKey:2076 payload:v6];
  client = [(AXServer *)self client];
  [client sendSimpleMessage:v7 withError:0];
}

- (void)validateClarityUIAdminPasscode:(id)passcode completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  passcodeCopy = passcode;
  [(AXServer *)self _connectIfNecessary];
  v8 = [AXIPCMessage alloc];
  v14 = @"passcode";
  v15[0] = passcodeCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [(AXIPCMessage *)v8 initWithKey:2077 payload:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AXBackBoardServer_validateClarityUIAdminPasscode_completion___block_invoke;
  v12[3] = &unk_1E71EAE28;
  v13 = completionCopy;
  v11 = completionCopy;
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
  [self length];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "bogus length of color filter description %zu", v3, 0xCu);
}

@end