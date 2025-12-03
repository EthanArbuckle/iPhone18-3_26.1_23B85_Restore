@interface CCUIPerformanceTraceModuleViewController
+ (id)displayNameForState:(unint64_t)state;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIPerformanceTraceModuleViewController)init;
- (id)_getFGSceneIdentifiers;
- (id)_localizedString:(id)string;
- (id)_makeTracePlanNameMenuItem:(id)item;
- (id)_passiveTraceConfig;
- (void)_cleanupSessionAndUpdateState:(unint64_t)state;
- (void)_collectPassiveTrace;
- (void)_performanceTraceGlobalStateDidChange;
- (void)_recreateMenu;
- (void)_startRecording;
- (void)_startRecordingPowerMetricsPassiveTrace;
- (void)_startRecordingRegularTrace;
- (void)_stopRecording;
- (void)_stopRecordingPowerMetricsPassiveTrace;
- (void)_stopRecordingRegularTrace;
- (void)_updateGlyph;
- (void)_updateState:(unint64_t)state;
- (void)_updateSubtitle:(id)subtitle;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)dealloc;
- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error;
- (void)performanceTraceDidStart:(id)start;
- (void)performanceTraceDidStop:(id)stop;
- (void)setSelectedTracePlanName:(id)name;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation CCUIPerformanceTraceModuleViewController

+ (id)displayNameForState:(unint64_t)state
{
  if (state > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_29F33DE08[state];
  }
}

- (void)setSelectedTracePlanName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_selectedTracePlanName] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedTracePlanName, name);
    [(CCUIPerformanceTraceModuleViewController *)self _updatePlanNameConvenienceProperties];
  }
}

- (CCUIPerformanceTraceModuleViewController)init
{
  v21.receiver = self;
  v21.super_class = CCUIPerformanceTraceModuleViewController;
  v2 = [(CCUIPerformanceTraceModuleViewController *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    availableTracePlanNames = [MEMORY[0x29EDC6100] availableTracePlanNames];
    supportedTracePlanNames = v3->_supportedTracePlanNames;
    v3->_supportedTracePlanNames = availableTracePlanNames;

    userSelectedTracePlanName = [MEMORY[0x29EDC6100] userSelectedTracePlanName];
    selectedTracePlanName = v3->_selectedTracePlanName;
    v3->_selectedTracePlanName = userSelectedTracePlanName;

    v8 = dispatch_queue_create("com.apple.MobileControlCenter.PerformanceTraceModule", 0);
    stateChangeQueue = v3->_stateChangeQueue;
    v3->_stateChangeQueue = v8;

    objc_initWeak(&location, v3);
    v10 = objc_alloc(MEMORY[0x29EDC60F0]);
    stateChangeQueue = [(CCUIPerformanceTraceModuleViewController *)v3 stateChangeQueue];
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = sub_29C9DE3AC;
    v18 = &unk_29F33DD00;
    objc_copyWeak(&v19, &location);
    v12 = [v10 initWithQueue:stateChangeQueue stateChangeBlock:&v15];
    stateChangeMonitor = v3->_stateChangeMonitor;
    v3->_stateChangeMonitor = v12;

    [(CCUIPerformanceTraceModuleViewController *)v3 _updatePlanNameConvenienceProperties:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  if ([(CCUIPerformanceTraceModuleViewController *)self state]== 2)
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = 3221225472;
    v6 = sub_29C9DE48C;
    v7 = &unk_29F33DD28;
    selfCopy = self;
    BSDispatchMain();
  }

  v3.receiver = self;
  v3.super_class = CCUIPerformanceTraceModuleViewController;
  [(CCUIPerformanceTraceModuleViewController *)&v3 dealloc];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  if ([(CCUIPerformanceTraceModuleViewController *)self state])
  {
    return 0;
  }

  supportedTracePlanNames = [(CCUIPerformanceTraceModuleViewController *)self supportedTracePlanNames];
  v3 = [supportedTracePlanNames count] > 1;

  return v3;
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v6.receiver = self;
  v6.super_class = CCUIPerformanceTraceModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 willTransitionToExpandedContentMode:?];
  if (modeCopy)
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = sub_29C9DE61C;
    v5[3] = &unk_29F33DD28;
    v5[4] = self;
    [MEMORY[0x29EDC7DA0] performWithoutAnimation:v5];
  }
}

- (id)_makeTracePlanNameMenuItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v6 = [MEMORY[0x29EDC6100] displayNameForTracePlanName:itemCopy];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C9DE764;
  v10[3] = &unk_29F33DD50;
  objc_copyWeak(&v13, &location);
  v7 = itemCopy;
  v11 = v7;
  selfCopy = self;
  v8 = [v5 initWithTitle:v6 identifier:v7 handler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (void)_recreateMenu
{
  v19 = *MEMORY[0x29EDCA608];
  userSelectedTracePlanName = [MEMORY[0x29EDC6100] userSelectedTracePlanName];
  [(CCUIPerformanceTraceModuleViewController *)self setSelectedTracePlanName:userSelectedTracePlanName];

  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  supportedTracePlanNames = [(CCUIPerformanceTraceModuleViewController *)self supportedTracePlanNames];
  v6 = [supportedTracePlanNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(supportedTracePlanNames);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CCUIPerformanceTraceModuleViewController *)self _makeTracePlanNameMenuItem:v10];
        selectedTracePlanName = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
        [v11 setSelected:{objc_msgSend(v10, "isEqualToString:", selectedTracePlanName)}];

        [v4 addObject:v11];
      }

      v7 = [supportedTracePlanNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(CCUIMenuModuleViewController *)self setMenuItems:v4];
  v13 = *MEMORY[0x29EDCA608];
}

- (void)_updateGlyph
{
  userSelectedTracePlanName = [MEMORY[0x29EDC6100] userSelectedTracePlanName];
  [(CCUIPerformanceTraceModuleViewController *)self setSelectedTracePlanName:userSelectedTracePlanName];

  v4 = sub_29C9DE854();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_29C9DD000, v4, OS_LOG_TYPE_DEFAULT, "Updating button glyph", v11, 2u);
  }

  systemBlueColor = [MEMORY[0x29EDC7A00] systemBlueColor];
  v6 = MEMORY[0x29EDC6100];
  selectedTracePlanName = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
  v8 = [v6 displayNameForTracePlanName:selectedTracePlanName];

  if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassive])
  {
    v9 = @"square.and.arrow.down.badge.clock";
  }

  else if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassivePowerMetrics])
  {
    v9 = @"bolt.badge.clock";
  }

  else
  {
    v9 = @"waveform.path.ecg";
  }

  [(CCUIPerformanceTraceModuleViewController *)self _updateSubtitle:v8];
  v10 = [MEMORY[0x29EDC7AC8] systemImageNamed:v9];
  [(CCUIMenuModuleViewController *)self setGlyphImage:v10];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:systemBlueColor];
  [(CCUIMenuModuleViewController *)self setIndentation:2];
}

- (void)_updateSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  [(CCUIButtonModuleViewController *)self setValueText:subtitleCopy];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:subtitleCopy];
}

- (void)_cleanupSessionAndUpdateState:(unint64_t)state
{
  v3 = sub_29C9DE854();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Updating state and nil'ing Performance Trace delegate and session", buf, 2u);
  }

  BSDispatchMain();
}

- (id)_localizedString:(id)string
{
  v3 = MEMORY[0x29EDB9F48];
  stringCopy = string;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:stringCopy value:&stru_2A23F0780 table:0];

  return v6;
}

- (void)performanceTraceDidStart:(id)start
{
  startCopy = start;
  v5 = sub_29C9DE854();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Performance Trace didStart", v10, 2u);
  }

  if (startCopy)
  {
    v6 = sub_29C9DE854();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0B04();
    }

    v7 = [(CCUIPerformanceTraceModuleViewController *)self _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR"];
    contentModuleContext = [(CCUIMenuModuleViewController *)self contentModuleContext];
    v9 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v7 type:0];
    [contentModuleContext enqueueStatusUpdate:v9];

    [(CCUIPerformanceTraceModuleViewController *)self _cleanupSessionAndUpdateState:0];
  }

  else
  {
    [(CCUIPerformanceTraceModuleViewController *)self _updateState:2];
  }
}

- (void)performanceTraceDidStop:(id)stop
{
  stopCopy = stop;
  v5 = sub_29C9DE854();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Performance Trace didStop", v10, 2u);
  }

  if (stopCopy)
  {
    v6 = sub_29C9DE854();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0B6C();
    }

    v7 = [(CCUIPerformanceTraceModuleViewController *)self _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STOP_ERROR"];
    contentModuleContext = [(CCUIMenuModuleViewController *)self contentModuleContext];
    v9 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v7 type:0];
    [contentModuleContext enqueueStatusUpdate:v9];
  }

  else
  {
    [(CCUIPerformanceTraceModuleViewController *)self _updateState:4];
  }
}

- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error
{
  completeCopy = complete;
  errorCopy = error;
  v9 = sub_29C9DE854();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v9, OS_LOG_TYPE_DEFAULT, "Performance Trace didComplete", buf, 2u);
  }

  if (errorCopy)
  {
    v10 = sub_29C9DE854();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0BD4();
    }

    v11 = [(CCUIPerformanceTraceModuleViewController *)self _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR"];
    contentModuleContext = [(CCUIMenuModuleViewController *)self contentModuleContext];
    v13 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v11 type:0];
    [contentModuleContext enqueueStatusUpdate:v13];
  }

  if (CCSIsInternalInstall())
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    fgSceneIdentifiersAtTraceStart = [(CCUIPerformanceTraceModuleViewController *)self fgSceneIdentifiersAtTraceStart];

    if (fgSceneIdentifiersAtTraceStart)
    {
      fgSceneIdentifiersAtTraceStart2 = [(CCUIPerformanceTraceModuleViewController *)self fgSceneIdentifiersAtTraceStart];
      [dictionary setObject:fgSceneIdentifiersAtTraceStart2 forKeyedSubscript:*MEMORY[0x29EDC6118]];
    }

    _getFGSceneIdentifiers = [(CCUIPerformanceTraceModuleViewController *)self _getFGSceneIdentifiers];
    if (_getFGSceneIdentifiers)
    {
      [dictionary setObject:_getFGSceneIdentifiers forKeyedSubscript:*MEMORY[0x29EDC6110]];
    }

    v18 = sub_29C9DE854();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v18, OS_LOG_TYPE_DEFAULT, "Requesting alert for completed trace", buf, 2u);
    }

    performanceTraceSession = self->_performanceTraceSession;
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = sub_29C9DF2D4;
    v21[3] = &unk_29F33DDA0;
    v21[4] = self;
    [(PTTraceSession *)performanceTraceSession displayTraceCompletedAlertWithTraceFileURL:completeCopy additionalInfo:dictionary notificationTimeoutSecs:&unk_2A23F0EA8 completionHandler:v21];
  }

  else
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = sub_29C9DF3A8;
    v20[3] = &unk_29F33DD28;
    v20[4] = self;
    dispatch_async(MEMORY[0x29EDCA578], v20);
  }
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = sub_29C9DE854();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() displayNameForState:{-[CCUIPerformanceTraceModuleViewController state](self, "state")}];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    state = [(CCUIPerformanceTraceModuleViewController *)self state];
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Button tapped (current state is %@ (%lu))", &v9, 0x16u);
  }

  if ([(CCUIPerformanceTraceModuleViewController *)self state])
  {
    if ([(CCUIPerformanceTraceModuleViewController *)self state]== 2)
    {
      [(CCUIPerformanceTraceModuleViewController *)self _stopRecording];
    }

    else
    {
      v7 = sub_29C9DE854();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_29C9E0C3C(self, v7);
      }
    }
  }

  else
  {
    [(CCUIPerformanceTraceModuleViewController *)self _startRecording];
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (id)_getFGSceneIdentifiers
{
  v3 = sub_29C9DE854();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Getting FG scene identifiers", v8, 2u);
  }

  contentModuleContext = [(CCUIMenuModuleViewController *)self contentModuleContext];
  displayLayoutContextProvider = [contentModuleContext displayLayoutContextProvider];
  foregroundApplicationSceneBundleIdentifiers = [displayLayoutContextProvider foregroundApplicationSceneBundleIdentifiers];

  return foregroundApplicationSceneBundleIdentifiers;
}

- (void)_startRecording
{
  v9 = *MEMORY[0x29EDCA608];
  userSelectedTracePlanName = [MEMORY[0x29EDC6100] userSelectedTracePlanName];
  [(CCUIPerformanceTraceModuleViewController *)self setSelectedTracePlanName:userSelectedTracePlanName];

  v4 = sub_29C9DE854();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    selectedTracePlanName = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
    v7 = 138543362;
    v8 = selectedTracePlanName;
    _os_log_impl(&dword_29C9DD000, v4, OS_LOG_TYPE_DEFAULT, "Starting recording with plan %{public}@", &v7, 0xCu);
  }

  if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassive])
  {
    [(CCUIPerformanceTraceModuleViewController *)self _collectPassiveTrace];
  }

  else if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassivePowerMetrics])
  {
    [(CCUIPerformanceTraceModuleViewController *)self _startRecordingPowerMetricsPassiveTrace];
  }

  else
  {
    [(CCUIPerformanceTraceModuleViewController *)self _startRecordingRegularTrace];
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)_stopRecording
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = sub_29C9DE854();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selectedTracePlanName = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
    v8 = 138543362;
    v9 = selectedTracePlanName;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Stopping recording with plan %{public}@", &v8, 0xCu);
  }

  if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassive])
  {
    v5 = sub_29C9DE854();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      selectedTracePlanName2 = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
      v8 = 138543362;
      v9 = selectedTracePlanName2;
      _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Selected trace plan (%{public}@) does not support stopping recording", &v8, 0xCu);
    }
  }

  else if ([(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanIsPassivePowerMetrics])
  {
    [(CCUIPerformanceTraceModuleViewController *)self _stopRecordingPowerMetricsPassiveTrace];
  }

  else
  {
    [(CCUIPerformanceTraceModuleViewController *)self _stopRecordingRegularTrace];
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)_startRecordingRegularTrace
{
  [(CCUIPerformanceTraceModuleViewController *)self _updateState:1];
  _getFGSceneIdentifiers = [(CCUIPerformanceTraceModuleViewController *)self _getFGSceneIdentifiers];
  [(CCUIPerformanceTraceModuleViewController *)self setFgSceneIdentifiersAtTraceStart:_getFGSceneIdentifiers];

  v4 = MEMORY[0x29EDC6100];
  selectedTracePlanName = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
  v11 = [v4 configWithTracePlanName:selectedTracePlanName];

  [v11 setTraceDurationSecs:30];
  [v11 setSymbolicate:0];
  v6 = *MEMORY[0x29EDC6130];
  selectedTracePlanName2 = [(CCUIPerformanceTraceModuleViewController *)self selectedTracePlanName];
  LODWORD(v6) = [v6 isEqualToString:selectedTracePlanName2];

  if (v6)
  {
    userSpecifiedCustomTracePlanArguments = [MEMORY[0x29EDC6100] userSpecifiedCustomTracePlanArguments];
    [v11 setTraceRecordArgs:userSpecifiedCustomTracePlanArguments];
  }

  v9 = [MEMORY[0x29EDC6108] initWithConfig:v11];
  performanceTraceSession = self->_performanceTraceSession;
  self->_performanceTraceSession = v9;

  [(PTTraceSession *)self->_performanceTraceSession setDelegate:self];
  [(PTTraceSession *)self->_performanceTraceSession startPerformanceTrace];
}

- (void)_stopRecordingRegularTrace
{
  if (self->_performanceTraceSession)
  {
    [(CCUIPerformanceTraceModuleViewController *)self _updateState:3];
    performanceTraceSession = self->_performanceTraceSession;

    MEMORY[0x2A1C70FE8](performanceTraceSession, sel_stopPerformanceTrace);
  }
}

- (id)_passiveTraceConfig
{
  v6 = 0;
  v2 = [MEMORY[0x29EDC60F8] sharedConfig:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = sub_29C9DE854();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0D04();
    }
  }

  return v2;
}

- (void)_startRecordingPowerMetricsPassiveTrace
{
  v3 = MEMORY[0x29EDC0C88];
  v4 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_29C9DD000, v4, OS_LOG_TYPE_DEFAULT, "Starting power metrics passive trace", v16, 2u);
  }

  _passiveTraceConfig = [(CCUIPerformanceTraceModuleViewController *)self _passiveTraceConfig];
  v6 = _passiveTraceConfig;
  if (!_passiveTraceConfig)
  {
    v7 = [(CCUIPerformanceTraceModuleViewController *)self _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR"];
    contentModuleContext = [(CCUIMenuModuleViewController *)self contentModuleContext];
    v13 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v7 type:0];
    [contentModuleContext enqueueStatusUpdate:v13];

    selfCopy2 = self;
    v15 = 0;
LABEL_10:
    [(CCUIPerformanceTraceModuleViewController *)selfCopy2 _updateState:v15];
    goto LABEL_11;
  }

  v7 = [_passiveTraceConfig applySetting:1];
  if (!v7)
  {
    selfCopy2 = self;
    v15 = 2;
    goto LABEL_10;
  }

  v8 = *v3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_29C9E0D6C(v8);
  }

  v9 = [(CCUIPerformanceTraceModuleViewController *)self _localizedString:@"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR"];
  contentModuleContext2 = [(CCUIMenuModuleViewController *)self contentModuleContext];
  v11 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v9 type:0];
  [contentModuleContext2 enqueueStatusUpdate:v11];

  [(CCUIPerformanceTraceModuleViewController *)self _updateState:0];
LABEL_11:
}

- (void)_stopRecordingPowerMetricsPassiveTrace
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Stopping power metrics passive trace", buf, 2u);
  }

  [(CCUIPerformanceTraceModuleViewController *)self _updateState:4];
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9DFCF4;
  block[3] = &unk_29F33DD28;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_collectPassiveTrace
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Preparing to collect passive trace", buf, 2u);
  }

  [(CCUIPerformanceTraceModuleViewController *)self _updateState:4];
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9E00FC;
  block[3] = &unk_29F33DD28;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_performanceTraceGlobalStateDidChange
{
  if (-[CCUIPerformanceTraceModuleViewController selectedTracePlanIsPassivePowerMetrics](self, "selectedTracePlanIsPassivePowerMetrics") && -[CCUIPerformanceTraceModuleViewController state](self, "state") == 2 && ([MEMORY[0x29EDC6100] globalSettingsAreLocked] & 1) == 0)
  {
    v3 = sub_29C9DE854();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Global locked state transitioned from locked to unlocked, so inferring that Power Profiler recording stopped.", v4, 2u);
    }

    [(CCUIPerformanceTraceModuleViewController *)self _updateState:0];
  }
}

- (void)_updateState:(unint64_t)state
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Updating state", buf, 2u);
  }

  BSDispatchMain();
}

@end