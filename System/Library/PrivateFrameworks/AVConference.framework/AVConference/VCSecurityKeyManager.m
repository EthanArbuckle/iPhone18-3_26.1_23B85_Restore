@interface VCSecurityKeyManager
- (BOOL)addSecurityKeyMaterial:(id)a3 securityKeyMode:(char)a4;
- (BOOL)associateMKI:(id)a3 withParticipantID:(unint64_t)a4;
- (BOOL)startTimers;
- (VCSecurityKeyManager)initWithDelegate:(id)a3 options:(const tagVCSecurityKeyManagerOptions *)a4;
- (double)firstExpirationTime;
- (double)pruneAllExpiredKeys;
- (id)copyMKMWithPrefix:(id)a3 forParticipantID:(unint64_t)a4;
- (id)delegate;
- (id)getLatestRecvKeyMaterial;
- (id)getRecvKeyMaterialWithIndex:(id)a3;
- (id)getSendKeyMaterialWithIndex:(id)a3;
- (id)latestSendKeyMaterialWithSecurityKeyMode:(char)a3;
- (void)adjustMKILength:(id)a3 securityKeyMode:(char)a4;
- (void)dealloc;
- (void)detectInabilityToDecryptSymptom:(id)a3 prefix:(id)a4;
- (void)handlePruneTimerEventAndReschedule;
- (void)notifyEncryptionInfoChange:(id)a3 securityKeyMode:(char)a4;
- (void)pruneRecvKeyMaterialWithDelay:(double)a3;
- (void)pruneSendKeyMaterialWithDelay:(double)a3;
- (void)releaseTimers;
- (void)replaceMKIWithShortMKI:(id)a3;
- (void)scheduleEncryptionRollTimerWithDelay:(double)a3;
- (void)schedulePruneTimer:(double)a3;
- (void)start;
- (void)startTimers;
- (void)stop;
- (void)stopTimers;
@end

@implementation VCSecurityKeyManager

- (VCSecurityKeyManager)initWithDelegate:(id)a3 options:(const tagVCSecurityKeyManagerOptions *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCSecurityKeyManager;
  v6 = [(VCSecurityKeyManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, a3);
    v7->_sendKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_receiveKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_prunePendingReceiveKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_latestSendKeyIndex = 0;
    v7->_latestReceiveKeyIndex = 0;
    v7->_keyIndexNotReceived = 0;
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v7->_keyManagerQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSecurityKeyManager.keyManagerQueue", 0, CustomRootQueue);
    v7->_unknownKeyIndexList = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a4)
    {
      v7->_shortMKIForOneToOneEnabled = a4->var0;
      v7->_shortMKIForGFTEnabled = a4->var1;
    }

    v7->_forceRemoteMKMMissing = [VCDefaults BOOLeanValueForKey:@"forceRemoteMKMMissing" defaultValue:0];
    [VCDefaults getDoubleValueForKey:@"keyMaterialNotUsedTimeout" defaultValue:35.0];
    v7->_keyMaterialNotUsedTimeout = v9;
    if (objc_opt_class() == v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v21 = v11;
          v22 = 2080;
          v23 = "[VCSecurityKeyManager initWithDelegate:options:]";
          v24 = 1024;
          v25 = 123;
          v26 = 2048;
          v27 = a3;
          v13 = " [%s] %s:%d security delegate %p";
          v14 = v12;
          v15 = 38;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCSecurityKeyManager *)v7 performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = v16;
          v22 = 2080;
          v23 = "[VCSecurityKeyManager initWithDelegate:options:]";
          v24 = 1024;
          v25 = 123;
          v26 = 2112;
          v27 = v10;
          v28 = 2048;
          v29 = v7;
          v30 = 2048;
          v31 = a3;
          v13 = " [%s] %s:%d %@(%p) security delegate %p";
          v14 = v17;
          v15 = 58;
          goto LABEL_14;
        }
      }
    }
  }

  return v7;
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
        v15 = "[VCSecurityKeyManager dealloc]";
        v16 = 1024;
        v17 = 129;
        v6 = " [%s] %s:%d deallocating";
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
      v3 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
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
        v15 = "[VCSecurityKeyManager dealloc]";
        v16 = 1024;
        v17 = 129;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) deallocating";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCSecurityKeyManager *)self releaseTimers];
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_reportingAgentWeak, 0);

  dispatch_release(self->_keyManagerQueue);
  v11.receiver = self;
  v11.super_class = VCSecurityKeyManager;
  [(VCSecurityKeyManager *)&v11 dealloc];
}

- (id)delegate
{
  if (self->_isRunning)
  {
    return objc_loadWeak(&self->_delegate);
  }

  else
  {
    return 0;
  }
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  keyManagerQueue = self->_keyManagerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__VCSecurityKeyManager_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(keyManagerQueue, v3);
}

void __29__VCSecurityKeyManager_start__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[136])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v3;
        v13 = 2080;
        v14 = "[VCSecurityKeyManager start]_block_invoke";
        v15 = 1024;
        v16 = 164;
        v5 = " [%s] %s:%d Security key manager is already started";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 136) = [v2 startTimers];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 136))
        {
          v10 = @"started";
        }

        else
        {
          v10 = @"failed to start";
        }

        v11 = 136315906;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSecurityKeyManager start]_block_invoke";
        v15 = 1024;
        v16 = 162;
        v17 = 2112;
        v18 = v10;
        v5 = " [%s] %s:%d Security key manager start result=[%@]";
        v6 = v9;
        v7 = 38;
        goto LABEL_11;
      }
    }
  }
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  keyManagerQueue = self->_keyManagerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__VCSecurityKeyManager_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(keyManagerQueue, v3);
}

void __28__VCSecurityKeyManager_stop__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 0;
    [*(a1 + 32) stopTimers];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v2;
        v8 = 2080;
        v9 = "[VCSecurityKeyManager stop]_block_invoke";
        v10 = 1024;
        v11 = 174;
        v4 = " [%s] %s:%d Security key manager stopped";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v5;
      v8 = 2080;
      v9 = "[VCSecurityKeyManager stop]_block_invoke";
      v10 = 1024;
      v11 = 176;
      v4 = " [%s] %s:%d MW control channel already stopped";
      goto LABEL_8;
    }
  }
}

- (void)releaseTimers
{
  pruneTimer = self->_pruneTimer;
  if (pruneTimer)
  {
    dispatch_source_cancel(pruneTimer);
    v4 = self->_pruneTimer;
    if (v4)
    {
      dispatch_release(v4);
      self->_pruneTimer = 0;
    }
  }

  encryptionKeyRollTimer = self->_encryptionKeyRollTimer;
  if (encryptionKeyRollTimer)
  {
    dispatch_source_cancel(encryptionKeyRollTimer);
    v6 = self->_encryptionKeyRollTimer;
    if (v6)
    {
      dispatch_release(v6);
      self->_encryptionKeyRollTimer = 0;
    }
  }
}

- (BOOL)startTimers
{
  handler[5] = *MEMORY[0x1E69E9840];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_keyManagerQueue);
  self->_pruneTimer = v3;
  if (v3)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__VCSecurityKeyManager_startTimers__block_invoke;
    handler[3] = &unk_1E85F3778;
    handler[4] = self;
    dispatch_source_set_event_handler(v3, handler);
    pruneTimer = self->_pruneTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__VCSecurityKeyManager_startTimers__block_invoke_2;
    v10[3] = &unk_1E85F3778;
    v10[4] = self;
    dispatch_source_set_cancel_handler(pruneTimer, v10);
    dispatch_resume(self->_pruneTimer);
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_keyManagerQueue);
    self->_encryptionKeyRollTimer = v5;
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __35__VCSecurityKeyManager_startTimers__block_invoke_56;
      v9[3] = &unk_1E85F3778;
      v9[4] = self;
      dispatch_source_set_event_handler(v5, v9);
      encryptionKeyRollTimer = self->_encryptionKeyRollTimer;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__VCSecurityKeyManager_startTimers__block_invoke_57;
      v8[3] = &unk_1E85F3778;
      v8[4] = self;
      dispatch_source_set_cancel_handler(encryptionKeyRollTimer, v8);
      dispatch_resume(self->_encryptionKeyRollTimer);
      return 1;
    }

    [(VCSecurityKeyManager *)self startTimers];
  }

  else
  {
    [(VCSecurityKeyManager *)self startTimers];
  }

  [(VCSecurityKeyManager *)self releaseTimers];
  return 0;
}

void __35__VCSecurityKeyManager_startTimers__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 120) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCSecurityKeyManager startTimers]_block_invoke_2";
      v9 = 1024;
      v10 = 204;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pruneTimer cancelled", &v5, 0x1Cu);
    }
  }
}

uint64_t __35__VCSecurityKeyManager_startTimers__block_invoke_56(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCSecurityKeyManager startTimers]_block_invoke";
      v9 = 1024;
      v10 = 212;
      v11 = 1024;
      v12 = 30;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encryption key material has failed to roll at boundary=%d seconds, calling didEncryptionKeyRollTimeout", &v5, 0x22u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

void __35__VCSecurityKeyManager_startTimers__block_invoke_57(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 128) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCSecurityKeyManager startTimers]_block_invoke";
      v9 = 1024;
      v10 = 217;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encryption roll timer cancelled", &v5, 0x1Cu);
    }
  }
}

- (void)stopTimers
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_pruneTimer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCSecurityKeyManager stopTimers]";
        v11 = 1024;
        v12 = 232;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cancelling pruneTimer", &v7, 0x1Cu);
      }
    }

    dispatch_source_cancel(self->_pruneTimer);
  }

  if (self->_encryptionKeyRollTimer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSecurityKeyManager stopTimers]";
        v11 = 1024;
        v12 = 236;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cancelling encryption key roll timer", &v7, 0x1Cu);
      }
    }

    dispatch_source_cancel(self->_encryptionKeyRollTimer);
  }
}

- (BOOL)addSecurityKeyMaterial:(id)a3 securityKeyMode:(char)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKeyedSubscript:@"SecurityKeyIndex"];
  if (v7)
  {
    v8 = [a3 objectForKeyedSubscript:@"SecurityKeyIndex"];
    keyManagerQueue = self->_keyManagerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VCSecurityKeyManager_addSecurityKeyMaterial_securityKeyMode___block_invoke;
    block[3] = &unk_1E85F5E38;
    block[4] = self;
    block[5] = v8;
    block[6] = a3;
    v13 = a4;
    dispatch_sync(keyManagerQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSecurityKeyManager addSecurityKeyMaterial:v10 securityKeyMode:?];
    }
  }

  return v7 != 0;
}

void __63__VCSecurityKeyManager_addSecurityKeyMaterial_securityKeyMode___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)] || objc_msgSend(*(*(a1 + 32) + 48), "objectForKeyedSubscript:", *(a1 + 40)))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v5 = *(a1 + 40);
          v8 = *(v6 + 40);
          v7 = *(v6 + 48);
          *v49 = 136316418;
          *&v49[4] = v3;
          *&v49[12] = 2080;
          *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
          *&v49[22] = 1024;
          LODWORD(v50) = 257;
          WORD2(v50) = 2112;
          *(&v50 + 6) = v5;
          HIWORD(v50) = 2112;
          v51 = v8;
          *v52 = 2112;
          *&v52[2] = v7;
          v9 = " [%s] %s:%d Found duplicate key index '%@': sendKeys (%@), receiveKeys (%@) passed down from IDS. Updating key material";
          v10 = v4;
          v11 = 58;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v49, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v2 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v16 = *(v14 + 40);
          v17 = *(v14 + 48);
          *v49 = 136316930;
          *&v49[4] = v12;
          *&v49[12] = 2080;
          *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
          *&v49[22] = 1024;
          LODWORD(v50) = 257;
          WORD2(v50) = 2112;
          *(&v50 + 6) = v2;
          HIWORD(v50) = 2048;
          v51 = v14;
          *v52 = 2112;
          *&v52[2] = v15;
          *&v52[10] = 2112;
          *&v52[12] = v16;
          *&v52[20] = 2112;
          *&v52[22] = v17;
          v9 = " [%s] %s:%d %@(%p) Found duplicate key index '%@': sendKeys (%@), receiveKeys (%@) passed down from IDS. Updating key material";
          v10 = v13;
          v11 = 78;
          goto LABEL_13;
        }
      }
    }
  }

  v18 = *(a1 + 32);
  if (*(v18 + 90) != 1)
  {
    [*(v18 + 48) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
LABEL_20:
    if ([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"SecurityLocallyGenerated", *v49, *&v49[16], v50, v51, *v52, *&v52[16]), "BOOLValue"}])
    {
      [*(*(a1 + 32) + 40) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
      if (!VCMediaKeyIndex_isEqual(*(*(a1 + 32) + 64), *(a1 + 40)))
      {
        [*(a1 + 32) notifyEncryptionInfoChange:*(a1 + 48) securityKeyMode:*(a1 + 56)];
        VCMediaKeyIndex_ReleaseAndCopyNewValue((*(a1 + 32) + 64), *(a1 + 40));
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(LocalCenter, @"VCSecurityKeyManagerNotification_SendKeyMaterialChanged", *(a1 + 32), *(a1 + 48), 1u);
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_45;
          }

          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          v41 = *(a1 + 40);
          *v49 = 136315906;
          *&v49[4] = v39;
          *&v49[12] = 2080;
          *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
          *&v49[22] = 1024;
          LODWORD(v50) = 280;
          WORD2(v50) = 2112;
          *(&v50 + 6) = v41;
          v42 = " [%s] %s:%d Received keyIndex '%@', calling scheduleEncryptionRollTimer";
          v43 = v40;
          v44 = 38;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v22 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          else
          {
            v22 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_45;
          }

          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          v47 = *(a1 + 32);
          v48 = *(a1 + 40);
          *v49 = 136316418;
          *&v49[4] = v45;
          *&v49[12] = 2080;
          *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
          *&v49[22] = 1024;
          LODWORD(v50) = 280;
          WORD2(v50) = 2112;
          *(&v50 + 6) = v22;
          HIWORD(v50) = 2048;
          v51 = v47;
          *v52 = 2112;
          *&v52[2] = v48;
          v42 = " [%s] %s:%d %@(%p) Received keyIndex '%@', calling scheduleEncryptionRollTimer";
          v43 = v46;
          v44 = 58;
        }

        _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, v42, v49, v44);
LABEL_45:
        [*(a1 + 32) scheduleEncryptionRollTimerWithDelay:{1230.0, *v49, *&v49[8], v50, v51, *v52, *&v52[8]}];
      }

LABEL_46:
      VCMediaKeyIndex_ReleaseAndCopyNewValue((*(a1 + 32) + 72), *(a1 + 40));
      return;
    }

    v23 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v23, @"VCSecurityKeyManagerNotification_ReceiveKeyMaterialChanged", *(a1 + 32), *(a1 + 48), 1u);
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_36;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v27 = *(a1 + 40);
      v28 = [*(a1 + 48) objectForKeyedSubscript:@"SecurityIDSParticipantID"];
      v29 = [*(a1 + 48) objectForKeyedSubscript:@"SecurityShortKeyIndexLength"];
      *v49 = 136316418;
      *&v49[4] = v25;
      *&v49[12] = 2080;
      *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 287;
      WORD2(v50) = 2112;
      *(&v50 + 6) = v27;
      HIWORD(v50) = 2112;
      v51 = v28;
      *v52 = 2112;
      *&v52[2] = v29;
      v30 = " [%s] %s:%d Received keyIndex '%@' for participantID '%@' with shortMKILength '%@', calling resetDecryptionTimeout";
      v31 = v26;
      v32 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_36;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      v37 = [*(a1 + 48) objectForKeyedSubscript:@"SecurityIDSParticipantID"];
      v38 = [*(a1 + 48) objectForKeyedSubscript:@"SecurityShortKeyIndexLength"];
      *v49 = 136316930;
      *&v49[4] = v33;
      *&v49[12] = 2080;
      *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 287;
      WORD2(v50) = 2112;
      *(&v50 + 6) = v24;
      HIWORD(v50) = 2048;
      v51 = v35;
      *v52 = 2112;
      *&v52[2] = v36;
      *&v52[10] = 2112;
      *&v52[12] = v37;
      *&v52[20] = 2112;
      *&v52[22] = v38;
      v30 = " [%s] %s:%d %@(%p) Received keyIndex '%@' for participantID '%@' with shortMKILength '%@', calling resetDecryptionTimeout";
      v31 = v34;
      v32 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, v49, v32);
LABEL_36:
    [objc_msgSend(*(a1 + 32) delegate];
    goto LABEL_46;
  }

  if ([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"SecurityLocallyGenerated", "BOOLValue"}])
  {
    goto LABEL_20;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 136315650;
      *&v49[4] = v19;
      *&v49[12] = 2080;
      *&v49[14] = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]_block_invoke";
      *&v49[22] = 1024;
      LODWORD(v50) = 261;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Will not add remote MKM per default override.", v49, 0x1Cu);
    }
  }
}

- (id)getSendKeyMaterialWithIndex:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__28;
  v11 = __Block_byref_object_dispose__28;
  v12 = 0;
  keyManagerQueue = self->_keyManagerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__VCSecurityKeyManager_getSendKeyMaterialWithIndex___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = &v7;
  dispatch_sync(keyManagerQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __52__VCSecurityKeyManager_getSendKeyMaterialWithIndex___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v16 = *(a1 + 40);
      v17 = [*(*(a1 + 32) + 40) count];
      v26 = 136316162;
      v27 = v14;
      v28 = 2080;
      v29 = "[VCSecurityKeyManager getSendKeyMaterialWithIndex:]_block_invoke";
      v30 = 1024;
      v31 = 304;
      v32 = 2112;
      v33 = v16;
      v34 = 1024;
      LODWORD(v35) = v17;
      v18 = " [%s] %s:%d Cannot find keyIndex '%@' in send keys array of %d elements";
      v19 = v15;
      v20 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = [*(v24 + 40) count];
      v26 = 136316674;
      v27 = v21;
      v28 = 2080;
      v29 = "[VCSecurityKeyManager getSendKeyMaterialWithIndex:]_block_invoke";
      v30 = 1024;
      v31 = 304;
      v32 = 2112;
      v33 = v3;
      v34 = 2048;
      v35 = v24;
      v36 = 2112;
      v37 = v23;
      v38 = 1024;
      v39 = v25;
      v18 = " [%s] %s:%d %@(%p) Cannot find keyIndex '%@' in send keys array of %d elements";
      v19 = v22;
      v20 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v26, v20);
    return;
  }

  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v26 = 136315906;
        v27 = v4;
        v28 = 2080;
        v29 = "[VCSecurityKeyManager getSendKeyMaterialWithIndex:]_block_invoke";
        v30 = 1024;
        v31 = 302;
        v32 = 2112;
        v33 = v6;
        v7 = " [%s] %s:%d Found keyIndex '%@' in send keys in key manager";
        v8 = v5;
        v9 = 38;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v26, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v26 = 136316418;
        v27 = v10;
        v28 = 2080;
        v29 = "[VCSecurityKeyManager getSendKeyMaterialWithIndex:]_block_invoke";
        v30 = 1024;
        v31 = 302;
        v32 = 2112;
        v33 = v2;
        v34 = 2048;
        v35 = v12;
        v36 = 2112;
        v37 = v13;
        v7 = " [%s] %s:%d %@(%p) Found keyIndex '%@' in send keys in key manager";
        v8 = v11;
        v9 = 58;
        goto LABEL_15;
      }
    }
  }
}

- (id)getRecvKeyMaterialWithIndex:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__28;
  v11 = __Block_byref_object_dispose__28;
  v12 = 0;
  keyManagerQueue = self->_keyManagerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__VCSecurityKeyManager_getRecvKeyMaterialWithIndex___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = &v7;
  dispatch_sync(keyManagerQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __52__VCSecurityKeyManager_getRecvKeyMaterialWithIndex___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v5 = *(a1 + 40);
          v7 = [v6[1].data count];
          v16 = 136316418;
          v17 = v3;
          v18 = 2080;
          v19 = "[VCSecurityKeyManager getRecvKeyMaterialWithIndex:]_block_invoke";
          v20 = 1024;
          v21 = 316;
          v22 = 2048;
          v23 = v6;
          v24 = 2112;
          v25 = v5;
          v26 = 1024;
          LODWORD(v27) = v7;
          v8 = " [%s] %s:%d %p Found keyIndex '%@' in receive keys array of %d elements";
          v9 = v4;
          v10 = 54;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v2 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v13 = *(a1 + 40);
          v15 = [*(v14 + 48) count];
          v16 = 136316930;
          v17 = v11;
          v18 = 2080;
          v19 = "[VCSecurityKeyManager getRecvKeyMaterialWithIndex:]_block_invoke";
          v20 = 1024;
          v21 = 316;
          v22 = 2112;
          v23 = v2;
          v24 = 2048;
          v25 = v14;
          v26 = 2048;
          v27 = v14;
          v28 = 2112;
          v29 = v13;
          v30 = 1024;
          v31 = v15;
          v8 = " [%s] %s:%d %@(%p) %p Found keyIndex '%@' in receive keys array of %d elements";
          v9 = v12;
          v10 = 74;
          goto LABEL_12;
        }
      }
    }
  }
}

- (void)notifyEncryptionInfoChange:(id)a3 securityKeyMode:(char)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = [a3 mutableCopy];
  [(VCSecurityKeyManager *)self adjustMKILength:v6 securityKeyMode:v4];
  [-[VCSecurityKeyManager delegate](self "delegate")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCSecurityKeyManager notifyEncryptionInfoChange:securityKeyMode:]";
      v13 = 1024;
      v14 = 326;
      v15 = 1024;
      v16 = 326;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSecurityKeyManager.m:%d: Notified of new keyMaterial '%@'", &v9, 0x2Cu);
    }
  }
}

- (void)replaceMKIWithShortMKI:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"SecurityShortKeyIndexLength"];
  if (![v4 unsignedIntValue] && VCFeatureFlagManager_PQCU1Enabled())
  {
    v4 = &unk_1F579A998;
  }

  v18[0] = 0;
  v18[1] = 0;
  VCMediaKeyIndex_FullKeyBytes([a3 objectForKeyedSubscript:@"SecurityKeyIndex"], v18);
  v5 = -[VCMediaKeyIndex initWithBytes:bufferSize:uniquePrefixLength:]([VCMediaKeyIndex alloc], "initWithBytes:bufferSize:uniquePrefixLength:", v18, 16, [v4 unsignedLongLongValue]);
  [a3 setObject:v5 forKeyedSubscript:@"SecurityKeyIndex"];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCSecurityKeyManager replaceMKIWithShortMKI:]";
      v12 = 1024;
      v13 = 340;
      v14 = 1024;
      v15 = 340;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSecurityKeyManager.m:%d: Adjusted mediaKeyIndex to '%@'", &v8, 0x2Cu);
    }
  }
}

- (void)adjustMKILength:(id)a3 securityKeyMode:(char)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  if (a4 > 0)
  {
    if (a4 == 1)
    {
      if (!self->_shortMKIForOneToOneEnabled && !VCFeatureFlagManager_PQCU1Enabled() || !VCFeatureFlagManager_U1AuthTagEnabled())
      {
        return;
      }

      goto LABEL_15;
    }

    if (a4 != 3)
    {
      return;
    }
  }

  else if (a4 != -1)
  {
    if (a4 || !self->_shortMKIForGFTEnabled || !VCFeatureFlagManager_UseTLE())
    {
      return;
    }

LABEL_15:
    if (VCFeatureFlagManager_UseShortMKI())
    {

      [(VCSecurityKeyManager *)self replaceMKIWithShortMKI:a3];
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCSecurityKeyManager adjustMKILength:securityKeyMode:]";
      v13 = 1024;
      v14 = 361;
      v15 = 1024;
      v16 = v4;
      v17 = 2112;
      v18 = a3;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d MKI length adjustment for invalid key mode=%d requested for keyMaterial=%@", &v9, 0x2Cu);
    }
  }
}

- (id)latestSendKeyMaterialWithSecurityKeyMode:(char)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__28;
  v12 = __Block_byref_object_dispose__28;
  v13 = 0;
  keyManagerQueue = self->_keyManagerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__VCSecurityKeyManager_latestSendKeyMaterialWithSecurityKeyMode___block_invoke;
  v6[3] = &unk_1E85F7890;
  v6[4] = self;
  v6[5] = &v8;
  v7 = a3;
  dispatch_sync(keyManagerQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __65__VCSecurityKeyManager_latestSendKeyMaterialWithSecurityKeyMode___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  *(*(*(v2 + 8) + 8) + 40) = [objc_msgSend(*(*(a1 + 32) + 40) objectForKeyedSubscript:{*(*(a1 + 32) + 64)), "mutableCopy"}];
  v3 = *(*(*(v2 + 8) + 8) + 40);
  if (v3 && ([*(a1 + 32) adjustMKILength:v3 securityKeyMode:*(a1 + 48)], *(*(*(a1 + 40) + 8) + 40)))
  {
    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"SecurityKeyIndex"];
          v8 = [*(*(a1 + 32) + 40) count];
          v17 = 136316162;
          v18 = v5;
          v19 = 2080;
          v20 = "[VCSecurityKeyManager latestSendKeyMaterialWithSecurityKeyMode:]_block_invoke";
          v21 = 1024;
          v22 = 376;
          v23 = 2112;
          v24 = v7;
          v25 = 1024;
          LODWORD(v26) = v8;
          v9 = " [%s] %s:%d Found _latestSendKeyIndex '%@' in send keys array of %d elements";
          v10 = v6;
          v11 = 44;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"SecurityKeyIndex"];
          v16 = [*(*(a1 + 32) + 40) count];
          v17 = 136316674;
          v18 = v12;
          v19 = 2080;
          v20 = "[VCSecurityKeyManager latestSendKeyMaterialWithSecurityKeyMode:]_block_invoke";
          v21 = 1024;
          v22 = 376;
          v23 = 2112;
          v24 = v4;
          v25 = 2048;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          v29 = 1024;
          v30 = v16;
          v9 = " [%s] %s:%d %@(%p) Found _latestSendKeyIndex '%@' in send keys array of %d elements";
          v10 = v13;
          v11 = 64;
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    __65__VCSecurityKeyManager_latestSendKeyMaterialWithSecurityKeyMode___block_invoke_cold_1(v2);
  }
}

- (id)getLatestRecvKeyMaterial
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  keyManagerQueue = self->_keyManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCSecurityKeyManager_getLatestRecvKeyMaterial__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(keyManagerQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __48__VCSecurityKeyManager_getLatestRecvKeyMaterial__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 48) objectForKeyedSubscript:*(*(a1 + 32) + 72)])
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*v2 + 6) objectForKeyedSubscript:*(*v2 + 9)];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *v2;
          v8 = *(*v2 + 9);
          v9 = [v7[6] count];
          v24 = 136316162;
          v25 = v5;
          v26 = 2080;
          v27 = "[VCSecurityKeyManager getLatestRecvKeyMaterial]_block_invoke";
          v28 = 1024;
          v29 = 391;
          v30 = 2112;
          v31 = v8;
          v32 = 1024;
          LODWORD(v33) = v9;
          v10 = " [%s] %s:%d Found keyIndex '%@' in receive keys array of %d elements";
          v11 = v6;
          v12 = 44;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v24, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v2;
          v16 = *(v15 + 9);
          v17 = [*(v15 + 6) count];
          v24 = 136316674;
          v25 = v13;
          v26 = 2080;
          v27 = "[VCSecurityKeyManager getLatestRecvKeyMaterial]_block_invoke";
          v28 = 1024;
          v29 = 391;
          v30 = 2112;
          v31 = v3;
          v32 = 2048;
          v33 = v15;
          v34 = 2112;
          v35 = v16;
          v36 = 1024;
          v37 = v17;
          v10 = " [%s] %s:%d %@(%p) Found keyIndex '%@' in receive keys array of %d elements";
          v11 = v14;
          v12 = 64;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__VCSecurityKeyManager_getLatestRecvKeyMaterial__block_invoke_cold_1(v18, v2);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v21 = *v2;
          v22 = *(*v2 + 9);
          v23 = [*(*v2 + 6) count];
          v24 = 136316674;
          v25 = v19;
          v26 = 2080;
          v27 = "[VCSecurityKeyManager getLatestRecvKeyMaterial]_block_invoke";
          v28 = 1024;
          v29 = 393;
          v30 = 2112;
          v31 = v4;
          v32 = 2048;
          v33 = v21;
          v34 = 2112;
          v35 = v22;
          v36 = 1024;
          v37 = v23;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Cannot find _latestReceiveKeyIndex '%@' in receive keys array of %d elements. Invalidating it...", &v24, 0x40u);
        }
      }
    }

    VCMediaKeyIndex_ReleaseAndCopyNewValue(*v2 + 9, 0);
  }
}

- (void)pruneSendKeyMaterialWithDelay:(double)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = micro();
  self->_isSendKeysCleanUpPending = 1;
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  keyManagerQueue = self->_keyManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSecurityKeyManager_pruneSendKeyMaterialWithDelay___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  *&block[5] = v5;
  dispatch_after(v6, keyManagerQueue, block);
}

uint64_t __54__VCSecurityKeyManager_pruneSendKeyMaterialWithDelay___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  obj = [*(*(a1 + 32) + 40) allKeys];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(*(a1 + 32) + 40);
    *buf = 136315906;
    v47 = v3;
    v48 = 2080;
    v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
    v50 = 1024;
    v51 = 407;
    v52 = 2112;
    v53 = v5;
    v6 = " [%s] %s:%d Pruning obsolete send keys (%@)";
    v7 = v4;
    v8 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    *buf = 136316418;
    v47 = v9;
    v48 = 2080;
    v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
    v50 = 1024;
    v51 = 407;
    v52 = 2112;
    v53 = v2;
    v54 = 2048;
    v55 = v11;
    v56 = 2112;
    v57 = v12;
    v6 = " [%s] %s:%d %@(%p) Pruning obsolete send keys (%@)";
    v7 = v10;
    v8 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_12:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (!v13)
  {
    goto LABEL_31;
  }

  v15 = v13;
  v16 = *v43;
  *&v14 = 136315906;
  v39 = v14;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v42 + 1) + 8 * i);
      [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 40) objectForKeyedSubscript:{v18, v39), "objectForKeyedSubscript:", @"SecurityKeySetTime", "doubleValue"}];
      if (v19 < *(a1 + 40))
      {
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v39;
              v47 = v27;
              v48 = 2080;
              v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
              v50 = 1024;
              v51 = 412;
              v52 = 2112;
              v53 = v18;
              v24 = v28;
              v25 = " [%s] %s:%d Pruned keyIndex '%@'";
              v26 = 38;
LABEL_27:
              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
            }
          }
        }

        else
        {
          v20 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v20 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(a1 + 32);
              *buf = 136316418;
              v47 = v21;
              v48 = 2080;
              v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
              v50 = 1024;
              v51 = 412;
              v52 = 2112;
              v53 = v20;
              v54 = 2048;
              v55 = v23;
              v56 = 2112;
              v57 = v18;
              v24 = v22;
              v25 = " [%s] %s:%d %@(%p) Pruned keyIndex '%@'";
              v26 = 58;
              goto LABEL_27;
            }
          }
        }

        [*(*(a1 + 32) + 40) removeObjectForKey:v18];
        [*(*(a1 + 32) + 48) removeObjectForKey:v18];
        continue;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
  }

  while (v15);
LABEL_31:
  result = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(*(a1 + 32) + 64)];
  if (!result)
  {
    VCMediaKeyIndex_ReleaseAndCopyNewValue((*(a1 + 32) + 64), 0);
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = v31;
          v48 = 2080;
          v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
          v50 = 1024;
          v51 = 420;
          v33 = " [%s] %s:%d Pruned last uplink MKM from sendKeys. calling scheduleEncryptionRollTimer";
          v34 = v32;
          v35 = 28;
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          *buf = 136316162;
          v47 = v36;
          v48 = 2080;
          v49 = "[VCSecurityKeyManager pruneSendKeyMaterialWithDelay:]_block_invoke";
          v50 = 1024;
          v51 = 420;
          v52 = 2112;
          v53 = v30;
          v54 = 2048;
          v55 = v38;
          v33 = " [%s] %s:%d %@(%p) Pruned last uplink MKM from sendKeys. calling scheduleEncryptionRollTimer";
          v34 = v37;
          v35 = 48;
LABEL_42:
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
        }
      }
    }

    result = [*(a1 + 32) scheduleEncryptionRollTimerWithDelay:30.0];
  }

  *(*(a1 + 32) + 88) = 0;
  return result;
}

- (void)pruneRecvKeyMaterialWithDelay:(double)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = micro();
  self->_isReceiveKeysCleanUpPending = 1;
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  keyManagerQueue = self->_keyManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSecurityKeyManager_pruneRecvKeyMaterialWithDelay___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  *&block[5] = v5;
  dispatch_after(v6, keyManagerQueue, block);
}

uint64_t __54__VCSecurityKeyManager_pruneRecvKeyMaterialWithDelay___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  obj = [*(*(a1 + 32) + 48) allKeys];
  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v6 = *(*v2 + 6);
    *buf = 136315906;
    v42 = v4;
    v43 = 2080;
    v44 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
    v45 = 1024;
    v46 = 435;
    v47 = 2112;
    v48 = v6;
    v7 = " [%s] %s:%d Pruning obsolete receive keys (%@)";
    v8 = v5;
    v9 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = *v2;
    v13 = *(*v2 + 6);
    *buf = 136316418;
    v42 = v10;
    v43 = 2080;
    v44 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
    v45 = 1024;
    v46 = 435;
    v47 = 2112;
    v48 = v3;
    v49 = 2048;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v7 = " [%s] %s:%d %@(%p) Pruning obsolete receive keys (%@)";
    v8 = v11;
    v9 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_12:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (!v14)
  {
    goto LABEL_31;
  }

  v16 = v14;
  v17 = *v57;
  *&v15 = 136315906;
  v39 = v15;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v57 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v56 + 1) + 8 * i);
      [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 48) objectForKeyedSubscript:{v19, v39), "objectForKeyedSubscript:", @"SecurityKeySetTime", "doubleValue"}];
      if (v20 < *(a1 + 40))
      {
        if (objc_opt_class() == *v2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v28 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v39;
              v42 = v28;
              v43 = 2080;
              v44 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
              v45 = 1024;
              v46 = 440;
              v47 = 2112;
              v48 = v19;
              v25 = v29;
              v26 = " [%s] %s:%d Pruned keyIndex '%@'";
              v27 = 38;
LABEL_27:
              _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
            }
          }
        }

        else
        {
          v21 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v21 = [*v2 performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v24 = *v2;
              *buf = 136316418;
              v42 = v22;
              v43 = 2080;
              v44 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
              v45 = 1024;
              v46 = 440;
              v47 = 2112;
              v48 = v21;
              v49 = 2048;
              v50 = v24;
              v51 = 2112;
              v52 = v19;
              v25 = v23;
              v26 = " [%s] %s:%d %@(%p) Pruned keyIndex '%@'";
              v27 = 58;
              goto LABEL_27;
            }
          }
        }

        [*(*v2 + 6) removeObjectForKey:v19];
        continue;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
  }

  while (v16);
LABEL_31:
  result = [*(*v2 + 6) objectForKeyedSubscript:*(*v2 + 9)];
  if (!result)
  {
    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __54__VCSecurityKeyManager_pruneRecvKeyMaterialWithDelay___block_invoke_cold_1(v32, v2, v33);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v36 = *v2;
          v37 = *(*v2 + 9);
          v38 = *(*v2 + 6);
          *buf = 136316674;
          v42 = v34;
          v43 = 2080;
          v44 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
          v45 = 1024;
          v46 = 447;
          v47 = 2112;
          v48 = v31;
          v49 = 2048;
          v50 = v36;
          v51 = 2112;
          v52 = v37;
          v53 = 2112;
          v54 = v38;
          _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Pruned _latestReceiveKeyIndex '%@‘ from receiveKeys (%@). Nullifying it", buf, 0x44u);
        }
      }
    }

    result = VCMediaKeyIndex_ReleaseAndCopyNewValue(*v2 + 9, 0);
  }

  *(*v2 + 89) = 0;
  return result;
}

- (double)pruneAllExpiredKeys
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = micro();
  if ([(NSMutableDictionary *)self->_prunePendingReceiveKeys count])
  {
    v4 = [(NSMutableDictionary *)self->_prunePendingReceiveKeys allKeys];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v4;
    v28 = [v4 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v28)
    {
      v5 = 1.79769313e308;
      v27 = *v50;
      while (1)
      {
        v6 = 0;
        do
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [(NSMutableDictionary *)self->_prunePendingReceiveKeys objectForKeyedSubscript:*(*(&v49 + 1) + 8 * v6)];
          v29 = v6;
          if ([v7 count])
          {
            v8 = [v7 allKeys];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v30 = v8;
            v9 = [v8 countByEnumeratingWithState:&v44 objects:v43 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v45;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v45 != v11)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v13 = *(*(&v44 + 1) + 8 * i);
                  v14 = [v7 objectForKeyedSubscript:v13];
                  [v14 doubleValue];
                  if (v15 <= v3)
                  {
                    if (objc_opt_class() == self)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v23 = VRTraceErrorLogLevelToCSTR();
                        v24 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315906;
                          v32 = v23;
                          v33 = 2080;
                          v34 = "[VCSecurityKeyManager pruneAllExpiredKeys]";
                          v35 = 1024;
                          v36 = 481;
                          v37 = 2112;
                          v38 = v13;
                          v20 = v24;
                          v21 = " [%s] %s:%d Pruned keyIndex '%@'";
                          v22 = 38;
LABEL_26:
                          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
                        }
                      }
                    }

                    else
                    {
                      v17 = &stru_1F570E008;
                      if (objc_opt_respondsToSelector())
                      {
                        v17 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v18 = VRTraceErrorLogLevelToCSTR();
                        v19 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136316418;
                          v32 = v18;
                          v33 = 2080;
                          v34 = "[VCSecurityKeyManager pruneAllExpiredKeys]";
                          v35 = 1024;
                          v36 = 481;
                          v37 = 2112;
                          v38 = v17;
                          v39 = 2048;
                          v40 = self;
                          v41 = 2112;
                          v42 = v13;
                          v20 = v19;
                          v21 = " [%s] %s:%d %@(%p) Pruned keyIndex '%@'";
                          v22 = 58;
                          goto LABEL_26;
                        }
                      }
                    }

                    [(NSMutableDictionary *)self->_receiveKeys removeObjectForKey:v13];
                    [v7 removeObjectForKey:v13];
                    continue;
                  }

                  [v14 doubleValue];
                  if (v16 < v5)
                  {
                    v5 = v16;
                  }
                }

                v10 = [v30 countByEnumeratingWithState:&v44 objects:v43 count:16];
              }

              while (v10);
            }
          }

          ++v6;
        }

        while (v29 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v49 objects:v48 count:16];
        if (!v28)
        {
          return v5;
        }
      }
    }
  }

  return 1.79769313e308;
}

- (double)firstExpirationTime
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_prunePendingReceiveKeys allKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v4)
  {
    return 1.79769313e308;
  }

  v5 = v4;
  v6 = *v24;
  v7 = 1.79769313e308;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v24 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [(NSMutableDictionary *)self->_prunePendingReceiveKeys objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
      v10 = [v9 allKeys];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * j)), "doubleValue"}];
            if (v15 < v7)
            {
              v7 = v15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v12);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v5);
  return v7;
}

- (void)schedulePruneTimer:(double)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_isRunning)
  {
    v5 = micro();
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v9 = VRTraceErrorLogLevelToCSTR(), v10 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_16:
        if (a3 != 1.79769313e308 && v5 < a3)
        {
          dispatch_suspend(self->_pruneTimer);
          pruneTimer = self->_pruneTimer;
          v17 = dispatch_time(0, ((a3 - v5) * 1000000000.0));
          dispatch_source_set_timer(pruneTimer, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(self->_pruneTimer);
        }

        return;
      }

      v18 = 136316162;
      v19 = v9;
      v20 = 2080;
      v21 = "[VCSecurityKeyManager schedulePruneTimer:]";
      v22 = 1024;
      v23 = 523;
      v24 = 2048;
      v25 = v5;
      v26 = 2048;
      v27 = a3;
      v11 = " [%s] %s:%d schedulePruneTimer: currentTime=%f, firstExpirationTime=%f";
      v12 = v10;
      v13 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v18 = 136316674;
      v19 = v14;
      v20 = 2080;
      v21 = "[VCSecurityKeyManager schedulePruneTimer:]";
      v22 = 1024;
      v23 = 523;
      v24 = 2112;
      v25 = *&v6;
      v26 = 2048;
      v27 = *&self;
      v28 = 2048;
      v29 = v5;
      v30 = 2048;
      v31 = a3;
      v11 = " [%s] %s:%d %@(%p) schedulePruneTimer: currentTime=%f, firstExpirationTime=%f";
      v12 = v15;
      v13 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = v7;
      v20 = 2080;
      v21 = "[VCSecurityKeyManager schedulePruneTimer:]";
      v22 = 1024;
      v23 = 519;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempt to schedulePrineTimer when VCSecurityManager is stopped", &v18, 0x1Cu);
    }
  }
}

- (void)handlePruneTimerEventAndReschedule
{
  v21 = *MEMORY[0x1E69E9840];
  [(VCSecurityKeyManager *)self pruneAllExpiredKeys];
  [(VCSecurityKeyManager *)self schedulePruneTimer:?];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v4;
        v13 = 2080;
        v14 = "[VCSecurityKeyManager handlePruneTimerEventAndReschedule]";
        v15 = 1024;
        v16 = 535;
        v6 = " [%s] %s:%d pruneTimerEvent fired";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCSecurityKeyManager handlePruneTimerEventAndReschedule]";
        v15 = 1024;
        v16 = 535;
        v17 = 2112;
        v18 = v3;
        v19 = 2048;
        v20 = self;
        v6 = " [%s] %s:%d %@(%p) pruneTimerEvent fired";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)scheduleEncryptionRollTimerWithDelay:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_isRunning)
  {
    dispatch_suspend(self->_encryptionKeyRollTimer);
    encryptionKeyRollTimer = self->_encryptionKeyRollTimer;
    v6 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(encryptionKeyRollTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_encryptionKeyRollTimer);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCSecurityKeyManager scheduleEncryptionRollTimerWithDelay:]";
        v18 = 1024;
        v19 = 546;
        v20 = 2048;
        v21 = a3;
        v9 = " [%s] %s:%d Scheduled encryption roll timeout delta=%f seconds";
        v10 = v8;
        v11 = 38;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCSecurityKeyManager scheduleEncryptionRollTimerWithDelay:]";
      v18 = 1024;
      v19 = 540;
      v9 = " [%s] %s:%d Security key manager has not been started, yet";
      v10 = v13;
      v11 = 28;
      goto LABEL_8;
    }
  }
}

- (BOOL)associateMKI:(id)a3 withParticipantID:(unint64_t)a4
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [VCSecurityKeyManager associateMKI:&v7 withParticipantID:?];
    return v7;
  }

  if (!a4)
  {
    [VCSecurityKeyManager associateMKI:&v7 withParticipantID:?];
    return v7;
  }

  keyManagerQueue = self->_keyManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCSecurityKeyManager_associateMKI_withParticipantID___block_invoke;
  block[3] = &unk_1E85F50D8;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(keyManagerQueue, block);
  return 1;
}

uint64_t __55__VCSecurityKeyManager_associateMKI_withParticipantID___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = micro();
  v3 = [*(a1 + 32) getNotUsedTimeout];
  v4 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(a1 + 32) + 56) setObject:v4 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  }

  v5 = [v4 allKeys];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = v2 + v3;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v8), *(*(&v29 + 1) + 8 * i)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v7);
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", micro() + 1200.0), *(a1 + 40)}];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *v24 = 136316162;
        *&v24[4] = v12;
        *&v24[12] = 2080;
        *&v24[14] = "[VCSecurityKeyManager associateMKI:withParticipantID:]_block_invoke";
        *&v24[22] = 1024;
        LODWORD(v25) = 571;
        WORD2(v25) = 2112;
        *(&v25 + 6) = v14;
        HIWORD(v25) = 1024;
        LODWORD(v26) = 1200;
        v15 = " [%s] %s:%d Reset pruning timeout for keyIndex '%@' to default value '%d'";
        v16 = v13;
        v17 = 44;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, v24, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        *v24 = 136316674;
        *&v24[4] = v18;
        *&v24[12] = 2080;
        *&v24[14] = "[VCSecurityKeyManager associateMKI:withParticipantID:]_block_invoke";
        *&v24[22] = 1024;
        LODWORD(v25) = 571;
        WORD2(v25) = 2112;
        *(&v25 + 6) = v11;
        HIWORD(v25) = 2048;
        v26 = v20;
        LOWORD(v27) = 2112;
        *(&v27 + 2) = v21;
        WORD5(v27) = 1024;
        HIDWORD(v27) = 1200;
        v15 = " [%s] %s:%d %@(%p) Reset pruning timeout for keyIndex '%@' to default value '%d'";
        v16 = v19;
        v17 = 64;
        goto LABEL_20;
      }
    }
  }

  v22 = *(a1 + 32);
  [v22 firstExpirationTime];
  return [v22 schedulePruneTimer:?];
}

- (void)detectInabilityToDecryptSymptom:(id)a3 prefix:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = [a3 count];
  unknownKeyIndexList = self->_unknownKeyIndexList;
  if (v6)
  {
    [(NSMutableArray *)unknownKeyIndexList removeObject:a4];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v12 = [(NSMutableDictionary *)self->_receiveKeys count];
      *v30 = 136316162;
      *&v30[4] = v10;
      *&v30[12] = 2080;
      *&v30[14] = "[VCSecurityKeyManager detectInabilityToDecryptSymptom:prefix:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 593;
      WORD2(v31) = 2112;
      *(&v31 + 6) = a4;
      HIWORD(v31) = 1024;
      LODWORD(v32) = v12;
      v13 = " [%s] %s:%d Found prefix '%@' in receive keys array of %d elements";
      v14 = v11;
      v15 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v18 = [(NSMutableDictionary *)self->_receiveKeys count];
      *v30 = 136316674;
      *&v30[4] = v16;
      *&v30[12] = 2080;
      *&v30[14] = "[VCSecurityKeyManager detectInabilityToDecryptSymptom:prefix:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 593;
      WORD2(v31) = 2112;
      *(&v31 + 6) = v8;
      HIWORD(v31) = 2048;
      v32 = self;
      LOWORD(v33) = 2112;
      *(&v33 + 2) = a4;
      WORD5(v33) = 1024;
      HIDWORD(v33) = v18;
      v13 = " [%s] %s:%d %@(%p) Found prefix '%@' in receive keys array of %d elements";
      v14 = v17;
      v15 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v30, v15);
LABEL_17:
    self->_lastKeyIndexNotReceived = 0.0;
    return;
  }

  if (([(NSMutableArray *)unknownKeyIndexList containsObject:a4]& 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v21 = [(NSMutableDictionary *)self->_receiveKeys count];
      *v30 = 136316162;
      *&v30[4] = v19;
      *&v30[12] = 2080;
      *&v30[14] = "[VCSecurityKeyManager detectInabilityToDecryptSymptom:prefix:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 583;
      WORD2(v31) = 2112;
      *(&v31 + 6) = a4;
      HIWORD(v31) = 1024;
      LODWORD(v32) = v21;
      v22 = " [%s] %s:%d Cannot find prefix '%@' in receive keys array of %d elements";
      v23 = v20;
      v24 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSecurityKeyManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v29 = [(NSMutableDictionary *)self->_receiveKeys count];
      *v30 = 136316674;
      *&v30[4] = v25;
      *&v30[12] = 2080;
      *&v30[14] = "[VCSecurityKeyManager detectInabilityToDecryptSymptom:prefix:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 583;
      WORD2(v31) = 2112;
      *(&v31 + 6) = v9;
      HIWORD(v31) = 2048;
      v32 = self;
      LOWORD(v33) = 2112;
      *(&v33 + 2) = a4;
      WORD5(v33) = 1024;
      HIDWORD(v33) = v29;
      v22 = " [%s] %s:%d %@(%p) Cannot find prefix '%@' in receive keys array of %d elements";
      v23 = v26;
      v24 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, v30, v24);
LABEL_24:
    [(NSMutableArray *)self->_unknownKeyIndexList addObject:a4, *v30, *&v30[16], v31, v32, v33];
  }

  lastKeyIndexNotReceived = self->_lastKeyIndexNotReceived;
  v28 = micro();
  if (lastKeyIndexNotReceived == 0.0)
  {
    self->_lastKeyIndexNotReceived = v28;
  }

  else if (v28 - self->_lastKeyIndexNotReceived >= 30.0)
  {
    [(VCSecurityKeyManager *)self reportingAgent];
    reportingSymptom();
  }
}

- (id)copyMKMWithPrefix:(id)a3 forParticipantID:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__28;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  keyManagerQueue = self->_keyManagerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCSecurityKeyManager_copyMKMWithPrefix_forParticipantID___block_invoke;
  block[3] = &unk_1E85F8628;
  block[4] = a3;
  block[5] = self;
  block[6] = &v11;
  block[7] = a4;
  dispatch_sync(keyManagerQueue, block);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __59__VCSecurityKeyManager_copyMKMWithPrefix_forParticipantID___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = &selRef_isLatencySensitiveModeEnabled;
    if (v3 == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      *buf = 136316162;
      v60 = v7;
      v61 = 2080;
      v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
      v63 = 1024;
      v64 = 603;
      v65 = 2112;
      v66 = v9;
      v67 = 2048;
      v68 = v10;
      v11 = " [%s] %s:%d Searching for key material with prefix=%@ for participantID=%llu";
      v12 = v8;
      v13 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = *(a1 + 56);
      *buf = 136316674;
      v60 = v14;
      v61 = 2080;
      v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
      v63 = 1024;
      v64 = 603;
      v65 = 2112;
      v66 = v6;
      v67 = 2048;
      v68 = v16;
      v69 = 2112;
      v70 = v17;
      v71 = 2048;
      v72 = v18;
      v11 = " [%s] %s:%d %@(%p) Searching for key material with prefix=%@ for participantID=%llu";
      v12 = v15;
      v13 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_13:
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = *(*(a1 + 40) + 48);
    v19 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
    if (!v19)
    {
      goto LABEL_42;
    }

    v21 = v19;
    v22 = *v79;
    *&v20 = 136316674;
    v57 = v20;
    while (1)
    {
      v23 = 0;
      v24 = v5[456];
      do
      {
        if (*v79 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v78 + 1) + 8 * v23);
        if ([(__CFString *)v25 isStartingWithPrefix:*(a1 + 32), v57])
        {
          v26 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v25];
          v27 = [(__CFString *)v26 objectForKeyedSubscript:@"SecurityIDSParticipantID"];
          if (*(a1 + 56) && (v28 = v27, [v27 unsignedLongLongValue] != *(a1 + 56)))
          {
            if (objc_opt_class() == *(a1 + 40))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v48 = VRTraceErrorLogLevelToCSTR();
                v49 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v50 = *(a1 + 32);
                  v51 = *(a1 + 56);
                  *buf = v57;
                  v60 = v48;
                  v61 = 2080;
                  v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
                  v63 = 1024;
                  v64 = 615;
                  v65 = 2112;
                  v66 = v25;
                  v67 = 2112;
                  v68 = v50;
                  v69 = 2048;
                  v70 = v51;
                  v71 = 2112;
                  v72 = v28;
                  v35 = v49;
                  v36 = " [%s] %s:%d Skipping keyIndex=%@ for prefix=%@ due to mismatched participantID: expected participantID=%llu, actual participantID=%@";
                  v37 = 68;
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v38 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v38 = [*(a1 + 40) performSelector:v24];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v39 = VRTraceErrorLogLevelToCSTR();
                v40 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v42 = *(a1 + 32);
                  v41 = *(a1 + 40);
                  v43 = *(a1 + 56);
                  *buf = 136317186;
                  v60 = v39;
                  v61 = 2080;
                  v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
                  v63 = 1024;
                  v64 = 615;
                  v65 = 2112;
                  v66 = v38;
                  v67 = 2048;
                  v68 = v41;
                  v69 = 2112;
                  v70 = v25;
                  v71 = 2112;
                  v72 = v42;
                  v73 = 2048;
                  v74 = v43;
                  v75 = 2112;
                  v76 = v28;
                  v35 = v40;
                  v36 = " [%s] %s:%d %@(%p) Skipping keyIndex=%@ for prefix=%@ due to mismatched participantID: expected participantID=%llu, actual participantID=%@";
                  v37 = 88;
                  goto LABEL_39;
                }
              }
            }
          }

          else
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:{objc_msgSend(*(*(a1 + 40) + 48), "objectForKeyedSubscript:", v25)}];
            if (objc_opt_class() == *(a1 + 40))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v44 = VRTraceErrorLogLevelToCSTR();
                v45 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v46 = *(a1 + 32);
                  v47 = *(a1 + 56);
                  *buf = 136316418;
                  v60 = v44;
                  v61 = 2080;
                  v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
                  v63 = 1024;
                  v64 = 613;
                  v65 = 2112;
                  v66 = v26;
                  v67 = 2112;
                  v68 = v46;
                  v69 = 2048;
                  v70 = v47;
                  v35 = v45;
                  v36 = " [%s] %s:%d Added keyMaterial=%@ for prefix=%@ with participantID=%llu";
                  v37 = 58;
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v29 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v29 = [*(a1 + 40) performSelector:v24];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v30 = VRTraceErrorLogLevelToCSTR();
                v31 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v33 = *(a1 + 32);
                  v32 = *(a1 + 40);
                  v34 = *(a1 + 56);
                  *buf = 136316930;
                  v60 = v30;
                  v61 = 2080;
                  v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
                  v63 = 1024;
                  v64 = 613;
                  v65 = 2112;
                  v66 = v29;
                  v67 = 2048;
                  v68 = v32;
                  v69 = 2112;
                  v70 = v26;
                  v71 = 2112;
                  v72 = v33;
                  v73 = 2048;
                  v74 = v34;
                  v35 = v31;
                  v36 = " [%s] %s:%d %@(%p) Added keyMaterial=%@ for prefix=%@ with participantID=%llu";
                  v37 = 78;
LABEL_39:
                  _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
                }
              }
            }
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
      v5 = &selRef_isLatencySensitiveModeEnabled;
      if (!v21)
      {
        goto LABEL_42;
      }
    }
  }

  if (v3 == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __59__VCSecurityKeyManager_copyMKMWithPrefix_forParticipantID___block_invoke_cold_1(v53);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v52 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v52 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v54 = VRTraceErrorLogLevelToCSTR();
      v55 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 40);
        *buf = 136316162;
        v60 = v54;
        v61 = 2080;
        v62 = "[VCSecurityKeyManager copyMKMWithPrefix:forParticipantID:]_block_invoke";
        v63 = 1024;
        v64 = 602;
        v65 = 2112;
        v66 = v52;
        v67 = 2048;
        v68 = v56;
        _os_log_error_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) keyPrefix must not be nil", buf, 0x30u);
      }
    }
  }

LABEL_42:
  if (![*(*(*(a1 + 48) + 8) + 40) count])
  {

    *(*(*(a1 + 48) + 8) + 40) = 0;
  }

  if (*(a1 + 32))
  {
    [*(a1 + 40) detectInabilityToDecryptSymptom:*(*(*(a1 + 48) + 8) + 40) prefix:?];
  }
}

- (void)startTimers
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)addSecurityKeyMaterial:(uint64_t)a1 securityKeyMode:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCSecurityKeyManager addSecurityKeyMaterial:securityKeyMode:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v7 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d kVCSecurityKeyIndex is missing in key material dictionary '%@'", &v3, 0x26u);
}

uint64_t __65__VCSecurityKeyManager_latestSendKeyMaterialWithSecurityKeyMode___block_invoke_cold_1(id *a1)
{
  if (objc_opt_class() == *a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return VCMediaKeyIndex_ReleaseAndCopyNewValue(*a1 + 8, 0);
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return VCMediaKeyIndex_ReleaseAndCopyNewValue(*a1 + 8, 0);
    }

    [*(*a1 + 5) count];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_2();
    v7 = 44;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return VCMediaKeyIndex_ReleaseAndCopyNewValue(*a1 + 8, 0);
  }

  if (objc_opt_respondsToSelector())
  {
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [*(*a1 + 5) count];
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_24();
      v7 = 64;
      goto LABEL_11;
    }
  }

  return VCMediaKeyIndex_ReleaseAndCopyNewValue(*a1 + 8, 0);
}

void __48__VCSecurityKeyManager_getLatestRecvKeyMaterial__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  [*(*a2 + 48) count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
}

void __54__VCSecurityKeyManager_pruneRecvKeyMaterialWithDelay___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 72);
  v4 = *(*a2 + 48);
  v5 = 136316162;
  v6 = a1;
  v7 = 2080;
  v8 = "[VCSecurityKeyManager pruneRecvKeyMaterialWithDelay:]_block_invoke";
  v9 = 1024;
  v10 = 447;
  v11 = 2112;
  v12 = v3;
  v13 = 2112;
  v14 = v4;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Pruned _latestReceiveKeyIndex '%@‘ from receiveKeys (%@). Nullifying it", &v5, 0x30u);
}

- (void)associateMKI:(void *)a1 withParticipantID:(_BYTE *)a2 .cold.1(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)associateMKI:(void *)a1 withParticipantID:(_BYTE *)a2 .cold.2(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

void __59__VCSecurityKeyManager_copyMKMWithPrefix_forParticipantID___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 602;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d keyPrefix must not be nil", &v2, 0x1Cu);
}

@end