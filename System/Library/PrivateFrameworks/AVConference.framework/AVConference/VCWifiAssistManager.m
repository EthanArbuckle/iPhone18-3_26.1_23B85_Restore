@interface VCWifiAssistManager
+ (id)sharedInstance;
- (VCWifiAssistManager)init;
- (id)description;
- (unsigned)wifiAssistState;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
- (void)init;
- (void)queryBudget;
- (void)queryUserPreference;
- (void)refreshBudget;
- (void)removeDelegate:(id)a3;
@end

@implementation VCWifiAssistManager

- (void)refreshBudget
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(VCWifiAssistManager *)self isAvailable];
  [(VCWifiAssistManager *)self queryUserPreference];
  [(VCWifiAssistManager *)self queryBudget];
  v4 = [(VCWifiAssistManager *)self isAvailable];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v5;
      v20 = 2080;
      v21 = "[VCWifiAssistManager refreshBudget]";
      v22 = 1024;
      v23 = 53;
      v24 = 2112;
      v25 = [(VCWifiAssistManager *)self description];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Refresh budget, %@", buf, 0x26u);
    }
  }

  if (v3 != v4)
  {
    v7 = [-[NSMutableSet allObjects](self->_delegates "allObjects")];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (v4)
          {
            v12 = 0;
          }

          else if (self->_userPrefered)
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          [*(*(&v14 + 1) + 8 * i) didChangeWifiAssistAvailable:v4 reason:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }
}

- (VCWifiAssistManager)init
{
  v26 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCWifiAssistManager;
  v2 = [(VCWifiAssistManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_userPrefered = 257;
    [(VCWifiAssistManager *)v2 queryUserPreference];
    v4 = objc_alloc_init(MEMORY[0x1E69D53E0]);
    v3->_manager = v4;
    if (v4)
    {
      [(VCWifiAssistManager *)v3 queryBudget];
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcWifiAssist.serialQueue", 0, CustomRootQueue);
      v3->_serialQueue = v6;
      [(NWNetworkOfInterestManager *)v3->_manager setQueue:v6];
      [(NWNetworkOfInterestManager *)v3->_manager setDelegate:v3];
      [(NWNetworkOfInterestManager *)v3->_manager trackNOIAnyForInterfaceType:1 options:0];
      v7 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v3];
      v8 = [VCDispatchTimer alloc];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __27__VCWifiAssistManager_init__block_invoke;
      v16[3] = &unk_1E85F3778;
      v16[4] = v7;
      v3->_refreshTimer = [(VCDispatchTimer *)v8 initWithIntervalSeconds:1200 callbackBlock:v16 clientQueue:v3->_serialQueue];
      v3->_delegates = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v3->_respectBudgetStatusEnabled = (+[GKSConnectivitySettings getAbTestMasterLocalSwitches]& 0x400000) != 0;
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          respectBudgetStatusEnabled = v3->_respectBudgetStatusEnabled;
          *buf = 136315906;
          v19 = v9;
          v20 = 2080;
          v21 = "[VCWifiAssistManager init]";
          v22 = 1024;
          v23 = 91;
          v24 = 1024;
          LODWORD(v25) = respectBudgetStatusEnabled;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch wifiAssistBudgetStatusEnabled %d", buf, 0x22u);
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCWifiAssistManager init];
        }
      }

      v3 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(VCWifiAssistManager *)v3 description];
        *buf = 136315906;
        v19 = v12;
        v20 = 2080;
        v21 = "[VCWifiAssistManager init]";
        v22 = 1024;
        v23 = 94;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
      }
    }
  }

  return v3;
}

uint64_t __27__VCWifiAssistManager_init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 refreshBudget];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCDispatchTimer *)self->_refreshTimer stop];

  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
    self->_serialQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = VCWifiAssistManager;
  [(VCWifiAssistManager *)&v4 dealloc];
}

- (void)queryUserPreference
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Can not create CTServer Connection", v2, v3, v4, v5, v6);
}

- (void)queryBudget
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_respectBudgetStatusEnabled)
  {
    if ([+[VCDefaults forceWiFiAssistOutOfBudget] sharedInstance]
    {
      self->_inBudget = 0;
      return;
    }

    if (self->_wifiNOI)
    {
      v11 = @"com.apple.facetime";
      v12 = &unk_1F5799738;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      manager = self->_manager;
      wifiNOI = self->_wifiNOI;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__VCWifiAssistManager_queryBudget__block_invoke;
      v10[3] = &unk_1E85F61D0;
      v10[4] = @"com.apple.facetime";
      v10[5] = self;
      [(NWNetworkOfInterestManager *)manager canUseOnAlternateNOI:wifiNOI appStates:v6 reply:v10];
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCWifiAssistManager queryBudget]";
        v17 = 1024;
        v18 = 164;
        v5 = " [%s] %s:%d no NOI available, can not query wifi assist budget";
        goto LABEL_7;
      }
    }
  }

  else
  {
    self->_inBudget = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = v3;
        v15 = 2080;
        v16 = "[VCWifiAssistManager queryBudget]";
        v17 = 1024;
        v18 = 139;
        v5 = " [%s] %s:%d Not respecting the budget restrictions as directed by the storebag settings: isInBudget = YES";
LABEL_7:
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }
}

void __34__VCWifiAssistManager_queryBudget__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __34__VCWifiAssistManager_queryBudget__block_invoke_cold_1();
      }
    }
  }

  else if ([a2 count] == 1)
  {
    *(*(a1 + 40) + 9) = [objc_msgSend(a2 objectForKeyedSubscript:{*(a1 + 32)), "BOOLValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 40) + 9))
        {
          v8 = "YES";
        }

        else
        {
          v8 = "NO";
        }

        v11 = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCWifiAssistManager queryBudget]_block_invoke";
        v15 = 1024;
        v16 = 159;
        v17 = 2080;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isInBudget = %s", &v11, 0x26u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __34__VCWifiAssistManager_queryBudget__block_invoke_cold_2(v9, a2, v10);
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[VCWifiAssistManager sharedInstance];
  }

  return sharedInstance_instance_0;
}

void __37__VCWifiAssistManager_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance_0)
  {
    sharedInstance_instance_0 = objc_alloc_init(VCWifiAssistManager);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = "NO";
  if (self->_userPrefered)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_inBudget)
  {
    v6 = "YES";
  }

  return [v3 stringWithFormat:@"%@: userPrefered = %s, inBudget = %s", v5, v7, v6];
}

- (void)addDelegate:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__VCWifiAssistManager_addDelegate___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(serialQueue, block);
  }
}

void __35__VCWifiAssistManager_addDelegate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 24) count])
  {
    [*(*(a1 + 32) + 32) start];
  }

  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 24) count];
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCWifiAssistManager addDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 199;
      v12 = 2112;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d delegate %@, _delegates count = %lu after adding", &v6, 0x30u);
    }
  }
}

- (void)removeDelegate:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__VCWifiAssistManager_removeDelegate___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(serialQueue, block);
  }
}

uint64_t __38__VCWifiAssistManager_removeDelegate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 24) count];
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCWifiAssistManager removeDelegate:]_block_invoke";
      v11 = 1024;
      v12 = 208;
      v13 = 2112;
      v14 = v4;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d delegate %@, _delegates count = %lu after removing", &v7, 0x30u);
    }
  }

  result = [*(*(a1 + 32) + 24) count];
  if (!result)
  {
    return [*(*(a1 + 32) + 32) stop];
  }

  return result;
}

- (unsigned)wifiAssistState
{
  if (!self->_userPrefered)
  {
    return 1;
  }

  if (self->_inBudget)
  {
    return 0;
  }

  return 2;
}

- (void)didStartTrackingNOI:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCWifiAssistManager didStartTrackingNOI:]";
      v11 = 1024;
      v12 = 227;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d noi = %p", &v7, 0x26u);
    }
  }

  self->_wifiNOI = a3;
  [(VCWifiAssistManager *)self queryBudget];
}

- (void)didStopTrackingNOI:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCWifiAssistManager didStopTrackingNOI:]";
      v11 = 1024;
      v12 = 234;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d noi = %p", &v7, 0x26u);
    }
  }

  self->_wifiNOI = 0;
}

- (void)init
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Can not get NWNetworkOfInterestManager", v2, v3, v4, v5, v6);
}

void __34__VCWifiAssistManager_queryBudget__block_invoke_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCWifiAssistManager queryBudget]_block_invoke";
  v6 = 1024;
  v7 = 152;
  v8 = 2112;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error in canUseOnAlternateNOI: %@", v3, 0x26u);
}

void __34__VCWifiAssistManager_queryBudget__block_invoke_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCWifiAssistManager queryBudget]_block_invoke";
  v8 = 1024;
  v9 = 155;
  v10 = 2048;
  v11 = [a2 count];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected result count(%lu) of Wifi assist budget query", &v4, 0x26u);
}

@end