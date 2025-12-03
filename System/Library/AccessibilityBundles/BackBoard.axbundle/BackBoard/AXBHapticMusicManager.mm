@interface AXBHapticMusicManager
+ (void)initializeMonitor;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)setHapticMusicEnabled:(BOOL)enabled;
- (void)updateSettings;
@end

@implementation AXBHapticMusicManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken != -1)
  {
    +[AXBHapticMusicManager initializeMonitor];
  }

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __42__AXBHapticMusicManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBHapticMusicManager);
  v1 = _SharedManager;
  _SharedManager = v0;

  v2 = AXLogHapticMusic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Initializing Haptic Music Monitor", v7, 2u);
  }

  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC8440];
  v5 = [MEMORY[0x29EDBA088] mainQueue];
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:&__block_literal_global_286];
}

- (void)setHapticMusicEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    if (enabledCopy)
    {
      v5 = AXLogHapticMusic();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MEMORY[0x29EDBA070] numberWithBool:1];
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to enable Haptic Music from BB: (%@)", &v14, 0xCu);
      }

      if (!self->_client)
      {
        v7 = objc_alloc(MEMORY[0x29EDBDDD0]);
        _serviceName = [(AXBHapticMusicManager *)self _serviceName];
        v9 = [v7 initWithIdentifier:@"HapticMusicClient-Backboard" serviceBundleName:_serviceName];
        client = self->_client;
        self->_client = v9;

        [(AXUIClient *)self->_client setDelegate:self];
      }
    }

    v11 = self->_client;
    mainAccessQueue = [MEMORY[0x29EDBD688] mainAccessQueue];
    [(AXUIClient *)v11 sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:1 targetAccessQueue:mainAccessQueue completion:&__block_literal_global_302];
  }

  else
  {
    mainAccessQueue = AXLogHapticMusic();
    if (os_log_type_enabled(mainAccessQueue, OS_LOG_TYPE_ERROR))
    {
      [AXBHapticMusicManager setHapticMusicEnabled:mainAccessQueue];
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void __47__AXBHapticMusicManager_setHapticMusicEnabled___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = AXLogHapticMusic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__AXBHapticMusicManager_setHapticMusicEnabled___block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  v4 = AXLogHapticMusic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(AXBHapticMusicManager *)clientCopy connectionWithServiceWasInterruptedForUserInterfaceClient:v4];
  }

  v5 = clientCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void *__83__AXBHapticMusicManager_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[1];
  if (!v3 || *(a1 + 40) == v3)
  {
    return [result updateSettings];
  }

  return result;
}

- (void)updateSettings
{
  v2 = _SharedManager;
  v3 = _AXSHapticMusicEnabled() != 0;

  [v2 setHapticMusicEnabled:v3];
}

void __47__AXBHapticMusicManager_setHapticMusicEnabled___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Error starting haptic music: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Connection for haptic music interrupted: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end