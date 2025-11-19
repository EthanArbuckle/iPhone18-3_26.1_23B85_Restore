@interface VCPowerManager
- (BOOL)isFeatureEnabled:(unsigned int)a3;
- (VCPowerManager)init;
- (id)featureName:(unsigned int)a3;
- (unsigned)mode;
- (void)dealloc;
- (void)didChangeThermalLevel:(int)a3;
- (void)dispatchedSetFeature:(unsigned int)a3 enable:(BOOL)a4;
- (void)init;
- (void)mode;
- (void)notifyDelegatesDidChangeThermalLevel:(int)a3;
- (void)notifyDelegatesDidEnableLowPowerMode:(BOOL)a3;
- (void)registerForThermalEvents:(id)a3;
- (void)registerForThermalNotifications;
- (void)setFeature:(unsigned int)a3 enable:(BOOL)a4;
- (void)unregisterForThermalEvents:(id)a3;
- (void)updateLowPowerMode;
- (void)updateThermalMitigationEnablement;
@end

@implementation VCPowerManager

void __VCPowerManager_DefaultManager_block_invoke()
{
  if (!_vcPowerManager)
  {
    _vcPowerManager = objc_alloc_init(VCPowerManager);
  }
}

- (VCPowerManager)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCPowerManager;
  v2 = [(VCPowerManager *)&v9 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCPowerManager.powerManagerQueue", 0, CustomRootQueue);
    v2->_powerManagerQueue = v4;
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v2->_thermalDelegates = v5;
      if (v5)
      {
        v6 = VCDispatchQueue_GetCustomRootQueue(47);
        v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCPowerManager.delegateQueue", 0, v6);
        v2->_delegateQueue = v7;
        if (v7)
        {
          v2->_forceDisableThermal = [+[VCDefaults sharedInstance](VCDefaults forceDisableThermal];
          [(VCPowerManager *)v2 registerForThermalNotifications];
          return v2;
        }

        [(VCPowerManager *)v2 init];
      }

      else
      {
        [VCPowerManager init];
      }
    }

    else
    {
      [VCPowerManager init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCPowerManager dealloc]";
        v16 = 1024;
        v17 = 106;
        v6 = "VCPowerManager [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCPowerManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCPowerManager dealloc]";
        v16 = 1024;
        v17 = 106;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = "VCPowerManager [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCPowerManager *)self deregisterForThermalNotifications];

  dispatch_release(self->_powerManagerQueue);
  dispatch_release(self->_delegateQueue);
  v11.receiver = self;
  v11.super_class = VCPowerManager;
  [(VCPowerManager *)&v11 dealloc];
}

- (void)registerForThermalEvents:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    powerManagerQueue = self->_powerManagerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__VCPowerManager_registerForThermalEvents___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(powerManagerQueue, block);
  }
}

void __43__VCPowerManager_registerForThermalEvents___block_invoke(int8x16_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = a1[2].i64[0];
  v3 = *(v2 + 28);
  v4 = *(v2 + 8);
  v5 = *(v2 + 40);
  v6[1] = 3221225472;
  v6[2] = __43__VCPowerManager_registerForThermalEvents___block_invoke_2;
  v6[3] = &unk_1E85F7490;
  v7 = v1;
  v8 = v3;
  v9 = v4;
  dispatch_async(v5, v6);
}

uint64_t __43__VCPowerManager_registerForThermalEvents___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 40) + 32) addObject:{objc_msgSend(MEMORY[0x1E6986630], "weakObjectHolderWithObject:", *(a1 + 32))}];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) didChangeThermalLevel:*(a1 + 48)];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 52);

    return [v3 didEnableLowPowerMode:v4];
  }

  return result;
}

- (void)unregisterForThermalEvents:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__VCPowerManager_unregisterForThermalEvents___block_invoke;
    block[3] = &unk_1E85F40E0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __45__VCPowerManager_unregisterForThermalEvents___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 strong];
        if (*(a1 + 40) == v9)
        {
          [v2 addObject:v8];
          goto LABEL_13;
        }

        if (!v9)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 32) + 32) removeObject:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      result = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

- (void)notifyDelegatesDidChangeThermalLevel:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCPowerManager_notifyDelegatesDidChangeThermalLevel___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(delegateQueue, block);
}

uint64_t __55__VCPowerManager_notifyDelegatesDidChangeThermalLevel___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) strong];
        if (objc_opt_respondsToSelector())
        {
          [v7 didChangeThermalLevel:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)notifyDelegatesDidEnableLowPowerMode:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCPowerManager_notifyDelegatesDidEnableLowPowerMode___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(delegateQueue, block);
}

uint64_t __55__VCPowerManager_notifyDelegatesDidEnableLowPowerMode___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) strong];
        if (objc_opt_respondsToSelector())
        {
          [v7 didEnableLowPowerMode:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)updateThermalMitigationEnablement
{
  dispatch_assert_queue_V2(self->_powerManagerQueue);
  v3 = !self->_forceDisableThermal && self->_thermalLevel >= 0xAu && +[VCHardwareSettings shouldEnableLowPowerMode];

  [(VCPowerManager *)self dispatchedSetFeature:4 enable:v3];
}

- (void)registerForThermalNotifications
{
  v3[5] = *MEMORY[0x1E69E9840];
  powerManagerQueue = self->_powerManagerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VCPowerManager_registerForThermalNotifications__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(powerManagerQueue, v3);
}

uint64_t __49__VCPowerManager_registerForThermalNotifications__block_invoke(uint64_t a1)
{
  state64[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E98C0];
  notify_register_check(*MEMORY[0x1E69E98C0], (*(a1 + 32) + 24));
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:*(a1 + 32)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __49__VCPowerManager_registerForThermalNotifications__block_invoke_2;
  handler[3] = &unk_1E85F4A20;
  handler[4] = v3;
  notify_register_dispatch(v2, (v4 + 24), v5, handler);
  v6 = *(*(a1 + 32) + 24);
  state64[0] = 0;
  notify_get_state(v6, state64);
  *(*(a1 + 32) + 28) = state64[0];
  return [*(a1 + 32) updateThermalMitigationEnablement];
}

uint64_t __49__VCPowerManager_registerForThermalNotifications__block_invoke_2(uint64_t a1, int a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  v5[0] = 0;
  notify_get_state(a2, v5);
  return [v3 didChangeThermalLevel:LODWORD(v5[0])];
}

- (unsigned)mode
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          mode = self->_mode;
          v17 = 136315906;
          v18 = v4;
          v19 = 2080;
          v20 = "[VCPowerManager mode]";
          v21 = 1024;
          v22 = 247;
          v23 = 1024;
          LODWORD(v24) = mode;
          v8 = "VCPowerManager [%s] %s:%d _mode=%d";
          v9 = v5;
          v10 = 34;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v17, v10);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(VCPowerManager *)v4 mode];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCPowerManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_mode;
          v17 = 136316418;
          v18 = v11;
          v19 = 2080;
          v20 = "[VCPowerManager mode]";
          v21 = 1024;
          v22 = 247;
          v23 = 2112;
          v24 = v3;
          v25 = 2048;
          v26 = self;
          v27 = 1024;
          v28 = v14;
          v8 = "VCPowerManager [%s] %s:%d %@(%p) _mode=%d";
          v9 = v12;
          v10 = 54;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = self->_mode;
        v17 = 136316418;
        v18 = v11;
        v19 = 2080;
        v20 = "[VCPowerManager mode]";
        v21 = 1024;
        v22 = 247;
        v23 = 2112;
        v24 = v3;
        v25 = 2048;
        v26 = self;
        v27 = 1024;
        v28 = v15;
        _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VCPowerManager [%s] %s:%d %@(%p) _mode=%d", &v17, 0x36u);
      }
    }
  }

  return self->_mode;
}

- (void)updateLowPowerMode
{
  dispatch_assert_queue_V2(self->_powerManagerQueue);
  lowPowerModeEnabled = self->_lowPowerModeEnabled;
  currentFeatures = self->_currentFeatures;
  self->_mode = (currentFeatures & 4) != 0;
  self->_lowPowerModeEnabled = (currentFeatures & 4) != 0;
  if (lowPowerModeEnabled != ((currentFeatures >> 2) & 1))
  {

    [(VCPowerManager *)self notifyDelegatesDidEnableLowPowerMode:?];
  }
}

- (id)featureName:(unsigned int)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return @"Captions";
    }

    if (a3 == 2)
    {
      return @"Translation";
    }
  }

  else
  {
    switch(a3)
    {
      case 4u:
        return @"ThermalLight";
      case 8u:
        return @"Cellular";
      case 0x10u:
        return @"PIP";
    }
  }

  return @"Invalid";
}

- (void)dispatchedSetFeature:(unsigned int)a3 enable:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_powerManagerQueue);
  currentFeatures = self->_currentFeatures;
  if (((currentFeatures & v5) == 0) == v4)
  {
    v9 = currentFeatures & ~v5;
    v10 = currentFeatures | v5;
    if (!v4)
    {
      v10 = v9;
    }

    self->_currentFeatures = v10;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v26 = 136316162;
      *&v26[4] = v17;
      *&v26[12] = 2080;
      *&v26[14] = "[VCPowerManager dispatchedSetFeature:enable:]";
      *&v26[22] = 1024;
      LODWORD(v27) = 296;
      WORD2(v27) = 2112;
      *(&v27 + 6) = [(VCPowerManager *)self featureName:v5];
      HIWORD(v27) = 1024;
      LODWORD(v28) = v4;
      v19 = "VCPowerManager [%s] %s:%d Feature=%@ enabled=%d";
      v20 = v18;
      v21 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCPowerManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v26 = 136316674;
      *&v26[4] = v24;
      *&v26[12] = 2080;
      *&v26[14] = "[VCPowerManager dispatchedSetFeature:enable:]";
      *&v26[22] = 1024;
      LODWORD(v27) = 296;
      WORD2(v27) = 2112;
      *(&v27 + 6) = v11;
      HIWORD(v27) = 2048;
      v28 = self;
      LOWORD(v29) = 2112;
      *(&v29 + 2) = [(VCPowerManager *)self featureName:v5];
      WORD5(v29) = 1024;
      HIDWORD(v29) = v4;
      v19 = "VCPowerManager [%s] %s:%d %@(%p) Feature=%@ enabled=%d";
      v20 = v25;
      v21 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v26, v21);
LABEL_26:
    [(VCPowerManager *)self updateLowPowerMode:*v26];
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136316162;
        *&v26[4] = v12;
        *&v26[12] = 2080;
        *&v26[14] = "[VCPowerManager dispatchedSetFeature:enable:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 288;
        WORD2(v27) = 2112;
        *(&v27 + 6) = [(VCPowerManager *)self featureName:v5];
        HIWORD(v27) = 1024;
        LODWORD(v28) = v4;
        v14 = "VCPowerManager [%s] %s:%d Feature=%@ already set to enabled=%d";
        v15 = v13;
        v16 = 44;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v26, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCPowerManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 136316674;
        *&v26[4] = v22;
        *&v26[12] = 2080;
        *&v26[14] = "[VCPowerManager dispatchedSetFeature:enable:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 288;
        WORD2(v27) = 2112;
        *(&v27 + 6) = v8;
        HIWORD(v27) = 2048;
        v28 = self;
        LOWORD(v29) = 2112;
        *(&v29 + 2) = [(VCPowerManager *)self featureName:v5];
        WORD5(v29) = 1024;
        HIDWORD(v29) = v4;
        v14 = "VCPowerManager [%s] %s:%d %@(%p) Feature=%@ already set to enabled=%d";
        v15 = v23;
        v16 = 64;
        goto LABEL_20;
      }
    }
  }
}

- (void)setFeature:(unsigned int)a3 enable:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  powerManagerQueue = self->_powerManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCPowerManager_setFeature_enable___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(powerManagerQueue, block);
}

- (BOOL)isFeatureEnabled:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  powerManagerQueue = self->_powerManagerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VCPowerManager_isFeatureEnabled___block_invoke;
  v6[3] = &unk_1E85F61A8;
  v6[4] = self;
  v6[5] = &v8;
  v7 = a3;
  dispatch_sync(powerManagerQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (void)didChangeThermalLevel:(int)a3
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_powerManagerQueue);
  if (self->_thermalLevel != a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      LODWORD(v17) = 136316162;
      *(&v17 + 4) = v6;
      WORD6(v17) = 2080;
      OUTLINED_FUNCTION_7();
      v18 = 220;
      v19 = v8;
      *v20 = v9;
      *&v20[4] = v8;
      *&v20[6] = a3;
      v10 = "VCPowerManager [%s] %s:%d Thermal level changed from prevThermalLevel=%d to newThermalLevel=%d";
      v11 = v7;
      v12 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCPowerManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      LODWORD(v17) = 136316674;
      *(&v17 + 4) = v13;
      WORD6(v17) = 2080;
      OUTLINED_FUNCTION_7();
      v18 = 220;
      v19 = 2112;
      *v20 = v5;
      *&v20[8] = 2048;
      v21 = self;
      v22 = v15;
      v23 = v16;
      v24 = v15;
      v25 = a3;
      v10 = "VCPowerManager [%s] %s:%d %@(%p) Thermal level changed from prevThermalLevel=%d to newThermalLevel=%d";
      v11 = v14;
      v12 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
LABEL_13:
    self->_thermalLevel = a3;
    [(VCPowerManager *)self updateThermalMitigationEnablement];
    [(VCPowerManager *)self notifyDelegatesDidChangeThermalLevel:self->_thermalLevel];
  }
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)mode
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_7();
  v7 = 247;
  v8 = v1;
  v9 = v2;
  _os_log_debug_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEBUG, "VCPowerManager [%s] %s:%d _mode=%d", &v4, 0x22u);
}

@end