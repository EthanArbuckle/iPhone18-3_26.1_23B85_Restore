@interface AXTapticTimeManager
+ (id)sharedInstance;
- (AXTapticTimeManager)init;
- (BOOL)_preStartCheck;
- (BOOL)_startPowerAssertion;
- (id)_atomToLegacyVibePattern:(id)a3;
- (id)_convertSoundToStringName:(unsigned int)a3;
- (id)_dateComponentsForClockTime;
- (int64_t)_numberOfTapHoursForClockTimeWithEncoding:(int64_t)a3;
- (int64_t)_numberOfTapMinutesForClockTime;
- (int64_t)_numberOfTapsForHourNumber:(int64_t)a3 withEncoding:(int64_t)a4;
- (void)_cleanupHapticsDict;
- (void)_clearQueue;
- (void)_dequeueSound;
- (void)_enqueueHours:(unint64_t)a3 encoding:(int64_t)a4;
- (void)_enqueueMinutes:(unint64_t)a3 encoding:(int64_t)a4;
- (void)_handleTestingQueueCallback;
- (void)_informObserversDidOutputSSID:(int64_t)a3;
- (void)_informObserversDidStart;
- (void)_informObserversDidStop;
- (void)_informObserversWillOutputSSID:(int64_t)a3 hapticsDescriptions:(id)a4;
- (void)_outputWithEnqueueBlock:(id)a3;
- (void)_stopPowerAssertion;
- (void)_updateHapticPatternsIfNecessary:(BOOL)a3;
- (void)_updateIs24HourTime;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)outputHours:(int64_t)a3;
- (void)outputHoursAndMinutes:(int64_t)a3;
- (void)outputMinutes:(int64_t)a3;
- (void)removeObserver:(id)a3;
- (void)setLocaleOverride:(id)a3;
- (void)stopCurrentOutput;
@end

@implementation AXTapticTimeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[AXTapticTimeManager sharedInstance];
  }

  v3 = sharedInstance__sHapticOutputShared;

  return v3;
}

uint64_t __37__AXTapticTimeManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXTapticTimeManager);
  v1 = sharedInstance__sHapticOutputShared;
  sharedInstance__sHapticOutputShared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (AXTapticTimeManager)init
{
  v18.receiver = self;
  v18.super_class = AXTapticTimeManager;
  v2 = [(AXTapticTimeManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    [(AXTapticTimeManager *)v2 setAssertionID:0];
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    enqueuedSounds = v3->_enqueuedSounds;
    v3->_enqueuedSounds = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    enqueuedSoundDelays = v3->_enqueuedSoundDelays;
    v3->_enqueuedSoundDelays = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    soundToPatterns = v3->_soundToPatterns;
    v3->_soundToPatterns = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hapticsDescriptions = v3->_hapticsDescriptions;
    v3->_hapticsDescriptions = v12;

    [(AXTapticTimeManager *)v3 _updateHapticPatternsIfNecessary:0];
    [(AXTapticTimeManager *)v3 _updateIs24HourTime];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v3 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v15 = _os_activity_create(&dword_18B15E000, "Taptic Time", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DETACHED);
    activity = v3->_activity;
    v3->_activity = v15;
  }

  return v3;
}

- (void)_updateHapticPatternsIfNecessary:(BOOL)a3
{
  v3 = a3;
  v100[4] = *MEMORY[0x1E69E9840];
  cachedSpeed = self->_cachedSpeed;
  if (!cachedSpeed || (-[NSNumber floatValue](cachedSpeed, "floatValue"), v6 = v5, +[AXSettings sharedInstance](AXSettings, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 voiceOverTapticTimeSpeed], v9 = vabdd_f64(v6, v8), v7, v9 >= 2.22044605e-16))
  {
    if (v3)
    {
      [(AXTapticTimeManager *)self _cleanupHapticsDict];
    }

    v10 = MEMORY[0x1E696AD98];
    v11 = +[AXSettings sharedInstance];
    [v11 voiceOverTapticTimeSpeed];
    v12 = [v10 numberWithFloat:?];
    v13 = self->_cachedSpeed;
    self->_cachedSpeed = v12;

    [(NSMutableDictionary *)self->_soundToPatterns removeAllObjects];
    [(NSNumber *)self->_cachedSpeed floatValue];
    v15 = v14;
    v16 = 0.12 / v14;
    *&v16 = v16;
    v99[0] = @"Amplitude";
    v99[1] = @"StartTime";
    v100[0] = &unk_1EFE97620;
    v100[1] = &unk_1EFE97630;
    v100[2] = @"BoostSineBrake";
    v99[2] = @"Type";
    v99[3] = @"Duration";
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v100[3] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];

    v97[0] = @"Amplitude";
    v97[1] = @"StartTime";
    v98[0] = &unk_1EFE97640;
    v98[1] = &unk_1EFE97630;
    v98[2] = @"BoostSineBrake";
    v97[2] = @"Type";
    v97[3] = @"Duration";
    v20 = 0x1E696A000uLL;
    v17 = 0.37 / v15;
    *&v21 = v17;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v98[3] = v22;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:4];

    v23 = 0.35 / v15;
    v24 = 0.65 / v15;
    v25 = [MEMORY[0x1E695E0F0] mutableCopy];
    v26 = *MEMORY[0x1E695A8A8];
    v27 = v23;
    v28 = 0.0;
    v29 = 32;
    v78 = *MEMORY[0x1E695A8A8];
    do
    {
      v30 = [v19 mutableCopy];
      v31 = [*(v20 + 3480) numberWithDouble:v28];
      [v30 setObject:v31 forKey:@"StartTime"];

      [v25 addObject:v30];
      v95[0] = @"Amplitude";
      v95[1] = @"Atoms";
      v96[0] = &unk_1EFE97620;
      v96[1] = v25;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
      v93 = v26;
      v94 = v32;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      AudioServicesCreateSystemSoundIDWithOptions();
      v33 = [v25 copy];
      hapticsDescriptions = self->_hapticsDescriptions;
      v35 = [*(v20 + 3480) numberWithUnsignedInt:*(&self->super.isa + v29)];
      [(NSMutableDictionary *)hapticsDescriptions setObject:v33 forKeyedSubscript:v35];

      soundToPatterns = self->_soundToPatterns;
      v91[0] = @"Intensity";
      v91[1] = @"VibePattern";
      v92[0] = &unk_1EFE97620;
      v37 = [(AXTapticTimeManager *)self _atomToLegacyVibePattern:v25];
      v92[1] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
      v39 = [*(v20 + 3480) numberWithUnsignedInt:*(&self->super.isa + v29)];
      [(NSMutableDictionary *)soundToPatterns setObject:v38 forKey:v39];

      v20 = 0x1E696A000;
      v26 = v78;

      v28 = v28 + v27;
      v29 += 4;
    }

    while (v29 != 128);
    [v25 removeAllObjects];
    v40 = v24;
    v41 = v40;
    v42 = 0.0;
    do
    {
      v43 = [v77 mutableCopy];
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      [v43 setObject:v44 forKey:@"StartTime"];

      [v25 addObject:v43];
      v89[0] = @"Amplitude";
      v89[1] = @"Atoms";
      v90[0] = &unk_1EFE97620;
      v90[1] = v25;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
      v87 = v78;
      v88 = v45;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      AudioServicesCreateSystemSoundIDWithOptions();
      v46 = [v25 copy];
      v47 = self->_hapticsDescriptions;
      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.isa + v29)];
      [(NSMutableDictionary *)v47 setObject:v46 forKeyedSubscript:v48];

      v49 = self->_soundToPatterns;
      v85[0] = @"Intensity";
      v85[1] = @"VibePattern";
      v86[0] = &unk_1EFE97620;
      v50 = [(AXTapticTimeManager *)self _atomToLegacyVibePattern:v25];
      v86[1] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->super.isa + v29)];
      [(NSMutableDictionary *)v49 setObject:v51 forKey:v52];

      v42 = v42 + v41;
      v29 += 4;
    }

    while (v29 != 224);
    v53 = 0;
    ssIDHapticMorse = self->_ssIDHapticMorse;
    do
    {
      [v25 removeAllObjects];
      v54 = 0;
      v55 = 0.0;
      v56 = v25;
      do
      {
        [&unk_1EFE97288 objectAtIndex:v53];
        v58 = v57 = v53;
        v59 = [v58 substringWithRange:{v54, 1}];

        v60 = [v59 isEqualToString:@"-"];
        v61 = v60 == 0;
        if (v60)
        {
          v62 = v77;
        }

        else
        {
          v62 = v19;
        }

        if (v61)
        {
          v63 = 0.3;
        }

        else
        {
          v63 = 0.5;
        }

        v64 = [v62 mutableCopy];
        v65 = [MEMORY[0x1E696AD98] numberWithDouble:v55];
        [v64 setObject:v65 forKey:@"StartTime"];

        [v56 addObject:v64];
        v53 = v57;
        ++v54;
        v55 = v55 + v63;
      }

      while (v54 != 5);
      v83[0] = @"Amplitude";
      v83[1] = @"Atoms";
      v84[0] = &unk_1EFE97620;
      v84[1] = v56;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
      v81 = v78;
      v82 = v76;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v66 = &ssIDHapticMorse[v57];
      AudioServicesCreateSystemSoundIDWithOptions();
      v67 = [v56 copy];
      v68 = self->_hapticsDescriptions;
      v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v66];
      [(NSMutableDictionary *)v68 setObject:v67 forKeyedSubscript:v69];

      v70 = self->_soundToPatterns;
      v79[0] = @"Intensity";
      v79[1] = @"VibePattern";
      v80[0] = &unk_1EFE97620;
      v71 = [(AXTapticTimeManager *)self _atomToLegacyVibePattern:v56];
      v80[1] = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v66];
      [(NSMutableDictionary *)v70 setObject:v72 forKey:v73];

      v53 = v57 + 1;
      v61 = v57 == 9;
      v25 = v56;
    }

    while (!v61);
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_informObserversDidStart
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AXLogTapticTime();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "taptic time did start", buf, 2u);
  }

  os_activity_scope_enter(self->_activity, &self->_scopeState);
  self->_isCurrentlyOutputting = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 tapticTimeManagerDidBegin:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_informObserversDidStop
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AXLogTapticTime();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "taptic time did stop", buf, 2u);
  }

  os_activity_scope_leave(&self->_scopeState);
  self->_isCurrentlyOutputting = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 tapticTimeManagerDidComplete:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_informObserversWillOutputSSID:(int64_t)a3 hapticsDescriptions:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AXLogTapticTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "will output ssid: %zd, hapticsDescriptions: %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 tapticTimeManager:self willOutputSSID:a3 hapticsDescriptions:{v6, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_informObserversDidOutputSSID:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = AXLogTapticTime();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "did output ssid: %zd", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 tapticTimeManager:self didOutputSSID:{a3, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_cleanupHapticsDict
{
  ssIDHapticSlow = self->_ssIDHapticSlow;
  v4 = 24;
  do
  {
    AudioServicesDisposeSystemSoundID(*(ssIDHapticSlow - 24));
    v5 = *ssIDHapticSlow++;
    AudioServicesDisposeSystemSoundID(v5);
    --v4;
  }

  while (v4);
  for (i = 0; i != 10; ++i)
  {
    AudioServicesDisposeSystemSoundID(self->_ssIDHapticMorse[i]);
  }

  hapticsDescriptions = self->_hapticsDescriptions;

  [(NSMutableDictionary *)hapticsDescriptions removeAllObjects];
}

- (void)dealloc
{
  [(AXTapticTimeManager *)self _cleanupHapticsDict];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXTapticTimeManager;
  [(AXTapticTimeManager *)&v4 dealloc];
}

- (id)_atomToLegacyVibePattern:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = 0.0;
    v9 = MEMORY[0x1E695E118];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"StartTime"];
        [v12 doubleValue];
        v14 = v13;

        if (v14 > 0.0)
        {
          [v4 addObject:MEMORY[0x1E695E110]];
          v15 = [MEMORY[0x1E696AD98] numberWithDouble:(v14 - v8) * 1000.0];
          [v4 addObject:v15];
        }

        v16 = [v11 objectForKey:@"Duration"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v11 objectForKey:@"Type"];
        LODWORD(v16) = [v19 isEqualToString:@"Tap"];

        [v4 addObject:v9];
        if (v16)
        {
          [v4 addObject:&unk_1EFE96B80];
        }

        else
        {
          v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18 * 1000.0];
          [v4 addObject:v20];
        }

        v8 = v14;
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)setLocaleOverride:(id)a3
{
  objc_storeStrong(&self->_localeOverride, a3);

  [(AXTapticTimeManager *)self _localeDidChange:0];
}

- (void)_updateIs24HourTime
{
  v3 = MEMORY[0x1E696AB78];
  v4 = [(AXTapticTimeManager *)self localeOverride];
  if (v4)
  {
    v7 = [v3 dateFormatFromTemplate:@"jj:mm" options:0 locale:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v7 = [v3 dateFormatFromTemplate:@"jj:mm" options:0 locale:v5];
  }

  v6 = [v7 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;
  self->_is24Hour = v6;
}

- (int64_t)_numberOfTapsForHourNumber:(int64_t)a3 withEncoding:(int64_t)a4
{
  v6 = [(AXTapticTimeManager *)self _is24HourTime];
  v7 = 12;
  v8 = a3 % 12;
  v9 = 24;
  if (a4 == 3)
  {
    v9 = 0;
  }

  if (v6)
  {
    v8 = a3;
    v7 = v9;
  }

  if (v8)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)_dateComponentsForClockTime
{
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(AXTapticTimeManager *)self dateOverride];

  if (v5)
  {
    v6 = [(AXTapticTimeManager *)self dateOverride];

    v4 = v6;
  }

  v7 = [v3 components:96 fromDate:v4];

  return v7;
}

- (int64_t)_numberOfTapHoursForClockTimeWithEncoding:(int64_t)a3
{
  v5 = [(AXTapticTimeManager *)self _dateComponentsForClockTime];
  v6 = -[AXTapticTimeManager _numberOfTapsForHourNumber:withEncoding:](self, "_numberOfTapsForHourNumber:withEncoding:", [v5 hour], a3);

  return v6;
}

- (int64_t)_numberOfTapMinutesForClockTime
{
  v2 = [(AXTapticTimeManager *)self _dateComponentsForClockTime];
  v3 = [v2 minute];

  return v3;
}

- (void)_clearQueue
{
  [(NSMutableArray *)self->_enqueuedSounds removeAllObjects];
  enqueuedSoundDelays = self->_enqueuedSoundDelays;

  [(NSMutableArray *)enqueuedSoundDelays removeAllObjects];
}

- (BOOL)_preStartCheck
{
  if ([(AXTapticTimeManager *)self isCurrentlyOutputting]|| ![(AXTapticTimeManager *)self _startPowerAssertion])
  {
    return 0;
  }

  v3 = 1;
  [(AXTapticTimeManager *)self _updateHapticPatternsIfNecessary:1];
  self->_currentSsid = 0x7FFFFFFFFFFFFFFFLL;
  return v3;
}

- (BOOL)_startPowerAssertion
{
  [(AXTapticTimeManager *)self _stopPowerAssertion];
  if (_startPowerAssertion_onceToken != -1)
  {
    [AXTapticTimeManager _startPowerAssertion];
  }

  v3 = IOPMAssertionCreateWithProperties(_startPowerAssertion_PMAssertionProperties, &self->_assertionID);
  if (v3)
  {
    [(AXTapticTimeManager *)self setAssertionID:0];
  }

  return v3 == 0;
}

void __43__AXTapticTimeManager__startPowerAssertion__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"AssertType";
  v2[1] = @"AssertName";
  v3[0] = @"PreventUserIdleSystemSleep";
  v3[1] = @"Outputting taptic time";
  v2[2] = @"FrameworkBundleID";
  v2[3] = @"TimeoutAction";
  v3[2] = @"com.apple.AccessibilityUtilities";
  v3[3] = @"TimeoutActionRelease";
  v2[4] = @"TimeoutSeconds";
  v3[4] = &unk_1EFE96B98;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _startPowerAssertion_PMAssertionProperties;
  _startPowerAssertion_PMAssertionProperties = v0;
}

- (void)_stopPowerAssertion
{
  if ([(AXTapticTimeManager *)self assertionID])
  {
    IOPMAssertionRelease([(AXTapticTimeManager *)self assertionID]);

    [(AXTapticTimeManager *)self setAssertionID:0];
  }
}

- (void)_outputWithEnqueueBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__AXTapticTimeManager__outputWithEnqueueBlock___block_invoke;
    v6[3] = &unk_1E71EA228;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

uint64_t __47__AXTapticTimeManager__outputWithEnqueueBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearQueue];
  result = [*(a1 + 32) _preStartCheck];
  if (result)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _handleTestingQueueCallback];
    [*(a1 + 32) _informObserversDidStart];
    v3 = *(a1 + 32);

    return [v3 _dequeueSound];
  }

  return result;
}

- (void)outputHoursAndMinutes:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__AXTapticTimeManager_outputHoursAndMinutes___block_invoke;
  v3[3] = &unk_1E71EAF98;
  v3[4] = self;
  v3[5] = a3;
  [(AXTapticTimeManager *)self _outputWithEnqueueBlock:v3];
}

uint64_t __45__AXTapticTimeManager_outputHoursAndMinutes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _enqueueHours:objc_msgSend(*(a1 + 32) encoding:{"_numberOfTapHoursForClockTimeWithEncoding:", *(a1 + 40)), *(a1 + 40)}];
  v2 = *(a1 + 32);
  v3 = [v2 _numberOfTapMinutesForClockTime];
  v4 = *(a1 + 40);

  return [v2 _enqueueMinutes:v3 encoding:v4];
}

- (void)outputHours:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__AXTapticTimeManager_outputHours___block_invoke;
  v3[3] = &unk_1E71EAF98;
  v3[4] = self;
  v3[5] = a3;
  [(AXTapticTimeManager *)self _outputWithEnqueueBlock:v3];
}

uint64_t __35__AXTapticTimeManager_outputHours___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _numberOfTapHoursForClockTimeWithEncoding:*(a1 + 40)];
  v4 = *(a1 + 40);

  return [v2 _enqueueHours:v3 encoding:v4];
}

- (void)outputMinutes:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__AXTapticTimeManager_outputMinutes___block_invoke;
  v3[3] = &unk_1E71EAF98;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __37__AXTapticTimeManager_outputMinutes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearQueue];
  result = [*(a1 + 32) _preStartCheck];
  if (result)
  {
    [*(a1 + 32) _enqueueMinutes:objc_msgSend(*(a1 + 32) encoding:{"_numberOfTapMinutesForClockTime"), *(a1 + 40)}];
    [*(a1 + 32) _handleTestingQueueCallback];
    [*(a1 + 32) _informObserversDidStart];
    v3 = *(a1 + 32);

    return [v3 _dequeueSound];
  }

  return result;
}

- (void)stopCurrentOutput
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXTapticTimeManager_stopCurrentOutput__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __40__AXTapticTimeManager_stopCurrentOutput__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearQueue];
  result = *(*(a1 + 32) + 296);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {

    return MEMORY[0x1EEDB43B0]();
  }

  return result;
}

- (void)_enqueueMinutes:(unint64_t)a3 encoding:(int64_t)a4
{
  [(NSNumber *)self->_cachedSpeed floatValue];
  v8 = v7;
  v9 = v7;
  if ([(NSMutableArray *)self->_enqueuedSounds count])
  {
    v10 = (1.5 / v8);
  }

  else
  {
    v10 = 0.0;
  }

  if (a4 != 1)
  {
    if (a4 != 3)
    {
      if (a4 != 2 || a3 < 0xF)
      {
        return;
      }

      v11 = a3;
      enqueuedSounds = self->_enqueuedSounds;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticFast[v11 / 0xF + 23]];
      [(NSMutableArray *)enqueuedSounds addObject:v13];

      enqueuedSoundDelays = self->_enqueuedSoundDelays;
      v15 = MEMORY[0x1E696AD98];
      v16 = v10;
      goto LABEL_15;
    }

    v17 = 0.9 / v9;
    v18 = a3 / 0xA;
    v19 = a3 % 0xA;
    v20 = self->_enqueuedSounds;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticMorse[v18]];
    [(NSMutableArray *)v20 addObject:v21];

    v22 = self->_enqueuedSoundDelays;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [(NSMutableArray *)v22 addObject:v23];

    v24 = self->_enqueuedSounds;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticMorse[v19]];
    [(NSMutableArray *)v24 addObject:v25];

    enqueuedSoundDelays = self->_enqueuedSoundDelays;
    v15 = MEMORY[0x1E696AD98];
    goto LABEL_17;
  }

  v27 = a3 % 0xA;
  if (a3 >= 0xA)
  {
    v28 = self->_enqueuedSounds;
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticFast[a3 / 0xA + 23]];
    [(NSMutableArray *)v28 addObject:v29];

    v30 = self->_enqueuedSoundDelays;
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [(NSMutableArray *)v30 addObject:v31];
  }

  if (v27 >= 1)
  {
    v17 = 0.8 / v9;
    v32 = self->_enqueuedSounds;
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->_observers + v27 + 1)];
    [(NSMutableArray *)v32 addObject:v33];

    enqueuedSoundDelays = self->_enqueuedSoundDelays;
    v15 = MEMORY[0x1E696AD98];
    if (a3 < 0xA)
    {
      v16 = v10 + v17;
LABEL_15:
      v34 = [v15 numberWithDouble:v16];
LABEL_18:
      v35 = v34;
      [(NSMutableArray *)enqueuedSoundDelays addObject:?];

      return;
    }

LABEL_17:
    *&v26 = v17;
    v34 = [v15 numberWithFloat:v26];
    goto LABEL_18;
  }
}

- (void)_enqueueHours:(unint64_t)a3 encoding:(int64_t)a4
{
  [(NSNumber *)self->_cachedSpeed floatValue];
  v8 = v7;
  v9 = 0.8 / v7;
  v10 = [(NSMutableArray *)self->_enqueuedSounds count];
  if (a4 != 1)
  {
    if (a4 != 3)
    {
      if (a4 != 2)
      {
        return;
      }

      v11 = a3 / 5;
      v12 = a3 % 5;
      if (a3 > 4)
      {
        enqueuedSounds = self->_enqueuedSounds;
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticFast[v11 + 23]];
        [(NSMutableArray *)enqueuedSounds addObject:v33];

        [(NSMutableArray *)self->_enqueuedSoundDelays addObject:&unk_1EFE97630];
        if (!v12)
        {
          return;
        }

        enqueuedSoundDelays = self->_enqueuedSoundDelays;
        *&v34 = v9;
        v36 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
        [(NSMutableArray *)enqueuedSoundDelays addObject:v36];
      }

      else
      {
        if (!v12)
        {
          return;
        }

        [(NSMutableArray *)self->_enqueuedSoundDelays addObject:&unk_1EFE97630];
      }

      v37 = self->_enqueuedSounds;
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&self->_observers + v12 + 1)];
      v31 = v37;
      goto LABEL_19;
    }

    if (v10)
    {
      v13 = (1.5 / v8);
    }

    else
    {
      v13 = 0.0;
    }

    v14 = a3 / 0xA;
    v15 = a3 % 0xA;
    v16 = self->_enqueuedSounds;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticMorse[v14]];
    [(NSMutableArray *)v16 addObject:v17];

    v18 = self->_enqueuedSoundDelays;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [(NSMutableArray *)v18 addObject:v19];

    v20 = self->_enqueuedSounds;
    v21 = MEMORY[0x1E696AD98];
    v22 = self->_ssIDHapticMorse[v15];
LABEL_15:
    v27 = [v21 numberWithUnsignedInt:v22];
    [(NSMutableArray *)v20 addObject:v27];

    v28 = self->_enqueuedSoundDelays;
    *&v29 = v9;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    v31 = v28;
LABEL_19:
    v38 = v30;
    [(NSMutableArray *)v31 addObject:?];

    return;
  }

  v23 = a3 / 0xA;
  v24 = a3 % 0xA;
  if (a3 >= 0xA)
  {
    v25 = self->_enqueuedSounds;
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ssIDHapticFast[v23 + 23]];
    [(NSMutableArray *)v25 addObject:v26];

    [(NSMutableArray *)self->_enqueuedSoundDelays addObject:&unk_1EFE97630];
  }

  if (v24 >= 1)
  {
    v20 = self->_enqueuedSounds;
    v21 = MEMORY[0x1E696AD98];
    v22 = *(&self->_observers + v24 + 1);
    goto LABEL_15;
  }
}

- (id)_convertSoundToStringName:(unsigned int)a3
{
  ssIDHapticSlow = self->_ssIDHapticSlow;
  v4 = -24;
  do
  {
    if (*ssIDHapticSlow == a3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"slow_%d", v4 + 25];
      goto LABEL_13;
    }

    if (*(ssIDHapticSlow - 24) == a3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"fast_%d", v4 + 25];
      goto LABEL_13;
    }

    ++ssIDHapticSlow;
  }

  while (!__CFADD__(v4++, 1));
  v6 = 0;
  while (self->_ssIDHapticMorse[v6] != a3)
  {
    if (++v6 == 10)
    {
      v7 = 0;
      goto LABEL_14;
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"morse_%d", v6];
  v7 = LABEL_13:;
LABEL_14:

  return v7;
}

- (void)_handleTestingQueueCallback
{
  v3 = [(AXTapticTimeManager *)self testingQueueCallback];

  if (v3)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v4 = [(NSMutableArray *)self->_enqueuedSounds count];
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSMutableArray *)self->_enqueuedSounds objectAtIndex:i];
        v8 = [(NSMutableArray *)self->_enqueuedSoundDelays objectAtIndex:i];
        [v8 doubleValue];
        v10 = v9;

        v11 = objc_alloc_init(AXTapticSoundTestingContainer);
        v12 = -[AXTapticTimeManager _convertSoundToStringName:](self, "_convertSoundToStringName:", [v7 intValue]);
        [(AXTapticSoundTestingContainer *)v11 setSound:v12];

        [(AXTapticSoundTestingContainer *)v11 setDelay:v10];
        [v14 addObject:v11];
      }
    }

    v13 = [(AXTapticTimeManager *)self testingQueueCallback];
    (v13)[2](v13, v14);
  }
}

- (void)_dequeueSound
{
  if ([(NSMutableArray *)self->_enqueuedSounds count])
  {
    v3 = [(NSMutableArray *)self->_enqueuedSounds firstObject];
    v4 = [v3 integerValue];
    self->_currentSsid = v4;
    [(NSMutableArray *)self->_enqueuedSounds removeObjectAtIndex:0];
    v5 = [(NSMutableArray *)self->_enqueuedSoundDelays objectAtIndex:0];
    [v5 doubleValue];
    v7 = v6;

    [(NSMutableArray *)self->_enqueuedSoundDelays removeObjectAtIndex:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__AXTapticTimeManager__dequeueSound__block_invoke;
    aBlock[3] = &unk_1E71EAF98;
    aBlock[4] = self;
    aBlock[5] = v4;
    v8 = _Block_copy(aBlock);
    v9 = dispatch_time(0, (v7 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__AXTapticTimeManager__dequeueSound__block_invoke_2;
    block[3] = &unk_1E71EC6C0;
    v12 = v8;
    v13 = v4;
    block[4] = self;
    v10 = v8;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(AXTapticTimeManager *)self _informObserversDidStop];

    [(AXTapticTimeManager *)self _stopPowerAssertion];
  }
}

uint64_t __36__AXTapticTimeManager__dequeueSound__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _informObserversDidOutputSSID:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _dequeueSound];
}

void __36__AXTapticTimeManager__dequeueSound__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 264);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 objectForKey:@"VibePattern"];

  v6 = *(*(a1 + 32) + 264);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v6 objectForKey:v7];
  AudioServicesPlaySystemSoundWithVibration();

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    v13 = 0.0;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if ((v15 & 0x80000001) == 1)
        {
          [*(*(&v20 + 1) + 8 * v14) doubleValue];
          v13 = v13 + v16;
        }

        ++v15;
        ++v14;
      }

      while (v10 != v14);
      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v13 = 0.0;
  }

  v17 = dispatch_time(0, (v13 / 1000.0 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AXTapticTimeManager__dequeueSound__block_invoke_3;
  block[3] = &unk_1E71EA2F0;
  v19 = *(a1 + 40);
  dispatch_after(v17, MEMORY[0x1E69E96A0], block);
}

@end