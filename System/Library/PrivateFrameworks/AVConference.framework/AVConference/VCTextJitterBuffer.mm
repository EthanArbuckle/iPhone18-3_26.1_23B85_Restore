@interface VCTextJitterBuffer
- (BOOL)start;
- (BOOL)startHeartbeat;
- (VCTextJitterBuffer)initWithConfiguration:(tagVCTextJitterBufferConfiguration *)configuration;
- (void)dealloc;
- (void)heartbeat;
- (void)jitterQueuePushPacket:(tagAudioPacket *)packet;
- (void)releaseTextPacket:(tagAudioPacket *)packet;
- (void)startHeartbeat;
- (void)stop;
- (void)stopHeartbeat;
@end

@implementation VCTextJitterBuffer

- (VCTextJitterBuffer)initWithConfiguration:(tagVCTextJitterBufferConfiguration *)configuration
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCTextJitterBuffer;
  v4 = [(VCTextJitterBuffer *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (!configuration)
  {
    [VCTextJitterBuffer initWithConfiguration:];
LABEL_12:

    return 0;
  }

  v4->_configuration = *configuration;
  objc_storeWeak(&v4->_delegate, configuration->delegate);
  v6 = JitterPreloadQueue_Create();
  v5->_preloadQueue = v6;
  if (!v6)
  {
    [VCTextJitterBuffer initWithConfiguration:];
    goto LABEL_12;
  }

  v7 = JitterQueue_Create();
  v5->_jitterQueue = v7;
  if (!v7)
  {
    [VCTextJitterBuffer initWithConfiguration:];
    goto LABEL_12;
  }

  JitterQueue_SetMaxPacketTimeDelta(v7, configuration->sampleRate, 1.79769313e308);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCTextJitterBuffer initWithConfiguration:]";
      v16 = 1024;
      v17 = 41;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter Buffer Created Successfully", buf, 0x1Cu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCTextJitterBuffer dealloc]";
        v18 = 1024;
        v19 = 53;
        v6 = " [%s] %s:%d Cleaning up JitterBuffer";
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
      v3 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
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
        *buf = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCTextJitterBuffer dealloc]";
        v18 = 1024;
        v19 = 53;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) Cleaning up JitterBuffer";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  objc_storeWeak(&self->_delegate, 0);
  jitterQueue = self->_jitterQueue;
  if (jitterQueue)
  {
    JitterQueue_Destroy(jitterQueue);
  }

  preloadQueue = self->_preloadQueue;
  if (preloadQueue)
  {
    JitterPreloadQueue_Destroy(preloadQueue);
  }

  v13.receiver = self;
  v13.super_class = VCTextJitterBuffer;
  [(VCTextJitterBuffer *)&v13 dealloc];
}

- (void)releaseTextPacket:(tagAudioPacket *)packet
{
  if (packet->var16 >= 1)
  {
    v5 = 0;
    do
    {
      JitterPreloadQueue_AudioFrameFree(self->_preloadQueue, packet->var15[v5++]);
    }

    while (v5 < packet->var16);
  }

  preloadQueue = self->_preloadQueue;

  JitterPreloadQueue_AudioPacketFree(preloadQueue, packet);
}

- (BOOL)start
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315650;
        *&v12[4] = v4;
        *&v12[12] = 2080;
        *&v12[14] = "[VCTextJitterBuffer start]";
        *&v12[22] = 1024;
        LODWORD(v13) = 94;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
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
        *v12 = 136316162;
        *&v12[4] = v9;
        *&v12[12] = 2080;
        *&v12[14] = "[VCTextJitterBuffer start]";
        *&v12[22] = 1024;
        LODWORD(v13) = 94;
        WORD2(v13) = 2112;
        *(&v13 + 6) = v3;
        HIWORD(v13) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  self->_resetRequested = 1;
  return [(VCTextJitterBuffer *)self startHeartbeat:*v12];
}

- (void)stop
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCTextJitterBuffer stop]";
        *&v11[22] = 1024;
        LODWORD(v12) = 100;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
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
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCTextJitterBuffer stop]";
        *&v11[22] = 1024;
        LODWORD(v12) = 100;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCTextJitterBuffer *)self stopHeartbeat:*v11];
}

- (void)jitterQueuePushPacket:(tagAudioPacket *)packet
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (packet->var16 >= 1)
  {
    v5 = 0;
    var15 = packet->var15;
    do
    {
      JitterQueue_Insert(self->_jitterQueue, var15[v5++], &v7);
    }

    while (v5 < packet->var16);
  }
}

- (BOOL)startHeartbeat
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = v4;
        v23 = 2080;
        v24 = "[VCTextJitterBuffer startHeartbeat]";
        v25 = 1024;
        v26 = 117;
        v27 = 2048;
        v28 = 0x3FA0E5604189374CLL;
        v6 = " [%s] %s:%d Starting heartbeat (interval=%f)";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v22 = v9;
        v23 = 2080;
        v24 = "[VCTextJitterBuffer startHeartbeat]";
        v25 = 1024;
        v26 = 117;
        v27 = 2112;
        v28 = v3;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2048;
        v32 = 0x3FA0E5604189374CLL;
        v6 = " [%s] %s:%d %@(%p) Starting heartbeat (interval=%f)";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  self->_firstFrameReceived = 0;
  global_queue = dispatch_get_global_queue(2, 0);
  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
  v13 = v12;
  self->_heartbeat = v12;
  if (v12)
  {
    dispatch_source_set_timer(v12, 0, 0x1F78A40uLL, 0xF4240uLL);
    heartbeat = self->_heartbeat;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __36__VCTextJitterBuffer_startHeartbeat__block_invoke;
    handler[3] = &unk_1E85F3778;
    handler[4] = self;
    dispatch_source_set_event_handler(heartbeat, handler);
    dispatch_resume(self->_heartbeat);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCTextJitterBuffer *)v17 startHeartbeat];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v22 = v18;
        v23 = 2080;
        v24 = "[VCTextJitterBuffer startHeartbeat]";
        v25 = 1024;
        v26 = 121;
        v27 = 2112;
        v28 = v16;
        v29 = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create polling", buf, 0x30u);
      }
    }
  }

  return v13 != 0;
}

- (void)stopHeartbeat
{
  dispatch_source_cancel(self->_heartbeat);
  heartbeat = self->_heartbeat;
  if (heartbeat)
  {
    dispatch_release(heartbeat);
    self->_heartbeat = 0;
  }
}

- (void)heartbeat
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = JitterPreloadQueue_Dequeue(self->_preloadQueue);
  v4 = v3;
  if (v3 && v3[1] || self->_resetRequested)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315650;
      v44 = v6;
      v45 = 2080;
      v46 = "[VCTextJitterBuffer heartbeat]";
      v47 = 1024;
      v48 = 141;
      v8 = " [%s] %s:%d Reset the queue";
      v9 = v7;
      v10 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136316162;
      v44 = v11;
      v45 = 2080;
      v46 = "[VCTextJitterBuffer heartbeat]";
      v47 = 1024;
      v48 = 141;
      v49 = 2112;
      *v50 = v5;
      *&v50[8] = 2048;
      selfCopy3 = self;
      v8 = " [%s] %s:%d %@(%p) Reset the queue";
      v9 = v12;
      v10 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_15:
    JitterQueue_Reset(self->_jitterQueue);
    self->_resetRequested = 0;
  }

  if (v4)
  {
    if (self->_firstFrameReceived && ((v13 = v4[7] - LOWORD(self->_lastSequenceNumber)) == 0 || v13 >= 0x7FFFu))
    {
      [(VCTextJitterBuffer *)self releaseTextPacket:v4];
    }

    else
    {
      [(VCTextJitterBuffer *)self jitterQueuePushPacket:v4];
      JitterPreloadQueue_AudioPacketFree(self->_preloadQueue, v4);
    }
  }

  v14 = JitterQueue_Pop(self->_jitterQueue);
  if (v14)
  {
    v16 = v14;
    *&v15 = 136316418;
    v42 = v15;
    while (self->_firstFrameReceived && (*(v16 + 10) - LOWORD(self->_lastSequenceNumber)) != 1)
    {
      if (micro() - *(v16 + 1184) < 1.0)
      {
        JitterQueue_Insert(self->_jitterQueue, v16, 0);
        return;
      }

      [-[VCTextJitterBuffer delegate](self "delegate")];
      ++self->_lastSequenceNumber;
      JitterQueue_Insert(self->_jitterQueue, v16, 0);
LABEL_44:
      v16 = JitterQueue_Pop(self->_jitterQueue);
      if (!v16)
      {
        return;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_43;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      v29 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(v16 + 10);
          v31 = *(v16 + 1144);
          v32 = *(v16 + 8);
          *buf = v42;
          v44 = v27;
          v45 = 2080;
          v46 = "[VCTextJitterBuffer heartbeat]";
          v47 = 1024;
          v48 = 171;
          v49 = 1024;
          *v50 = v30;
          *&v50[4] = 1024;
          *&v50[6] = v31;
          LOWORD(selfCopy3) = 1024;
          *(&selfCopy3 + 2) = v32;
          v24 = v28;
          v25 = " [%s] %s:%d Frame received seqNumber:%d length:%d isRed:%d";
          v26 = 46;
          goto LABEL_37;
        }

LABEL_43:
        [-[VCTextJitterBuffer delegate](self delegate];
        self->_lastSequenceNumber = *(v16 + 10);
        self->_firstFrameReceived = 1;
        [(VCTextJitterBuffer *)self releaseTextFrame:v16];
        goto LABEL_44;
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_43;
      }

      v39 = *(v16 + 10);
      v40 = *(v16 + 1144);
      v41 = *(v16 + 8);
      *buf = v42;
      v44 = v27;
      v45 = 2080;
      v46 = "[VCTextJitterBuffer heartbeat]";
      v47 = 1024;
      v48 = 171;
      v49 = 1024;
      *v50 = v39;
      *&v50[4] = 1024;
      *&v50[6] = v40;
      LOWORD(selfCopy3) = 1024;
      *(&selfCopy3 + 2) = v41;
      v36 = v28;
      v37 = " [%s] %s:%d Frame received seqNumber:%d length:%d isRed:%d";
      v38 = 46;
    }

    else
    {
      v17 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCTextJitterBuffer *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_43;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v16 + 10);
          v22 = *(v16 + 1144);
          v23 = *(v16 + 8);
          *buf = 136316930;
          v44 = v18;
          v45 = 2080;
          v46 = "[VCTextJitterBuffer heartbeat]";
          v47 = 1024;
          v48 = 171;
          v49 = 2112;
          *v50 = v17;
          *&v50[8] = 2048;
          selfCopy3 = self;
          v52 = 1024;
          v53 = v21;
          v54 = 1024;
          v55 = v22;
          v56 = 1024;
          v57 = v23;
          v24 = v19;
          v25 = " [%s] %s:%d %@(%p) Frame received seqNumber:%d length:%d isRed:%d";
          v26 = 66;
LABEL_37:
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_43;
      }

      v33 = *(v16 + 10);
      v34 = *(v16 + 1144);
      v35 = *(v16 + 8);
      *buf = 136316930;
      v44 = v18;
      v45 = 2080;
      v46 = "[VCTextJitterBuffer heartbeat]";
      v47 = 1024;
      v48 = 171;
      v49 = 2112;
      *v50 = v17;
      *&v50[8] = 2048;
      selfCopy3 = self;
      v52 = 1024;
      v53 = v33;
      v54 = 1024;
      v55 = v34;
      v56 = 1024;
      v57 = v35;
      v36 = v19;
      v37 = " [%s] %s:%d %@(%p) Frame received seqNumber:%d length:%d isRed:%d";
      v38 = 66;
    }

    _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, v37, buf, v38);
    goto LABEL_43;
  }
}

- (void)initWithConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create jitter queue", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create pre-load queue", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Config (nil)", v2, v3, v4, v5, v6);
    }
  }
}

- (void)startHeartbeat
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 121;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create polling", &v2, 0x1Cu);
}

@end