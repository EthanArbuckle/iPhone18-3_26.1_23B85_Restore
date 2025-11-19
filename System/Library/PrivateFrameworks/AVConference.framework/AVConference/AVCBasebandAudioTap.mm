@interface AVCBasebandAudioTap
+ (BOOL)unregisterFromTapWithError:(id *)a3;
+ (id)registerForTapWithError:(id *)a3;
+ (id)sharedInstance;
- (AVCBasebandAudioTap)init;
- (AVCBasebandAudioTapDelegate)delegate;
- (BOOL)setUpPowerSpectrumMeter;
- (BOOL)unregisterFromTapWithError:(id *)a3;
- (id)dispatchedDelegate;
- (id)registerForTapWithError:(id *)a3;
- (void)cleanUpPowerSpectrumMeter;
- (void)dealloc;
- (void)init;
- (void)meterServerDidDisconnect:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation AVCBasebandAudioTap

- (void)cleanUpPowerSpectrumMeter
{
  dispatch_assert_queue_V2(self->_stateQueue);

  self->_powerSpectrumMeter = 0;
}

- (id)dispatchedDelegate
{
  dispatch_assert_queue_V2(self->_stateQueue);

  return objc_loadWeak(&self->_weakDelegate);
}

- (AVCBasebandAudioTap)init
{
  v10 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  v9.receiver = self;
  v9.super_class = AVCBasebandAudioTap;
  v3 = [(AVCBasebandAudioTap *)&v9 init];
  if (!v3)
  {
    [AVCBasebandAudioTap init];
LABEL_8:

    return 0;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v5 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCBasebandAudioTap.stateQueue", 0, CustomRootQueue);
  v3->_stateQueue = v5;
  if (!v5)
  {
    [AVCBasebandAudioTap init];
    goto LABEL_8;
  }

  v6 = VCDispatchQueue_GetCustomRootQueue(37);
  v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCBasebandAudioTap.delegateQueue", 0, v6);
  v3->_delegateQueue = v7;
  if (!v7)
  {
    [AVCBasebandAudioTap init];
    goto LABEL_8;
  }

  return v3;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  objc_storeWeak(&self->_weakDelegate, 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v5.receiver = self;
  v5.super_class = AVCBasebandAudioTap;
  [(AVCBasebandAudioTap *)&v5 dealloc];
}

- (AVCBasebandAudioTapDelegate)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVCBasebandAudioTap_delegate__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__AVCBasebandAudioTap_delegate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedDelegate];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVCBasebandAudioTap_setDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(stateQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 136316674;
      v25 = v6;
      v26 = 2080;
      v27 = "[AVCBasebandAudioTap setDelegate:]";
      v28 = 1024;
      v29 = 148;
      v30 = 2048;
      *v31 = self;
      *&v31[8] = 2112;
      *&v31[10] = v9;
      *&v31[18] = 2048;
      *&v31[20] = a3;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d self=%p (%@), delegate=%p (%@)", buf, 0x44u);
    }
  }

  outCount = 0;
  v21 = protocol_copyMethodDescriptionList(&unk_1F582A870, 0, 1, &outCount);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = v12;
      v26 = 2080;
      v27 = "[AVCBasebandAudioTap setDelegate:]";
      v28 = 1024;
      v29 = 148;
      v30 = 1024;
      *v31 = outCount;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Protocol AVCBasebandAudioTapDelegate contains %u optional methods.", buf, 0x22u);
    }
  }

  if (outCount)
  {
    v14 = 0;
    p_name = &v21->name;
    do
    {
      v16 = NSStringFromSelector(*p_name);
      NSSelectorFromString(v16);
      v17 = objc_opt_respondsToSelector();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v20 = "does NOT respond";
          if (v17)
          {
            v20 = "responds";
          }

          v25 = v18;
          v26 = 2080;
          v27 = "[AVCBasebandAudioTap setDelegate:]";
          v28 = 1024;
          v29 = 148;
          v30 = 1024;
          *v31 = v14;
          *&v31[4] = 2080;
          *&v31[6] = v20;
          *&v31[14] = 2112;
          *&v31[16] = v16;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %u: Delegate %s to %@", buf, 0x36u);
        }
      }

      ++v14;
      p_name += 2;
    }

    while (v14 < outCount);
  }

  free(v21);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[AVCBasebandAudioTap sharedInstance];
  }

  return sharedInstance_instance_1;
}

AVCBasebandAudioTap *__37__AVCBasebandAudioTap_sharedInstance__block_invoke()
{
  result = objc_alloc_init(AVCBasebandAudioTap);
  sharedInstance_instance_1 = result;
  return result;
}

- (id)registerForTapWithError:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v5 = objc_alloc_init(AVCBasebandAudioTapRegistrationResult);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCBasebandAudioTap-registerForTapWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v6;
      v22 = 2080;
      v23 = "[AVCBasebandAudioTap registerForTapWithError:]";
      v24 = 1024;
      v25 = 165;
      v26 = 2048;
      v27 = self;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCBasebandAudioTap-registerForTapWithError [%p]", buf, 0x26u);
    }
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke;
  block[3] = &unk_1E85F4108;
  block[5] = v5;
  block[6] = &v14;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  if (a3)
  {
    *a3 = v15[5];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCBasebandAudioTap-registerForTapWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = v9;
      v22 = 2080;
      v23 = "[AVCBasebandAudioTap registerForTapWithError:]";
      v24 = 1024;
      v25 = 185;
      v26 = 2048;
      v27 = self;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCBasebandAudioTap-registerForTapWithError [%p] result=%@", buf, 0x30u);
    }
  }

  v11 = v5;
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) setUpPowerSpectrumMeter])
  {
    v2 = a1 + 48;
    v3 = [*(*(a1 + 32) + 24) registerPowerSpectrumForCellularTapType:0 error:*(*(a1 + 48) + 8) + 40];
    if (!v3 || (v4 = *(*v2 + 8), v6 = *(v4 + 40), v5 = v4 + 40, v6))
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_2();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 32);
            v14 = *(*(*(a1 + 48) + 8) + 40);
            *v23 = 136316418;
            *&v23[4] = v11;
            *&v23[12] = 2080;
            *&v23[14] = "[AVCBasebandAudioTap registerForTapWithError:]_block_invoke";
            *&v23[22] = 1024;
            LODWORD(v24) = 171;
            WORD2(v24) = 2112;
            *(&v24 + 6) = v8;
            HIWORD(v24) = 2048;
            v25 = v13;
            LOWORD(v26) = 2112;
            *(&v26 + 2) = v14;
            v15 = " [%s] %s:%d %@(%p) Failed to register uplink tap with error=%@";
LABEL_31:
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v15, v23, 0x3Au);
          }
        }
      }
    }

    else
    {
      v3 = [*(*(a1 + 32) + 24) registerPowerSpectrumForCellularTapType:1 error:v5];
      if (v3 && !*(*(*v2 + 8) + 40))
      {
        v3 = 1;
        goto LABEL_7;
      }

      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_3();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 32);
            v18 = *(*(*(a1 + 48) + 8) + 40);
            *v23 = 136316418;
            *&v23[4] = v16;
            *&v23[12] = 2080;
            *&v23[14] = "[AVCBasebandAudioTap registerForTapWithError:]_block_invoke";
            *&v23[22] = 1024;
            LODWORD(v24) = 174;
            WORD2(v24) = 2112;
            *(&v24 + 6) = v9;
            HIWORD(v24) = 2048;
            v25 = v17;
            LOWORD(v26) = 2112;
            *(&v26 + 2) = v18;
            v15 = " [%s] %s:%d %@(%p) Failed to register downlink tap with error=%@";
            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32031 detailCode:0 description:@"Failed to set up XPC connection for AVCBasebandAudioTap"];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 32);
          v22 = *(*(*(a1 + 48) + 8) + 40);
          *v23 = 136316418;
          *&v23[4] = v19;
          *&v23[12] = 2080;
          *&v23[14] = "[AVCBasebandAudioTap registerForTapWithError:]_block_invoke";
          *&v23[22] = 1024;
          LODWORD(v24) = 168;
          WORD2(v24) = 2112;
          *(&v24 + 6) = v10;
          HIWORD(v24) = 2048;
          v25 = v21;
          LOWORD(v26) = 2112;
          *(&v26 + 2) = v22;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) error=%@", v23, 0x3Au);
        }
      }
    }

    v3 = 0;
  }

LABEL_7:
  [*(a1 + 40) setDidSucceed:{v3, *v23, *&v23[16], v24, v25, v26}];
  [*(a1 + 40) setTapToken:{objc_msgSend(*(*(a1 + 32) + 24), "sessionToken")}];
  [*(a1 + 40) setUplinkToken:{objc_msgSend(*(*(a1 + 32) + 24), "streamTokenForCellularTapType:", 0)}];
  return [*(a1 + 40) setDownlinkToken:{objc_msgSend(*(*(a1 + 32) + 24), "streamTokenForCellularTapType:", 1)}];
}

- (BOOL)unregisterFromTapWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCBasebandAudioTap-unregisterFromTapWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = v5;
      v26 = 2080;
      v27 = "[AVCBasebandAudioTap unregisterFromTapWithError:]";
      v28 = 1024;
      v29 = 192;
      v30 = 2048;
      v31 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCBasebandAudioTap-unregisterFromTapWithError [%p]", buf, 0x26u);
    }
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke;
  block[3] = &unk_1E85F6B80;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v14;
  dispatch_sync(stateQueue, block);
  if (a3)
  {
    *a3 = v15[5];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCBasebandAudioTap-unregisterFromTapWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v21 + 24);
      *buf = 136316162;
      v25 = v8;
      v26 = 2080;
      v27 = "[AVCBasebandAudioTap unregisterFromTapWithError:]";
      v28 = 1024;
      v29 = 210;
      v30 = 2048;
      v31 = self;
      v32 = 1024;
      v33 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCBasebandAudioTap-unregisterFromTapWithError [%p] success=%{BOOL}d", buf, 0x2Cu);
    }
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

uint64_t __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 4);
  v3 = *(a1[4] + 24);
  if (v3)
  {
    v4 = a1 + 6;
    *(*(a1[5] + 8) + 24) = [v3 unregisterPowerSpectrumForCellularTapType:1 error:*(a1[6] + 8) + 40];
    if (*(*(a1[5] + 8) + 24) != 1 || *(*(*v4 + 8) + 40))
    {
      if (objc_opt_class() == *v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [*v2 performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v15 = *v2;
            v16 = *(*(*v4 + 8) + 40);
            v19 = 136316418;
            v20 = v6;
            v21 = 2080;
            v22 = "[AVCBasebandAudioTap unregisterFromTapWithError:]_block_invoke";
            v23 = 1024;
            v24 = 197;
            v25 = 2112;
            v26 = v5;
            v27 = 2048;
            v28 = v15;
            v29 = 2112;
            v30 = v16;
            _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unregister downlink tap with error=%@", &v19, 0x3Au);
          }
        }
      }
    }

    v8 = [*(a1[4] + 24) unregisterPowerSpectrumForCellularTapType:0 error:*(a1[6] + 8) + 40];
    v9 = 0;
    v10 = *(a1[5] + 8);
    if (v8)
    {
      v9 = *(v10 + 24);
    }

    *(v10 + 24) = v9 & 1;
    if (*(*(a1[5] + 8) + 24) != 1 || *(*(*v4 + 8) + 40))
    {
      if (objc_opt_class() == *v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_2();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v11 = [*v2 performSelector:sel_logPrefix];
        }

        else
        {
          v11 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v17 = *v2;
            v18 = *(*(*v4 + 8) + 40);
            v19 = 136316418;
            v20 = v12;
            v21 = 2080;
            v22 = "[AVCBasebandAudioTap unregisterFromTapWithError:]_block_invoke";
            v23 = 1024;
            v24 = 202;
            v25 = 2112;
            v26 = v11;
            v27 = 2048;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unregister uplink tap with error=%@", &v19, 0x3Au);
          }
        }
      }
    }
  }

  else
  {
    __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_3(a1, v2);
  }

  return [*v2 cleanUpPowerSpectrumMeter];
}

+ (id)registerForTapWithError:(id *)a3
{
  v4 = +[AVCBasebandAudioTap sharedInstance];

  return [(AVCBasebandAudioTap *)v4 registerForTapWithError:a3];
}

+ (BOOL)unregisterFromTapWithError:(id *)a3
{
  v4 = +[AVCBasebandAudioTap sharedInstance];

  return [(AVCBasebandAudioTap *)v4 unregisterFromTapWithError:a3];
}

- (void)meterServerDidDisconnect:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  [(AVCBasebandAudioTap *)self cleanUpPowerSpectrumMeter];
  v4 = [(AVCBasebandAudioTap *)self dispatchedDelegate];
  if (v4)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVCBasebandAudioTap_meterServerDidDisconnect___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v4;
    block[5] = self;
    dispatch_async(delegateQueue, block);
  }
}

- (BOOL)setUpPowerSpectrumMeter
{
  v7[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_powerSpectrumMeter)
  {
    return 1;
  }

  v3 = [AVCAudioPowerSpectrumMeter alloc];
  stateQueue = self->_stateQueue;
  v7[0] = 0;
  v7[1] = 0x100000000;
  v7[2] = 0x40F5180000000000;
  v5 = [(AVCAudioPowerSpectrumMeter *)v3 initWithConfig:v7 delegate:self queue:stateQueue];
  self->_powerSpectrumMeter = v5;
  [(AVCAudioPowerSpectrumMeter *)v5 setEnableAsyncTapStart:1];
  return self->_powerSpectrumMeter != 0;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to super init", v2, v3, v4, v5, v6);
    }
  }
}

void __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d error=%@");
}

void __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register uplink tap with error=%@");
}

void __47__AVCBasebandAudioTap_registerForTapWithError___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register downlink tap with error=%@");
}

void __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unregister downlink tap with error=%@");
}

void __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unregister uplink tap with error=%@");
}

void __50__AVCBasebandAudioTap_unregisterFromTapWithError___block_invoke_cold_3(uint64_t a1, id *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (objc_opt_class() == *a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v16 = 194;
        v5 = " [%s] %s:%d powerSpectrumMeter is nil, implicitly successful unregistration";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*a2 performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a2;
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[AVCBasebandAudioTap unregisterFromTapWithError:]_block_invoke";
        v15 = 1024;
        v16 = 194;
        v17 = 2112;
        v18 = v3;
        v19 = 2048;
        v20 = v10;
        v5 = " [%s] %s:%d %@(%p) powerSpectrumMeter is nil, implicitly successful unregistration";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }
}

@end