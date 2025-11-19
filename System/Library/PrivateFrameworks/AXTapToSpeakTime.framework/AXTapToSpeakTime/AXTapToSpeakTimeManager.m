@interface AXTapToSpeakTimeManager
+ (id)sharedInstance;
- (BOOL)_canOutputPremiumVoice;
- (BOOL)_canSpeakTimeForVoice:(unint64_t)a3 andGesture:(unint64_t)a4;
- (BOOL)_canTapticTime;
- (BOOL)canOutputTime;
- (BOOL)isCurrentlyOutputting;
- (id)_currentLanguageCode;
- (id)_getPreferredSpeechSynthesisVoice;
- (id)_init;
- (void)_outputTapticTime:(id)a3;
- (void)_registerForNotifications;
- (void)_ringerStateChanged;
- (void)_setupAudioSessionForVoice:(unint64_t)a3;
- (void)_speakTime:(id)a3 preferredVoice:(unint64_t)a4;
- (void)_unregisterForNotifications;
- (void)dealloc;
- (void)outputTime:(id)a3 preferredVoice:(unint64_t)a4 withGesture:(unint64_t)a5;
- (void)speechOutputDidComplete;
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
- (void)stopOutput;
@end

@implementation AXTapToSpeakTimeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXTapToSpeakTimeManager sharedInstance];
  }

  v3 = sharedInstance__Shared_1;

  return v3;
}

uint64_t __41__AXTapToSpeakTimeManager_sharedInstance__block_invoke()
{
  sharedInstance__Shared_1 = [[AXTapToSpeakTimeManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v16.receiver = self;
  v16.super_class = AXTapToSpeakTimeManager;
  v2 = [(AXTapToSpeakTimeManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.accessibility.AXTapToSpeakTimeManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    avSpeechSynthesizer = v2->_avSpeechSynthesizer;
    v2->_avSpeechSynthesizer = v6;

    [(AVSpeechSynthesizer *)v2->_avSpeechSynthesizer setIsInternalSynth:1];
    [(AVSpeechSynthesizer *)v2->_avSpeechSynthesizer setDelegate:v2];
    v8 = [MEMORY[0x277CE7E60] sharedInstance];
    tapticTimeManager = v2->_tapticTimeManager;
    v2->_tapticTimeManager = v8;

    v2->_lastMediaVolume = -1.0;
    v10 = MEMORY[0x277CCA968];
    v11 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    v12 = [v10 dateFormatFromTemplate:@"jjmm" options:0 locale:v11];

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v13;

    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:v12];
    v2->_ringerStateNotifyToken = -1;
    [(AXTapToSpeakTimeManager *)v2 _registerForNotifications];
    [(AXTapToSpeakTimeManager *)v2 _ringerStateChanged];
  }

  return v2;
}

- (void)dealloc
{
  [(AXTapToSpeakTimeManager *)self _unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = AXTapToSpeakTimeManager;
  [(AXTapToSpeakTimeManager *)&v3 dealloc];
}

- (void)_registerForNotifications
{
  p_ringerStateNotifyToken = &self->_ringerStateNotifyToken;
  if (self->_ringerStateNotifyToken == -1)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__AXTapToSpeakTimeManager__registerForNotifications__block_invoke;
    v5[3] = &unk_278BDFEA0;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch("com.apple.springboard.ringerstate", p_ringerStateNotifyToken, queue, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __52__AXTapToSpeakTimeManager__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ringerStateChanged];
}

- (void)_unregisterForNotifications
{
  ringerStateNotifyToken = self->_ringerStateNotifyToken;
  if (ringerStateNotifyToken != -1)
  {
    notify_cancel(ringerStateNotifyToken);
    self->_ringerStateNotifyToken = -1;
  }
}

- (void)_ringerStateChanged
{
  state64 = 1;
  ringerStateNotifyToken = self->_ringerStateNotifyToken;
  if (ringerStateNotifyToken == -1)
  {
    v4 = 0;
  }

  else
  {
    notify_get_state(ringerStateNotifyToken, &state64);
    v4 = state64 == 0;
  }

  self->_cachedRingerIsMuted = v4;
}

- (BOOL)_canSpeakTimeForVoice:(unint64_t)a3 andGesture:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CE7E20] sharedInstance];
  v8 = [v7 tapToSpeakTimeEnabled];

  if (v8)
  {
    if (a4)
    {
      if (a4 == 1 && a3 - 3 <= 1)
      {
        if (self->_cachedRingerIsMuted)
        {
          v9 = AXLogTapticTime();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18) = 0;
            v10 = "ringer is muted, will NOT speak time";
LABEL_10:
            _os_log_impl(&dword_23D6AA000, v9, OS_LOG_TYPE_INFO, v10, &v18, 2u);
            goto LABEL_11;
          }

          goto LABEL_11;
        }

LABEL_27:
        v11 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = [MEMORY[0x277CE7E20] sharedInstance];
      v13 = [v12 tapToSpeakTimeAvailability];

      if (v13 == 1)
      {
        v16 = AXLogTapticTime();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          if (self->_cachedRingerIsMuted)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&dword_23D6AA000, v16, OS_LOG_TYPE_INFO, "availability = respect mute, ringerIsMuted = %@", &v18, 0xCu);
        }

        if (self->_cachedRingerIsMuted)
        {
          v9 = AXLogTapticTime();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_11;
          }

          LOWORD(v18) = 0;
          v10 = "ringer is muted, will NOT speak time";
          goto LABEL_10;
        }

        goto LABEL_27;
      }

      if (v13 == 2)
      {
        v9 = AXLogTapticTime();
        v11 = 1;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_23D6AA000, v9, OS_LOG_TYPE_INFO, "availability = always. ignoring ringer state", &v18, 2u);
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
    goto LABEL_18;
  }

  v9 = AXLogTapticTime();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    v10 = "tap to speak time is disabled";
    goto LABEL_10;
  }

LABEL_11:
  v11 = 0;
LABEL_12:

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)canOutputTime
{
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  v4 = [v3 tapToSpeakTimeEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  v6 = [v5 tapToSpeakTimeAvailability];

  if (v6 == 2)
  {
    return 1;
  }

  return v6 == 1 && !self->_cachedRingerIsMuted;
}

- (BOOL)isCurrentlyOutputting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__AXTapToSpeakTimeManager_isCurrentlyOutputting__block_invoke;
  v5[3] = &unk_278BDFEC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __48__AXTapToSpeakTimeManager_isCurrentlyOutputting__block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 32) isSpeaking] & 1) != 0 || (objc_msgSend(*(a1 + 32), "tapticTimeManager"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isCurrentlyOutputting"), v2, v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)_canTapticTime
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE7E20] sharedInstance];
  v3 = [v2 voiceOverTapticTimeMode];

  v4 = AXLogTapticTime();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_INFO, "tapticTimeEnabled = %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)outputTime:(id)a3 preferredVoice:(unint64_t)a4 withGesture:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = AXLogTapticTime();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a4 - 1 > 3)
    {
      v10 = @"Default";
    }

    else
    {
      v10 = off_278BDFF60[a4 - 1];
    }

    v11 = @"One Finger Tap";
    if (!a5)
    {
      v11 = @"Two Finger Hold";
    }

    v12 = v11;
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_23D6AA000, v9, OS_LOG_TYPE_INFO, "Attempting to start time output: %@, for preferredVoice: %@, with gesture: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__AXTapToSpeakTimeManager_outputTime_preferredVoice_withGesture___block_invoke;
  v16[3] = &unk_278BDFEF0;
  v18 = a4;
  v19 = a5;
  v16[4] = self;
  v17 = v8;
  v14 = v8;
  dispatch_async(queue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __65__AXTapToSpeakTimeManager_outputTime_preferredVoice_withGesture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canSpeakTimeForVoice:*(a1 + 48) andGesture:*(a1 + 56)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 _speakTime:v4 preferredVoice:v5];
  }

  else
  {
    result = [v3 _canTapticTime];
    if (result && !*(a1 + 56))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);

      return [v7 _outputTapticTime:v8];
    }
  }

  return result;
}

- (void)stopOutput
{
  v3 = AXLogTapticTime();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23D6AA000, v3, OS_LOG_TYPE_INFO, "Stopping (any) existing output", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__AXTapToSpeakTimeManager_stopOutput__block_invoke;
  block[3] = &unk_278BDFE10;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__AXTapToSpeakTimeManager_stopOutput__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avSpeechSynthesizer];
  v3 = [v2 isSpeaking];

  v4 = *(a1 + 32);
  if (v3)
  {
    v7 = [v4 avSpeechSynthesizer];
    [v7 stopSpeakingAtBoundary:0];
  }

  else
  {
    v5 = [v4 tapticTimeManager];
    v6 = [v5 isCurrentlyOutputting];

    if (!v6)
    {
      return;
    }

    v7 = [*(a1 + 32) tapticTimeManager];
    [v7 stopCurrentOutput];
  }
}

- (void)_speakTime:(id)a3 preferredVoice:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(AXTapToSpeakTimeManager *)self _setupAudioSessionForVoice:a4];
  [(AXTapToSpeakTimeManager *)self _normalizeVolumeIfNecessary];
  if ((a4 | 2) == 2)
  {
    v7 = [(AXTapToSpeakTimeManager *)self _getPreferredSpeechSynthesisVoice];
  }

  else
  {
    v7 = 0;
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__AXTapToSpeakTimeManager__speakTime_preferredVoice___block_invoke;
  activity_block[3] = &unk_278BDFF18;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_23D6AA000, "Tap to speak time - voice services", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void __53__AXTapToSpeakTimeManager__speakTime_preferredVoice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CB84C0];
  v3 = [*(a1 + 32) dateFormatter];
  v4 = [v3 stringFromDate:*(a1 + 40)];
  v5 = [v2 speechUtteranceWithString:v4];

  LODWORD(v6) = *"333?";
  [v5 setVolume:v6];
  if (*(a1 + 48))
  {
    [v5 setVoice:?];
  }

  else
  {
    v7 = [*(a1 + 32) _currentLanguageCode];
    v8 = MEMORY[0x23EEE7B30]();

    v9 = AXLogTapticTime();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_23D6AA000, v9, OS_LOG_TYPE_DEFAULT, "Default to system voice for current langauge: %@", &v14, 0xCu);
    }

    v10 = [MEMORY[0x277CB84A8] voiceWithLanguage:v8];
    [v5 setVoice:v10];
  }

  v11 = [*(a1 + 32) avSpeechSynthesizer];
  [v11 speakUtterance:v5];

  v12 = AXLogTapticTime();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_23D6AA000, v12, OS_LOG_TYPE_INFO, "Speaking time: %@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_getPreferredSpeechSynthesisVoice
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 outputVoice];

  v5 = AXLogTapticTime();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_23D6AA000, v5, OS_LOG_TYPE_DEFAULT, "AFPreferences outputVoice: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CE7DA0] sharedInstance];
  v7 = [v6 systemLanguageID];

  v8 = AXLogTapticTime();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_23D6AA000, v8, OS_LOG_TYPE_DEFAULT, "System general language: %@", buf, 0xCu);
  }

  v9 = [v4 languageCode];
  v10 = [v4 name];
  if (([v9 hasPrefix:v7]& 1) == 0)
  {
    v15 = AXLogTapticTime();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v7;
      v16 = "Siri voice language: %@ does not match system general language: %@";
      v17 = v15;
      v18 = 22;
LABEL_20:
      _os_log_impl(&dword_23D6AA000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (![(AXTapToSpeakTimeManager *)self _canOutputPremiumVoice])
  {
    v15 = AXLogTapticTime();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Siri voice output is unsupported";
LABEL_19:
      v17 = v15;
      v18 = 2;
      goto LABEL_20;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (![v10 length])
  {
    v15 = AXLogTapticTime();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Siri voice name is invalid";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v11 = [MEMORY[0x277CB84A8] _speechVoicesIncludingSiri];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__AXTapToSpeakTimeManager__getPreferredSpeechSynthesisVoice__block_invoke;
  v21[3] = &unk_278BDFF40;
  v12 = v9;
  v22 = v12;
  v23 = v10;
  v13 = [v11 ax_firstObjectUsingBlock:v21];

  if (!v13)
  {
    v14 = AXLogTapticTime();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_23D6AA000, v14, OS_LOG_TYPE_DEFAULT, "Unable to find Siri voice for language: %@", buf, 0xCu);
    }
  }

  v15 = v22;
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __60__AXTapToSpeakTimeManager__getPreferredSpeechSynthesisVoice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 quality] == 2)
  {
    v4 = MEMORY[0x277D703D0];
    v5 = [v3 identifier];
    if ([v4 isSiriVoiceIdentifier:v5])
    {
      v6 = [v3 language];
      if ([v6 isEqualToString:*(a1 + 32)])
      {
        v7 = [v3 identifier];
        v8 = [*(a1 + 40) lowercaseString];
        v9 = [v7 containsString:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_outputTapticTime:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [MEMORY[0x277CE7E60] sharedInstance];
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  [v4 outputHoursAndMinutes:{objc_msgSend(v3, "voiceOverTapticTimeEncoding")}];
}

- (id)_currentLanguageCode
{
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (BOOL)_canOutputPremiumVoice
{
  v8 = *MEMORY[0x277D85DE8];
  if (_canOutputPremiumVoice_onceToken != -1)
  {
    [AXTapToSpeakTimeManager _canOutputPremiumVoice];
  }

  v2 = AXLogTapticTime();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (_canOutputPremiumVoice_canOutputPremiumVoice)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23D6AA000, v2, OS_LOG_TYPE_INFO, "canOutputPremiumVoice: %@", &v6, 0xCu);
  }

  result = _canOutputPremiumVoice_canOutputPremiumVoice;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__AXTapToSpeakTimeManager__canOutputPremiumVoice__block_invoke()
{
  result = MGGetBoolAnswer();
  _canOutputPremiumVoice_canOutputPremiumVoice = result;
  return result;
}

- (void)_setupAudioSessionForVoice:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = AXLogTapticTime();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a3 - 1 > 3)
    {
      v5 = @"Default";
    }

    else
    {
      v5 = off_278BDFF60[a3 - 1];
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23D6AA000, v4, OS_LOG_TYPE_INFO, "Setting up audio session for %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CB83F8] sharedInstance];
  [v6 setCategory:*MEMORY[0x277CB8060] withOptions:19 error:0];
  [v6 setActive:1 error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)speechOutputDidComplete
{
  v3 = AXLogTapticTime();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23D6AA000, v3, OS_LOG_TYPE_INFO, "Speech output did complete", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AXTapToSpeakTimeManager_speechOutputDidComplete__block_invoke;
  block[3] = &unk_278BDFE10;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __50__AXTapToSpeakTimeManager_speechOutputDidComplete__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CB83F8] sharedInstance];
  [v2 setActive:0 withOptions:1 error:0];

  v3 = *(a1 + 32);

  return [v3 _denormalizeVolumeIfNecessary];
}

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = AXLogTapticTime();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23D6AA000, v5, OS_LOG_TYPE_INFO, "did start AVSpeechUtterance: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = AXLogTapticTime();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23D6AA000, v6, OS_LOG_TYPE_INFO, "did finish AVSpeechUtterance: %@", &v8, 0xCu);
  }

  [(AXTapToSpeakTimeManager *)self speechOutputDidComplete];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = AXLogTapticTime();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23D6AA000, v6, OS_LOG_TYPE_INFO, "did cancel AVSpeechUtterance: %@", &v8, 0xCu);
  }

  [(AXTapToSpeakTimeManager *)self speechOutputDidComplete];
  v7 = *MEMORY[0x277D85DE8];
}

@end