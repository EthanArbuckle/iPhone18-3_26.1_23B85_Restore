@interface PKTextInputAnalyticsController
+ (id)sharedInstance;
- (PKTextInputAnalyticsController)init;
- (id)configuredSystemActionBundleIdentifier;
- (void)_dispatchAnalytics;
- (void)_dispatchPencilSettingsAnalytics;
- (void)_setupAnalyticsTimer;
- (void)_updateAnalyticsTracking;
- (void)activePencilUsage:(id)usage;
- (void)dealloc;
- (void)didBeginSession;
- (void)didEndMatchingAccumulatorName:(id)name;
- (void)eventSourceDidChange:(id)change;
- (void)messageHandwritingAnalyticsWithProxyBlock:(id)block;
- (void)q_didEndMatchingAccumulatorName:(id)name inputMode:(id)mode;
@end

@implementation PKTextInputAnalyticsController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PKTextInputAnalyticsController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6A5260 != -1)
  {
    dispatch_once(&qword_1ED6A5260, block);
  }

  v2 = _MergedGlobals_154;

  return v2;
}

void __48__PKTextInputAnalyticsController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_154;
  _MergedGlobals_154 = v1;
}

- (PKTextInputAnalyticsController)init
{
  v10.receiver = self;
  v10.super_class = PKTextInputAnalyticsController;
  v2 = [(PKTextInputAnalyticsController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.TextInputAnalyticsController", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    [MEMORY[0x1E69DD0F8] addEndingObserver:v2];
    v2->_lastEventSource = 0;
    v2->_lastEventSourceChangeTimestamp = mach_absolute_time();
    *v2->_eventSourceUsage = 0u;
    *&v2->_eventSourceUsage[2] = 0u;
    *&v2->_eventSourceUsage[4] = 0u;
    *&v2->_eventSourceUsage[6] = 0u;
    v2->_eventSourceUsage[8] = 0;
    if (PK_UIApplicationIsSystemShell_onceToken != -1)
    {
      dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
    }

    if (PK_UIApplicationIsSystemShell___result == 1)
    {
      [(PKTextInputAnalyticsController *)v2 _setupAnalyticsTimer];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel_eventSourceDidChange_ name:*MEMORY[0x1E69DE710] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel_activePencilUsage_ name:@"com.apple.pencilkit.pkactivepencilusage" object:0];
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE710] object:0];

  v4.receiver = self;
  v4.super_class = PKTextInputAnalyticsController;
  [(PKTextInputAnalyticsController *)&v4 dealloc];
}

- (void)didBeginSession
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKTextInputAnalyticsController_didBeginSession__block_invoke;
  aBlock[3] = &unk_1E82D7148;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __49__PKTextInputAnalyticsController_didBeginSession__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKTextInputAnalyticsController_didBeginSession__block_invoke_2;
  block[3] = &unk_1E82D7148;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __51__PKTextInputAnalyticsController_q_didBeginSession__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didBeginInputSession];
  }
}

- (void)didEndMatchingAccumulatorName:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__PKTextInputAnalyticsController_didEndMatchingAccumulatorName___block_invoke;
  v10 = &unk_1E82D6E70;
  selfCopy = self;
  v5 = nameCopy;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __64__PKTextInputAnalyticsController_didEndMatchingAccumulatorName___block_invoke(uint64_t a1)
{
  v2 = +[PKTextInputSettings sharedSettings];
  v3 = [v2 recognitionLocaleIdentifier];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKTextInputAnalyticsController_didEndMatchingAccumulatorName___block_invoke_2;
  block[3] = &unk_1E82DACE8;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)q_didEndMatchingAccumulatorName:(id)name inputMode:(id)mode
{
  nameCopy = name;
  modeCopy = mode;
  if ([nameCopy isEqualToString:*MEMORY[0x1E69DE6F8]])
  {
    v8 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v9 = __76__PKTextInputAnalyticsController_q_didEndMatchingAccumulatorName_inputMode___block_invoke;
LABEL_5:
    v8[2] = v9;
    v8[3] = &unk_1E82DAD10;
    v8[4] = modeCopy;
    [(PKTextInputAnalyticsController *)self messageHandwritingAnalyticsWithProxyBlock:v8];

    goto LABEL_6;
  }

  if ([nameCopy isEqualToString:*MEMORY[0x1E69DE700]])
  {
    v8 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v9 = __76__PKTextInputAnalyticsController_q_didEndMatchingAccumulatorName_inputMode___block_invoke_2;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)messageHandwritingAnalyticsWithProxyBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.handwritingd.pkanalytics" options:0];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F485D600];
    [v4 setRemoteObjectInterface:v5];
    [v4 resume];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__PKTextInputAnalyticsController_messageHandwritingAnalyticsWithProxyBlock___block_invoke;
    v7[3] = &unk_1E82DAB20;
    v7[4] = &v8;
    v6 = [v4 remoteObjectProxyWithErrorHandler:v7];
    if ((v9[3] & 1) == 0)
    {
      blockCopy[2](blockCopy, v6);
    }

    [v4 invalidate];

    _Block_object_dispose(&v8, 8);
  }
}

void __76__PKTextInputAnalyticsController_messageHandwritingAnalyticsWithProxyBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Error creating xpc connection for analytics: %@", &v5, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (void)eventSourceDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DE708]];
  integerValue = [v5 integerValue];

  [(PKTextInputAnalyticsController *)self didUpdateToEventSource:integerValue];
}

- (void)activePencilUsage:(id)usage
{
  usageCopy = usage;
  userInfo = [usageCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"com.apple.pencilkit.pkactivepencilusage.type"];

  userInfo2 = [usageCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"com.apple.pencilkit.pkactivepencilusage.interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      self->_activePencilUsage = v8 + self->_activePencilUsage;
      self->_lastActivePencilType = [v9 integerValue];
    }
  }
}

- (void)_updateAnalyticsTracking
{
  if (qword_1ED6A5270 != -1)
  {
    dispatch_once(&qword_1ED6A5270, &__block_literal_global_139);
  }

  lastEventSource = self->_lastEventSource;
  v4 = mach_absolute_time();
  self->_eventSourceUsage[lastEventSource] += (v4 - self->_lastEventSourceChangeTimestamp) * dword_1ED6A5268 / *algn_1ED6A526C / 0xF4240;
  self->_lastEventSourceChangeTimestamp = v4;
}

void __58__PKTextInputAnalyticsController__updateAnalyticsTracking__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = mach_timebase_info(&dword_1ED6A5268);
  if (v0)
  {
    v1 = v0;
    v2 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3[0] = 67109120;
      v3[1] = v1;
      _os_log_error_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_ERROR, "Analytics: Unable to get mach timebase info. Error: %d", v3, 8u);
    }
  }
}

- (void)_setupAnalyticsTimer
{
  eventSourceTimer = [(PKTextInputAnalyticsController *)self eventSourceTimer];
  [eventSourceTimer invalidate];

  self->_eventSourceUsage[8] = 0;
  *&self->_eventSourceUsage[4] = 0u;
  *&self->_eventSourceUsage[6] = 0u;
  *self->_eventSourceUsage = 0u;
  *&self->_eventSourceUsage[2] = 0u;
  self->_activePencilUsage = 0.0;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [currentCalendar startOfDayForDate:v4];
  v6 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v5 options:0];
  v7 = [currentCalendar dateByAddingUnit:64 value:30 toDate:v6 options:0];
  if (MGGetBoolAnswer())
  {
    v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
    v9 = [v8 integerForKey:@"DailyAnalyticsFrequencyInMinutesForTesting"];
    if (v9 >= 1)
    {
      v10 = [currentCalendar dateByAddingUnit:64 value:v9 toDate:v4 options:0];

      v7 = v10;
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v7 interval:self target:sel__dispatchAnalytics selector:0 userInfo:0 repeats:1000.0];
  [(PKTextInputAnalyticsController *)self setEventSourceTimer:v11];

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  eventSourceTimer2 = [(PKTextInputAnalyticsController *)self eventSourceTimer];
  [currentRunLoop addTimer:eventSourceTimer2 forMode:*MEMORY[0x1E695D918]];
}

- (void)_dispatchAnalytics
{
  [(PKTextInputAnalyticsController *)self didUpdateToEventSource:0];
  for (i = 0; i != 9; ++i)
  {
    v4 = [MEMORY[0x1E69DD0F8] stringValueForSource:i];
    v5 = v4;
    if (i == 3 && self->_lastActivePencilType == 1)
    {
      v6 = [v4 stringByAppendingString:@"3rdPartyOrCrayon"];

      v5 = v6;
    }

    v8 = v5;
    v7 = v5;
    AnalyticsSendEventLazy();
  }

  if (+[PKHoverSettings isHoverActive])
  {
    [PKHoverSettings checkIfHoverIsEnabled:&__block_literal_global_171];
  }

  [(PKTextInputAnalyticsController *)self _dispatchPencilSettingsAnalytics];
  [(PKTextInputAnalyticsController *)self _setupAnalyticsTimer];
}

id __52__PKTextInputAnalyticsController__dispatchAnalytics__block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"bundle";
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = *(a1 + 32);
  v10[0] = v3;
  v10[1] = v4;
  v9[1] = @"source";
  v9[2] = @"minutes";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v10[2] = v5;
  v9[3] = @"activepencilminutes";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

uint64_t __52__PKTextInputAnalyticsController__dispatchAnalytics__block_invoke_2()
{
  v0 = +[PKTextInputSettings sharedSettings];
  [v0 isScribbleActive];

  +[PKHoverSettings allowDoubleTapOnlyWithPencilHover];
  return AnalyticsSendEventLazy();
}

id __52__PKTextInputAnalyticsController__dispatchAnalytics__block_invoke_3(unsigned __int8 *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"settingShowEffectsEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1[32]];
  v9[0] = v2;
  v8[1] = @"settingScribbleEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[33]];
  v9[1] = v3;
  v8[2] = @"settingSystemShadowEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1[34]];
  v9[2] = v4;
  v8[3] = @"settingDoubleTapInRangeEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a1[35]];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (id)configuredSystemActionBundleIdentifier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"SBPencilSystemShortcutAction"];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = MEMORY[0x1E696ACD0];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = qword_1ED6A5278;
  v19 = qword_1ED6A5278;
  if (!qword_1ED6A5278)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getWFConfiguredSystemActionClass_block_invoke;
    v15[3] = &unk_1E82D6498;
    v15[4] = &v16;
    __getWFConfiguredSystemActionClass_block_invoke(v15);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v14 = 0;
  v7 = [v4 unarchivedObjectOfClass:v5 fromData:v3 error:&v14];
  v8 = v7;
  if (v14)
  {

LABEL_6:
    v8 = 0;
  }

  associatedBundleIdentifier = [v8 associatedBundleIdentifier];
  v10 = associatedBundleIdentifier;
  if (associatedBundleIdentifier)
  {
    v11 = associatedBundleIdentifier;
  }

  else
  {
    v11 = @"<unknown>";
  }

  v12 = v11;

  return v11;
}

- (void)_dispatchPencilSettingsAnalytics
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.preferences.sounds"];
  v4 = [v3 objectForKey:@"effects-pencil-haptic"];
  v5 = v4;
  v6 = MEMORY[0x1E695E118];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = +[PKStatisticsManager sharedStatisticsManager];
  -[PKStatisticsManager analyticsActionFromPreferredAction:](v8, [MEMORY[0x1E69DCD58] preferredTapAction]);

  v9 = +[PKPencilDevice activePencil];
  [v9 pencilVersionForAnalytics];

  v10 = +[PKHoverSettings sharedSettings];
  [v10 toolShadowActive];

  configuredSystemActionBundleIdentifier = [(PKTextInputAnalyticsController *)self configuredSystemActionBundleIdentifier];
  v12 = +[PKStatisticsManager sharedStatisticsManager];
  -[PKStatisticsManager analyticsActionFromPreferredAction:](v12, [MEMORY[0x1E69DCD58] preferredSqueezeAction]);

  [MEMORY[0x1E69DCD58] preferredSqueezeAction];
  +[PKPencilSqueezeAnalyticsController currentSqueezeThresholdIndex];
  [MEMORY[0x1E69DCD58] preferredSqueezeAction];
  v15 = v7;
  v13 = configuredSystemActionBundleIdentifier;
  v14 = v7;
  AnalyticsSendEventLazy();
}

id __66__PKTextInputAnalyticsController__dispatchPencilSettingsAnalytics__block_invoke(uint64_t a1)
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14[0] = @"barrelRollEnablement";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 88)];
  v15[0] = v2;
  v14[1] = @"doubleTapState";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v4 = *(a1 + 32);
  v15[1] = v3;
  v15[2] = v4;
  v14[2] = @"hapticsEnablement";
  v14[3] = @"pencilVersion";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v15[3] = v5;
  v14[4] = @"shadowEnablement";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 89)];
  v7 = *(a1 + 40);
  v15[4] = v6;
  v15[5] = v7;
  v14[5] = @"shortcutIntentIdentifier";
  v14[6] = @"squeezeSettingStateCanvas";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
  v15[6] = v8;
  v14[7] = @"squeezeSettingStateSystem";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  v15[7] = v9;
  v14[8] = @"squeezeThresholdState";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
  v15[8] = v10;
  v14[9] = @"wasShortcutEnabled";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 90)];
  v15[9] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:10];

  return v12;
}

@end