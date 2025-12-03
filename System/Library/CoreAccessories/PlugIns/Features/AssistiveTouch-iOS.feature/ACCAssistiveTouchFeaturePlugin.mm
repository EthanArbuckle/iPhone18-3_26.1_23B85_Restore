@interface ACCAssistiveTouchFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (void)_assistiveTouchToggled:(id)toggled;
- (void)assistiveTouch:(id)touch setEnabled:(BOOL)enabled;
- (void)initPlugin;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCAssistiveTouchFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCAssistiveTouchFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCAssistiveTouchFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  assistiveTouchProvider = self->_assistiveTouchProvider;
  self->_assistiveTouchProvider = 0;

  [(ACCAssistiveTouchFeaturePlugin *)self setIsRunning:0];
}

- (void)startPlugin
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2335A9000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335A9000, v5, OS_LOG_TYPE_DEFAULT, "Stopping AssistiveTouch feature plugin...", buf, 2u);
  }

  [(ACCAssistiveTouchFeaturePlugin *)self setIsRunning:0];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_2335A9000, v6, OS_LOG_TYPE_INFO, "assistiveTouch Removing all observers...", v11, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  assistiveTouchProvider = self->_assistiveTouchProvider;
  self->_assistiveTouchProvider = 0;

  assistiveTouchQueue = self->_assistiveTouchQueue;
  self->_assistiveTouchQueue = 0;
}

- (void)assistiveTouch:(id)touch setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = enabledCopy;
    _os_log_impl(&dword_2335A9000, v9, OS_LOG_TYPE_INFO, "assistiveTouchSetEnabled: enable=%d", v11, 8u);
  }

  if (enabledCopy)
  {
    [(ACCAssistiveTouchFeaturePlugin *)self _startAssistiveTouch:touchCopy];
  }

  else
  {
    [(ACCAssistiveTouchFeaturePlugin *)self _stopAssistiveTouch:touchCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_assistiveTouchToggled:(id)toggled
{
  assistiveTouchQueue = self->_assistiveTouchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke;
  block[3] = &unk_2789E0C78;
  block[4] = self;
  dispatch_async(assistiveTouchQueue, block);
}

uint64_t __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke(uint64_t a1)
{
  v2 = _AXSAssistiveTouchEnabled();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke_cold_2(v2 != 0, v5);
  }

  return [*(*(a1 + 32) + 16) notifyAssistiveTouchEnabledState:v2 != 0];
}

void __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke()
{
  v0 = _AXSAssistiveTouchHardwareEnabled();
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (v0)
  {
    if (v2)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke_cold_2();
    }
  }

  else
  {
    if (v2)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke_cold_4();
    }

    _AXSAssistiveTouchSetHardwareEnabled();
  }
}

void __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke()
{
  v0 = _AXSAssistiveTouchHardwareEnabled();
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (v0)
  {
    if (v2)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke_cold_2();
    }

    _AXSAssistiveTouchSetHardwareEnabled();
  }

  else
  {
    if (v2)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke_cold_4();
    }
  }
}

void __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke_cold_2(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_2335A9000, a2, OS_LOG_TYPE_DEBUG, "assistiveTouch notifyEnabledState: enabled=%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end