@interface AXBMotionCuesManager
+ (void)initializeMonitor;
- (void)updateSettings;
@end

@implementation AXBMotionCuesManager

+ (void)initializeMonitor
{
  if (AXDeviceSupportsMotionCues())
  {
    if (initializeMonitor_onceToken_4 != -1)
    {
      +[AXBMotionCuesManager initializeMonitor];
    }
  }
}

uint64_t __41__AXBMotionCuesManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBMotionCuesManager);
  v1 = _SharedManager_1;
  _SharedManager_1 = v0;

  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = *MEMORY[0x29EDC84B0];
  v4 = [MEMORY[0x29EDBA088] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_285_2];

  return AXPerformBlockAsynchronouslyOnMainThread();
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_cold_1(a2);
  }
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292_cold_1(a2);
  }
}

- (void)updateSettings
{
  v23 = *MEMORY[0x29EDCA608];
  if (AXMotionCuesServicesLibraryCore())
  {
    if (AXDeviceSupportsMotionCues())
    {
      featureEnabled = self->_featureEnabled;
      currentMode = self->_currentMode;
      self->_featureEnabled = _AXSMotionCuesEnabled() != 0;
      v5 = _AXSMotionCuesMode();
      self->_currentMode = v5;
      v6 = self->_featureEnabled;
      if ((featureEnabled || v6) && (featureEnabled != v6 || currentMode != v5))
      {
        v7 = AXLogMotionCues();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [MEMORY[0x29EDBA070] numberWithBool:featureEnabled];
          v9 = [MEMORY[0x29EDBA070] numberWithBool:self->_featureEnabled];
          v10 = [MEMORY[0x29EDBA070] numberWithInt:currentMode];
          v11 = [MEMORY[0x29EDBA070] numberWithInt:self->_currentMode];
          v15 = 138413058;
          v16 = v8;
          v17 = 2112;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_29BBBD000, v7, OS_LOG_TYPE_DEFAULT, "Motion Cues settings changed (enable: %@ -> %@, mode: %@ -> %@)", &v15, 0x2Au);
        }

        [_SharedManager_1 setMotionCuesEnabled:self->_featureEnabled];
      }
    }

    else
    {
      v13 = AXLogMotionCues();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_29BBBD000, v13, OS_LOG_TYPE_INFO, "Asked for Motion Cues to enable/disable but feature flag is off, so no", &v15, 2u);
      }
    }

    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];

    _AXAssert();
  }
}

- (void)setMotionCuesEnabled:.cold.1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"id<AXMotionCuesServiceProtocol> AXMotionCuesManager_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBMotionCuesManager.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_cold_1(char a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [MEMORY[0x29EDBA070] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_29BBBD000, v2, v3, "Enable request result for motion cues: %@ %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

void __45__AXBMotionCuesManager_setMotionCuesEnabled___block_invoke_292_cold_1(char a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [MEMORY[0x29EDBA070] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_29BBBD000, v2, v3, "Disable request result for motion cues: %@ %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

@end