@interface VCVirtualTextDevice
- (VCVirtualTextDevice)initWithSendDelegate:(id)delegate clientPid:(int)pid delegate:(id)a5 delegateFunctions:(const tagVCMediaStreamDelegateRealtimeInstanceVTable *)functions delegateQueue:(id)queue;
- (id)pause;
- (id)resume;
- (id)setPause:(BOOL)pause;
- (id)start;
- (id)stopWithError:(id)error;
- (void)dealloc;
- (void)didReceiveText:(id)text;
- (void)sendCharacter:(unsigned __int16)character;
- (void)sendText:(id)text;
- (void)setMediaStreamDelegateQueue:(id)queue;
@end

@implementation VCVirtualTextDevice

- (VCVirtualTextDevice)initWithSendDelegate:(id)delegate clientPid:(int)pid delegate:(id)a5 delegateFunctions:(const tagVCMediaStreamDelegateRealtimeInstanceVTable *)functions delegateQueue:(id)queue
{
  v37 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = VCVirtualTextDevice;
  v12 = [(VCVirtualTextDevice *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_clientPid = pid;
    objc_storeWeak(&v12->_sendDelegate, delegate);
    objc_storeWeak(&v13->_mediaStreamDelegate, a5);
    updateFrequencyLevel = functions->updateFrequencyLevel;
    v13->_mediaStreamDelegateQueue = queue;
    v13->_mediaStreamDelegateFunctions.updateFrequencyLevel = updateFrequencyLevel;
    dispatch_retain(queue);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v16 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVirtualTextDevice.queue", 0, CustomRootQueue);
    v13->_state = 0;
    v13->_queue = v16;
  }

  if (objc_opt_class() == v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = v18;
        v29 = 2080;
        v30 = "[VCVirtualTextDevice initWithSendDelegate:clientPid:delegate:delegateFunctions:delegateQueue:]";
        v31 = 1024;
        v32 = 51;
        v20 = " [%s] %s:%d ";
        v21 = v19;
        v22 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCVirtualTextDevice *)v13 performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v28 = v23;
        v29 = 2080;
        v30 = "[VCVirtualTextDevice initWithSendDelegate:clientPid:delegate:delegateFunctions:delegateQueue:]";
        v31 = 1024;
        v32 = 51;
        v33 = 2112;
        v34 = v17;
        v35 = 2048;
        v36 = v13;
        v20 = " [%s] %s:%d %@(%p) ";
        v21 = v24;
        v22 = 48;
        goto LABEL_13;
      }
    }
  }

  return v13;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_sendDelegate, 0);
  objc_storeWeak(&self->_mediaStreamDelegate, 0);
  dispatch_release(self->_mediaStreamDelegateQueue);
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = VCVirtualTextDevice;
  [(VCVirtualTextDevice *)&v3 dealloc];
}

- (void)setMediaStreamDelegateQueue:(id)queue
{
  mediaStreamDelegateQueue = self->_mediaStreamDelegateQueue;
  if (mediaStreamDelegateQueue)
  {
    dispatch_release(mediaStreamDelegateQueue);
    self->_mediaStreamDelegateQueue = 0;
  }

  if (queue)
  {
    self->_mediaStreamDelegateQueue = queue;

    dispatch_retain(queue);
  }
}

- (id)start
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice start]";
        *&buf[22] = 1024;
        LODWORD(v16) = 93;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
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
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice start]";
        *&buf[22] = 1024;
        LODWORD(v16) = 93;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v3;
        HIWORD(v16) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&v16 = __Block_byref_object_copy__29;
  *(&v16 + 1) = __Block_byref_object_dispose__29;
  selfCopy = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__VCVirtualTextDevice_start__block_invoke;
  v14[3] = &unk_1E85F3868;
  v14[4] = self;
  v14[5] = buf;
  dispatch_sync(queue, v14);
  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);
  return v12;
}

uint64_t __28__VCVirtualTextDevice_start__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:v2 description:@"Invalid state"];
    *(*(*(v3 + 40) + 8) + 40) = result;
  }

  else
  {
    *(v1 + 16) = 2;
  }

  return result;
}

- (id)stopWithError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v5;
        v17 = 2080;
        v18 = "[VCVirtualTextDevice stopWithError:]";
        v19 = 1024;
        v20 = 111;
        v7 = " [%s] %s:%d ";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCVirtualTextDevice stopWithError:]";
        v19 = 1024;
        v20 = 111;
        v21 = 2112;
        v22 = v4;
        v23 = 2048;
        selfCopy = self;
        v7 = " [%s] %s:%d %@(%p) ";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCVirtualTextDevice_stopWithError___block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(queue, block);
  return 0;
}

- (id)pause
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice pause]";
        *&buf[22] = 1024;
        LODWORD(v16) = 119;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
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
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice pause]";
        *&buf[22] = 1024;
        LODWORD(v16) = 119;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v3;
        HIWORD(v16) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&v16 = __Block_byref_object_copy__29;
  *(&v16 + 1) = __Block_byref_object_dispose__29;
  selfCopy = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__VCVirtualTextDevice_pause__block_invoke;
  v14[3] = &unk_1E85F3868;
  v14[4] = self;
  v14[5] = buf;
  dispatch_sync(queue, v14);
  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);
  return v12;
}

uint64_t __28__VCVirtualTextDevice_pause__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v3 = result;
    result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:v2 description:@"Invalid state"];
    *(*(*(v3 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)resume
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice resume]";
        *&buf[22] = 1024;
        LODWORD(v16) = 132;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
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
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVirtualTextDevice resume]";
        *&buf[22] = 1024;
        LODWORD(v16) = 132;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v3;
        HIWORD(v16) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&v16 = __Block_byref_object_copy__29;
  *(&v16 + 1) = __Block_byref_object_dispose__29;
  selfCopy = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __29__VCVirtualTextDevice_resume__block_invoke;
  v14[3] = &unk_1E85F3868;
  v14[4] = self;
  v14[5] = buf;
  dispatch_sync(queue, v14);
  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);
  return v12;
}

uint64_t __29__VCVirtualTextDevice_resume__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    *(v1 + 16) = 2;
  }

  else
  {
    v3 = result;
    result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:v2 description:@"Invalid state"];
    *(*(*(v3 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)setPause:(BOOL)pause
{
  if (pause)
  {
    return [(VCVirtualTextDevice *)self pause];
  }

  else
  {
    return [(VCVirtualTextDevice *)self resume];
  }
}

- (void)sendCharacter:(unsigned __int16)character
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = v6;
          v20 = 2080;
          v21 = "[VCVirtualTextDevice sendCharacter:]";
          v22 = 1024;
          v23 = 156;
          v9 = " [%s] %s:%d ";
          v10 = v7;
          v11 = 28;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCVirtualTextDevice sendCharacter:v6];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v12;
          v20 = 2080;
          v21 = "[VCVirtualTextDevice sendCharacter:]";
          v22 = 1024;
          v23 = 156;
          v24 = 2112;
          v25 = v5;
          v26 = 2048;
          selfCopy2 = self;
          v9 = " [%s] %s:%d %@(%p) ";
          v10 = v13;
          v11 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v19 = v12;
        v20 = 2080;
        v21 = "[VCVirtualTextDevice sendCharacter:]";
        v22 = 1024;
        v23 = 156;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", buf, 0x30u);
      }
    }
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__VCVirtualTextDevice_sendCharacter___block_invoke;
  v16[3] = &unk_1E85F41F8;
  v16[4] = self;
  characterCopy = character;
  dispatch_async(queue, v16);
}

void *__37__VCVirtualTextDevice_sendCharacter___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2] == 2)
  {
    v3 = [result sendDelegate];
    v4 = *(a1 + 40);

    return [v3 sendCharacter:v4];
  }

  return result;
}

- (void)sendText:(id)text
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = v6;
          v19 = 2080;
          v20 = "[VCVirtualTextDevice sendText:]";
          v21 = 1024;
          v22 = 167;
          v9 = " [%s] %s:%d ";
          v10 = v7;
          v11 = 28;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCVirtualTextDevice sendText:v6];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVirtualTextDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v12;
          v19 = 2080;
          v20 = "[VCVirtualTextDevice sendText:]";
          v21 = 1024;
          v22 = 167;
          v23 = 2112;
          v24 = v5;
          v25 = 2048;
          selfCopy2 = self;
          v9 = " [%s] %s:%d %@(%p) ";
          v10 = v13;
          v11 = 48;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCVirtualTextDevice sendText:]";
        v21 = 1024;
        v22 = 167;
        v23 = 2112;
        v24 = v5;
        v25 = 2048;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) ", buf, 0x30u);
      }
    }
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32__VCVirtualTextDevice_sendText___block_invoke;
  v16[3] = &unk_1E85F37F0;
  v16[4] = self;
  v16[5] = text;
  dispatch_async(queue, v16);
}

void *__32__VCVirtualTextDevice_sendText___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2] == 2)
  {
    v3 = [result sendDelegate];
    v4 = *(a1 + 40);

    return [v3 sendText:v4];
  }

  return result;
}

- (void)didReceiveText:(id)text
{
  block[6] = *MEMORY[0x1E69E9840];
  mediaStreamDelegateQueue = self->_mediaStreamDelegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCVirtualTextDevice_didReceiveText___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = text;
  dispatch_async(mediaStreamDelegateQueue, block);
}

uint64_t __38__VCVirtualTextDevice_didReceiveText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaStreamDelegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcMediaStream:v3 didReceiveText:v4];
}

- (void)sendCharacter:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 156;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ", &v2, 0x1Cu);
}

- (void)sendText:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 167;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ", &v2, 0x1Cu);
}

@end