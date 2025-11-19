@interface AXBSpeakThisManager
+ (void)initializeMonitor;
- (AXBSpeakThisManager)init;
- (void)_notifySpeakThisOfSettingsChange;
- (void)_startWatchingForDeathOfAccessibilityUIServerPID;
@end

@implementation AXBSpeakThisManager

+ (void)initializeMonitor
{
  v2 = [getSpeakThisServicesClass() sharedInstance];
  if (initializeMonitor_onceToken_9 != -1)
  {
    +[AXBSpeakThisManager initializeMonitor];
  }
}

uint64_t __40__AXBSpeakThisManager_initializeMonitor__block_invoke()
{
  SharedManager_1 = objc_alloc_init(AXBSpeakThisManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBSpeakThisManager)init
{
  v13.receiver = self;
  v13.super_class = AXBSpeakThisManager;
  v2 = [(AXBSpeakThisManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SpeakThisQueue", 0);
    speakThisQueue = v2->_speakThisQueue;
    v2->_speakThisQueue = v3;

    objc_initWeak(&location, v2);
    v5 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __27__AXBSpeakThisManager_init__block_invoke;
    v10[3] = &unk_29F2A4D08;
    objc_copyWeak(&v11, &location);
    [v5 registerUpdateBlock:v10 forRetrieveSelector:sel_showSpeechController withListener:v2];

    objc_destroyWeak(&v11);
    v6 = AXLogSpeakScreen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "Clearing highlight state because backboardd just started up.", v9, 2u);
    }

    _AXSSpeakThisSetHighlightVisible();
    [(AXBSpeakThisManager *)v2 _notifySpeakThisOfSettingsChange];
    [(AXBSpeakThisManager *)v2 _startWatchingForDeathOfAccessibilityUIServerPID];
    v7 = [MEMORY[0x29EDBA068] defaultCenter];
    [v7 addObserver:v2 selector:sel__startWatchingForDeathOfAccessibilityUIServerPID name:*MEMORY[0x29EDC8500] object:0];

    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__AXBSpeakThisManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifySpeakThisOfSettingsChange];
}

- (void)_notifySpeakThisOfSettingsChange
{
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  if ([v3 showSpeechController])
  {
    v4 = _AXSSpeakThisEnabled();

    if (v4)
    {
      v5 = &__block_literal_global_289;
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!_AXSSpeakThisEnabled())
  {
    return;
  }

  v5 = &__block_literal_global_295;
LABEL_7:
  speakThisQueue = self->_speakThisQueue;

  dispatch_async(speakThisQueue, v5);
}

void __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke()
{
  v0 = [getSpeakThisServicesClass() sharedInstance];
  [v0 showSpeechController:&__block_literal_global_292_1];
}

void __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_2_cold_1(v2, v3);
    }
  }
}

void __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_293()
{
  v0 = [getSpeakThisServicesClass() sharedInstance];
  [v0 hideSpeechController:&__block_literal_global_298];
}

void __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_2_296(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (void)_startWatchingForDeathOfAccessibilityUIServerPID
{
  if (([MEMORY[0x29EDBA108] isMainThread] & 1) == 0)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(AXBSpeakThisManager *)v3 _startWatchingForDeathOfAccessibilityUIServerPID];
    }
  }

  v4 = +[AXBackBoardGlue accessibilityUIServerPid];
  speakThisQueue = self->_speakThisQueue;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __71__AXBSpeakThisManager__startWatchingForDeathOfAccessibilityUIServerPID__block_invoke;
  v6[3] = &unk_29F2A4F40;
  v6[4] = self;
  v7 = v4;
  dispatch_async(speakThisQueue, v6);
}

void __71__AXBSpeakThisManager__startWatchingForDeathOfAccessibilityUIServerPID__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  if (!_AXSSpeakThisEnabled())
  {
    v5 = AXLogSpeakScreen();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v13[0]) = 0;
    v11 = "Not watching for death of AXUIServer, because Speak Screen was not enabled.";
LABEL_10:
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    goto LABEL_11;
  }

  v4 = *(a1 + 40);
  v5 = AXLogSpeakScreen();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 < 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    LOWORD(v13[0]) = 0;
    v11 = "Not watching for death of AXUIServer, because PID unavailable.";
    goto LABEL_10;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Start watching for death of AXUIServer: %i", v13, 8u);
  }

  v8 = objc_alloc(MEMORY[0x29EDBFBE0]);
  v9 = [v8 initWithPID:*(a1 + 40) queue:MEMORY[0x29EDCA578] deathHandler:&__block_literal_global_304];
  v10 = *(a1 + 32);
  v5 = *(v10 + 16);
  *(v10 + 16) = v9;
LABEL_11:

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t __71__AXBSpeakThisManager__startWatchingForDeathOfAccessibilityUIServerPID__block_invoke_302()
{
  v0 = AXLogSpeakScreen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_29BBBD000, v0, OS_LOG_TYPE_DEFAULT, "Clearing highlight state because AXUIServer died.", v2, 2u);
  }

  return _AXSSpeakThisSetHighlightVisible();
}

void __55__AXBSpeakThisManager__notifySpeakThisOfSettingsChange__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Error notifying SpeakThis of setting change: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end