@interface AXBSoundDetectionManager
+ (id)controller;
- (AXBSoundDetectionManager)init;
- (BOOL)_shouldArmSoundRecognition;
- (BOOL)_shouldArmVoiceTriggers;
- (void)_bootstrapSoundDetection;
- (void)_soundDetectionSettingsDidUpdate;
- (void)_startupSoundDetectionUIServer;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)dealloc;
@end

@implementation AXBSoundDetectionManager

+ (id)controller
{
  if (controller_onceToken_0 != -1)
  {
    +[AXBSoundDetectionManager controller];
  }

  v3 = controller__sManager;

  return v3;
}

uint64_t __38__AXBSoundDetectionManager_controller__block_invoke()
{
  controller__sManager = objc_alloc_init(AXBSoundDetectionManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBSoundDetectionManager)init
{
  v5.receiver = self;
  v5.super_class = AXBSoundDetectionManager;
  v2 = [(AXBSoundDetectionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXBSoundDetectionManager *)v2 _bootstrapSoundDetection];
  }

  return v3;
}

- (void)_bootstrapSoundDetection
{
  objc_initWeak(&location, self);
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke;
  v21[3] = &unk_29F2A4D08;
  objc_copyWeak(&v22, &location);
  [mEMORY[0x29EDBDDB8] registerUpdateBlock:v21 forRetrieveSelector:sel_ultronSupportEnabled withListener:self];

  mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_2;
  v19[3] = &unk_29F2A4D08;
  objc_copyWeak(&v20, &location);
  [mEMORY[0x29EDBDDB8]2 registerUpdateBlock:v19 forRetrieveSelector:sel_ultronIsRunning withListener:self];

  mEMORY[0x29EDBDDB8]3 = [MEMORY[0x29EDBDDB8] sharedInstance];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_3;
  v17[3] = &unk_29F2A4D08;
  objc_copyWeak(&v18, &location);
  [mEMORY[0x29EDBDDB8]3 registerUpdateBlock:v17 forRetrieveSelector:sel_soundDetectionState withListener:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _updateSoundDetection, *MEMORY[0x29EDC83E8], 0, 1028);
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_4;
  v15[3] = &unk_29F2A4D08;
  objc_copyWeak(&v16, &location);
  [mEMORY[0x29EDBDFA0] registerUpdateBlock:v15 forRetrieveSelector:sel_assistiveTouchSwitches withListener:self];

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, _updateSoundDetection, *MEMORY[0x29EDC83E0], 0, 1028);
  mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_5;
  v13 = &unk_29F2A4D08;
  objc_copyWeak(&v14, &location);
  [mEMORY[0x29EDBDFA0]2 registerUpdateBlock:&v10 forRetrieveSelector:sel_assistiveTouchActionsBySoundAction withListener:self];

  [(AXBSoundDetectionManager *)self _soundDetectionSettingsDidUpdate:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _soundDetectionSettingsDidUpdate];
}

void __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _soundDetectionSettingsDidUpdate];
}

void __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _soundDetectionSettingsDidUpdate];
}

void __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _soundDetectionSettingsDidUpdate];
}

void __52__AXBSoundDetectionManager__bootstrapSoundDetection__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _soundDetectionSettingsDidUpdate];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x29EDC83E0], 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x29EDC83E8], 0);
  v5.receiver = self;
  v5.super_class = AXBSoundDetectionManager;
  [(AXBSoundDetectionManager *)&v5 dealloc];
}

- (void)_soundDetectionSettingsDidUpdate
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Sound detection settings did update", buf, 2u);
  }

  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  ultronSupportEnabled = [mEMORY[0x29EDBDDB8] ultronSupportEnabled];

  if ((ultronSupportEnabled & 1) != 0 || [(AXBSoundDetectionManager *)self _shouldArmSoundRecognition]|| [(AXBSoundDetectionManager *)self _shouldArmVoiceTriggers])
  {
    v6 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __60__AXBSoundDetectionManager__soundDetectionSettingsDidUpdate__block_invoke;
    block[3] = &unk_29F2A4B10;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    soundDetectionClient = self->_soundDetectionClient;
    self->_soundDetectionClient = 0;
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  v10 = *MEMORY[0x29EDCA608];
  soundDetectionClient = self->_soundDetectionClient;
  if (soundDetectionClient == client && soundDetectionClient != 0)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
      v9[0] = 67109120;
      v9[1] = [mEMORY[0x29EDBDDB8] ultronSupportEnabled];
      _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_INFO, "Ultron client interrupted, restart: %d", v9, 8u);
    }

    [(AXBSoundDetectionManager *)self _startupSoundDetectionUIServer];
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)_startupSoundDetectionUIServer
{
  if (!self->_soundDetectionClient)
  {
    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [AXBSoundDetectionManager _startupSoundDetectionUIServer];
    }

    v4 = [objc_alloc(MEMORY[0x29EDBDDD0]) initWithIdentifier:@"AX_soundDetectionClient-sb" serviceBundleName:@"AXUltronPluginService"];
    soundDetectionClient = self->_soundDetectionClient;
    self->_soundDetectionClient = v4;

    [(AXUIClient *)self->_soundDetectionClient setDelegate:self];
  }

  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  ultronSupportEnabled = [mEMORY[0x29EDBDDB8] ultronSupportEnabled];

  if (ultronSupportEnabled)
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v8, OS_LOG_TYPE_DEFAULT, "Starting Sound Detection UI Server - Ultron", buf, 2u);
    }

    v9 = self->_soundDetectionClient;
    mainAccessQueue = [MEMORY[0x29EDBD688] mainAccessQueue];
    [(AXUIClient *)v9 sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10000 targetAccessQueue:mainAccessQueue completion:0];
  }

  if ([(AXBSoundDetectionManager *)self _shouldArmSoundRecognition])
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_29BBBD000, v11, OS_LOG_TYPE_DEFAULT, "Starting Sound Detection UI Server - Sound Detection", v17, 2u);
    }

    v12 = self->_soundDetectionClient;
    mainAccessQueue2 = [MEMORY[0x29EDBD688] mainAccessQueue];
    [(AXUIClient *)v12 sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10001 targetAccessQueue:mainAccessQueue2 completion:0];
  }

  if ([(AXBSoundDetectionManager *)self _shouldArmVoiceTriggers])
  {
    v14 = AXLogSoundActions();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AXBSoundDetectionManager _startupSoundDetectionUIServer];
    }

    v15 = self->_soundDetectionClient;
    mainAccessQueue3 = [MEMORY[0x29EDBD688] mainAccessQueue];
    [(AXUIClient *)v15 sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10002 targetAccessQueue:mainAccessQueue3 completion:0];
  }
}

- (BOOL)_shouldArmSoundRecognition
{
  mEMORY[0x29EDBDDB8] = [MEMORY[0x29EDBDDB8] sharedInstance];
  if ([mEMORY[0x29EDBDDB8] soundDetectionState] == 1)
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x29EDBDDB8]2 = [MEMORY[0x29EDBDDB8] sharedInstance];
    v3 = [mEMORY[0x29EDBDDB8]2 soundDetectionState] == 2;
  }

  return v3;
}

- (BOOL)_shouldArmVoiceTriggers
{
  v23 = *MEMORY[0x29EDCA608];
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    assistiveTouchSwitches = [mEMORY[0x29EDBDFA0] assistiveTouchSwitches];

    v4 = [assistiveTouchSwitches countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      v7 = *MEMORY[0x29EDBDFE0];
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(assistiveTouchSwitches);
          }

          source = [*(*(&v18 + 1) + 8 * v8) source];
          v10 = [source isEqualToString:v7];

          if (v10)
          {
            v15 = AXLogUltron();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [AXBSoundDetectionManager _shouldArmVoiceTriggers];
            }

            goto LABEL_18;
          }

          ++v8;
        }

        while (v5 != v8);
        v5 = [assistiveTouchSwitches countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = _AXSAssistiveTouchEnabled();
  if (v11)
  {
    mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
    assistiveTouchActionsBySoundAction = [mEMORY[0x29EDBDFA0]2 assistiveTouchActionsBySoundAction];
    v14 = [assistiveTouchActionsBySoundAction count];

    if (v14)
    {
      assistiveTouchSwitches = AXLogUltron();
      if (os_log_type_enabled(assistiveTouchSwitches, OS_LOG_TYPE_DEBUG))
      {
        [AXBSoundDetectionManager _shouldArmVoiceTriggers];
      }

LABEL_18:

      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

@end