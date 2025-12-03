@interface AXTapticChimesScheduler
+ (id)sharedInstance;
- (BOOL)_outputTapticChime:(id)chime atDate:(id)date isPreview:(BOOL)preview;
- (BOOL)canPlayScheduledTapticChime;
- (BOOL)canPlayTapticChime;
- (BOOL)canScheduleTapticChimes;
- (BOOL)isAllowedToChimeAt:(id)at;
- (BOOL)processIsAllowedToScheduleChimes;
- (double)_prePlayAudioTimeInterval;
- (double)_preWakeTimeInterval;
- (id)_currentDate;
- (id)_init;
- (id)nextChimeAssetForStartDate:(id)date frequency:(int64_t)frequency soundType:(int64_t)type timeIntervalUntilChime:(double *)chime;
- (unsigned)_createPowerAssertionWithName:(id)name timeout:(double)timeout;
- (void)_chimeDidFinishPlaying;
- (void)_chimeWakeTimerFired:(id)fired;
- (void)_clearChimeTimer;
- (void)_previewChimes;
- (void)_previewChimesForStartDate:(id)date chimeDate:(id)chimeDate frequency:(int64_t)frequency soundType:(int64_t)type;
- (void)_registerForNotifications;
- (void)_releasePowerAssertionIfPossible:(unsigned int)possible;
- (void)_scheduleChimeTimer;
- (void)_tapticChimesStateDidChange:(BOOL)change;
- (void)_unregisterForNotifications;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)dealloc;
@end

@implementation AXTapticChimesScheduler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXTapticChimesScheduler sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __41__AXTapticChimesScheduler_sharedInstance__block_invoke()
{
  sharedInstance__Shared = [[AXTapticChimesScheduler alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v27.receiver = self;
  v27.super_class = AXTapticChimesScheduler;
  v2 = [(AXTapticChimesScheduler *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.accessibility.AXTapticChimesScheduler", v3);
    mediaQueue = v2->_mediaQueue;
    v2->_mediaQueue = v4;

    objc_initWeak(&location, v2);
    if ([(AXTapticChimesScheduler *)v2 processIsAllowedToScheduleChimes])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = AXProcessGetName();
      v8 = [v6 stringWithFormat:@"com.apple.accessibility.TapticChimesScheduler-%@", v7];
      pcServiceIdentifier = v2->_pcServiceIdentifier;
      v2->_pcServiceIdentifier = v8;

      v10 = AXLogTapticTime();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D6AA000, v10, OS_LOG_TYPE_DEFAULT, "Process handles chimes, registering for updates", buf, 2u);
      }

      v11 = +[AXTimeOutputPreferences sharedInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __32__AXTapticChimesScheduler__init__block_invoke;
      v23[3] = &unk_278BDFD98;
      objc_copyWeak(&v24, &location);
      [v11 registerUpdateBlock:v23 forRetrieveSelector:sel_voiceOverTapticChimesEnabled withListener:v2];

      v12 = +[AXTimeOutputPreferences sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __32__AXTapticChimesScheduler__init__block_invoke_2;
      v21[3] = &unk_278BDFD98;
      objc_copyWeak(&v22, &location);
      [v12 registerUpdateBlock:v21 forRetrieveSelector:sel_voiceOverTapticChimesFrequencyEncoding withListener:v2];

      v13 = +[AXTimeOutputPreferences sharedInstance];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __32__AXTapticChimesScheduler__init__block_invoke_301;
      v19[3] = &unk_278BDFD98;
      objc_copyWeak(&v20, &location);
      [v13 registerUpdateBlock:v19 forRetrieveSelector:sel_voiceOverTapticChimesSoundType withListener:v2];

      v14 = +[AXTimeOutputPreferences sharedInstance];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __32__AXTapticChimesScheduler__init__block_invoke_304;
      v17[3] = &unk_278BDFD98;
      objc_copyWeak(&v18, &location);
      [v14 registerUpdateBlock:v17 forRetrieveSelector:sel_voiceOverTapticChimesUnity25SoundType withListener:v2];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
    }

    else
    {
      v15 = AXLogTapticTime();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXTapticChimesScheduler _init];
      }
    }

    [(AXTapticChimesScheduler *)v2 _tapticChimesStateDidChange:0];
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__AXTapticChimesScheduler__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tapticChimesStateDidChange:1];
}

void __32__AXTapticChimesScheduler__init__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 voiceOverTapticChimesEnabled];

  if (v3)
  {
    v4 = AXLogTapticTime();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_DEFAULT, "Taptic Chimes frequency changed, will re-schedule chimes", v6, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _scheduleChimeTimer];
  }
}

void __32__AXTapticChimesScheduler__init__block_invoke_301(uint64_t a1)
{
  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  if ([v6 voiceOverTapticChimesEnabled])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained canPlayScheduledTapticChime];

    if (v3)
    {
      v4 = AXLogTapticTime();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_DEFAULT, "Taptic Chimes sound type changed, will preview chimes", buf, 2u);
      }

      v5 = objc_loadWeakRetained((a1 + 32));
      [v5 _previewChimes];
    }
  }

  else
  {
  }
}

void __32__AXTapticChimesScheduler__init__block_invoke_304(uint64_t a1)
{
  v6 = [MEMORY[0x277CE7E20] sharedInstance];
  if ([v6 voiceOverTapticChimesEnabled])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained canPlayScheduledTapticChime];

    if (v3)
    {
      v4 = AXLogTapticTime();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_DEFAULT, "Taptic Chimes Unity sound type changed, will preview chimes", buf, 2u);
      }

      v5 = objc_loadWeakRetained((a1 + 32));
      [v5 _previewChimes];
    }
  }

  else
  {
  }
}

- (void)_registerForNotifications
{
  objc_initWeak(&location, self);
  if (AXProcessIsClockFace())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D81E80];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__AXTapticChimesScheduler__registerForNotifications__block_invoke;
    v8[3] = &unk_278BDFDC0;
    objc_copyWeak(&v9, &location);
    v6 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:v8];

    objc_destroyWeak(&v9);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _ntkDefaultsChanged, @"NanoTimeKitFaceDefaultsChangedDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  objc_destroyWeak(&location);
}

void __52__AXTapticChimesScheduler__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogTapticTime();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23D6AA000, v2, OS_LOG_TYPE_INFO, "VoiceOver status changed!", v3, 2u);
  }

  [WeakRetained _scheduleChimeTimer];
}

- (void)_unregisterForNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoTimeKitFaceDefaultsChangedDarwinNotification", 0);
}

- (void)dealloc
{
  [(AXTapticChimesScheduler *)self _unregisterForNotifications];
  [(AXTapticChimesScheduler *)self _clearChimeTimer];
  v3.receiver = self;
  v3.super_class = AXTapticChimesScheduler;
  [(AXTapticChimesScheduler *)&v3 dealloc];
}

- (void)_tapticChimesStateDidChange:(BOOL)change
{
  changeCopy = change;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  voiceOverTapticChimesEnabled = [mEMORY[0x277CE7E20] voiceOverTapticChimesEnabled];

  v7 = AXLogTapticTime();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (voiceOverTapticChimesEnabled)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23D6AA000, v7, OS_LOG_TYPE_DEFAULT, "Taptic Chimes enabled, will begin scheduling chimes", buf, 2u);
    }

    [(AXTapticChimesScheduler *)self _registerForNotifications];
    if (changeCopy)
    {
      if ([(AXTapticChimesScheduler *)self canPlayScheduledTapticChime])
      {
        [(AXTapticChimesScheduler *)self _previewChimes];
      }
    }
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&dword_23D6AA000, v7, OS_LOG_TYPE_DEFAULT, "Taptic Chimes disabled, will stop scheduling chimes", v9, 2u);
    }

    [(AXTapticChimesScheduler *)self _unregisterForNotifications];
    [(AXTapticChimesScheduler *)self _clearChimeTimer];
  }
}

- (BOOL)canPlayTapticChime
{
  v2 = AXIsBuddyCompleted();
  if ((v2 & 1) == 0)
  {
    v3 = AXLogTapticTime();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_23D6AA000, v3, OS_LOG_TYPE_INFO, "Buddy not yet complete! suppresing chime", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)processIsAllowedToScheduleChimes
{
  if ((AXProcessIsClockFace() & 1) == 0)
  {

    JUMPOUT(0x23EEE7B90);
  }

  return 1;
}

- (BOOL)canScheduleTapticChimes
{
  if (AXProcessIsClockFace() && _AXSVoiceOverTouchEnabled())
  {
    v3 = AXLogTapticTime();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_23D6AA000, v3, OS_LOG_TYPE_INFO, "ClockFace not scheduling chimes because VoiceOver is enabled", v7, 2u);
    }

    return 0;
  }

  if (![(AXTapticChimesScheduler *)self processIsAllowedToScheduleChimes])
  {
    return 0;
  }

  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  if ([mEMORY[0x277CE7E20] voiceOverTapticChimesEnabled])
  {
    canPlayTapticChime = [(AXTapticChimesScheduler *)self canPlayTapticChime];
  }

  else
  {
    canPlayTapticChime = 0;
  }

  return canPlayTapticChime;
}

- (BOOL)canPlayScheduledTapticChime
{
  if ([(AXTapticChimesScheduler *)self canScheduleTapticChimes])
  {
    if ([(AXTapticChimesScheduler *)self canPlayTapticChime])
    {
      return 1;
    }

    v4 = AXLogTapticTime();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "cannot play scheduled chime";
      v6 = &v7;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = AXLogTapticTime();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "cannot schedule chime";
      v6 = &v8;
LABEL_8:
      _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  return 0;
}

- (double)_preWakeTimeInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = 3.0;
  if (AXIsInternalInstall())
  {
    v3 = CFPreferencesCopyAppValue(@"TapticChimesPreWakeOverride", *MEMORY[0x277D81C18]);
    if (v3)
    {
      v4 = v3;
      valuePtr = 0.0;
      Value = CFNumberGetValue(v3, kCFNumberFloatType, &valuePtr);
      CFRelease(v4);
      if (Value)
      {
        v6 = AXLogTapticTime();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v11 = valuePtr;
          _os_log_impl(&dword_23D6AA000, v6, OS_LOG_TYPE_INFO, "Using PreWakeOverride value: %f", buf, 0xCu);
        }

        v2 = valuePtr;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (double)_prePlayAudioTimeInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = 0.0;
  if (AXIsInternalInstall())
  {
    v3 = CFPreferencesCopyAppValue(@"TapticChimesPrePlayAudioOverride", *MEMORY[0x277D81C18]);
    if (v3)
    {
      v4 = v3;
      valuePtr = 0.0;
      Value = CFNumberGetValue(v3, kCFNumberFloatType, &valuePtr);
      CFRelease(v4);
      if (Value)
      {
        v6 = AXLogTapticTime();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v11 = valuePtr;
          _os_log_impl(&dword_23D6AA000, v6, OS_LOG_TYPE_INFO, "Using PrePlayAudioOverride value: %f", buf, 0xCu);
        }

        v2 = valuePtr;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)_currentDate
{
  v16 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit.face");
  v2 = CFPreferencesCopyAppValue(@"NTKFacePreferencesTimeOffsetKey", @"com.apple.NanoTimeKit.face");
  [v2 floatValue];
  v4 = v3;

  v5 = 0.0;
  if (v4 > 0.0)
  {
    v5 = v4;
  }

  v6 = v5;
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:v6];

  v9 = AXLogTapticTime();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_23D6AA000, v9, OS_LOG_TYPE_INFO, "Using face display time for current date: %@, with time offset=%f", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_previewChimes
{
  _currentDate = [(AXTapticChimesScheduler *)self _currentDate];
  v3 = MEMORY[0x277CBEAA8];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 dateWithTimeInterval:date sinceDate:0.5];
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  voiceOverTapticChimesFrequencyEncoding = [mEMORY[0x277CE7E20] voiceOverTapticChimesFrequencyEncoding];
  v8 = +[AXTimeOutputPreferences sharedInstance];
  -[AXTapticChimesScheduler _previewChimesForStartDate:chimeDate:frequency:soundType:](self, "_previewChimesForStartDate:chimeDate:frequency:soundType:", _currentDate, v5, voiceOverTapticChimesFrequencyEncoding, [v8 voiceOverTapticChimesSoundType]);
}

- (void)_previewChimesForStartDate:(id)date chimeDate:(id)chimeDate frequency:(int64_t)frequency soundType:(int64_t)type
{
  dateCopy = date;
  chimeDateCopy = chimeDate;
  if ([(AXTapticChimesScheduler *)self canPlayTapticChime])
  {
    [(AXTapticChimesScheduler *)self _clearChimeTimer];
    v12 = AXLogTapticTime();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23D6AA000, v12, OS_LOG_TYPE_INFO, "Previewing chimes", buf, 2u);
    }

    v14 = 0;
    v13 = [(AXTapticChimesScheduler *)self nextChimeAssetForStartDate:dateCopy frequency:frequency soundType:type timeIntervalUntilChime:&v14];
    if (![(AXTapticChimesScheduler *)self _outputTapticChime:v13 atDate:chimeDateCopy isPreview:1])
    {
      [(AXTapticChimesScheduler *)self _scheduleChimeTimer];
    }
  }
}

- (void)_clearChimeTimer
{
  *v4 = 138412546;
  *&v4[4] = *self;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_23D6AA000, a2, a3, "failed to reset audio category (%@) due to: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleChimeTimer
{
  v33 = *MEMORY[0x277D85DE8];
  [(AXTapticChimesScheduler *)self _clearChimeTimer];
  if ([(AXTapticChimesScheduler *)self canScheduleTapticChimes])
  {
    v3 = AXLogTapticTime();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D6AA000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling chime timer", buf, 2u);
    }

    _currentDate = [(AXTapticChimesScheduler *)self _currentDate];
    v24 = 0.0;
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    voiceOverTapticChimesFrequencyEncoding = [mEMORY[0x277CE7E20] voiceOverTapticChimesFrequencyEncoding];
    v7 = +[AXTimeOutputPreferences sharedInstance];
    v8 = -[AXTapticChimesScheduler nextChimeAssetForStartDate:frequency:soundType:timeIntervalUntilChime:](self, "nextChimeAssetForStartDate:frequency:soundType:timeIntervalUntilChime:", _currentDate, voiceOverTapticChimesFrequencyEncoding, [v7 voiceOverTapticChimesSoundType], &v24);
    currentChimeAsset = self->_currentChimeAsset;
    self->_currentChimeAsset = v8;

    v10 = v24;
    [(AXTapticChimesScheduler *)self _preWakeTimeInterval];
    v12 = v10 - v11;
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v12];
    v14 = MEMORY[0x277CBEAA8];
    v15 = v24;
    [(AXTapticChimesScheduler *)self _prePlayAudioTimeInterval];
    v17 = [v14 dateWithTimeIntervalSinceNow:v15 - v16];
    objc_storeStrong(&self->_lastExpectedWakeTime, v13);
    objc_storeStrong(&self->_lastExpectedChimeTime, v17);
    v18 = AXLogTapticTime();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v26 = v13;
      v27 = 2048;
      v28 = v12;
      v29 = 2112;
      v30 = v17;
      v31 = 2048;
      v32 = v24;
      _os_log_impl(&dword_23D6AA000, v18, OS_LOG_TYPE_INFO, "Scheduling wake!! Wake time: %@ (%f seconds), Chime time: %@ (%f seconds)", buf, 0x2Au);
    }

    v19 = [objc_alloc(MEMORY[0x277D3A190]) initWithTimeInterval:self->_pcServiceIdentifier serviceIdentifier:self target:sel__chimeWakeTimerFired_ selector:0 userInfo:v12];
    chimeTimer = self->_chimeTimer;
    self->_chimeTimer = v19;

    [(PCSimpleTimer *)self->_chimeTimer setUserVisible:1];
    v21 = self->_chimeTimer;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(PCSimpleTimer *)v21 scheduleInRunLoop:mainRunLoop];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_chimeWakeTimerFired:(id)fired
{
  v19 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  date = [MEMORY[0x277CBEAA8] date];
  lastActualWakeTime = self->_lastActualWakeTime;
  self->_lastActualWakeTime = date;

  v7 = AXLogTapticTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = *&firedCopy;
    _os_log_impl(&dword_23D6AA000, v7, OS_LOG_TYPE_DEFAULT, "chime wake timer fired: %@", buf, 0xCu);
  }

  [(AXTapticChimesScheduler *)self _preWakeTimeInterval];
  v9 = [(AXTapticChimesScheduler *)self _createPowerAssertionWithName:@"chime-wake-fired" timeout:v8 + v8];
  if ([(AXTapticChimesScheduler *)self canPlayScheduledTapticChime]&& [(AXTapticChimesScheduler *)self _outputTapticChime:self->_currentChimeAsset atDate:self->_lastExpectedChimeTime])
  {
    [(AXTapticChimesScheduler *)self _releasePowerAssertionIfPossible:v9];
  }

  else
  {
    [(AXTapticChimesScheduler *)self _preWakeTimeInterval];
    v11 = v10;
    v12 = AXLogTapticTime();
    v13 = v11 + 0.5;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = v13;
      _os_log_impl(&dword_23D6AA000, v12, OS_LOG_TYPE_INFO, "scheduling NEXT chime in %f seconds", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    objc_copyWeak(&v15, buf);
    v16 = v9;
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__AXTapticChimesScheduler__chimeWakeTimerFired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleChimeTimer];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _releasePowerAssertionIfPossible:*(a1 + 40)];
}

- (unsigned)_createPowerAssertionWithName:(id)name timeout:(double)timeout
{
  v20[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v19[0] = @"AssertType";
  v19[1] = @"AssertName";
  AssertionID = 0;
  v19[2] = @"FrameworkBundleID";
  v19[3] = @"TimeoutAction";
  v20[2] = @"com.apple.AXTapToSpeakTime.TapticChimesScheduler";
  v20[3] = @"TimeoutActionRelease";
  v19[4] = @"TimeoutSeconds";
  v20[0] = @"PreventUserIdleSystemSleep";
  v20[1] = nameCopy;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:timeout + 2.0];
  v20[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  if (IOPMAssertionCreateWithProperties(v7, &AssertionID))
  {
    AssertionID = 0;
  }

  v8 = AXLogTapticTime();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v14 = nameCopy;
    v15 = 2048;
    timeoutCopy = timeout;
    v17 = 1024;
    v18 = AssertionID;
    _os_log_impl(&dword_23D6AA000, v8, OS_LOG_TYPE_INFO, "created power assertion with name: %@, timeout: %f, ID: %d", buf, 0x1Cu);
  }

  v9 = AssertionID;
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_releasePowerAssertionIfPossible:(unsigned int)possible
{
  v7 = *MEMORY[0x277D85DE8];
  if (possible)
  {
    v4 = AXLogTapticTime();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = possible;
      _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_INFO, "releasing power assertion with ID: %d", v6, 8u);
    }

    IOPMAssertionRelease(possible);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_outputTapticChime:(id)chime atDate:(id)date isPreview:(BOOL)preview
{
  previewCopy = preview;
  v65 = *MEMORY[0x277D85DE8];
  chimeCopy = chime;
  dateCopy = date;
  v10 = AXLogTapticTime();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D6AA000, v10, OS_LOG_TYPE_DEFAULT, "chime output start", buf, 2u);
  }

  if (![(AXTapticChimesScheduler *)self canPlayTapticChime])
  {
    v19 = AXLogTapticTime();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D6AA000, v19, OS_LOG_TYPE_DEFAULT, "cannot play chime output", buf, 2u);
    }

    goto LABEL_50;
  }

  v11 = [(AXTapticChimesScheduler *)self isAllowedToChimeAt:dateCopy];
  v12 = AXLogTapticTime();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v62 = chimeCopy;
    v63 = 2112;
    v64 = @"NO";
    _os_log_impl(&dword_23D6AA000, v12, OS_LOG_TYPE_INFO, "chime starting: %@, isRingerMuted=%@", buf, 0x16u);
  }

  if (!v11 && !previewCopy)
  {
    goto LABEL_32;
  }

  v13 = AXLogTapticTime();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23D6AA000, v13, OS_LOG_TYPE_INFO, "ringer NOT muted, setting up audio session", buf, 2u);
  }

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  volume = [chimeCopy volume];
  v17 = v16;
  if (MEMORY[0x23EEE7B90](volume))
  {
    v18 = AXLogTapticTime();
    v17 = 1.0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23D6AA000, v18, OS_LOG_TYPE_INFO, "Using VoiceOver's current audio session", buf, 2u);
    }
  }

  else
  {
    category = [mEMORY[0x277CB83F8] category];
    previousAudioSessionCategory = self->_previousAudioSessionCategory;
    self->_previousAudioSessionCategory = category;

    [(AXTapticChimesScheduler *)self _normalizeVolumeIfNecessary];
    v22 = *MEMORY[0x277CB8020];
    v60 = 0;
    v23 = [mEMORY[0x277CB83F8] setCategory:v22 error:&v60];
    v18 = v60;
    if ((v23 & 1) == 0)
    {
      v51 = AXLogTapticTime();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        [AXTapticChimesScheduler _outputTapticChime:v22 atDate:v18 isPreview:v51];
      }

      goto LABEL_49;
    }
  }

  v59 = 0;
  v24 = [mEMORY[0x277CB83F8] setActive:1 error:&v59];
  v18 = v59;
  if ((v24 & 1) == 0)
  {
    v22 = AXLogTapticTime();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimesScheduler _outputTapticChime:atDate:isPreview:];
    }

    goto LABEL_49;
  }

  v25 = objc_alloc(MEMORY[0x277CB83D0]);
  v26 = MEMORY[0x277CBEBC0];
  audioFilePath = [chimeCopy audioFilePath];
  v28 = [v26 URLWithString:audioFilePath];
  v29 = [v25 initWithContentsOfURL:v28 error:0];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = v29;

  [(AVAudioPlayer *)self->_audioPlayer setDelegate:self];
  *&v31 = v17;
  [(AVAudioPlayer *)self->_audioPlayer setVolume:v31];
  v32 = AXLogTapticTime();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    [dateCopy timeIntervalSinceNow];
    *buf = 134217984;
    v62 = v33;
    _os_log_impl(&dword_23D6AA000, v32, OS_LOG_TYPE_INFO, "[START] prewarming audio player: (%f seconds away)", buf, 0xCu);
  }

  prepareToPlay = [(AVAudioPlayer *)self->_audioPlayer prepareToPlay];
  v35 = AXLogTapticTime();
  v22 = v35;
  if (!prepareToPlay)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimesScheduler _outputTapticChime:atDate:isPreview:];
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    [dateCopy timeIntervalSinceNow];
    *buf = 134217984;
    v62 = v36;
    _os_log_impl(&dword_23D6AA000, v22, OS_LOG_TYPE_INFO, "[END] prewarming audio player: (%f seconds away)", buf, 0xCu);
  }

  [dateCopy timeIntervalSinceNow];
  if (v37 >= 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = AXLogTapticTime();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v62 = dateCopy;
    v63 = 2048;
    v64 = *&v38;
    _os_log_impl(&dword_23D6AA000, v39, OS_LOG_TYPE_INFO, "[START] schedule chime time: %@ (%f seconds away)", buf, 0x16u);
  }

  v40 = self->_audioPlayer;
  [(AVAudioPlayer *)v40 deviceCurrentTime];
  v42 = [(AVAudioPlayer *)v40 playAtTime:v38 + v41];
  v43 = AXLogTapticTime();
  v22 = v43;
  if (!v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimesScheduler _outputTapticChime:atDate:isPreview:];
    }

LABEL_49:

LABEL_50:
    v50 = 0;
    goto LABEL_51;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    [dateCopy timeIntervalSinceNow];
    *buf = 134217984;
    v62 = v44;
    _os_log_impl(&dword_23D6AA000, v22, OS_LOG_TYPE_INFO, "[END] schedule chime time: (%f seconds away)", buf, 0xCu);
  }

LABEL_32:
  [dateCopy timeIntervalSinceNow];
  if (v45 >= 0.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = AXLogTapticTime();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v62 = dateCopy;
    v63 = 2048;
    v64 = *&v46;
    _os_log_impl(&dword_23D6AA000, v47, OS_LOG_TYPE_INFO, "expected haptic time: %@ (%f seconds away)", buf, 0x16u);
  }

  *buf = [chimeCopy createSystemSoundIDForStartTime:v46];
  inPropertyData = 1;
  AudioServicesSetProperty(0x61637421u, 4u, buf, 4u, &inPropertyData);
  inCompletionBlock[0] = MEMORY[0x277D85DD0];
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = __63__AXTapticChimesScheduler__outputTapticChime_atDate_isPreview___block_invoke;
  inCompletionBlock[3] = &unk_278BDFE38;
  v56 = *buf;
  v57 = 0;
  inCompletionBlock[4] = self;
  AudioServicesPlaySystemSoundWithCompletion(*buf, inCompletionBlock);
  v48 = AXLogTapticTime();
  if (os_signpost_enabled(v48))
  {
    v54 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D6AA000, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TapticChime-Output", &unk_23D6B4DDB, &v54, 2u);
  }

  kdebug_trace();
  objc_storeStrong(&self->_lastActualChimeTime, date);
  [(AXTapticChimesScheduler *)self _preWakeTimeInterval];
  self->_audioPlaybackPowerAssertionID = [(AXTapticChimesScheduler *)self _createPowerAssertionWithName:@"chime-playback" timeout:v49 + v49];
  v50 = 1;
LABEL_51:

  v52 = *MEMORY[0x277D85DE8];
  return v50;
}

void __63__AXTapticChimesScheduler__outputTapticChime_atDate_isPreview___block_invoke(uint64_t a1)
{
  inPropertyData = 0;
  AudioServicesSetProperty(0x61637421u, 4u, (a1 + 40), 4u, &inPropertyData);
  AudioServicesDisposeSystemSoundID(*(a1 + 40));
  v2 = AXLogTapticTime();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D6AA000, v2, OS_LOG_TYPE_DEFAULT, "chimes haptics completed", buf, 2u);
  }

  if (*(a1 + 44) == 1)
  {
    v3 = *(a1 + 32);
    AXPerformBlockOnMainThread();
  }
}

uint64_t __63__AXTapticChimesScheduler__outputTapticChime_atDate_isPreview___block_invoke_370(uint64_t a1)
{
  v2 = AXLogTapticTime();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23D6AA000, v2, OS_LOG_TYPE_DEFAULT, "ringer IS muted, not waiting for audio player callback", v4, 2u);
  }

  return [*(a1 + 32) _chimeDidFinishPlaying];
}

- (id)nextChimeAssetForStartDate:(id)date frequency:(int64_t)frequency soundType:(int64_t)type timeIntervalUntilChime:(double *)chime
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ((frequency - 2) > 2)
  {
    v10 = 3600.0;
  }

  else
  {
    v10 = dbl_23D6B3D68[frequency - 2];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar components:60 fromDate:dateCopy];
  v13 = [currentCalendar dateFromComponents:v12];
  v14 = AXLogTapticTime();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v13;
    _os_log_impl(&dword_23D6AA000, v14, OS_LOG_TYPE_DEFAULT, "starting hour date: %@", &v30, 0xCu);
  }

  v15 = [v13 dateByAddingTimeInterval:v10];
  [v15 timeIntervalSinceDate:dateCopy];
  if (v16 <= 0.0)
  {
    do
    {
      v17 = [v15 dateByAddingTimeInterval:v10];

      [v17 timeIntervalSinceDate:dateCopy];
      v15 = v17;
    }

    while (v18 <= 0.0);
  }

  else
  {
    v17 = v15;
  }

  v19 = AXLogTapticTime();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v17 timeIntervalSinceDate:dateCopy];
    v30 = 134218240;
    v31 = v20;
    v32 = 2048;
    v33 = v10;
    _os_log_impl(&dword_23D6AA000, v19, OS_LOG_TYPE_DEFAULT, "start date to chime date interval: %f seconds (next interval: %f seconds)", &v30, 0x16u);
  }

  v21 = [currentCalendar components:96 fromDate:v17];
  hour = [v21 hour];
  if ([v21 minute])
  {
    [AXTapticChimeAsset quarterHourAssetForType:type minute:?];
  }

  else
  {
    [AXTapticChimeAsset hourAssetForType:type hour:hour];
  }
  v23 = ;
  [v17 timeIntervalSinceDate:dateCopy];
  v25 = v24;
  [v23 prePlayTimeInterval];
  *chime = v25 - v26;
  v27 = AXLogTapticTime();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v30 = 138412546;
    v31 = v23;
    v32 = 2112;
    v33 = *&v17;
    _os_log_impl(&dword_23D6AA000, v27, OS_LOG_TYPE_INFO, "chimeAsset: %@, for chime date: %@", &v30, 0x16u);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_chimeDidFinishPlaying
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v13 = *MEMORY[0x277D85DE8];
  v6 = AXLogTapticTime();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (successfullyCopy)
    {
      v7 = @"YES";
    }

    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_23D6AA000, v6, OS_LOG_TYPE_INFO, "audioPlayerDidFinishPlaying: successfully: %@", &v11, 0xCu);
  }

  if (!successfullyCopy)
  {
    v8 = AXLogTapticTime();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimesScheduler audioPlayerDidFinishPlaying:successfully:];
    }
  }

  [(AXTapticChimesScheduler *)self _chimeDidFinishPlaying];
  if (AXIsInternalInstall())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXChimesFinishedPlaying", 0, 0, 1u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAllowedToChimeAt:(id)at
{
  v37[3] = *MEMORY[0x277D85DE8];
  atCopy = at;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  voiceOverTapticChimesScheduleEnabled = [mEMORY[0x277CE7E20] voiceOverTapticChimesScheduleEnabled];

  if (voiceOverTapticChimesScheduleEnabled)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA80]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [v7 setTimeZone:v8];

    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    voiceOverTapticChimesScheduleDateStart = [mEMORY[0x277CE7E20]2 voiceOverTapticChimesScheduleDateStart];
    v11 = [v7 components:96 fromDate:voiceOverTapticChimesScheduleDateStart];

    mEMORY[0x277CE7E20]3 = [MEMORY[0x277CE7E20] sharedInstance];
    voiceOverTapticChimesScheduleDateEnd = [mEMORY[0x277CE7E20]3 voiceOverTapticChimesScheduleDateEnd];
    v34 = v7;
    v14 = [v7 components:96 fromDate:voiceOverTapticChimesScheduleDateEnd];

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v35 = atCopy;
    v16 = [currentCalendar components:96 fromDate:atCopy];

    v37[0] = v11;
    v37[1] = v14;
    v37[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    v18 = [v17 mutableCopy];

    [v18 sortUsingComparator:&__block_literal_global_398];
    v19 = [v18 indexOfObject:v11];
    v33 = v14;
    v20 = [v18 indexOfObject:v14];
    LODWORD(v14) = 3600 * [v16 hour];
    minute = [v16 minute];
    second = [v16 second];
    hour = [v11 hour];
    v24 = v14 + 60 * minute + second - 3600 * hour - 60 * [v11 minute];
    if (v24 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = -v24;
    }

    v26 = [v18 indexOfObject:v16];
    if (v19 >= v20)
    {
      if (v26 != 1)
      {
        v27 = AXLogTapticTime();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v28 = "Starting time is after ending time and current time is in scheduled interval. Can play chimes";
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    else if (v26 == 1)
    {
      v27 = AXLogTapticTime();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v28 = "Starting time is before ending time and current time is in scheduled interval. Can play chimes";
LABEL_16:
        _os_log_impl(&dword_23D6AA000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v27 = AXLogTapticTime();
    v30 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v25 > 0xF)
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_23D6AA000, v27, OS_LOG_TYPE_DEFAULT, "Current time is not in scheduled interval. Should not play chimes", buf, 2u);
      }

      v29 = 0;
      goto LABEL_21;
    }

    if (v30)
    {
      *buf = 0;
      v28 = "Current time falls on schedule boundary. Can play chimes";
      goto LABEL_16;
    }

LABEL_17:
    v29 = 1;
LABEL_21:

    atCopy = v35;
    goto LABEL_22;
  }

  v29 = 1;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __46__AXTapticChimesScheduler_isAllowedToChimeAt___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hour];
  if (v6 > [v5 hour])
  {
    goto LABEL_2;
  }

  v8 = [v4 hour];
  if (v8 < [v5 hour])
  {
    v7 = -1;
    goto LABEL_9;
  }

  v9 = [v4 minute];
  if (v9 > [v5 minute])
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v10 = [v4 minute];
    if (v10 >= [v5 minute])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

- (void)_outputTapticChime:(uint64_t)a1 atDate:(uint64_t)a2 isPreview:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_23D6AA000, a2, a3, "failed to set audio session category (%@) due to: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_outputTapticChime:atDate:isPreview:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_outputTapticChime:atDate:isPreview:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_outputTapticChime:atDate:isPreview:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)audioPlayerDidFinishPlaying:successfully:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end