@interface AXBAVSDetectionManager
+ (id)controller;
- (AXBAVSDetectionManager)init;
- (BOOL)_shouldArmAVS;
- (void)_avsSettingsDidUpdate;
- (void)_bootstrapAVSDetection;
- (void)_startupAVSDetectionUIServer;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
@end

@implementation AXBAVSDetectionManager

+ (id)controller
{
  if (controller_onceToken_2 != -1)
  {
    +[AXBAVSDetectionManager controller];
  }

  v3 = controller__sManager_0;

  return v3;
}

uint64_t __36__AXBAVSDetectionManager_controller__block_invoke()
{
  controller__sManager_0 = objc_alloc_init(AXBAVSDetectionManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBAVSDetectionManager)init
{
  v5.receiver = self;
  v5.super_class = AXBAVSDetectionManager;
  v2 = [(AXBAVSDetectionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXBAVSDetectionManager *)v2 _bootstrapAVSDetection];
  }

  return v3;
}

- (void)_bootstrapAVSDetection
{
  objc_initWeak(&location, self);
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = MEMORY[0x29EDCA5F8];
  v5 = 3221225472;
  v6 = __48__AXBAVSDetectionManager__bootstrapAVSDetection__block_invoke;
  v7 = &unk_29F2A4D08;
  objc_copyWeak(&v8, &location);
  [mEMORY[0x29EDBDFA0] registerUpdateBlock:&v4 forRetrieveSelector:sel_isAdaptiveVoiceShortcutsEnabled withListener:self];

  [(AXBAVSDetectionManager *)self _avsSettingsDidUpdate:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__AXBAVSDetectionManager__bootstrapAVSDetection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _avsSettingsDidUpdate];
}

- (void)_avsSettingsDidUpdate
{
  if ([(AXBAVSDetectionManager *)self _shouldArmAVS])
  {
    v3 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __47__AXBAVSDetectionManager__avsSettingsDidUpdate__block_invoke;
    block[3] = &unk_29F2A4B10;
    block[4] = self;
    dispatch_async(v3, block);
  }

  else
  {
    avsDetectionClient = self->_avsDetectionClient;
    self->_avsDetectionClient = 0;
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  avsDetectionClient = self->_avsDetectionClient;
  if (avsDetectionClient == client && avsDetectionClient != 0)
  {
    [(AXBAVSDetectionManager *)self _startupAVSDetectionUIServer];
  }
}

- (void)_startupAVSDetectionUIServer
{
  if (!self->_avsDetectionClient)
  {
    v3 = AXLogAVS();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Creating AVS Client", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x29EDBDDD0]) initWithIdentifier:@"AX_adaptiveVoiceShortcutsClient-sb" serviceBundleName:@"AXAVSPluginService"];
    avsDetectionClient = self->_avsDetectionClient;
    self->_avsDetectionClient = v4;

    [(AXUIClient *)self->_avsDetectionClient setDelegate:self];
  }

  if ([(AXBAVSDetectionManager *)self _shouldArmAVS])
  {
    v6 = AXLogAVS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "Starting AVS UI Server", v9, 2u);
    }

    v7 = self->_avsDetectionClient;
    mainAccessQueue = [MEMORY[0x29EDBD688] mainAccessQueue];
    [(AXUIClient *)v7 sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10000 targetAccessQueue:mainAccessQueue completion:0];
  }
}

- (BOOL)_shouldArmAVS
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  isAdaptiveVoiceShortcutsEnabled = [mEMORY[0x29EDBDFA0] isAdaptiveVoiceShortcutsEnabled];

  return isAdaptiveVoiceShortcutsEnabled;
}

@end